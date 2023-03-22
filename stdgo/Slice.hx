package stdgo;

import haxe.Rest;
import stdgo.StdGoTypes;

@:forward(__append__)
@:forward.new
abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public function iterator():SliceIterator<T>
		return new SliceIterator<T>(this);

	public function keyValueIterator():SliceKeyValueIterator<T>
		return new SliceKeyValueIterator<T>(this);

	@:from
	public static function fromStringRunes(str:String):Slice<GoRune> {
		return new GoString(str);
	}

	@:from
	public static function fromStringBytes(str:String):Slice<GoByte> {
		return new GoString(str);
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
			bytes.set(i, slice[i].toBasic());
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

	public function __slice__(low:GoInt, high:GoInt = -1, max:GoInt = -1):Slice<T> {
		if (this == null)
			return null;
		var offset = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		var obj:SliceData<T> = __ref__();
		obj.offset = this.offset + offset;
		if (max != -1) {
			obj.capacity = max - low;
		}
		obj.length = length;
		return obj;
	}

	public inline function __appendref__(args:Rest<T>):Slice<T> {
		if (this == null)
			this = new SliceData<T>(0, 0);
		final startOffset = this.length;
		final growCapacity = args.length - this.capacity + this.length + this.offset + 1;
		if (growCapacity <= 1) {
			this.length += args.length;
			for (i in 0...args.length) {
				this.vector.set(startOffset + i, args[i]);
			}
			return this;
		} else {
			this.length += args.length;
			this.capacity += growCapacity;
			this.capacity += this.capacity >> 2;
			this.grow(); // allocation
			for (i in 0...args.length) {
				this.vector.set(startOffset + i, args[i]);
			}
			return this;
		}
	}

	public function __ref__():Slice<T> {
		if (this == null)
			return new SliceData<T>(0, 0);
		final slice = new SliceData<T>(0, -1);
		slice.length = this.length;
		slice.capacity = this.capacity;
		slice.vector = this.vector;
		slice.offset = this.offset;
		if (slice.capacity == -1)
			slice.capacity = 0;
		return slice;
	}

	/*public function __ref__():Slice<T> {
		if (this == null) {
			final slice = new SliceData<T>(0, -1);
			if (slice.capacity == -1)
				slice.capacity = 0;
			return slice;
		}
		final slice = new SliceData<T>(0, -1);
		slice.length = this.length;
		slice.capacity = this.capacity;
		slice.vector = this.vector;
		slice.offset = this.offset;
		if (slice.capacity == -1)
			slice.capacity = 0;
		return slice;
	}*/

	/*public function __append__(args:Rest<T>):Slice<T> {
		final slice:SliceData<T> = __ref__(); // no allocation
		if (slice.capacity == -1) {
			slice.capacity = 0;
		}
		final startOffset = slice.length;
		final growCapacity = args.length - slice.capacity + slice.length + slice.offset + 1;
		if (slice.vector == null) {
			slice.vector = new haxe.ds.Vector<T>(growCapacity);
		}else{
			slice.vector = slice.vector.copy(); // allocation
		}
		if (growCapacity <= 1) {
			slice.length += args.length;
			for (i in 0...args.length) {
				slice.set(startOffset + i, args[i]);
			}
			return slice;
		}
		slice.length += args.length;
		slice.capacity += growCapacity;
		slice.capacity += slice.capacity >> 2;
		slice.grow(); // allocation
		for (i in 0...args.length) {
			slice.set(startOffset + i, args[i]);
		}
		return slice;
	}*/

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
		return {key: (pos : GoInt), value: slice.__get__(pos++)};
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
		return slice.__get__(pos++);
	}
}

@:generic
class SliceData<T> {
	public var vector:haxe.ds.Vector<T>;

	public var offset:Int = 0;
	public var length:Int = 0;
	public var capacity:Int = 0;
	public var __nil__:Bool = false;

	public inline function new(length:Int, capacity:Int, args:Rest<T>) {
		if (capacity != -1) {
			final vectorLength = if (args.length > capacity) {
				args.length;
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

	public inline function __append__(args:Rest<T>):Slice<T> {
		final slice:SliceData<T> = new SliceData<T>(0, -1); // no allocation
		slice.length = this.length;
		slice.capacity = this.capacity;
		slice.vector = this.vector;
		slice.offset = this.offset;
		if (slice.capacity == -1)
			slice.capacity = 0;

		final startOffset = slice.length;
		final growCapacity = args.length - slice.capacity + slice.length + slice.offset + 1;
		if (this.vector == null) {
			slice.vector = new haxe.ds.Vector<T>(growCapacity);
		}else{
			//slice.vector = slice.vector.copy(); // allocation
		}
		if (growCapacity <= 1) {
			slice.length += args.length;
			for (i in 0...args.length) {
				slice.vector.set(startOffset + i + slice.offset, args[i]);
				// slice.set(startOffset + i, args[i]);
			}
			return slice;
		}
		slice.length += args.length;
		slice.capacity += growCapacity;
		slice.capacity += slice.capacity >> 2;
		slice.vector = new haxe.ds.Vector<T>(slice.capacity);
		haxe.ds.Vector.blit(cast this.vector,0,slice.vector,0,this.vector.length);
		//slice.grow(); // allocation
		for (i in 0...args.length) {
			slice.vector.set(startOffset + i + slice.offset, args[i]);
			//slice.set(startOffset + i, args[i]);
		}
		return slice;
	}

	/*public function __append__(args:Rest<T>):Slice<T> {
		final slice = new SliceData<T>(0, -1);
		slice.offset = 0;
		slice.capacity = capacity;
		slice.length = length;
		if (slice.capacity == -1) {
			slice.capacity = 0;
		}
		final startOffset = slice.length;
		final growCapacity = args.length - slice.capacity + slice.length + slice.offset + 1;
		slice.length += args.length;
		if (growCapacity <= 1) {
			slice.vector = slice.vector.copy(); // allocation
			for (i in 0...args.length) {
				slice.set(startOffset + i, args[i]);
			}
			return slice;
		}
		slice.capacity += growCapacity;
		slice.capacity += slice.capacity >> 2;
		slice.vector = new haxe.ds.Vector<T>(slice.capacity);
		if (this.vector != null) {
			//trace(slice.vector.toArray().toString());
			//haxe.ds.Vector.blit(cast this.vector,0,slice.vector,0,this.vector.length);
		}
		for (i in 0...args.length) {
			this.vector.set(startOffset + i, args[i]);
			//slice.set(startOffset + i, args[i]);
		}
		return slice;
	}*/

	private function boundsCheck(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= length) {
			throw 'slice out of bounds, index: $i length: $length';
		}
		#end
	}

	public function get(index:Int):T {
		boundsCheck(index);
		return vector.get(index + offset);
	}

	public function set(index:Int, value:T):T {
		boundsCheck(index);
		return vector.set(index + offset, value);
	}

	public function toArray():Array<T> { // unrolling
		return [for (i in 0...length) get(i)];
	}

	public function toVector():haxe.ds.Vector<T> {
		return vector;
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
