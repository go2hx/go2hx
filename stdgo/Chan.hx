package stdgo;

import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;
import stdgo.internal.Async;
import sys.thread.Deque;
import sys.thread.Lock;
import sys.thread.Mutex;
import sys.thread.Thread;

class Chan<T> {
	private var __buffer__:ChanBuffer<T> = null;

	var defaultValue:Void->T = null;

	var closed:Bool = false;

	public var __sendBool__:Bool = false;
	public var __getBool__:Bool = false;
	public var __sendWg__ = new Lock();

	public var __mutex__ = new Mutex();

	public var length(get, null):GoInt;

	var setNil:Bool = false;

	function get_length():GoInt {
		return __buffer__.length;
	}

	public var _cap:Int = -1;

	public function isNil():Bool
		return setNil;

	public function new(length:GoInt, defaultValue, setNil:Bool = false) {
		__buffer__ = new ChanBuffer(length.toBasic());
		this.setCap(length);
		this.setNil = setNil;
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

	public inline function cap():GoInt {
		return _cap == -1 ? length : _cap;
	}

	public function setCap(cap:GoInt):Chan<T> {
		this._cap = cap.toBasic();
		return this;
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
		if (this.setNil)
			return "null";
		return "0x0";
	}

	public inline function __close__() {
		closed = true;
	}
}

private class ChanBuffer<T> {
	var buffer:Deque<T> = null;

	@:isVar public var length(get, set):Int;
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
			value = buffer.pop(false);
			if (value != null)
				break;
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
