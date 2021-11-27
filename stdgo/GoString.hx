package stdgo;

import haxe.io.Bytes;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes;

@:forward
@:forward.new
abstract GoString(String) from String to String {
	public var length(get, never):GoInt;

	function get_length():GoInt
		return this.length;

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
		for (c in x) {
			str += String.fromCharCode(c.toBasic());
		}
		return str;
	}

	@:op([])
	public function get(index:GoInt):GoByte
		return this.charCodeAt(index.toBasic());

	@:to public function toSliceByte():Slice<StdGoTypes.GoByte> {
		var slice = new Slice<StdGoTypes.GoByte>();
		slice.grow(this.length);
		for (i in 0...this.length) {
			slice[i] = get(i);
		}
		return slice;
	}

	@:to public function toSliceRune():Slice<StdGoTypes.GoRune> {
		return new Slice<StdGoTypes.GoRune>(...[
			for (i in 0...this.length)
				StringTools.fastCodeAt(this, i)
		]);
	}

	@:from static function fromByte(value:GoByte):GoString
		return new GoString(String.fromCharCode(value.toBasic()));

	public function toArray():Array<StdGoTypes.GoByte>
		return [for (code in new StringIterator(this)) code];

	public function iterator():StringIterator
		return new StringIterator(this);

	public function keyValueIterator()
		return new StringKeyValueIterator(this);

	public function __slice__(start:GoInt, end:GoInt = -1):GoString {
		if (end == -1)
			end = this.length;
		final pos = start.toBasic();
		final len = end.toBasic() - start.toBasic();
		final str = this.substr(pos, len);
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

	@:op(A + B) static function add(a:GoString, b:GoString):GoString;
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
