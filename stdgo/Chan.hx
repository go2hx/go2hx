package stdgo;

import stdgo.GoInt;

@:forward(length, capacity, __isSend__, __isGet__, __smartGet__, __get__, __send__, __close__, keyValueIterator, iterator)
@:forward.new
/**
 *    Chan is a Go channel in Haxe
 *    Channels are used in a goroutine context to send and get data
 *    Channel are by default blocking for sending, waiting until a get on the other side is called
 *    The syntax for channels is different for Go and Haxe:
 *
 *    Haxe: c.__get__ Go: <- c
 *    Haxe: c.__send__(x) Go: c <- x
 */
abstract Chan<T>(ChanData<T>) from ChanData<T> to ChanData<T> {
	public function __reset__() {
		this?.__reset__();
	}
}

@:dox(hide)
class ChanData<T> {
	private var buffer:Array<T> = [];

	var defaultValue:Void->T = null;

	var closed:Bool = false;
	var buffered:Bool = false;

	// Go required fields
	public var length(get, never):GoInt;
	public var capacity:GoInt;

	// general mutex when handling internal vars in ChanData
	// a mutex must be get & set by the same thread
	var mutex = #if target.threaded new sys.thread.Mutex() #else {acquire: () -> {}, release: () -> {}} #end;

	// select loop flags
	var inGetSelectLoop = false;
	var inSendSelectLoop = false;

	// separate variables to coordinate and implement an unbuffered channel
	var unbufferedData:T; // the unbuffered data being transfered
	var dataWaiting = false; // is their data waiting to transfer from send -> get
	var sendCount = 0; // number of goroutines currently in unbuffered send
	var getCount = 0; // number of goroutines currently in unbuffered get

	// Debug
	public static var count:Int = 0; // the number of channels
	var index:Int = 0; // this chan id, used in toString - useful even not in local debug mode
	public static inline var debug = false;


	function get_length():GoInt {
		mutex.acquire();
		var r = buffer.length;
		mutex.release();
		return r;
	}

	public function new(length:GoInt, defaultValue) {
		buffered = length > 0;
		this.capacity = length;
		this.defaultValue = defaultValue;
			index = count;
			count++;
			if (debug) {
				trace(index + "new ", length, defaultValue);
		}
	}

	// __reset__() is called by the generated Go "select" code
	// after: __isGet__(true) or __isSend__(true)
	// and before: __get__() or __send__(value)
	inline public function __reset__() {
		mutex.acquire();
		inSendSelectLoop = inGetSelectLoop = false;
		mutex.release();
	}

	// can a value be got from the channel?
	public function __isGet__(selectBool:Bool = false):Bool {
		if (debug)
			trace(index + "__isGet__ " + selectBool, length, buffered);

		if (selectBool) {
			mutex.acquire();
			inGetSelectLoop = true;
			if (inSendSelectLoop) {
				mutex.release();
				return true;
			}
			mutex.release();
		}

		if (buffered) {
			var r = length > 0; // NOTE mutex inside get_length()
			if (closed && selectBool)
				r = true; // closed channels can always be got, but may return default value if nothing in transit
			else if (!selectBool && !r) { // not in a select statement & no data,
				r = !closed; // so return if there might ever be more data
			}
			if (debug)
				trace(index + "__isGet__ result", r);
			return r;
		}

		// non-buffered logic below
		var r = false;
		if (selectBool) // if we are in a select statement, is there data waiting?
		{
			mutex.acquire();
			if (getCount == 0) {
				// no get is in progress
				if (sendCount == 0) {
					// no send is in progress
					r = closed; // you can get the default value if it is closed
				} else {
					// a send is in progress, so there must be data to get
					r = true; // Get can always proceed and wait for a send
				}
			} else {
				// a get is in progress, so we can't do another
				r = false;
			}
			mutex.release();
		} else
			r = !closed;

		if (debug)
			trace(index + "__isGet__ unbuffered result", r);

		return r;
	}

	// here to make code clear
	private inline function gosched():Void {
		// TODO	use:	stdgo._internal.runtime.gosched();
		// TODO review when Haxe coroutines are implemented
		stdgo._internal.internal.Async.tick();
		#if (target.threaded)
		Sys.sleep(0.001); // wait 1 milisecond ... obviously, this is a kludge for thread-per-goroutine
		#end
	}

