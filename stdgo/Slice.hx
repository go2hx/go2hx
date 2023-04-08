package stdgo;

import haxe.Rest;
import stdgo.StdGoTypes;
@:forward(__append__,__slice__, __setNumber32__,__setNumber64__,__setString__, __ref__)
@:forward.new
//@:generic
abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public function iterator():SliceIterator<T>
		return new SliceIterator<T>(this);

	public function keyValueIterator():SliceKeyValueIterator<T>
		return new SliceKeyValueIterator<T>(this);

	@:from
	public static function fromStringRunes(str:String):Slice<GoRune> {
		return (str : GoString);
	}

	@:from
	public static function fromStringBytes(str:String):Slice<GoByte> {
		return (str : GoString);
	}

	@:from
	public static function fromBytes(bytes:haxe.io.Bytes):Slice<GoByte> {
		return new Slice<GoByte>(0, 0, ...[
			for (i in 0...bytes.length)
				bytes.get(i)
		]);
	}

	@:to
	public static function toBytes(slice:Slice<GoByte>):haxe.io.Bytes {
		final bytes = haxe.io.Bytes.alloc(slice.length.toBasic());
		for (i in 0...bytes.length)
			bytes.set(i, slice.__vector__.get(slice.__offset__ + i) ?? 0);
		return bytes;
	}

	@:from
	public static function fromArray<T>(array:Array<T>):Slice<T> {
		return new Slice(0, 0, ...array);
	}

	@:from
	public static function fromVector<T>(vector:haxe.ds.Vector<T>):Slice<T> {
		final data = new SliceData<T>(0, -1);
		data.vector = vector;
		data.length = vector.length;
		data.capacity = vector.length;
		return data;
	}

	public var __vector__(get, set):haxe.ds.Vector<T>;
	public var __offset__(get,never):Int;

	function get___offset__() {
		return @:privateAccess this.offset;
	}

	function get___vector__() {
		return @:privateAccess this.vector;
	}

	function set___vector__(v) {
		return @:privateAccess this.vector = v;
	}

	public inline function __setNil__():Slice<T> {
		this.__nil__ = true;
		return this;
	}

	// Conversions from slice to array pointer go 1.17

	@:from
	private static function fromArrayPointer<T>(ptr:Pointer<GoArray<T>>):Slice<T> {
		final vector = ptr.value.__toVector__();
		var slice = new SliceData<T>(vector.length, vector.length);
		return slice;
	}

	private function get_length():GoInt {
		return this == null ? 0 : this.length;
	}

	private function get_capacity():GoInt {
		return this == null ? 0 : this.capacity;
	}

	@:op([]) public function __get__(index:GoInt):T {
		return this.get(index.toBasic());
	}

	@:op([]) public function __set__(index:GoInt, value:T):T {
		return this.set(index.toBasic(), value);
	}

	public function __getOffset__():Int {
		return this.offset;
	}

	public function __toArray__() {
		return this == null ? [] : this.toArray();
	}

	public function __toVector__() {
		return this.toVector();
	}

	public inline function __setData__(data:SliceData<T>) {
		if (this == null)
			this = new Slice<T>(0,-1);
		this.length = data.length;
		this.capacity = data.capacity;
		this.vector = data.vector;
		this.offset = data.offset;
		this.__nil__ = false;
		@:privateAccess data.isNumber32 = data.isNumber32;
		@:privateAccess data.isNumber64 = data.isNumber64;
		@:privateAccess data.isString = data.isString;
		//this.__setNumber32__ = 
	}
}

private class SliceKeyValueIterator<T> {
	var pos:Int = 0;
	var slice:Slice<T>;

	public inline function new(slice:Slice<T>) {
		this.slice = slice.__ref__();
	}

	public inline function hasNext() {
		return pos < slice.length;
	}

	public inline function next() {
		return {key: (pos : GoInt), value: slice.__vector__.get(slice.__offset__ + pos++)};
	}
}

private class SliceIterator<T> {
	var pos:Int = 0;
	var slice:Slice<T>;

	public inline function new(slice:Slice<T>) {
		this.slice = slice.__ref__();
	}

	public inline function hasNext() {
		return pos < slice.length;
	}

	public inline function next() {
		return slice.__vector__.get(slice.__offset__ + pos++);
	}
}

@:generic
class SliceData<T> {
	public var vector:haxe.ds.Vector<T>;

