package stdgo;

import haxe.ds.Vector;

class Chan<T> {
	var data:Vector<T> = null;
	var getIndex:Int = 0;
	var setIndex:Int = 0;

	public var length(get, null):Int;

	function get_length():Int {
		return setIndex - getIndex;
	}

	public function new(length:Int) {
		data = new Vector<T>(length);
	}

	public inline function get():T {
		return data[getIndex++];
	}

	public inline function send(value:T) {
		data[setIndex++] = value;
	}
	public inline function cap() {
		return data.length;
	}
}
