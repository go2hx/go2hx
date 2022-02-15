package stdgo;

import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;

class Chan<T> {
	var list:Array<T> = [];
	var defaultValue:Void->T;
	var closed:Bool = false;
	#if (target.threaded)
	var mutex = new sys.thread.Mutex();
	#end

	public var length(get, null):GoInt;
	public var _cap:Int = -1;

	var setNil:Bool = false;

	function get_length():GoInt {
		return list.length;
	}

	public function isNil():Bool
		return setNil;

	public function new(length:GoInt, defaultValue, setNil:Bool = false) {
		this.setNil = setNil;
		this.defaultValue = defaultValue;
	}

	public function setCap(cap:GoInt):Chan<T> {
		this._cap = cap.toBasic();
		return this;
	}

	public function get():T {
		if (list.length == 0)
			return defaultValue();
		#if (target.threaded)
		mutex.acquire();
		#end
		final value = list.shift();
		#if (target.threaded)
		mutex.release();
		#end
		return value;
	}

	public function smartGet():{value:T, ok:Bool} {
		if (list.length == 0)
			return {value: defaultValue(), ok: false};
		#if (target.threaded)
		mutex.acquire();
		#end
		final value = list.shift();
		#if (target.threaded)
		mutex.release();
		#end
		return {value: value, ok: true};
	}

	public inline function keyValueIterator()
		return new ChanKeyValueIterator(this);

	public inline function iterator()
		return new ChanIterator(this);

	public inline function send(value:T) {
		#if (target.threaded)
		mutex.acquire();
		#end
		list.push(value);
		#if (target.threaded)
		mutex.release();
		#end
	}

	public inline function cap():GoInt {
		return _cap == -1 ? length : _cap;
	}

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
		return {key: chan.get(), value: false};
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
