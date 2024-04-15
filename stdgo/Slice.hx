package stdgo;

import haxe.Rest;

import stdgo.GoArray;
import stdgo.GoInt;

@:forward(__ref__)
@:forward.new
//@:generic
abstract Slice<T>(GoArrayData<T>) from GoArrayData<T> to GoArrayData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public function __copy__():Slice<T> {
		return this.__copy__();
	}

	public function __setNumber32__():Slice<T>
		return this.__setNumber32__();

	public function __setNumber64__():Slice<T>
		return this.__setNumber64__();

	public function __setString__():Slice<T>
		return this.__setString__();

	public function iterator()
		return new stdgo.GoArray.GoArrayDataIterator<T>(this);

	public function keyValueIterator()
		return new GoArrayDataKeyValueIterator<T>(this);

	public inline function __append__(args:Rest<T>):Slice<T> {
		if (this == null) {
			final vector = new haxe.ds.Vector<T>(args.length * 2);
			return new GoArrayData<T>(args.length, vector.length, ...args);
		}
		return this.__append__(...args);
	}



	public inline function __toBasic__()
		return this;

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
	public function toGoArray():stdgo.Ref<GoArray<T>> {
		return this;
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
		final data = new GoArrayData<T>(0, -1, null);
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
	@:to
	public function __toArray__():Array<T> {
		return this == null ? [] : this.toArray();
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
		#if !target.static
		@:privateAccess data.isNumber32 = data.isNumber32;
		@:privateAccess data.isNumber64 = data.isNumber64;
		@:privateAccess data.isString = data.isString;
		#end
	}
}