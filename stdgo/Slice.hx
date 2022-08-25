package stdgo;

import haxe.Rest;
import haxe.ds.Vector;
import haxe.io.Bytes;
import stdgo.StdGoTypes;

abstract Slice<T>(SliceData<T>) from SliceData<T> to SliceData<T> {
	public var length(get, never):GoInt;

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
		return new Slice<GoByte>(...[
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
		return new Slice(...array);
	}

	@:from
	public static function fromVector<T>(vector:Vector<T>):Slice<T> {
		final data = new SliceData(0);
		@:privateAccess data.vector = vector;
		return data;
	}

	public var __vector__(get, set):Vector<T>;

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
		var slice = new Slice<T>();
		slice.__setUnderlying__(vector, 0, vector.length);
		return slice;
	}

	private function get_length():Int {
		return this.length;
	}

	public function __getUnderlying__():Vector<T> {
		return this.underlying();
	}

	public function new(args:Rest<T>) {
		var length = args.length;
		this = new SliceData(length);
		if (args.length == 0)
			return;
		for (i in 0...args.length) {
			__set__(i, args[i]);
		}
	}

	public function __setCap__(cap:GoInt):Slice<T> {
		@:privateAccess this._cap = cap.toBasic();
		return this;
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

	public function __slice__(low:GoInt, high:GoInt = -1):Slice<T> {
		if (this == null)
			return null;
		var pos = low;
		if (high == -1)
			high = length.toBasic();
		var length = high - low;
		var obj = new Slice<T>();
		obj.__setUnderlying__(this.underlying(), this.pos + pos.toBasic(), length.toBasic());
		return obj;
	}

	public function __copy__():Slice<T> {
		var slice = new Slice<T>();
		slice.__grow__(length.toBasic());
		for (i in 0...slice.length.toBasic()) {
			slice[i] = __get__(i);
		}
		return slice;
	}

	public function __append__(args:Rest<T>):Slice<T> {
		var slice = __copy__();
		var pos = slice.length.toBasic();
		slice.__grow__(args.length);
		for (i in 0...args.length) {
			slice[pos + i] = args[i];
		}
		return slice;
	}

	public function __grow__(size:Int) {
		this.grow(size);
	}

	public function cap():GoInt {
		return @:privateAccess this._cap == -1 ? length : @:privateAccess this._cap;
	}

	public function __toArray__() {
		return this.toArray();
	}

	public function __toVector__() {
		return this.toVector();
	}

	public function __setUnderlying__(vector:Vector<T>, pos:Int, length:Int) {
		this.setUnderlying(vector, pos, length);
	}
}

private class SliceKeyValueIterator<T> {
	var pos:Int = 0;
	var slice:Slice<T>;

	public inline function new(slice:Slice<T>) {
		this.slice = slice.__copy__();
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
		this.slice = slice.__copy__();
	}

	public function hasNext() {
		return pos < slice.length;
	}

	public function next() {
		return slice.__get__(pos++);
	}
}

private class SliceData<T> {
	var vector:Vector<T>;

	public var pos:Int = 0;
	public var length:Int = 0;

	var _cap:Int = -1;

	public function new(length:Int = 0) {
		this.length = length;
		vector = new Vector<T>(length);
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

	public function cap():Int {
		return _cap;
	}

	public function toArray():Array<T> { // unrolling
		return [for (i in 0...length) get(i)];
	}

	public function toVector():Vector<T> {
		return vector;
	}

	public function toString():String
		return "[" + [for (i in pos...pos + length) Go.string(vector[i])].join(" ") + "]";

	public function underlying():Vector<T> {
		return vector;
	}

	public function grow(size:Int) {
		if (vector.length >= size + length)
			return;
		length += size;
		var dest = new Vector<T>(length);
		Vector.blit(vector, 0, dest, 0, vector.length);
		vector = dest;
	}

	public function setUnderlying(value:Vector<T>, pos:Int, length:Int) {
		vector = value;
		this.pos = pos;
		this.length = length;
	}
}
