package stdgo;

import stdgo.StdGoTypes.GoInt32;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.GoUInt8;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoRune;

@:forward
@:access(StringTools)
abstract GoString(String) from String to String {
	public inline function new(str:String = "") {
		this = str;
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

	@:from static function ofInt64(x:GoInt64):GoString {
		return String.fromCharCode(x.toBasic().low);
	}

	@:op([])
	public inline function get(index:GoInt):GoInt32
		return this.charCodeAt(index.toBasic());

	public function toString():String
		return this;

	@:to public function toSlice():Slice<StdGoTypes.GoByte> {
		return new Slice(...toArray());
	}

	@:from static function toDynamic(obj:Dynamic):GoString
		return "";

	public function toArray():Array<StdGoTypes.GoByte> {
		return [for (code in new StringIterator(this)) code];
	}

	public function iterator():StringIterator {
		return new StringIterator(this);
	}

	public function keyValueIterator() {
		return new StringKeyValueIterator(this);
	}

	public function slice(start:GoInt, end:GoInt = -1):GoString {
		if (end == -1)
			end = this.length;
		return this.substring(start.toBasic(), end.toBasic());
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool;

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool;

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool;

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool;

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool;

	@:op(A != B) static function neq(a:GoString, b:GoString):Bool;

	@:op(A + B) static function add(a:GoString, b:GoString):GoString;

	@:op(A + B) @:commutative static function add(a:GoString, b:String):GoString;
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
