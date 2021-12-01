package stdgo;

import haxe.io.Bytes;
import haxe.io.Bytes;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes;

abstract GoString(Bytes) from Bytes to Bytes {
	public var length(get, never):GoInt;

	function get_length():GoInt
		return this.length;

	public var code(get, never):Int;

	function get_code():Int
		return this.length;

	public inline function new(str:String = "") {
		this = Bytes.ofString(str, UTF8);
	}

	@:to public function toString():String {
		var s = this.toString();
		return s;
	}

	public function lastIndexOf(str:String, ?startIndex:Int):Int
		return toString().lastIndexOf(str, startIndex);

	public function indexOf(str:String, ?startIndex:Int):Int
		return toString().lastIndexOf(str, startIndex);

	public function substr(pos:Int, ?len:Int):GoString
		return toString().substr(pos, len);

	@:from static function ofString(x:String):GoString
		return new GoString(x);

	@:from static function ofRune(x:GoRune):GoString {
		return String.fromCharCode(x.toBasic());
	}

	@:from static function ofUInt64(x:GoUInt64):GoString
		return String.fromCharCode(x.toBasic().toInt());

	@:from static function ofInt64(x:GoInt64):GoString
		return String.fromCharCode(x.toBasic().high);

	@:from static function ofSliceByte(x:Slice<GoByte>):GoString {
		var bytes = haxe.io.Bytes.alloc(x.length.toBasic());
		for (i in 0...bytes.length)
			bytes.set(i, x[i].toBasic());
		return bytes.toString();
	}

	@:from static function ofSliceRune(x:Slice<GoRune>):GoString {
		var str = "";
		for (c in x)
			str += String.fromCharCode(c.toBasic());
		return str;
	}

	@:op([])
	public function get(index:GoInt):GoByte
		return this.get(index.toBasic());

	@:to public function toSliceByte():Slice<StdGoTypes.GoByte> {
		var slice = new Slice<StdGoTypes.GoByte>();
		slice.grow(length.toBasic());
		for (i in 0...length.toBasic()) {
			var value = this.get(i);
			slice[i] = value;
		}
		return slice;
	}

	@:to public function toSliceRune():Slice<StdGoTypes.GoRune> {
		final s = toString();
		return new Slice<StdGoTypes.GoRune>(...[
			for (i in 0...this.length)
				try {
					final code = StringTools.fastCodeAt(s, i);
					switch code {
						default:
							code;
					}
				} catch (_) {
					0xFFFD;
				}
		]);
	}

	@:from static function fromByte(value:GoByte):GoString
		return new GoString(String.fromCharCode(value.toBasic()));

	public function toArray():Array<StdGoTypes.GoByte>
		return [for (code in new StringIterator(toString())) code];

	public function iterator():StringIterator
		return new StringIterator(toString());

	public function keyValueIterator()
		return new StringKeyValueIterator(toString());

	public function __slice__(start:GoInt, end:GoInt = -1):GoString {
		if (end == -1)
			end = this.length;
		final pos = start.toBasic();
		final len = end.toBasic() - start.toBasic();
		final str = substr(pos, len);
		return str;
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool
		return a.toString() < b.toString();

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool
		return a.toString() <= b.toString();

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool
		return a.toString() > b.toString();

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool
		return a.toString() >= b.toString();

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool
		return a.toString() == b.toString();

	@:op(A != B) static function neq(a:GoString, b:GoString):Bool
		return !eq(a, b);

	@:op(A + B) static function add(a:GoString, b:GoString):GoString {
		var bytes = Bytes.alloc(a.length.toBasic() + b.length.toBasic());
		final len = a.length.toBasic();
		bytes.blit(0, a, 0, len);
		bytes.blit(len, b, 0, b.length.toBasic());
		return bytes;
	}

	@:op(A + B) static function addString(a:GoString, b:String):GoString {
		return a + new GoString(b);
	}

	@:op(A + B) static function addString2(a:String, b:GoString):GoString {
		return new GoString(a) + b;
	}
}

private class StringIterator {
	var offset:Int = 0;
	var s:String;

	public inline function new(s:String) {
		this.s = s;
	}

	public inline function hasNext() {
		return offset < s.length;
	}

	public inline function next():GoByte {
		return StringTools.unsafeCodeAt(s, offset++);
	}
}

private class StringKeyValueIterator {
	var offset:Int = 0;
	var s:String;

	public inline function new(s:String) {
		this.s = s;
	}

	public inline function hasNext() {
		return offset < s.length;
	}

	public inline function next() {
		return {key: (offset : GoInt), value: StringTools.fastCodeAt(s, offset++)};
	}
}
