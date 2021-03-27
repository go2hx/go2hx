package stdgo;

import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoUInt8;
import stdgo.StdGoTypes.AnyInterface;

@:forward
@:access(StringTools)
abstract GoString(String) from String to String {
	public inline function new(str:String = "") {
		this = str;
	}

	@:to inline function __promote() {
		return new AnyInterface({value: this, typeName: "string"});
	}

	@:from static function ofUInt8(x:GoUInt8):GoString {
		return String.fromCharCode(x.toBasic());
	}
	@:arrayAccess
	inline function getGoInt(index:GoInt)
		return get(index.toBasic());
	@:arrayAccess
	inline function get(index:Int)
		return this.charCodeAt(index);

	public function toString():String
		return this;
	@:to public function toSlice():Slice<StdGoTypes.GoByte> {
		return new Slice(...toArray());
	}
	public function toArray():Array<StdGoTypes.GoByte> {
		return [for (code in new StringIterator(this)) code];
	}

	public function iterator():StringIterator {
		return new StringIterator(this);
	}

	public function keyValueIterator() {
		return new StringKeyValueIterator(this);
	}

	public function slice(start:Int, end:Int = 0):GoString {
		if (end == 0)
			end = this.length;
		return this.substring(start, end);
	}
	public inline function typeName() {
		return "GoString";
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool;

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool;

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool;

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool;

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool;

	@:op(A != B) static function neq(a:GoString, b:GoString):Bool;

	@:op(A + B) static function add(a:GoString, b:GoString):GoString;

	@:op(A += B) inline function assignAddGo(a:GoString):GoString {
		return this = this + a;
	}

	@:op(A + B) @:commutative static function add(a:GoString, b:String):GoString;

	@:op(A += B) @:commutative static function assignAdd(a:GoString, b:String):GoString;
}


class StringIterator {
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

class StringKeyValueIterator {
	var offset:Int = 0;
	var s:String;
	public inline function new(s:String) {
		this.s = s;
	}
	public inline function hasNext() {
		return offset < s.length;
	}
	public inline function next() {
		return {key: (offset : GoInt), value: StringTools.fastCodeAt(s,offset++)};
	}
}