	public var offset:Int = 0;
	public var length:Int = 0;
	public var capacity:Int = 0;
	public var __nil__:Bool = false;
	var isNumber32:Bool = false;
	var isNumber64:Bool = false;
	var isString:Bool = false;


	public function __setNumber32__():Slice<T> {
		this.isNumber32 = true;
		return this;
	}
	public function __setNumber64__():Slice<T> {
		this.isNumber64 = true;
		return this;
	}
	public function __setString__():Slice<T> {
		this.isString = true;
		return this;
	}

	

	public inline function new(length:Int, capacity:Int, args:Rest<T>) {
		if (capacity != -1) {
			final vectorLength = if (args.length > capacity) {
				args.length;
			} else if (length > capacity) {
				length;
			} else {
				capacity;
			}
			this.length = length > args.length ? length : args.length;
			this.capacity = vectorLength;
			vector = new haxe.ds.Vector<T>(vectorLength);
			for (i in 0...args.length)
				vector.set(i, args[i]);
		}
	}

	public inline function __ref__():SliceData<T> {
		if (this == null)
			return new SliceData<T>(0,0);
		final slice = new SliceData<T>(0, -1); // no allocation
		slice.length = this.length;
		slice.capacity = this.capacity;
		slice.vector = this.vector;
		slice.offset = this.offset;
		if (slice.capacity == -1)
			slice.capacity = 0;
		slice.isNumber32 = this.isNumber32;
		slice.isNumber64 = this.isNumber64;
		slice.isString = this.isString;
		return slice;
	}

	public inline function __slice__(low:GoInt, high:GoInt = -1, max:GoInt = -1):Slice<T> {
		if (this == null)
			return null;
		var offset = low;
		if (high == -1)
			high = length;
		var length = high - low;
		final obj:SliceData<T> = __ref__();

		obj.offset = this.offset + offset;
		if (max != -1) {
			obj.capacity = max - low;
		}
		obj.length = length;
		return obj;
	}

	public inline function __append__(args:Rest<T>):Slice<T> {
		final slice:SliceData<T> = __ref__();

		final startOffset = slice.length;
		final growCapacity = args.length - slice.capacity + slice.length + slice.offset + 1;
		if (growCapacity <= 1 || (this != null && this.vector == null)) {
			if (this.vector == null)
				slice.vector = new haxe.ds.Vector<T>(growCapacity);
			slice.length += args.length;
			for (i in 0...args.length) {
				slice.vector.set(startOffset + i + slice.offset, args[i]);
			}
			return slice;
		}
		slice.length += args.length;
		slice.capacity += growCapacity;
		// grow by 50%
		slice.capacity += slice.capacity >> 2;
		slice.grow(); // allocation
		for (i in 0...args.length) {
			slice.vector.set(startOffset + i + slice.offset, args[i]);
		}
		return slice;
	}

	private inline function boundsCheck(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= length) {
			throw 'slice out of bounds, index: $i length: $length';
		}
		#end
	}

	public inline function get(index:Int):T {
		//boundsCheck(index);
		if (isNumber64)
			return vector.get(index + offset) ?? cast haxe.Int64.make(0,0);
		if (isNumber32)
			return vector.get(index + offset) ?? cast 0;
		if (isString)
			return vector.get(index + offset) ?? cast haxe.io.Bytes.alloc(0);
		return vector.get(index + offset);
	}

	public inline function set(index:Int, value:T):T {
		boundsCheck(index);
		return vector.set(index + offset, value);
	}

	public function toArray():Array<T> { // unrolling
		return [for (i in 0...length) vector.get(i + offset)];
	}

	public function toVector():haxe.ds.Vector<T> {
		final vectorObj = new haxe.ds.Vector<T>(length);
		haxe.ds.Vector.blit(vector, offset, vectorObj, 0, length);
		return vectorObj;
	}

	public function toString():String {
		#if !macro
		return "[" + [for (i in offset...offset + length) Go.string(vector[i])].join(" ") + "]";
		#else
		return "";
		#end
	}
	public inline function grow() {
		if (vector == null) {
			vector = new haxe.ds.Vector<T>(capacity);
			return;
		}
		if (vector.length >= capacity)
			return;
		var dest = new haxe.ds.Vector<T>(capacity);
		haxe.ds.Vector.blit(vector, 0, dest, 0, vector.length);
		this.vector = dest;
	}
}
