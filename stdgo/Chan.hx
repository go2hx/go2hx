package stdgo;

import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;

class Chan<T> {
	var buffer:Array<T> = null;
	var passValue:T = null;
	var defaultValue:Void->T = null;
	var closed:Bool = false;

	#if (target.threaded)
	var mutex = new sys.thread.Mutex();
	var sendMutex = new sys.thread.Mutex();
	var sendWg = new sys.thread.Lock();
	var getWg = new sys.thread.Lock();
	#end

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

	public function get(blocking:Bool = true):{value:T, ok:Bool} {
		if (buffer != null) {
			if (buffer.length == 0)
				return {value: defaultValue(), ok: false};
			mutex.acquire();
			final value = buffer.shift();
			mutex.release();
			return {value: value, ok: true};
		} else {
			sendWg.release();
			if (!getWg.wait(blocking ? null : 0.1)) {
				sendWg.wait(0);
				return {value: defaultValue(), ok: false};
			}
			return {value: passValue, ok: true};
		}
	}

	public function send(value:T, blocking:Bool = true):Bool {
		if (buffer != null) {
			mutex.acquire();
			buffer.push(value);
			mutex.release();
			return true;
		} else {
			if (!sendWg.wait(blocking ? null : 0.1))
				return false;
			passValue = value;
			getWg.release();
			return true;
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

	public inline function close() {
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

	public inline function next():{key:T, value:Bool}
		return {key: chan.get().value, value: false};
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
		return chan.get();
	}
}
