package stdgo;

import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;

class Chan<T> {
	var data:Vector<T>;
	var getIndex:Int = 0;
	var setIndex:Int = 0;
	var defaultValue:Void->T;
	var closed:Bool = false;

	public var length(get, null):GoInt;
	public var _cap:Int = -1;

	var setNil:Bool = false;

	function get_length():GoInt {
		return setIndex - getIndex;
	}

	public function isNil():Bool
		return setNil;

	public function new(length:GoInt, defaultValue, setNil:Bool = false) {
		data = new Vector<T>(length.toBasic());
		this.setNil = setNil;
		this.defaultValue = defaultValue;
	}

	public function setCap(cap:GoInt):Chan<T> {
		this._cap = cap.toBasic();
		return this;
	}

	public inline function get():T {
		if (data.length <= getIndex)
			return defaultValue();
		return data[getIndex++];
	}

	public inline function smartGet():{value:T, ok:Bool} {
		if (data.length <= getIndex)
			return {value: defaultValue(), ok: false};
		return {value: data[getIndex++], ok: false};
	}

	public inline function keyValueIterator()
		return new ChanKeyValueIterator(this);

	public inline function send(value:T) {
		data[setIndex++] = value;
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

class ChanKeyValueIterator<T> {
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
