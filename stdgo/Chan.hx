package stdgo;

import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;
import stdgo.internal.Async;
import sys.thread.Deque;
import sys.thread.Lock;
import sys.thread.Mutex;
import sys.thread.Thread;

private enum ChanState {
	GET;
	SEND;
}

class Chan<T> {
	public var buffer:ChanBuffer<T> = null;

	public var __wg__:Lock = null;
	public var __state__:ChanState = null;
	public var __find__:ChanState = null;

	var defaultValue:Void->T = null;

	var closed:Bool = false;

	public var __mutex__ = new Mutex();

	public var sendWg = new Lock();

	public var length(get, null):GoInt;

	var setNil:Bool = false;

	function get_length():GoInt {
		return buffer.length;
	}

	public var _cap:Int = -1;

	public function isNil():Bool
		return setNil;

	public function new(length:GoInt, defaultValue, setNil:Bool = false) {
		buffer = new ChanBuffer(length.toBasic());
		this.setCap(length);
		this.setNil = setNil;
		this.defaultValue = defaultValue;
	}

	public inline function cap():GoInt {
		return _cap == -1 ? length : _cap;
	}

	public function setCap(cap:GoInt):Chan<T> {
		this._cap = cap.toBasic();
		return this;
	}

	public function __smartGet__():{value:T, ok:Bool} {
		sendWg.release();
		if (buffer.length == 0)
			return {value: defaultValue(), ok: false};
		return {value: buffer.pop(), ok: true};
	}

	public function __get__():T {
		trace("__get__");
		if (closed)
			return defaultValue();
		sendWg.release(); // send value
		__state__ = GET;
		if (__wg__ != null)
			__wg__.release();
		final value = buffer.pop(); // blocking
		__state__ = null;
		return value; // get value
	}

	public function __send__(value:T) {
		if (buffer.buffered) {
			sendWg.wait(0);
			__mutex__.acquire();
			buffer.push(value); // non blocking
			__state__ = SEND;
			if (__wg__ != null)
				__wg__.release();
			__mutex__.release();
			return;
		}
		__mutex__.acquire();
		__state__ = SEND;
		if (__wg__ != null)
			__wg__.release();
		__mutex__.release();
		while (true) { // blocking
			if (sendWg.wait(0.01))
				break;
			Async.tick();
		}
		buffer.push(value); // send value
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
