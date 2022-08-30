package stdgo;

import haxe.Rest;
import haxe.io.Bytes;
import stdgo.StdGoTypes;

abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public function iterator():SliceIterator<T>
		return this.iterator();

	public function keyValueIterator():SliceKeyValueIterator<T>
		return this.keyValueIterator();

	@:from
	public static function fromStringRunes(str:String):Slice<GoRune> {
		return new GoString(str);
	}

	@:from
	public static function fromStringBytes(str:String):Slice<GoByte> {
		return new GoString(str);
	}

	@:from
	public static function fromBytes(bytes:Bytes):Slice<GoByte> {
		return new Slice<GoByte>(0, 0, ...[
			for (i in 0...bytes.length)
				bytes.get(i)
		]);
	}

	@:to
	public static function toBytes(slice:Slice<GoByte>):Bytes {
		final bytes = Bytes.alloc(slice.length.toBasic());
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
		final data = new SliceData(0, 0);
		@:privateAccess data.vector = vector;
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

	public function new(length:GoInt, capacity:GoInt, args:Rest<T>) {
		this = new SliceData(length, capacity);
		if (args.length == 0)
			return;
		this.length = args.length;
		this.capacity = this.length;
		this.vector = haxe.ds.Vector.fromArrayCopy(args.toArray());
	}

	@:op([]) public function __get__(index:GoInt):T {
		return this.get(index.toBasic());
	}

	@:op([]) public function __set__(index:GoInt, value:T):T {
		return this.set(index.toBasic(), value);
	}

	public function __getOffset__():Int {
		return this.pos;
	}

	public function __slice__(low:GoInt, high:GoInt = -1, cap:GoInt = -1):Slice<T> {
		if (this == null)
			return null;
		var pos = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		if (cap == -1)
			cap = this.length;
		var obj:SliceData<T> = __ref__();
		obj.pos = pos;
		obj.vector = this.vector;
		obj.capacity = cap;
		obj.length = length;
		return obj;
	}

	public function __ref__():Slice<T> {
		final slice = new SliceData<T>(this.length, this.capacity);
		slice.vector = this.vector;
		slice.pos = this.pos;
		return slice;
	}

	public function __append__(args:Rest<T>):Slice<T> {
		final slice:SliceData<T> = __ref__(); // no allocation
		var startPos = this.length;
		var growLength = args.length - slice.capacity + slice.length + slice.pos;
		if (growLength <= 0) {
			growLength += -slice.pos;
			if (growLength <= 0) {
				slice.vector = slice.vector.copy(); // allocation
				// fill
				for (i in 0...args.length) {
					slice.set(i + startPos, args[i]);
				}
				return slice;
			} else {
				slice.vector = slice.vector.copy(); // allocation
				slice.length += growLength;
				final diff = slice.pos;
				slice.pos = 0;
				// shift slice right from prev pos
				for (i in 0...slice.length) {
					slice.set(i, slice.get(i + diff));
				}
				// fill
				for (i in 0...args.length) {
					slice.set(i + startPos, args[i]);
				}
				return slice;
			}
		}
		slice.length += growLength;
		slice.capacity += growLength;
		slice.capacity += slice.capacity >> 2;
		slice.grow(); // allocation
		for (i in 0...args.length) {
			slice.set(startPos + i, args[i]);
		}
		return slice;
	}

	public function __toArray__() {
		return this.toArray();
	}

	public function __toVector__() {
		return this.toVector();
	}
}

private class SliceKeyValueIterator<T> {
	var pos:Int = 0;
	var slice:Slice<T>;

	public inline function new(slice:Slice<T>) {
		this.slice = slice.__ref__();
	}

	public function hasNext() {
		return pos < slice.length;
	}

	public function next() {
		return {key: (pos : GoInt), value: slice.__get__(pos++)};
	}
}

private class SliceIterator<T> {
	var pos:Int = 0;
	var slice:Slice<T>;

	public inline function new(slice:Slice<T>) {
		this.slice = slice.__ref__();
	}

	public function hasNext() {
		return pos < slice.length;
	}

	public function next() {
		return slice.__get__(pos++);
	}
}

class SliceData<T> {
	public var vector:haxe.ds.Vector<T>;

	public var pos:Int = 0;
	public var length:Int = 0;
	public var capacity:Int = 0;

	public inline function new(length:Int, capacity:Int) {
		this.length = length;
		this.capacity = capacity;
		vector = new haxe.ds.Vector<T>(capacity);
	}

	private function boundsCheck(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= length) {
			throw 'slice out of bounds, index: $i length: $length';
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

	public function iterator()
		return new SliceIterator(this);

	public function keyValueIterator()
		return new SliceKeyValueIterator(this);

	public function toArray():Array<T> { // unrolling
		return [for (i in 0...length) get(i)];
	}

	public function toVector():haxe.ds.Vector<T> {
		if (pos != 0) {
			final obj = new haxe.ds.Vector<T>(length);
			haxe.ds.Vector.blit(obj, pos, obj, 0, obj.length);
			return obj;
		}
		return vector;
	}

	public function toString():String
		return "[" + [for (i in pos...pos + length) Go.string(vector[i])].join(" ") + "]";

	public function grow() {
		if (vector.length >= capacity)
			return;
		var dest = new haxe.ds.Vector<T>(capacity);
		haxe.ds.Vector.blit(vector, 0, dest, 0, vector.length);
		this.vector = dest;
	}
}