	/**
		Spec: 
		The value of ok is true if the value received was delivered by a successful send operation to the channel, 
		or false if it is a zero value generated because the channel is closed and empty.
	**/
	public function __smartGet__():{_0:T, _1:Bool} {
		if (buffered) {
			while (true) {
				mutex.acquire();
				if (closed) {
					if (length > 0) {
						final value = buffer.shift();
						mutex.release();
						return {_0: value, _1: true};
					}
					mutex.release();
					return {_0: defaultValue(), _1: false};
				}
				if (length > 0) { // is there immediate data to get, like in a select statement?
					final value = buffer.shift();
					mutex.release();
					if (debug)
						trace(index + "__smartGet__ success");
					return {_0: value, _1: true};
				}
				// nothing to get, so wait
				mutex.release();
				gosched();
			}
		} else { // unbuffered channel get
			/* 
				"By default channels are unbuffered, meaning that they will only accept sends (chan <-) 
				if there is a corresponding receive (<- chan) ready to receive the sent value."
			 */
			mutex.acquire();
			getCount++; // this get is starting
			mutex.release();
			while (true) {
				mutex.acquire();
				if (dataWaiting || closed) {
					var r = defaultValue(); // value if closed
					var ok = false; // value if closed
					if (dataWaiting) {
						r = unbufferedData;
						dataWaiting = false;
						ok = true; // value did come from a send
					}
					getCount--; // this get is over
					mutex.release();
					return {_0: r, _1: ok};
				}
				mutex.release();
				gosched();
			}
		}
	}

	public inline function __get__():T {
		var tup = this.__smartGet__();
		return tup._0;
	}

	public function __isSend__(selectBool:Bool = false):Bool {
		if (closed) {
			return false;
		}

		if (selectBool) {
			mutex.acquire();
			inSendSelectLoop = true;
			if (inGetSelectLoop) {
				mutex.release();
				return true;
			}
			mutex.release();
		}

		if (buffered) {
			var b = true; // you can always send to an open channel
			if (selectBool)
				b = length < capacity; // but in a select statement, it needs to have capacity NOTE mutex inside get_length
			return b;
		}

		// unbuffered logic below
		var b = true; // usually can always send
		if (selectBool) { // but if we are in a select statement
			b = false;
			mutex.acquire();
			if (sendCount == 0) {
				// no send is in progress
				if (getCount == 0) {
					// no get is in progress
				} else {
					// a get is in progress, so we can send
					b = true;
				}
			}
			mutex.release();
		}
		if (debug)
			trace(index + "__isSend__ result=" + b, length, buffered);
		return b;
	}

	// send a value to a channel
	public function __send__(value:T) {
		if (buffered) { // buffered send

			while (true) {
				mutex.acquire();
				if (closed) {
					mutex.release();
					throw "send to closed channel";
				}
				if (length < capacity) { // is it possible to send? As if in a select statement
					buffer.push(value);
					mutex.release();
					if (debug)
						trace(index + "end of __send__");
					return;
				}
				mutex.release();
				gosched();
			}
		} else { // unbuffered send

			/* 
				"By default channels are unbuffered, meaning that they will only accept sends (chan <-) 
				if there is a corresponding receive (<- chan) ready to receive the sent value."
			 */

			if (closed) { // no mutex required, as read-only
				if (debug)
					trace(index + "closed unbuffered __send__");
				throw "send to closed channel";
			}

			mutex.acquire();
			sendCount++; // this send is starting
			mutex.release();
			while (true) { // wait for a slot to send
				mutex.acquire();
				if (!dataWaiting) { // a data transfer is not in progress
					// set-up transfer to the "get"
					unbufferedData = value;
					dataWaiting = true;
					mutex.release();
					gosched();

					while (true) { // wait for the transfer to take place
						mutex.acquire();
						if (!dataWaiting) {
							sendCount--; // this send is over
							mutex.release();
							if (debug)
								trace(index + "unbuffered __send__");
							return;
						}
						mutex.release();
						gosched();
					}
				}
				mutex.release();
				gosched();
			}
		}
	}

	public inline function iterator()
		return new ChanIterator(this);

	public inline function toString():String {
		return "Chan:"+Std.string(index);
	}

	public function __close__() {
		if (debug)
			trace(index + "close");
		mutex.acquire();
		closed = true;
		mutex.release();
	}
}

private class ChanIterator<T> {
	var chan:ChanData<T>;

	public inline function new(chan:ChanData<T>) {
		this.chan = chan;
	}

	/**
	 * For channels, the iteration values produced are the successive values sent on the channel until the channel is closed. If the channel is nil, the range expression blocks forever. 
	 */
	public inline function hasNext() {
		return chan.__isGet__(false); // not in a select statement, so include "is-closed?" logic
	}

	public inline function next() {
		return chan.__get__();
	}
}
