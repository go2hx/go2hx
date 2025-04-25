package stdgo;

#if (target.threaded)
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
	var buffered:Bool = false; // TODO separate buffered & unbuffered implementations using an interface

	// Go required fields
	public var length(get, never):GoInt;
	public var capacity:GoInt;

	// general mutex when handling internal vars in ChanData
	// a mutex must be get & set by the same thread
	var mutex = new sys.thread.Mutex();

	// thread-control variables for buffered send/get, see https://api.haxe.org/sys/thread/Condition.html
	var sendCondition = new sys.thread.Condition();
	var getCondition = new sys.thread.Condition();

	// separate variables to coordinate and implement an unbuffered channel
	var unbufferedData:T;
	var dataWaiting = false;
	final unbufferedLockWait = 0.001; // in seconds TODO check if this time could be shorter
	var sendLock = new sys.thread.Lock();
	var getLock = new sys.thread.Lock();
	var transferedSemaphore = new sys.thread.Semaphore(0);
	var sendRunningSemaphore = new sys.thread.Semaphore(0);
	var getRunningSemaphore = new sys.thread.Semaphore(0);

	// Debug
	public static var count:Int = 0; // the number of chan if in debug mode
	public static inline var debug = false;

	var index:Int = 0; // this chan id, if in debug mode

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
		if (!buffered) {
			sendLock.release();
			getLock.release();
		}
		if (debug) {
			mutex.acquire();
			index = count;
			count++;
			mutex.release();
		}
	}

	// __reset__() is called by the generated Go "select" code
	// after: __isGet__(true) or __isSend__(true)
	// and before: __get__() or __send__(value)
	// after the code rework, it can be a no-op
	inline public function __reset__() {}

	// can a value be got from the channel?
	public function __isGet__(selectBool:Bool = false):Bool {
		if (debug)
			trace(index + "__isGet__ " + selectBool, length, buffered);

		if (buffered) {
			if (closed && selectBool)
				return true; // closed channels can always be got, but may return default value if nothing in transit

			var r = length > 0; // NOTE mutex inside get_length()
			if (!selectBool && !r) { // not in a select statement & no data,
				r = !closed; // so return if there might ever be more data
			}
			return r;
		}

		// non-buffered logic below
		if (selectBool) // if we are in a select statement, is there data waiting?
			if (getLock.wait(unbufferedLockWait)) {
				// no get is in progress
				getLock.release();
				if (sendLock.wait(unbufferedLockWait)) {
					// no send is in progress
					sendLock.release();
					return closed; // you can get the default value if it is closed
				} else {
					// a send is in progress, so there must be data to get
					return true;
				}
			} else {
				// a get is in progress, so we can't do another
				return false;
			}
		else
			return !closed;
	}

	/**
		Spec: 
		The value of ok is true if the value received was delivered by a successful send operation to the channel, 
		or false if it is a zero value generated because the channel is closed and empty.
	**/
	public function __smartGet__():{_0:T, _1:Bool} {
		if (buffered) {
			getCondition.acquire();
			while (true) {
				mutex.acquire();
				if (closed) {
					if (length > 0) {
						final value = buffer.shift();
						mutex.release();
						getCondition.release();
						return {_0: value, _1: true};
					}
					mutex.release();
					getCondition.release();
					return {_0: defaultValue(), _1: false};
				}
				if (this.__isGet__(true)) { // is there immediate data to get, like in a select statement?
					final value = buffer.shift();
					mutex.release();
					getCondition.release();

					sendCondition.acquire();
					sendCondition.signal(); // allow blocked send to go ahead
					sendCondition.release();
					if (debug)
						trace(index + "__smartGet__ success");
					return {_0: value, _1: true};
				}
				// nothing to get, so wait
				if (debug)
					trace(index + "__smartGet__ getCondition.wait()");
				mutex.release();
				getCondition.wait(); // wait at this point until something to get
				if (debug)
					trace(index + "wake-up __smartGet__");
			}
		} else { // unbuffered channel get
			/* 
				"By default channels are unbuffered, meaning that they will only accept sends (chan <-) 
				if there is a corresponding receive (<- chan) ready to receive the sent value."
			 */

			getLock.wait();

			getRunningSemaphore.release(); // get's running
			sendRunningSemaphore.acquire(); // wait for send

			// the two threads are now synchronised
			if (debug)
				trace(index, "unbuffered Get sync");

			mutex.acquire();

			if (closed) {
				if (debug)
					trace(index + "closed unbuffered __smartGet__");
				var r = defaultValue();
				if (dataWaiting) {
					r = unbufferedData;
					dataWaiting = false;
				}
				transferedSemaphore.release();
				mutex.release();
				getLock.release();
				return {_0: r, _1: false};
			}

			// transfer the data to the get side

			if (debug)
				trace(index + "data transferred in unbuffered __smartGet__");
			var r = unbufferedData;
			dataWaiting = false;

			mutex.release();
			transferedSemaphore.release();
			getLock.release();
			return {_0: r, _1: true};
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
			if (sendLock.wait(unbufferedLockWait)) {
				// no send is in progress
				if (getLock.wait(unbufferedLockWait)) {
					// no get is in progress
					getLock.release();
				} else {
					// a get is in progress, so we can send
					b = true;
				}
				sendLock.release();
			}
		}
		if (debug)
			trace(index + "__isSend__ " + b, length, buffered);
		return b;
	}

	// send a value to a channel
	public function __send__(value:T) {
		if (buffered) { // buffered send
			sendCondition.acquire();
			while (true) {
				mutex.acquire();
				if (closed) {
					mutex.release();
					sendCondition.release();

					getCondition.acquire();
					getCondition.broadcast(); // unblock all blocked gets
					getCondition.release();
					throw "send to closed channel";
				}
				if (this.__isSend__(true)) { // is it possible to send? As if in a select statement
					// send value
					buffer.push(value);
					mutex.release();
					sendCondition.release();

					getCondition.acquire();
					getCondition.signal(); // unblock a blocked get, if any
					getCondition.release();
					if (debug)
						trace(index + "end of __send__");
					return;
				}
				mutex.release();
				if (debug)
					trace(index + "__send__ wait");
				sendCondition.wait(); // sleep until smartGet awakes you
				if (debug)
					trace(index + "wake-up __send__");
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

			sendLock.wait();

			// set-up transfer to the "get"
			mutex.acquire();
			unbufferedData = value;
			dataWaiting = true;
			mutex.release();

			sendRunningSemaphore.release(); // send's running
			getRunningSemaphore.acquire(); // wait for get

			// the two threads are now synchronised
			if (debug)
				trace(index, "unbuffered Send sync");

			transferedSemaphore.acquire(); // wait for the transfer of data to complete

			if (debug)
				trace(index + "unbuffered __send__");

			sendLock.release();
			return;
		}
	}

	public inline function iterator()
		return new ChanIterator(this);

	public inline function toString():String {
		return "0x0";
	}

	public function __close__() {
		if (debug)
			trace(index + "close");
		mutex.acquire();
		closed = true;
		mutex.release();

		if (buffered) {
			getCondition.acquire();
			getCondition.broadcast(); // allow all blocked gets to go ahead
			getCondition.release();

			sendCondition.acquire();
			sendCondition.broadcast(); // allow all blocked sends to go ahead (and probably error)
			sendCondition.release();
		} else { // unbuffered
			sendRunningSemaphore.release(); // there will be no more sends
		}
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
#else
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

// javascript implementation
class ChanData<T> {
	public function new(length:GoInt, defaultValue:Void->T) {}

	public var capacity(get, never):GoInt;

	function get_capacity():GoInt
		return this.length;

	public var length:GoInt = 0;

	public function __isSend__(reset:Bool = true):Bool
		return false;

	public function __get__():T
		return null;

	public var __mutex__:Dynamic = null;

	public function __send__(a:T) {}

	public function __close__() {}

	public function __isGet__(reset:Bool = true):Bool
		return true;

	public function acquire() {}

	public function __reset__() {}
}
#end
