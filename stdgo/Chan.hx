package stdgo;

import stdgo.StdGoTypes.GoInt;
#if (target.threaded)
import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;
import stdgo.internal.Async;
import sys.thread.Deque;
import sys.thread.Lock;
import sys.thread.Mutex;
import sys.thread.Thread;

@:forward
@:forward.new
abstract Chan<T>(ChanData<T>) from ChanData<T> to ChanData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	function get_length():GoInt {
		return this != null ? this.length : 0;
	}

	function get_capacity():GoInt
		return this != null ? this.capacity : 0;
}

class ChanData<T> {
	private var __buffer__:ChanBuffer<T> = null;

	var defaultValue:Void->T = null;

	var closed:Bool = false;

	public var __sendBool__:Bool = false;
	public var __getBool__:Bool = false;
	public var __sendWg__ = new Lock();

	public var __mutex__ = new Mutex();

	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	function get_length():GoInt {
		return __buffer__.length;
	}

	function get_capacity():GoInt
		return __buffer__.length;

	public function new(length:GoInt, defaultValue) {
		__buffer__ = new ChanBuffer(length.toBasic());
		this.defaultValue = defaultValue;
	}

	public function __isSend__(reset:Bool = true):Bool {
		__mutex__.acquire();
		final value = __sendBool__;
		if (reset && value)
			__sendBool__ = false;
		__mutex__.release();
		return value;
	}

	public function __isGet__(reset:Bool = true):Bool {
		__mutex__.acquire();
		final value = __getBool__;
		if (reset && value)
			__getBool__ = false;
		__mutex__.release();
		return value;
	}

	public function __smartGet__():{value:T, ok:Bool} {
		if (__buffer__.length == 0)
			return {value: defaultValue(), ok: false}
		__mutex__.acquire();
		__getBool__ = false;
		__mutex__.release();
		__sendWg__.release();
		return {value: __buffer__.pop(), ok: true};
	}

	public function __get__():T {
		if (closed)
			return defaultValue();
		__mutex__.acquire();
		__sendBool__ = true;
		__mutex__.release();
		__sendWg__.release();
		final value = __buffer__.pop();
		__mutex__.acquire();
		__getBool__ = false;
		__mutex__.release();
		return value;
	}

	public function __send__(value:T) {
		if (closed)
			return;
		if (__buffer__.buffered) {
			__sendWg__.wait(0);
			__mutex__.acquire();
			__getBool__ = true;
			__buffer__.push(value);
			__sendBool__ = false;
			__mutex__.release();
			return;
		}
		__mutex__.acquire();
		__getBool__ = true;
		__mutex__.release();
		while (true) { // blocking
			if (__sendWg__.wait(0.01))
				break;
			Async.tick();
		}
		__buffer__.push(value);
		__mutex__.acquire();
		__sendBool__ = false;
		__mutex__.release();
	}

	public inline function keyValueIterator()
		return new ChanKeyValueIterator(this);

	public inline function iterator()
		return new ChanIterator(this);

	public function toString() {
		return "0x0";
	}

	public inline function __close__() {
		closed = true;
	}
}

private class ChanBuffer<T> {
	var buffer:Deque<T> = null;

	@:isVar public var length(get, set):Int = 0;
	public var mutex:Mutex = null;

	function get_length():Int {
		mutex.acquire();
		final i = length;
		mutex.release();
		return i;
	}

	function set_length(value:Int):Int {
		mutex.acquire();
		length = value;
		mutex.release();
		return length;
	}

	public var buffered:Bool = false;

	public function new(bufferLength) {
		this.buffered = bufferLength > 0;
		this.buffer = new Deque();
		this.mutex = new Mutex();
	}

	public function push(value:T) {
		buffer.push(value);
		length++;
	}

	public function pop():T {
		var value:T = null;
		while (true) {
			if (length > 0) {
				value = buffer.pop(true);
				break;
			}
			Async.tick();
			Sys.sleep(0.01);
		}
		length--;
		return value;
	}

	public function add(value:T) {
		buffer.add(value);
		length++;
	}
}

private class ChanKeyValueIterator<T> {
	var chan:Chan<T>;

	public inline function new(chan:Chan<T>) {
		this.chan = chan;
	}

	public inline function hasNext()
		return chan.length > 0;

	public inline function next():{key:T, value:Bool} {
		final tmp = chan.__smartGet__();
		return {key: tmp.value, value: tmp.ok};
	}
}

private class ChanIterator<T> {
	var chan:Chan<T>;

	public inline function new(chan:Chan<T>) {
		this.chan = chan;
	}

	public inline function hasNext() {
		return chan.length > 0;
	}

	public inline function next() {
		return chan.__get__();
	}
}
#else
class Chan<T> {
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

	public var __getBool__:Bool = false;
	public var __sendBool__:Bool = false;

	public function __send__(a:T) {}

	public function __close__() {}

	public function __isGet__(reset:Bool = true):Bool
		return true;

	public function acquire() {}
}
#end
