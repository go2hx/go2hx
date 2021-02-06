package stdgo;

import haxe.iterators.StringIterator;

@:forward
@:access(StringTools)
abstract GoString(String) from String to String {
	@:arrayAccess
	inline function get(id:Int) {
		return this.charAt(id);
	}

	public function toString():String {
		return this;
	}

	public function iterator():StringIterator {
		return new StringIterator(this);
	}

	public function slice(start:Int,end:Int=0):GoString {
		if (end == 0)
			end = this.length;
		return this.substring(start,end);
	}

	@:op(A < B) static function lt(a:GoString, b:GoString):Bool;

	@:op(A <= B) static function lte(a:GoString, b:GoString):Bool;

	@:op(A > B) static function gt(a:GoString, b:GoString):Bool;

	@:op(A >= B) static function gte(a:GoString, b:GoString):Bool;

	@:op(A == B) static function eq(a:GoString, b:GoString):Bool;

	@:op(A != B) static function neq(a:GoString, b:GoString):Bool;

	@:op(A + B) static function add(a:GoString, b:GoString):GoString;

	@:op(A += B) static function assignAdd(a:GoString, b:GoString):GoString;

	@:op(A + B) @:commutative static function add(a:GoString, b:String):GoString;

	@:op(A += B) @:commutative static function assignAdd(a:GoString, b:String):GoString;
}
