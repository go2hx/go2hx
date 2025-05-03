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
	public static inline var debug = false;
	public static var count:Int = 0; // the number of channels
	public static var staticMutex = #if target.threaded new sys.thread.Mutex() #else {acquire: () -> {}, release: () -> {}} #end;

	var index:Int = 0; // this chan id, used in toString - useful even not in local debug mode

	function get_length():GoInt {
		mutex.acquire();
		var r = buffer.length;
		mutex.release();
		return r;
	}

	public function new(length:GoInt, defaultValue) {
		mutex.acquire();
		buffered = length > 0;
		this.capacity = length;
		this.defaultValue = defaultValue;
		staticMutex.acquire();
		index = count;
		count++;
		staticMutex.release();
		mutex.release();
		if (debug) {
			trace(index + "new Chan", length, defaultValue);
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
			trace(index + "__isGet__ " + selectBool);

		mutex.acquire();

		if (selectBool) {
			inGetSelectLoop = true;
			// NOTE go ahead with send if also inSendLoop, but not get
		}

		if (buffered) {
			var r = length > 0; // NOTE mutex inside get_length()
			if (closed && selectBool)
				r = true; // closed channels can always be got, but may return default value if nothing in transit
			else if (!selectBool && !r) { // not in a select statement & no data,
				r = !closed; // so return if there might ever be more data
			}
			if (debug)
				trace(index + "__isGet__ buffered result", r);
			mutex.release();
			return r;
		}

		// non-buffered logic below
		var r = true; // the return value
		if (selectBool) // if we are in a select statement, is there data waiting?
		{
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
		} else {
			while (!closed && sendCount == 0) {
				// wait in a loop for close or new value
				mutex.release();
				if (debug)
					trace(index + "__isGet__ unbuffered await close or send");
				gosched();
				mutex.acquire();
			}

			r = !closed;
		}

		if (debug)
			trace(index + "__isGet__ unbuffered result", r);

		mutex.release();

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
		#if (!target.threaded)
		throw "Channel not supported on non threaded targets";
		#end
		if (debug)
			trace(index + " __smartGet__");

		var waitCount = 0; // used for debug purposes to track long wait times

		if (buffered) {
			var waitCount = 0;
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
				if (debug) {
					waitCount++;
					if (waitCount > 100 && waitCount % 1000 == 1)
						trace(index + " get buffered data wait", length, closed);
				}
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
						if (debug)
							trace(index + " unbuffered __smartGet__ data transfered:", r);
					}
					if (debug)
						trace(index + " unbuffered __smartGet__ ok:", ok);
					getCount--; // this get is over
					mutex.release();
					return {_0: r, _1: ok};
				}
				mutex.release();
				if (debug) {
					waitCount++;
					if (waitCount > 100 && waitCount % 1000 == 1) {
						trace(index + " get unbuffered data wait", dataWaiting, getCount, sendCount, closed);
						throw "get unbuffered data wait";
					}
				}
				gosched();
			}
		}
	}

	public inline function __get__():T {
		var tup = this.__smartGet__();
		return tup._0;
	}

	public function __isSend__(selectBool:Bool = false):Bool {
		if (debug)
			trace(index + " __isSend__", selectBool);
		mutex.acquire();

		if (closed) {
			mutex.release();
			return false;
		}

		if (selectBool) {
			inSendSelectLoop = true;
			if (inGetSelectLoop) { // NOTE this logic is only on the send side, not the get side
				mutex.release();
				if (debug)
					trace(index + " __isSend__ both in select loops", true);
				return true;
			}
		}

		if (buffered) {
			var b = true; // you can always send to an open channel
			if (selectBool)
				b = length < capacity; // but in a select statement, it needs to have capacity NOTE mutex inside get_length
			mutex.release();
			if (debug)
				trace(index + " __isSend__ buffered", b);
			return b;
		}

		// unbuffered logic below
		var b = true; // usually can always send
		if (selectBool) { // but if we are in a select statement
			b = false;
			if (sendCount == 0) {
				// no send is in progress
				if (getCount == 0) {
					// no get is in progress
				} else {
					// a get is in progress, so we can send
					b = true;
				}
			}
		}
		mutex.release();
		if (debug)
			trace(index + "__isSend__ unbuffered", b);
		return b;
	}

	// send a value to a channel
	public function __send__(value:T) {
		#if (!target.threaded)
		throw "Channel not supported on non threaded targets";
		#end
		if (debug)
			trace(index + " begin __Send__ ", value);

		var waitCount = 0; // used to track long wait times for debug

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
						trace(index + " end of buffered __send__");
					return;
				}
				mutex.release();
				if (debug) {
					waitCount++;
					if (waitCount > 100 && waitCount % 1000 == 1)
						trace(index + " buffered send data wait", length, closed);
				}
				gosched();
			}
		} else { // unbuffered send

			/* 
				"By default channels are unbuffered, meaning that they will only accept sends (chan <-) 
				if there is a corresponding receive (<- chan) ready to receive the sent value."
			 */

			mutex.acquire();
			sendCount++; // this send is starting
			mutex.release();
			while (true) { // wait for a slot to send
				mutex.acquire();
				if ((!dataWaiting && getCount > 0) || closed) { // a data transfer is not in progress && a matching get is waiting OR closed

					if (closed) { // no mutex required, as read-only
						sendCount--; // this send is over
						mutex.release();
						if (debug)
							trace(index + "closed unbuffered __send__");
						throw "send to closed channel";
					}

					// set-up transfer to the "get"
					unbufferedData = value;
					dataWaiting = true;
					sendCount--; // this send is effectively over
					mutex.release();

					gosched(); // give space for the transfer to take place

					var waitCountTX = 0;
					while (true) { // wait for the transfer to take place
						mutex.acquire();
						if (!dataWaiting) {
							mutex.release();
							if (debug)
								trace(index + " unbuffered __send__ complete");
							return;
						}
						mutex.release();
						if (debug) {
							waitCountTX++;
							if (waitCountTX > 100 && waitCountTX % 1000 == 1)
								trace(index + " unbufffered send tx wait", dataWaiting, getCount, sendCount, closed);
						}
						gosched();
					}
				}
				mutex.release();
				if (debug) {
					waitCount++;
					if (waitCount > 100 && waitCount % 1000 == 1) {
						trace(index + " unbuffered send get wait", dataWaiting, getCount, sendCount, closed);
						throw "send unbuffered data wait";
					}
				}
				gosched();
			}
		}
	}

	public inline function iterator()
		return new ChanIterator(this);

	public inline function toString():String {
		return "0x0" + Std.string(index);
	}

	public function __close__() {
		if (debug)
			trace(index + " close", dataWaiting, getCount, sendCount, closed);
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
