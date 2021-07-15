package stdgo;

import haxe.io.Bytes;
import stdgo.StdGoTypes.GoInt32;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.GoUInt8;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoRune;

abstract GoString(Bytes) from Bytes to Bytes {
	public var length(get,never):GoInt;
	function get_length():GoInt {
		return this.length;
	}
	public inline function new(str:String = "") {
		this = Bytes.ofString(str,UTF8);
	}

	@:from static function ofRune(x:GoRune):GoString {
		return String.fromCharCode(x.toBasic());
	}

	@:from static function ofSlice(x:Slice<GoByte>):GoString {
		var bytes = haxe.io.Bytes.alloc(x.length.toBasic());
		for (i in 0...bytes.length)
			bytes.set(i, x[i].toBasic());
		return bytes.toString();
	}

	public function lastIndexOf(str:String,?startIndex:Int):Int
		return toString().lastIndexOf(str,startIndex);
	public function substr(pos:Int,?len:Int):GoString
		return toString().substr(pos,len);

	@:from static function ofInt64(x:GoInt64):GoString {
		return String.fromCharCode(x.toBasic().low);
	}

	@:op([])
	public function get(index:GoInt):GoUInt8 {
		return this.get(index.toBasic());
		//return Bytes.fastGet(this.getData(),index.toBasic());
	}

	@:to public function toString():String {
		return this.toString();
	}

	@:from public static function fromString(value:String):GoString
		return new GoString(value);

	@:to public function toSliceByte():Slice<StdGoTypes.GoByte> {
		var slice = new Slice<StdGoTypes.GoByte>();
		for (i in 0...length.toBasic()) {
			slice.append(get(i));
		}
		return slice;
	}

	@:to public function toSliceRune():Slice<StdGoTypes.GoRune> {
		var str = toString();
		return new Slice<StdGoTypes.GoRune>(...[
			for (i in 0...str.length)
				StringTools.fastCodeAt(str,i)
		]);
	}

	@:from static function toDynamic(obj:Dynamic):GoString
		return "";

	public function toArray():Array<StdGoTypes.GoByte> {
		return [for (code in new StringIterator(toString())) code];
	}

	public function iterator():StringIterator {
		return new StringIterator(toString());
	}

	public function keyValueIterator() {
		return new StringKeyValueIterator(toString());
	}

	public function slice(start:GoInt, end:GoInt = -1):GoString {
		if (end == -1)
			end = length;
		final pos = start.toBasic();
		final len = end.toBasic() - start.toBasic();
		final bytes = this.sub(pos,len);
		if (!UnicodeString.validate(bytes,UTF8))
			return "";
		return bytes;
	}

	public function strValue():Int {
		var value = 0;
		for (i in 0...this.length) {
			value += this.get(i);
		}
		return value;
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool {
		return a.strValue() < b.strValue();
	}

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool {
		return a.strValue() <= b.strValue();
	}

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool {
		return a.strValue() > b.strValue();
	}

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool {
		return a.strValue() >= b.strValue();
	}

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool {
		if (a.length != b.length)
			return false;
		for (i in 0...a.length.toBasic()) {
			if (a.get(i) != b.get(i))
				return false;
		}
		return true;
	}

	@:op(A != B) static function neq(a:GoString, b:GoString):Bool {
		if (a.length != b.length)
			return true;
		for (i in 0...a.length.toBasic()) {
			if (a.get(i) != b.get(i))
				return true;
		}
		return false;
	}

	@:op(A + B) static function add(a:GoString, b:GoString):GoString {
		var bytes = Bytes.alloc(a.length.toBasic() + b.length.toBasic());
		final len = a.length.toBasic();
		bytes.blit(0,a,0,len);
		bytes.blit(len,b,0,b.length.toBasic());
		return bytes; //TODO
	}

	@:op(A + B) static function addString(a:GoString, b:String):GoString {
		return a + Bytes.ofString(b); //TODO
	}

	@:op(A + B) static function addString2(a:String, b:GoString):GoString {
		return Bytes.ofString(a) + b;
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
