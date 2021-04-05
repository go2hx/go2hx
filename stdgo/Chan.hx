package stdgo;

import haxe.ds.Vector;

class Chan<T> {
	var data:Vector<T>;
	var getIndex:Int = 0;
	var setIndex:Int = 0;
	var defaultValue:T;

	public var length(get, null):Int;

	function get_length():Int {
		return setIndex - getIndex;
	}

	public function new(length:Int,defaultValue) {
		data = new Vector<T>(length);
		this.defaultValue = defaultValue;
	}

	public inline function get():T {
		if (data.length <= getIndex)
			return defaultValue;
		return data[getIndex++];
	}
	public inline function getMulti():{value:T,ok:Bool} {
		return {value: get(),ok: data.length > getIndex};
	}

	public inline function send(value:T) {
		data[setIndex++] = value;
	}

	public inline function cap() {
		return data.length;
	}
}
