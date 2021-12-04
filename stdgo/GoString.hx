package stdgo;

import haxe.io.Bytes;
import stdgo.StdGoTypes;

abstract GoString(Bytes) from Bytes to Bytes {
	public var length(get, never):GoInt;

	function get_length():GoInt
		return this.length;

	public var code(get, never):GoRune;

	function get_code():GoRune {
		final slice = toSliceRune();
		if (slice.length == 0)
			return 0xFFFD;
		return slice[0];
	}

	public inline function new(str:String = "") {
		this = Bytes.ofString(str, UTF8);
	}

	private function setCode(code:Int):Int {
		return switch code {
			case 0xDBFF:
				0x10FFFF;
			default:
				code;
		}
	}

	@:to public function toString():String {
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

	private function copyBytes():Bytes {
		final bytes = Bytes.alloc(this.length);
		bytes.blit(0, this, 0, this.length);
		return bytes;
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

	@:from static function fromByte(value:GoByte):GoString
		return String.fromCharCode(value.toBasic());

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
	public function get(index:GoInt):GoByte
		return this.get(index.toBasic());

	@:to public function toSliceByte():Slice<GoByte> {
		var slice = new Slice<GoByte>();
		slice.grow(length.toBasic());
		for (i in 0...length.toBasic()) {
			var value = this.get(i);
			slice[i] = value;
		}
		return slice;
	}

	@:to public function toSliceRune():Slice<GoRune> {
		var bytes = toSliceByte();
		var runes = new Slice<GoRune>();
		while (bytes.length > 0) {
			final tmp = stdgo.unicode.utf8.Utf8.decodeRune(bytes);
			final rune = tmp._0;
			final size = tmp._1;
			bytes = bytes.__slice__(size);
			runes = runes.__append__(rune);
		}
		return runes;
	}

	public function toArray():Array<GoByte>
		return [for (code in toSliceByte()) code];

	public function iterator()
		return new GoStringIterator(this);

	public function keyValueIterator()
		return new GoStringKeyValueIterator(this);

	public function __slice__(start:GoInt, end:GoInt = -1):GoString {
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
		final tmp = stdgo.unicode.utf8.Utf8.decodeRune(bytes);
		final rune = tmp._0;
		final size = tmp._1;
		bytes = bytes.__slice__(size);
		return offset += size.toBasic();
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

	public function next() {
		final tmp = stdgo.unicode.utf8.Utf8.decodeRune(bytes);
		final rune = tmp._0;
		final size = tmp._1;
		bytes = bytes.__slice__(size);
		final key = offset;
		final value = rune;
		offset += size.toBasic();
		return {key: key, value: value};
	}
}
