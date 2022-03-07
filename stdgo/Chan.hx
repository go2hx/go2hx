package stdgo;

import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;
import sys.thread.Mutex;

class Chan<T> {
	var buffer:Array<T> = null;

	public var passValue:T = null;

	public var onSend:Array<{value:T, f:Void->Void}> = [];
	public var onGet:Array<Void->Void> = [];

	var defaultValue:Void->T = null;

	var closed:Bool = false;

	public var mutex = new Mutex();

	public var sendWg = new sys.thread.Lock();
	public var getWg = new sys.thread.Lock();

	public var length(get, null):GoInt;

	var setNil:Bool = false;

	function get_length():GoInt {
		return buffer == null ? 0 : buffer.length;
	}

	public var _cap:Int = -1;

	public function isNil():Bool
		return setNil;

	public function new(length:GoInt, defaultValue, setNil:Bool = false) {
		if (length.toBasic() != 0)
			buffer = [];
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
		if (buffer != null) {
			mutex.acquire();
			if (buffer.length == 0) {
				mutex.release();
				return {value: defaultValue(), ok: false};
			}
			final value = buffer.shift();
			mutex.release();
			return {value: value, ok: true};
		} else {
			if (!getWg.wait(0))
				return {value: defaultValue(), ok: false};
			final value = passValue;
			passValue = null;
			return {value: value, ok: true};
		}
	}

	public function __get__():T {
		if (closed)
			return defaultValue();
		if (buffer != null) {
			mutex.acquire();
			if (buffer.length > 0) {
				final value = buffer.shift();
				mutex.release();
				return value;
			}
			mutex.release();
			sendWg.release();
			while (!getWg.wait(0.01))
				stdgo.internal.Async.tick();
			mutex.acquire();
			final event = onSend.pop();
			if (event != null) {
				buffer.push(event.value);
				event.f();
			}
			mutex.release();
			return buffer.shift();
		}
		sendWg.release();
		while (!getWg.wait(0.01))
			stdgo.internal.Async.tick();
		mutex.acquire();
		final value = passValue;
		final event = onSend.pop();
		mutex.release();
		if (event != null) {
			event.f();
			return event.value;
		}
		return value;
	}

	public function __buffer_send__(value:T):Bool {
		if (buffer != null) {
			mutex.acquire();
			buffer.push(passValue);
			passValue = value;
			final event = onSend.pop();
			mutex.release();
			if (event != null) {
				event.f();
			}
			getWg.release();
			return true;
		}
		return false;
	}

	public function __send__(value:T) {
		if (buffer != null) {
			mutex.acquire();
			passValue = value;
			buffer.push(passValue);
			final event = onGet.pop();
			mutex.release();
			if (event != null)
				event();
			getWg.release();
		} else {
			while (!sendWg.wait(0.01))
				stdgo.internal.Async.tick();
			passValue = value;
			getWg.release();
			mutex.acquire();
			final event = onGet.pop();
			mutex.release();
			if (event != null)
				event();
		}
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

private class ChanKeyValueIterator<T> {
	var offset:Int = 0;
	var chan:Chan<T>;

	public inline function new(chan:Chan<T>) {
		this.chan = chan;
	}

	public inline function hasNext()
		return offset < chan.length;

	public inline function next():{key:T, value:Bool} {
		final tmp = chan.__smartGet__();
		return {key: tmp.value, value: tmp.ok};
	}
}

private class ChanIterator<T> {
	var pos:Int = 0;
	var chan:Chan<T>;

	public inline function new(chan:Chan<T>) {
		this.chan = chan;
	}

	public inline function hasNext() {
		return pos < chan.length;
	}

	public inline function next() {
		pos++;
		return chan.__get__();
	}
}
