package stdgo;

import stdgo.GoNumber;
/**
 * Hold an arbitary pointer address, simulated in Haxe.
 */
abstract GoUIntptr(Dynamic) {
	public inline function new(?x:Dynamic) {
		this = x;
	}

	private inline function address():GoInt {
		if (haxe.Int64.isInt64(this))
			return haxe.Int64.toInt(this);
		if ((this is Int))
			return this;
		if ((this is Float))
			return Std.int(this);
		return 1;
	}
	

	public inline function toBasic():Int
		return address().toBasic();

	public inline function toDynamic():Dynamic
		return this;

	@:to inline function toInt64():GoInt64
		return address();

	@:to inline function toInt():GoInt
		return address();

	@:to inline function toint32():GoInt32
		return address();

	@:to inline function toInt8():GoInt8
		return address();

	@:to inline function toInt16():GoInt16
		return address();

	@:to inline function toUInt():GoUInt
		return address();

	@:to inline function toUInt32():GoUInt32
		return address();

	@:to inline function toUInt8():GoUInt8
		return address();

	@:to inline function toUInt16():GoUInt16
		return address();

	@:to inline function toUInt64():GoUInt64
		return address();

	@:to inline function toFloat32():GoFloat32
		return address();

	@:to inline function toFloat64():GoFloat64
		return address();

	@:op(-A) inline function neg():GoUIntptr
		return new GoUIntptr(this * -1);

	@:op(A / B) private static function div(a:GoUIntptr, b:GoUIntptr):GoUIntptr {
		return new GoUIntptr(a.address().toBasic() / b.address().toBasic());
	}

	@:op(A + B) private static function add(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() + b.address());

	@:op(A * B) private static function mul(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() * b.address());

	@:op(A % B) private static function mod(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() % b.address());

	@:op(A - B) private static function sub(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() - b.address());

	@:op(A | B) private static function or(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() | b.address());

	@:op(A ^ B) private static function xor(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() ^ b.address());

	@:op(A & B) private static function and(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return new GoUIntptr(a.address() & b.address());

	@:op(A++) inline function postInc():GoUIntptr {
		return this = new GoUIntptr(address() + 1);
	}

	@:op(A--) inline function postDec():GoUIntptr {
		return this = new GoUIntptr(address() - 1);
	}

	@:op(A > B) private static function gt(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() <= b.toBasic();
}
