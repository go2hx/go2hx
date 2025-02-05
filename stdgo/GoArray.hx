package stdgo;

import haxe.Rest;
import haxe.ds.Vector;
import stdgo.AnyInterface;
import stdgo.GoInt;


@:dox(hide)
class GoArrayData<T> {
	public var vector:haxe.ds.Vector<T> = null;
	public var bytes:haxe.io.Bytes = null;

	public var offset:Int = 0;
	public var length:Int = 0;
	public var capacity:Int = 0;
	public var __nil__:Bool = false;

	var isNumber32:Bool = false;
	var isNumber64:Bool = false;
	var isString:Bool = false;

	public inline function new(length:Int, capacity:Int, args:Rest<T>) {
		if (capacity != -1) {
			final vectorLength = if (length > capacity) {
				length;
			} else {
				capacity;
			}
			this.length = length;
			this.capacity = vectorLength;
			vector = new haxe.ds.Vector<T>(vectorLength,);
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

	public inline function __setData__(data:GoArrayData<T>) {
		// special cases
		// this == null
		// data == null
		if (data == null) {
			this.__nil__ = true;
			return;
		}
		this.length = data.length;
		this.capacity = data.capacity;
		this.bytes = data.bytes;
		this.vector = data.vector;
		this.offset = data.offset;
		this.__nil__ = false;
		@:privateAccess data.isNumber32 = data.isNumber32;
		@:privateAccess data.isNumber64 = data.isNumber64;
		@:privateAccess data.isString = data.isString;
	}

	public inline function __setNumber32__():Slice<T> {
		@:privateAccess this.isNumber32 = true;
		return this;
	}

	public inline function __setNumber64__():Slice<T> {
		@:privateAccess this.isNumber64 = true;
		return this;
	}

	public inline function __setString__():Slice<T> {
		@:privateAccess this.isString = true;
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
		slice.isNumber32 = this.isNumber32;
		slice.isNumber64 = this.isNumber64;
		slice.isString = this.isString;
		return slice;
	}

	public inline function __slice__(args:haxe.Rest<GoInt>):Slice<T> {
		// low, high, max
		if (args.length > 3 || args.length < 1) {
			throw "slice invalid number of args";
		}
		final low = args[0];
		var offset = low;
		final high = if (args.length < 2) {
			length;
		}else{
			args[1];
		}
		final max = if (args.length < 3) {
			capacity;
		}else{
			args[2];
		}
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
		final cap = args.length - slice.capacity + slice.length + slice.offset + 1;
		if (cap <= 1 || (this != null && this.vector == null && this.bytes == null)) {
			if (this.vector == null && this.bytes == null)
				slice.vector = new haxe.ds.Vector<T>(cap);
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
		var newcap = slice.capacity;
		final doublecap = newcap + newcap;
		if (cap > doublecap) {
			newcap = cap;
		}else{
			final threshold = 256;
			if (slice.capacity < 256) {
				newcap = doublecap;
			}else{
				while (0 < newcap && newcap < cap) {
					newcap += Std.int((newcap + 3 * threshold)/4);
				}
				if (newcap <= 0) {
					newcap = cap;	
				}
				// Set newcap to the requested cap when
				// the newcap calculation overflowed.
				if (newcap <= 0) {
					newcap = cap;
				}
			}
		}
		slice.capacity += newcap;
		
		// grow capacity
		//slice.capacity += cap;
		// grow by 50%
		//slice.capacity += slice.capacity >> 2;
		//trace(slice.capacity);

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
	/*
	newcap := old.cap
	doublecap := newcap + newcap
	if cap > doublecap {
		newcap = cap
	} else {
		const threshold = 256
		if old.cap < threshold {
			newcap = doublecap
		} else {
			// Check 0 < newcap to detect overflow
			// and prevent an infinite loop.
			for 0 < newcap && newcap < cap {
				// Transition from growing 2x for small slices
				// to growing 1.25x for large slices. This formula
				// gives a smooth-ish transition between the two.
				newcap += (newcap + 3*threshold) / 4
			}
			// Set newcap to the requested cap when
			// the newcap calculation overflowed.
			if newcap <= 0 {
				newcap = cap
			}
		}
	}*/

	public inline function get(index:Int):T {
		if (bytes != null) {
			#if target.static
			return untyped cast bytes.get(index + offset);
			#else
			return untyped cast bytes.get(index + offset) ?? untyped 0;
			#end
		}else{
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
	}

	public inline function set(index:Int, value:T):T {
		if (bytes != null) {
			bytes.set(index + offset, cast value);
			return value;
		}
		return vector.set(index + offset, untyped value);
	}

	public inline function toArray():Array<T> { // unrolling
		if (bytes != null) {
			return [for (i in 0...length) untyped cast bytes.get(i + offset)];
		}
		#if hl
		return vector.toData().slice(offset, offset + length);
		#else
		return [for (i in 0...length) vector.get(i + offset)];
		#end
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
		slice.isNumber32 = this.isNumber32;
		slice.isNumber64 = this.isNumber64;
		slice.isString = this.isString;
		return slice;
	}
}
@:dox(hide)
class GoArrayDataKeyValueIterator<T> {
	var pos:Int = 0;
	var slice:GoArrayData<T>;

	public inline function new(slice:GoArrayData<T>) {
		this.slice = slice;
	}


	public inline function hasNext() {
		return pos < slice.length;
	}
	// if inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32 on stdgo/Math TestFloat32Sqrt
	public function next():{key:GoInt, value:T} {
		return {key: (pos : GoInt), value: slice.get(pos++)};
	}
}
@:dox(hide)
class GoArrayDataIterator<T> {
	var pos:Int = 0;
	var slice:GoArrayData<T>;

	public inline function new(slice:GoArrayData<T>) {
		this.slice = slice;
	}

	public inline function hasNext() {
		return pos < slice.length;
	}
	// if inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32
	public function next():T {
		return slice.get(pos++);
	}
}

// @:generic
@:forward.new
@:forward(__setData__,__slice__)
/**
 * Fixed size array similar to haxe.ds.Vector
 */
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
		return new GoArrayDataIterator(this.__copy__());
	}

	public function keyValueIterator():KeyValueIterator<GoInt, T> {
		return new GoArrayDataKeyValueIterator(this.__ref__());
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

	public inline function __toArray__():Array<T> {
		return [for (i in 0...length.toBasic()) this.get(i)];
	}

	public function __copy__():GoArray<T> {
		return this.__copy__();
	}
}
