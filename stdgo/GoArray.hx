package stdgo;

import haxe.Rest;
import haxe.ds.Vector;
import haxe.rtti.Meta;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes;

class VectorData<T> {
	public var vector:Vector<T>;

	public var length(get, never):Int;
	public var capacity(get, never):Int;

	function get_length():Int {
		return vector.length;
	}

	function get_capacity():Int {
		return vector.length;
	}

	public function new(length) {
		vector = new Vector<T>(length);
	}

	public function get(i:Int):T
		return vector.get(i);

	public function set(i:Int, value:T):T
		return vector.set(i, value);

	public function toString():String
		return vector == null ? "null" : "[" + vector.toArray().join(" ") + "]";
}

// @:generic
abstract GoArray<T>(VectorData<T>) from VectorData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	@:from private static function fromVector<T>(vector:Vector<T>):GoArray<T> {
		var data = new VectorData<T>(vector.length);
		data.vector = vector;
		return data;
	}

	private function get_length():GoInt {
		return this != null ? this.length : 0;
	}

	private function get_capacity():GoInt {
		return this != null ? this.capacity : 0;
	}

	public function iterator() {
		return new VectorIterator(this.vector);
	}

	public function keyValueIterator():KeyValueIterator<GoInt, T> {
		return new VectorKeyValueIterator(this.vector);
	}

	public function new(args:Rest<T>) {
		this = new VectorData<T>(args.length);
		for (i in 0...args.length) {
			this.set(i, args[i]);
		}
	}

	private function __boundsCheck__(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= this.length) {
			throw "array out of bounds, index: " + i + " length: " + length.toBasic();
		}
		#end
	}
	// maybe bound checks are not required, because the length is already known for GoArrays
	@:op([]) public function __set__(index:GoInt, value:T):T {
		__boundsCheck__(index.toBasic());
		return this.set(index.toBasic(), value);
	}

	@:op([]) public function __get__(index:GoInt):T {
		__boundsCheck__(index.toBasic());
		return this.get(index.toBasic());
	}

	public function __slice__(low:GoInt, high:GoInt = -1, max:GoInt=-1):Slice<T> {
		if (this == null)
			return null;
		var offset = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		final obj = new stdgo.Slice.SliceData<T>(0, -1);
		obj.offset = offset;
		if (max != -1) {
			obj.capacity = max - low;
		}
		obj.vector = this.vector;
		obj.length = length;
		obj.capacity = this.capacity;
		return obj;
	}

	public inline function __setVector__(vector:Vector<T>) {
		this.vector = vector;
	}

	public inline function __toArray__():Array<T> {
		return [for (i in 0...length.toBasic()) this.get(i)];
	}

	public inline function __toVector__():Vector<T> {
		return this.vector;
	}

	public inline function __replace__(value:Vector<T>) {
		this.vector = value;
	}

	public inline function __setSize__(length:Int) {
		this = new VectorData<T>(length);
	}

	public function __copy__() {
		var array = new GoArray<T>();
		array.__setSize__(array.length.toBasic());
		array.__setVector__(this.vector.copy());
		return array;
	}
}

private class VectorKeyValueIterator<T> {
	var pos:Int = 0;
	var vector:Vector<T>;

	public inline function new(vector:Vector<T>) {
		this.vector = vector.copy();
	}

	public inline function hasNext() {
		return pos < vector.length;
	}

	public inline function next() {
		return {key: (pos : GoInt), value: vector.get(pos++)};
	}
}

private class VectorIterator<T> {
	var pos:Int = 0;
	var vector:Vector<T>;

	public inline function new(vector:Vector<T>) {
		this.vector = vector.copy();
	}

	public inline function hasNext() {
		return pos < vector.length;
	}

	public inline function next() {
		return vector.get(pos++);
	}
}
