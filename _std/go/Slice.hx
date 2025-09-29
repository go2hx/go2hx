package go;

import haxe.Rest;

import go.GoArray;
import go.GoInt;

@:forward(__ref__)
@:forward.new
//@:generic
/**
* Simulated Slice ([]`T`) type in Haxe.
* Variable size and can be changed in size with:
* slice: no allocation
* append: allocation
*/
abstract Slice<T>(GoArrayData<T>) from GoArrayData<T> to GoArrayData<T> {
	public var length(get, never):GoInt;
	public var capacity(get, never):GoInt;

	public function __copy__():Slice<T> {
		return this.__copy__();
	}

	public inline function __setData__(data:GoArrayData<T>) {
		if (this == null) {
			this = data;
		}else{
			this.__setData__(data);
		}
	}

	public function __setNumber32__():Slice<T>
		return this.__setNumber32__();

	public function __setNumber64__():Slice<T>
		return this.__setNumber64__();

	public function __setString__():Slice<T>
		return this.__setString__();

	public function iterator()
		return new go.GoArray.GoArrayDataIterator<T>(this.__ref__());

	public function keyValueIterator()
		return new GoArrayDataKeyValueIterator<T>(this.__ref__());

	public inline function __append__(args:Rest<T>):Slice<T> {
		if (this == null) {
			if (args.length == 0)
				return null;
			return new GoArrayData<T>(args.length, args.length, ...args);
		}
		return this.__append__(...args);
	}



	public inline function __toBasic__()
		return this;

	public function __slice__(args:haxe.Rest<GoInt>):Slice<T> {
		if (this == null || this.__nil__)
			return null;
		return this.__slice__(...args);
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
	public static function fromArrayString(a:Array<String>):Slice<GoString> {
		return a.map(f -> (f : GoString));
	}

	@:from
	public static function fromBytes(bytes:haxe.io.Bytes):Slice<GoByte> {
		return new Slice<GoByte>(bytes.length, bytes.length, ...[
			for (i in 0...bytes.length)
				bytes.get(i)
		]).__setNumber32__();
	}

	@:to
	public function toGoArray():go.Ref<GoArray<T>> {
		return this;
	}

	public function toString():String
		return this.toString();


	@:to
	public function toBytes():haxe.io.Bytes {
		if (this != null && this.bytes != null) {
			return this.bytes.sub(0, this.length);
		}
		final bytes = haxe.io.Bytes.alloc(this.length);
		for (i in 0...bytes.length)
			bytes.set(i, cast this.vector.get(this.offset + i) ?? cast 0);
		return bytes;
	}

	@:from
	public static function fromArray<T>(array:Array<T>):Slice<T> {
		#if hl
		final data = new GoArrayData<T>(0, -1);
		data.vector = cast array;
		data.length = array.length;
		data.capacity = array.length;
		return data;
		#else
		return new Slice(array.length, array.length, ...array);
		#end
	}

	@:from
	public static function fromVector<T>(vector:haxe.ds.Vector<T>):Slice<T> {
		final data = new GoArrayData<T>(0, -1);
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
	
	private function __boundsCheck__(i:Int) {
		#if (!no_check_bounds && !(java || jvm || python || cs)) // checked all targets except php for native bounds checking.
		if (i < 0 || i >= this.length) {
			throw "array out of bounds, index: " + i + " length: " + length.toBasic();
		}
		#end
	}

	// if this is inline Exception: Can't cast hl.types.ArrayDyn to hl.types.ArrayBytes_hl_F32 on go/Math TestNextafter32 
	@:op([]) public function __get__(index:GoInt):T {
		__boundsCheck__(index);
		return this.get(index.toBasic());
	}

	@:op([]) public function __set__(index:GoInt, value:T):T {
		__boundsCheck__(index);
		return this.set(index.toBasic(), value);
	}

	public function __getOffset__():Int {
		return this.offset;
	}
	@:to
	public function __toArray__():Array<T> {
		return this == null ? [] : this.toArray();
	}

	public function __copyTo__(src:Slice<T>):GoInt {
		final src:Slice<T> = src?.__copy__();
		final dst:Slice<T> = this;
		return if (src == null || dst == null) {
			0;
		} else {
			final min:Int = src.length > dst.length ? dst.length : src.length;
			for (i in 0...min) {
				dst[i] = src[i];
			}
			min;
		}
	}
}