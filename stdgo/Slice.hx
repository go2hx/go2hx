package stdgo;

import stdgo.StdGoTypes.StructType;
import haxe.Constraints.Constructible;
import stdgo.StdGoTypes.AnyInterface;
import haxe.Rest;
import haxe.ds.Vector;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.GoByte;

@:generic
abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
	public var length(get, never):GoInt;

	// used for underlying pointer system
	public var _address_(get, never):Int;

	@:from
	public static function fromString(str:String):Slice<GoByte> {
		return new GoString(str);
	}

	private inline function get__address_():Int {
		return this._address_;
	}

	private function get_length():Int {
		return this.length;
	}

	inline public function getUnderlying():Vector<T> {
		return this.underlying();
	}

	public function new(args:Rest<T>) {
		var length = args.length;
		var cap = length;
		this = new SliceData(length, cap);
		if (args.length == 0)
			return;
		for (i in 0...args.length) {
			set(i, args[i]);
		}
	}
	
	@:op([]) public inline function get(index:GoInt):T {
		return this.get(index.toBasic());
	}

	@:op([]) public inline function set(index:GoInt, value:T):T {
		return this.set(index.toBasic(), value);
	}

	public inline function getOffset():Int {
		return this.pos;
	}

	inline public function slice(low:GoInt, high:GoInt = -1):Slice<T> {
		var pos = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		var obj = new Slice<T>();
		obj.setUnderlying(this.underlying(), pos.toBasic(), length.toBasic());
		return obj;
	}

	public function copy():Slice<T> {
		var slice = new Slice<T>();
		slice.grow(length.toBasic());
		for (i in 0...slice.length.toBasic()) {
			slice[i] = get(i);
		}
		return slice;
	}

	public function append(args:Rest<T>):Slice<T> {
		var slice = copy();
		var pos = slice.length.toBasic();
		slice.grow(args.length);
		for (i in 0...args.length) {
			slice[pos + i] = args[i];
		}
		return slice;
	}

	inline public function grow(size:Int) {
		this.grow(size);
	}

	inline public function iterator():Iterator<T> {
		return this.iterator();
	}

	inline public function keyValueIterator() {
		return this.keyValueIterator();
	}

	inline public function cap():Int {
		return this.cap();
	}

	inline public function toArray() {
		return this.toArray();
	}

	inline public function toVector() {
		return this.toVector();
	}

	inline public function setUnderlying(vector:Vector<T>, pos:Int, length:Int) {
		this.setUnderlying(vector, pos, length);
	}
}

private class SliceKeyValueIterator<T> {
	var pos:Int = 0;
	var slice:SliceData<T>;

	public inline function new(slice) {
		this.slice = slice;
	}

	public inline function hasNext() {
		return pos < slice.length;
	}

	public inline function next() {
		return {key: (pos : GoInt), value: slice.get(pos++)};
	}
}

private class SliceIterator<T> {
	var pos:Int = 0;
	var slice:SliceData<T>;

	public inline function new(slice) {
		this.slice = slice;
	}

	public inline function hasNext() {
		return pos < slice.length;
	}

	public inline function next() {
		return slice.get(pos++);
	}
}

private class SliceData<T> {
	var vector:Vector<T>;

	public var pos:Int = 0;
	public var length:Int = 0;
	public var _address_:Int;

	public function new(length:Int = 0, cap:Int = 0) {
		this.length = length;
		if (cap == 0)
			cap = length;
		vector = new Vector<T>(length);
		_address_ = ++Go.addressIndex;
	}

	private function boundsCheck(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= length) {
			throw "array out of bounds, index: " + i + " length: " + length;
		}
		#end
	}

	public function get(index:Int):T {
		boundsCheck(index);
		final i = index + pos;
		return vector.get(i);
	}

	public function set(index:Int, value:T):T {
		boundsCheck(index);
		final i = index + pos;
		return vector.set(i, value);
	}

	inline public function iterator():Iterator<T> {
		return new SliceIterator(this);
	}

	inline public function keyValueIterator():KeyValueIterator<GoInt, T> {
		return new SliceKeyValueIterator(this);
	}

	inline public function cap():Int {
		return length;
	}

	inline public function toArray():Array<T> { // unrolling derefrences
		return [
			for (i in 0...length)
				get(i)
		];
	}

	inline public function toVector():Vector<T> { // derefrence
		return vector;
	}

	inline public function toString():String {
		return toArray().toString();
	}

	inline public function underlying():Vector<T> {
		return vector;
	}

	inline public function grow(size:Int) {
		if (vector.length >= size + length)
			return;
		length += size;
		var dest = new Vector<T>(length);
		Vector.blit(vector, 0, dest, 0, vector.length);
		vector = dest;
	}

	inline public function setUnderlying(value:Vector<T>, pos:Int, length:Int) {
		vector = value;
		this.pos = pos;
		this.length = length;
	}
}
