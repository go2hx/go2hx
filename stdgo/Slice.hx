package stdgo;

import haxe.Rest;
import stdgo.StdGoTypes;

@:forward(__ref__)
@:forward.new
//@:generic
abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public function iterator():SliceIterator<T>
		return new SliceIterator<T>(this);

	public function keyValueIterator():SliceKeyValueIterator<T>
		return new SliceKeyValueIterator<T>(this);

	public inline function __append__(args:Rest<T>):Slice<T> {
		if (this == null) {
			final vector = new haxe.ds.Vector<T>(args.length * 2);
			return new SliceData<T>(args.length, vector.length, ...args);
		}
		return this.__append__(...args);
	}

	public inline function __setNumber32__():Slice<T> {
		#if !target.static
		@:privateAccess this.isNumber32 = true;
		#end
		return this;
	}

	public inline function __setNumber64__():Slice<T> {
		#if !target.static
		@:privateAccess this.isNumber64 = true;
		#end
		return this;
	}

	public inline function __setString__():Slice<T> {
		#if !target.static
		@:privateAccess this.isString = true;
		#end
		return this;
	}

	public function __slice__(low:GoInt, high:GoInt = -1, max:GoInt = -1):Slice<T> {
		if (this == null)
			return null;
		return this.__slice__(low, high, max);
	}

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
		]).__setNumber32__();
	}

	@:to
	public static function toBytes(slice:Slice<GoByte>):haxe.io.Bytes {
		if (slice != null && slice.__bytes__ != null) {
			return slice.__bytes__;
		}
		final bytes = haxe.io.Bytes.alloc(slice.length.toBasic());
		for (i in 0...bytes.length)
			bytes.set(i, slice.__vector__.get(slice.__offset__ + i) ?? 0);
		return bytes;
	}

	@:from
	public static function fromArray<T>(array:Array<T>):Slice<T> {
		return new Slice(array.length, array.length, ...array);
	}

	@:from
	public static function fromVector<T>(vector:haxe.ds.Vector<T>):Slice<T> {
		final data = new SliceData<T>(0, -1, null);
		data.vector = vector;
		data.length = vector.length;
		data.capacity = vector.length;
		return data;
	}

	public var __vector__(get, set):haxe.ds.Vector<T>;
	public var __offset__(get, never):Int;
	public var __bytes__(get, set):haxe.io.Bytes;

	function get___offset__() {
		return @:privateAccess this.offset;
	}

	function get___vector__() {
		return @:privateAccess this.vector;
	}

	function set___vector__(v) {
		return @:privateAccess this.vector = v;
	}

	function get___bytes__() {
		return @:privateAccess this.bytes;
	}

	function set___bytes__(v) {
		return @:privateAccess this.bytes = v;
	}

	public inline function __setNil__():Slice<T> {
		this.__nil__ = true;
		return this;
	}

	// Conversions from slice to array pointer go 1.17

	@:from
	private static function fromArrayPointer<T>(ptr:Pointer<GoArray<T>>):Slice<T> {
		final vector = ptr.value.__toVector__();
		var slice = new SliceData<T>(vector.length, vector.length, null);
		return slice;
	}

	private function get_length():GoInt {
		return this == null ? 0 : this.length;
	}

	private function get_capacity():GoInt {
		return this == null ? 0 : this.capacity;
	}
	// if this is inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32 on stdgo/Math TestNextafter32 
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

	public inline function __toVector__() {
		return this.toVector();
	}

	public inline function __setData__(data:SliceData<T>) {
		if (this == null)
			this = new Slice<T>(0, -1);
		this.length = data.length;
		this.capacity = data.capacity;
		this.bytes = data.bytes;
		this.vector = data.vector;
		this.offset = data.offset;
		this.__nil__ = false;
		#if !target.static
		@:privateAccess data.isNumber32 = data.isNumber32;
		@:privateAccess data.isNumber64 = data.isNumber64;
		@:privateAccess data.isString = data.isString;
		#end
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
	// if inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32 on stdgo/Math TestFloat32Sqrt
	public function next():{key:GoInt, value:T} {
		return {key: (pos : GoInt), value: (slice != null && slice.__bytes__ != null) ? untyped cast slice.__bytes__.get(slice.__offset__ + pos++) : slice.__vector__.get(slice.__offset__ + pos++)};
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
	// if inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32
	public function next():T {
		return (slice != null && slice.__bytes__ != null) ? untyped cast slice.__bytes__.get(slice.__offset__ + pos++) : slice.__vector__.get(slice.__offset__ + pos++);
	}
}

// @:generic

@:struct
class SliceData<T> {
	public var vector:haxe.ds.Vector<T> = null;
	public var bytes:haxe.io.Bytes = null;

	public var offset:Int = 0;
	public var length:Int = 0;
	public var capacity:Int = 0;
	public var __nil__:Bool = false;

	#if !target.static
	var isNumber32:Bool = false;
	var isNumber64:Bool = false;
	var isString:Bool = false;
	#end

	public inline function new(length:Int, capacity:Int, args:Rest<T>) {
		if (capacity != -1) {
			final vectorLength = if (length > capacity) {
				length;
			} else {
				capacity;
			}
			this.length = length;
			this.capacity = vectorLength;
			vector = new haxe.ds.Vector<T>(vectorLength);
			for (i in 0...args.length)
				vector.set(i, args[i]);
		}
	}

	public inline function __ref__():SliceData<T> {
		if (this == null) {
			final s = new SliceData<T>(0, -1);
			s.capacity = 0;
			return s;
		}
		final slice = new SliceData<T>(0, -1); // no allocation
		slice.length = this.length;
		slice.capacity = this.capacity;
		slice.vector = this.vector;
		slice.bytes = this.bytes;
		slice.offset = this.offset;
		if (slice.capacity == -1)
			slice.capacity = 0;
		#if !target.static
		slice.isNumber32 = this.isNumber32;
		slice.isNumber64 = this.isNumber64;
		slice.isString = this.isString;
		#end
		return slice;
	}

	public inline function __slice__(low:GoInt, high:GoInt = -1, max:GoInt = -1):Slice<T> {
		var offset = low;
		if (high == -1)
			high = length;
		if (max == -1)
			max = capacity;
		var length = high - low;
		var capacity = max - low;
		final obj:SliceData<T> = __ref__();
		obj.offset = this.offset + offset;
		obj.capacity = capacity;
		obj.length = length;
		return obj;
	}

	public inline function __append__(args:Rest<T>):Slice<T> {
		final slice:SliceData<T> = __ref__();
		// Don't set slice.offset to this value because it needs to be computed in the case of a grow.
		final startOffset = slice.length;
		final growCapacity = args.length - slice.capacity + slice.length + slice.offset + 1;
		if (growCapacity <= 1 || (this != null && this.vector == null && this.bytes == null)) {
			if (this.vector == null && this.bytes == null)
				slice.vector = new haxe.ds.Vector<T>(growCapacity);
			slice.length += args.length;
			if (slice.bytes != null) {
				for (i in 0...args.length) {
					slice.bytes.set(startOffset + slice.offset + i, untyped args[i]);
				}
				return slice;
			}
			for (i in 0...args.length) {
				slice.vector.set(startOffset + slice.offset + i, args[i]);
			}
			return slice;
		}
		slice.capacity += growCapacity;
		// grow by 50%
		slice.capacity += slice.capacity >> 2;
		slice.grow(); // allocation
		slice.length += args.length;
		if (slice.bytes != null) {
			for (i in 0...args.length) {
				slice.bytes.set(startOffset + slice.offset + i, untyped args[i]);
			}
			return slice;
		}

		for (i in 0...args.length) {
			slice.vector.set(startOffset + slice.offset + i, args[i]);
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
		if (bytes != null)
			return untyped cast bytes.get(index + offset);
			//return untyped cast haxe.io.Bytes.fastGet(bytes.getData(), index + offset);
		#if !target.static
		if (isNumber64) {
			return vector.get(index + offset) ?? untyped haxe.Int64.make(0, 0);
		} else if (isNumber32) {
			return vector.get(index + offset) ?? untyped 0;
		} else if (isString) {
			return vector.get(index + offset) ?? untyped haxe.io.Bytes.alloc(0);
		} else {
			return vector.get(index + offset);
		}
		#else
		return vector.get(index + offset);
		#end
	}

	public inline function set(index:Int, value:T):T {
		boundsCheck(index);
		if (bytes != null) {
			bytes.set(index + offset, untyped value);
			return untyped value;
		}
		return vector.set(index + offset, value);
	}

	public inline function toArray():Array<T> { // unrolling
		if (bytes != null)
			return [for (i in 0...length) untyped cast bytes.get(i + offset)];
		return [for (i in 0...length) vector.get(i + offset)];
	}

	public function toVector():haxe.ds.Vector<T> {
		if (bytes != null) {
			final vector = new haxe.ds.Vector<T>(length);
			for (i in 0...length)
				vector.set(i, untyped cast bytes.get(i + offset));
			return vector;
		}
		final vectorObj = new haxe.ds.Vector<T>(length);
		haxe.ds.Vector.blit(vector, offset, vectorObj, 0, length);
		return vectorObj;
	}

	public inline function grow() {
		if (vector == null && bytes == null) {
			vector = new haxe.ds.Vector<T>(capacity);
			return;
		}
		if (bytes != null) {
			final dest = haxe.io.Bytes.alloc(capacity);
			dest.blit(0, bytes, offset, length);
			this.bytes = dest;
			this.offset = 0;
		}else{
			var dest = new haxe.ds.Vector<T>(capacity);
			haxe.ds.Vector.blit(vector, offset, dest, 0, length);
			this.vector = dest;
			this.offset = 0;
		}
	}
}
