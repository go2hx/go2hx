package stdgo;

import haxe.io.Bytes;
import stdgo.StdGoTypes;

using GoString.GoStringTools;


private class GoStringData {
	public var bytes:Bytes;
	public var offset:Int = 0;
	public var length:Int = 0;
	public inline function new(bytes,offset,length) {
		this.bytes = bytes;
		this.offset = offset;
		this.length = length;
	}
}

abstract GoString(GoStringData) from GoStringData {
	public var length(get, never):GoInt;

	function get_length():GoInt
		return this.length;

	public var code(get, never):GoRune;

	function get_code():GoRune {
		final slice = __toSliceRune__();
		if (slice.length == 0)
			return 0xFFFD;
		return slice[0];
	}

	private function setCode(code:Int):Int {
		return switch code {
			case 0xDBFF:
				0x10FFFF;
			default:
				code;
		}
	}

	@:to public function __toString__():String {
		return #if hl removeZeros().toString(); #else this.toString(); #end
	}

	private function removeZeros():Bytes {
		final list:Array<Int> = [];
		for (i in 0...this.length) {
			final byte = this.get(i);
			if (byte != 0)
				list.push(byte);
		}
		final bytes = Bytes.alloc(list.length);
		for (i in 0...list.length)
			bytes.set(i, list[i]);
		return bytes;
	}

	@:from
	private static function ofBytes(x:Bytes):GoString {
		return new GoStringData(x,0,x.length);
	}

	@:from static function ofString(x:String):GoString
		return Bytes.ofString(x);

	@:from static function ofRune(x:GoRune):GoString {
		if (x == 0x110000)
			return "�";
		return String.fromCharCode(x.toBasic());
	}

	@:from static function ofUInt64(x:GoUInt64):GoString
		return String.fromCharCode(x.toBasic().toInt());

	@:from static function ofInt64(x:GoInt64):GoString
		return String.fromCharCode(x.toBasic().high);

	@:from static function fromByte(value:GoByte):GoString
		return String.fromCharCode(value.toBasic());

	@:from static function ofVectorByte(x:haxe.ds.Vector<GoByte>):GoString {
		return ofSliceByte((x : Slice<GoByte>));
	}

	@:from static function ofSliceByte(x:Slice<GoByte>):GoString {
		var bytes = haxe.io.Bytes.alloc(x.length.toBasic());
		for (i in 0...bytes.length)
			bytes.set(i, x[i].toBasic());
		return bytes;
	}

	@:from static function ofSliceRune(x:Slice<GoRune>):GoString {
		var str = "";
		for (c in x)
			str += String.fromCharCode(c.toBasic());
		return str;
	}

	@:op([])
	public function __get__(index:GoInt):GoByte
		return this.bytes.get(index.toBasic());

	@:to public function __toSliceByte__():Slice<GoByte> {
		var slice = new Slice<GoByte>(this.length, this.length);
		for (i in 0...this.length) {
			var value = this.bytes.get(i);
			slice[i] = value;
		}
		return slice;
	}

	@:to public function __toVector__():haxe.ds.Vector<GoByte> {
		return __toSliceByte__().__toVector__();
	}

	@:to public function __toSliceRune__():Slice<GoRune> {
		var bytes = __toSliceByte__();
		var runes = new Slice<GoRune>(0, 0);
		#if nolinkstd
		trace("std not linked");
		return [];
		#else
		while (bytes.length > 0) {
			final tmp = stdgo.unicode.utf8.Utf8.decodeRune(bytes);
			final rune = tmp._0;
			final size = tmp._1;
			bytes = bytes.__slice__(size);
			runes = runes.__append__(rune);
		}
		return runes;
		#end
	}

	public function __toArray__():Array<GoByte>
		return [for (code in __toSliceByte__()) code];

	public function iterator()
		return new GoStringIterator(this);

	public function keyValueIterator()
		return new GoStringKeyValueIterator(this);

	public function __slice__(start:GoInt, end:GoInt = -1):GoString {
		if (this == null)
			return null;
		if (end == -1)
			end = this.length;
		final pos = start.toBasic();
		final len = end.toBasic() - start.toBasic();
		final bytes = Bytes.alloc(len);
		try {
			bytes.blit(0, this, pos, len);
		} catch (e) {
			trace(bytes.length, this.length, pos);
			trace(start, end);
			throw e;
		}
		return bytes;
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool
		return a.toString() < b.toString();

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool
		return a.toString() <= b.toString();

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool
		return a.toString() > b.toString();

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool
		return a.toString() >= b.toString();

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool {
		if (a.length != b.length)
			return false;
		for (i in 0...a.length.toBasic()) {
			if (a[i] != b[i])
				return false;
		}
		return true;
	}

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

private class GoStringIterator {
	var offset:Int = 0;
	var bytes:Slice<GoByte> = null;

	public inline function new(s:GoString) {
		bytes = s;
	}

	public function hasNext()
		return bytes.length > 0;

	public function next():GoInt {
		#if nolinkstd
		trace("std not linked");
		bytes = [];
		return 0;
		#else
		final tmp = stdgo.unicode.utf8.Utf8.decodeRune(bytes);
		final rune = tmp._0;
		final size = tmp._1;
		bytes = bytes.__slice__(size);
		return offset += size.toBasic();
		#end
	}
}

private class GoStringKeyValueIterator {
	var offset:Int = 0;
	var bytes:Slice<GoByte> = null;

	public inline function new(s:GoString) {
		bytes = s;
	}

	public function hasNext()
		return bytes.length > 0;

	public function next():{key:GoInt, value:GoRune} {
		#if nolinkstd
		trace("std not linked");
		bytes = [];
		return {key: 0, value: 0};
		#else
		final tmp = stdgo.unicode.utf8.Utf8.decodeRune(bytes);
		final rune = tmp._0;
		final size = tmp._1;
		bytes = bytes.__slice__(size);
		final key = offset;
		final value = rune;
		offset += size.toBasic();
		return {key: key, value: value};
		#end
	}
}

class GoStringTools {
	public static function lastIndexOf(s:GoString, str:GoString, ?startIndex:Int):Int
		return s.__toString__().lastIndexOf(str, startIndex);

	public static function indexOf(s:GoString, str:GoString, ?startIndex:Int):Int
		return s.__toString__().indexOf(str, startIndex);

	public static function substr(str:GoString, pos:Int, ?len:Int):GoString
		return str.__toString__().substr(pos, len);

	public static function toString(str:GoString)
		return str.__toString__();
}
