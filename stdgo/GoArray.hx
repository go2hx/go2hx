package stdgo;

import haxe.Rest;
import haxe.ds.Vector;
import stdgo.AnyInterface;
import stdgo.GoInt;



class GoArrayData<T> {
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
		}else if (args.length != 0) {
			this.length = args.length;
			this.capacity = args.length;
			vector = new haxe.ds.Vector<T>(args.length);
			for (i in 0...args.length)
				vector.set(i, args[i]);
		}
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

	public inline function __ref__():GoArrayData<T> {
		if (this == null) {
			final s = new GoArrayData<T>(0, -1);
			s.capacity = 0;
			return s;
		}
		final slice = new GoArrayData<T>(0, -1); // no allocation
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
		final obj:GoArrayData<T> = __ref__();
		obj.offset = this.offset + offset;
		obj.capacity = capacity;
		obj.length = length;
		return obj;
	}

	public #if hl inline #end function __append__(args:Rest<T>):Slice<T> {
		final slice:GoArrayData<T> = __ref__();
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
		// grow capacity
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
			bytes.set(index + offset, cast value);
			return value;
		}
		return vector.set(index + offset, untyped value);
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

	public #if hl inline #end function grow() {
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

	public function __copy__() {
		final slice = new GoArrayData<T>(0, -1);
		slice.capacity = this.capacity;
		slice.length = this.length;
		slice.offset = this.offset;
		if (this.bytes != null) {
			final bytes = haxe.io.Bytes.alloc(this.bytes.length);
			bytes.blit(0, this.bytes, 0, this.bytes.length);
			slice.bytes = bytes;
			return slice;
		}
		slice.vector = this.vector.copy();
		return slice;
	}
}

class GoArrayDataKeyValueIterator<T> {
	var pos:Int = 0;
	var slice:GoArrayData<T>;

	public inline function new(slice:GoArrayData<T>) {
		this.slice = slice.__ref__();
	}

	public inline function hasNext() {
		return pos < slice.length;
	}
	// if inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32 on stdgo/Math TestFloat32Sqrt
	public function next():{key:GoInt, value:T} {
		return {key: (pos : GoInt), value: (slice != null && slice.bytes != null) ? untyped cast slice.bytes.get(slice.offset + pos++) : slice.vector.get(slice.offset + pos++)};
	}
}

class GoArrayDataIterator<T> {
	var pos:Int = 0;
	var slice:GoArrayData<T>;

	public inline function new(slice:GoArrayData<T>) {
		this.slice = slice.__ref__();
	}

	public inline function hasNext() {
		return pos < slice.length;
	}
	// if inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32
	public function next():T {
		return (slice != null && slice.bytes != null) ? untyped cast slice.bytes.get(slice.offset + pos++) : slice.vector.get(slice.offset + pos++);
	}
}

// @:generic
@:forward.new
abstract GoArray<T>(GoArrayData<T>) from GoArrayData<T> to GoArrayData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public inline function __toBasic__()
		return this;

	public function __getOffset__():Int {
		return this.offset;
	}

	public function __setNumber32__():GoArray<T>
		return this.__setNumber32__();

	public function __setNumber64__():GoArray<T>
		return this.__setNumber64__();

	public function __setString__():GoArray<T>
		return this.__setString__();

	private function get_length():GoInt {
		return this != null ? this.length : 0;
	}

	private function get_capacity():GoInt {
		return this != null ? this.capacity : 0;
	}

	public function iterator() {
		return new GoArrayDataIterator(this);
	}

	public function keyValueIterator():KeyValueIterator<GoInt, T> {
		return new GoArrayDataKeyValueIterator(this);
	}

	private function __boundsCheck__(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= this.length) {
			throw "array out of bounds, index: " + i + " length: " + length.toBasic();
		}
		#end
	}
	@:from
	public static function fromArray<T>(array:Array<T>):GoArray<T> {
		return new GoArray(array.length, array.length, ...array);
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
		final obj = new stdgo.GoArray.GoArrayData<T>(0, -1,null);
		obj.offset = offset;
		if (max != -1) {
			obj.capacity = max - low;
		}
		obj.vector = this.vector;
		obj.length = length;
		obj.capacity = this.capacity;
		return obj;
	}

	public inline function __toArray__():Array<T> {
		return [for (i in 0...length.toBasic()) this.get(i)];
	}

	public function __copy__():GoArray<T> {
		return this.__copy__();
	}
}
