package stdgo;

import stdgo.StdGoTypes;
import haxe.rtti.Meta;
import haxe.ds.Vector;
import haxe.Rest;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoInt;

@:generic
abstract GoArray<T>(Vector<T>) from Vector<T> {
	public var length(get, never):GoInt;

	private function get_length():GoInt {
		return this.length;
	}

	public inline function iterator() {
		return new VectorIterator(this);
	}

	inline public function keyValueIterator():KeyValueIterator<GoInt, T> {
		return new GoArrayKeyValueIterator(this);
	}

	public inline function new(args:Rest<T>) {
		this = new Vector<T>(args.length);
		for (i in 0...args.length) {
			this.set(i, args[i]);
		}
	}

	private function boundsCheck(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= this.length) {
			throw "array out of bounds, index: " + i + " length: " + length;
		}
		#end
	}
	
	@:op([]) public inline function set(index:GoInt, value:T):T
		return set(index.toBasic(), value);

	@:op([]) public inline function get(index:GoInt):T {
		boundsCheck(index.toBasic());
		return this.get(index.toBasic());
	}

	public inline function slice(low:GoInt, high:GoInt = -1):Slice<T> {
		var pos = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		var slice = new Slice<T>();
		slice.setUnderlying(this, pos.toBasic(), length.toBasic());
		return slice;
	}

	public inline function setVector(vector:Vector<T>) {
		this = vector;
	}

	public inline function toArray():Array<T> {
		return [for (i in 0...length.toBasic()) this.get(i)];
	}

	public inline function toVector():Vector<T> {
		return this;
	}

	public inline function replace(value:Vector<T>) {
		this = value;
	}

	public inline function setSize(length:Int) {
		this = new Vector<T>(length);
	}

	public function copy() {
		var array = new GoArray<T>();
		array.setSize(array.length.toBasic());
		for (i in 0...array.length.toBasic()) {
			array.set(i, this.get(i));
		}
		return array;
	}

	inline public function _typename_() {
		return '[$length]';
	}

	inline public function toString() {
		return this.toArray().toString();
	}
}

private class GoArrayKeyValueIterator<T> {
	var pos:Int = 0;
	var vector:Vector<T>;

	public inline function new(vector) {
		this.vector = vector;
	}

	public inline function hasNext() {
		return pos < vector.length;
	}

	public inline function next() {
		return {key: (pos : GoInt), value: vector.get(pos++)};
	}
}

private class VectorKeyValueIterator<T> {
	var pos:Int = 0;
	var vector:Vector<T>;

	public inline function new(vector) {
		this.vector = vector;
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

	public inline function new(vector) {
		this.vector = vector;
	}

	public inline function hasNext() {
		return pos < vector.length;
	}

	public inline function next() {
		return vector.get(pos++);
	}
}
