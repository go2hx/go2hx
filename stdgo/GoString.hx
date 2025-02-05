package stdgo;

import haxe.io.Bytes;


using GoString.GoStringTools;

private class GoStringData {
	public var bytes:Bytes;
	public var low:Int = 0;
	public var high:Int = 0;

	public inline function new(bytes, low, high) {
		this.bytes = bytes;
		this.low = low;
		this.high = high;
	}

	public function toString():String {
		#if !nolinkstd
		if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString((this : GoString)))
			return "invalid string";
		#end
		return bytes.sub(this.low, this.high - this.low).toString();
	}
}
/**
 * Representation of a GoString in Haxe, implicitly converts to String.
 * `GoStringData` holds `haxe.io.Bytes` because GoStrings can hold invalid charachter sequences
 * GoString is pass by ref and needs to manually call `__copy__` for pass by copy
 */
abstract GoString(GoStringData) from GoStringData to GoStringData {
	public var length(get, never):GoInt;

	function get_length():GoInt
		return this == null ? 0 : this.high - this.low;

	public var code(get, never):GoRune;

	function get_code():GoRune {
		final slice = __toSliceRune__();
		if (slice.length == 0)
			return 0xFFFD;
		return slice[0];
	}

	public function __copy__():GoString {
		if (this == null || this.bytes == null)
			return "";
		final b = Bytes.alloc(this.bytes.length);
		b.blit(0, this.bytes, 0, this.bytes.length);
		return new GoStringData(b, this.low, this.high);
	}

	private function setCode(code:Int):Int {
		return switch code {
			case 0xDBFF:
				0x10FFFF;
			default:
				code;
		}
	}

	@:to
	public function toString():String
		return this.toString();

	@:from
	private static function ofBytes(x:Bytes):GoString {
		return new GoStringData(x, 0, x.length);
	}

	@:from static function ofString(x:String):GoString {
		final b = haxe.io.Bytes.ofString(x);
		return new GoStringData(b, 0, b.length);
	}

	@:from static function ofRune(x:GoRune):GoString {
		if (x == 0x110000)
			return "�";
		return String.fromCharCode(x.toBasic());
	}

	@:from static function ofUInt64(x:GoUInt64):GoString {
		return try {
			String.fromCharCode(x.toBasic().toInt());
		}catch(_) {
			"�";
		}
	}

	@:from static function ofInt64(x:GoInt64):GoString
		return String.fromCharCode(x.toBasic().high);

	@:from static function fromByte(value:GoByte):GoString
		return String.fromCharCode(value.toBasic());

	@:from static function ofVectorByte(x:haxe.ds.Vector<GoByte>):GoString {
		return ofSliceByte((x : Slice<GoByte>));
	}

	@:from static function ofSliceByte(x:Slice<GoByte>):GoString {
		if (x != null && x.__bytes__ != null) {
			return new GoStringData(x.__bytes__, x.__offset__, x.__offset__ + x.length);
		}
		var bytes = haxe.io.Bytes.alloc(x.length.toBasic());
		for (i in 0...bytes.length) {
			final n = x[i];
			#if !target.static
			if (n != null)
			#end
				bytes.set(i, n);
		}
		return bytes;
	}

	@:from static function ofSliceRune(x:Slice<GoRune>):GoString {
		if (x != null && x.__bytes__ != null)
			return x.__bytes__;
		var str = "";
		for (c in x)
			str += String.fromCharCode(c.toBasic());
		return str;
	}

	@:op([])
	public function __get__(index:GoInt):GoByte
		return this.bytes.get(this.low + index.toBasic());

	@:to public function __toSliceByte__():Slice<GoByte> {
		final slice = new stdgo.GoArray.GoArrayData<GoByte>(0,-1);
		if (this == null) {
			slice.bytes = haxe.io.Bytes.alloc(0);
			slice.offset = 0;
			slice.length = 0;
			slice.capacity = 0;
			#if !target.static
			@:privateAccess slice.isNumber32 = true;
			#end
			return slice;
		}
		slice.bytes = this.bytes;
		slice.offset = this.low;
		slice.length = this.high - this.low;
		slice.capacity = this.high - this.low;
		#if !target.static
		@:privateAccess slice.isNumber32 = true;
		#end
		return slice;
	}


	@:to public function __toSliceRune__():Slice<GoRune> {
		var bytes = __toSliceByte__();
		var runes = new Slice<GoRune>(0, 0).__setNumber32__();
		#if nolinkstd
		trace("std not linked");
		return [];
		#else
		while (bytes.length > 0) {
			final tmp = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(bytes);
			final rune = tmp._0;
			final size = tmp._1;
			bytes = bytes.__slice__(size);
			runes = runes.__append__(rune);
		}
		return runes;
		#end
	}

	@:to
	public function __toArray__():Array<GoByte>
		return [for (code in __toSliceByte__()) code];

	
	public function iterator()
		return new GoStringIterator(this);

	public function keyValueIterator()
		return new GoStringKeyValueIterator(this);

	public function __slice__(low:GoInt, high:GoInt = -1):GoString {
		if (this == null) {
            return null;
        }
        if (high == -1) {
            high = this.high - this.low;
        }
        if (high > this.bytes.length) {
			throw "slice bounds out of range [:" + high + "] with length " + this.bytes.length;
		}
		if (low > high) {
			throw "slice bounds out of range [" + low + ":] with length " + (high - low);
		}
        return new GoStringData(this.bytes, this.low + low, this.low + high);
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool
		return compare(a,b) < 0;

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool
		return compare(a,b) <= 0;

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool
		return compare(a,b) > 0;

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool
		return compare(a,b) >= 0;

	static function compare(a:GoString, b:GoString):GoInt {
		final a:GoStringData = a;
		final b:GoStringData = b;
		final aLength = a.high - a.low;
		final bLength = b.high - b.low;
		// min length
		final len = aLength > bLength ? bLength : aLength;
		for (i in 0...len) {
			final aByte = a.bytes.get(a.low + i);
			final bByte = b.bytes.get(b.low + i);
			if (aByte < bByte)
				return -1;
			if (aByte > bByte)
				return 1;
		}
		if (aLength < bLength)
			return -1;
		if (aLength > bLength)
			return 1;
		return 0;
	}

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool {
		if (a == null && b == null)
			return true;
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
		final a:GoStringData = a;
		final b:GoStringData = b;
		var bytes = Bytes.alloc((a.high - a.low) + (b.high - b.low));
		final len = a.high - a.low;
		//trace("go string add");
		bytes.blit(0, a.bytes, a.low, len);
		bytes.blit(len, b.bytes, b.low, b.high - b.low);
		return bytes;
	}

	@:op(A + B) static function addString(a:GoString, b:String):GoString {
		return a + (b : GoString);
	}

	@:op(A + B) static function addString2(a:String, b:GoString):GoString {
		return (a : GoString) + b;
	}
}

private class GoStringIterator {
	var offset:Int = 0;
	var bytes:Slice<GoByte> = null;

	public inline function new(s:GoString) {
		bytes = s;
	}

	public function hasNext() return bytes.length > 0;

	public function next():GoInt {
		#if nolinkstd
		trace("std not linked");
		bytes = [];
		return 0;
		#else
		final tmp = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(bytes);
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

	public function hasNext() return bytes.length > 0;

	public function next():{key:GoInt, value:GoRune} {
		#if nolinkstd
		trace("std not linked");
		bytes = [];
		return {key: 0, value: 0};
		#else
		final tmp = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(bytes);
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
		return s.toString().lastIndexOf(str, startIndex);

	public static function indexOf(s:GoString, str:GoString, ?startIndex:Int):Int
		return s.toString().indexOf(str, startIndex);

	public static function substr(str:GoString, pos:Int, ?len:Int):GoString
		return str.toString().substr(pos, len);
}