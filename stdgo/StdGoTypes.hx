/*
 * Copyright (C)2005-2021 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package stdgo;

import haxe.Int32;
import haxe.Int64;
import stdgo.Pointer.PointerData;
import stdgo.reflect.Reflect;

using stdgo.StdGoTypes.UInt64;

// simulate_num define flag
typedef GoByte = GoUInt8;
typedef GoRune = GoInt32;
typedef GoFloat = GoFloat64;
private typedef Int = StdTypes.Int;
private typedef Int8 = #if simulate_num Int; #elseif cpp cpp.Int8; #elseif cs cs.Int8; #elseif java java.Int8; #else Int #end
private typedef Int16 = #if simulate_num Int; #elseif cpp cpp.Int16; #elseif cs cs.Int16; #elseif java java.Int16; #else Int; #end
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = #if simulate_num haxe.Int64; #elseif eval eval.integers.Int64; #else haxe.Int64; #end // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt8 = Int; // #if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if simulate_num Int; #elseif hl hl.UI16; #elseif cpp cpp.UInt16; #elseif cs cs.UInt16; #else Int; #end
private typedef UInt32 = #if simulate_num UInt; #elseif cpp cpp.UInt32; #elseif cs cs.system.UInt32; #elseif eval eval.integers.UInt64; #else UInt; #end
private typedef UInt64 = haxe.UInt64;
private typedef Float = StdTypes.Float;
private typedef Float32 = #if simulate_num Float #elseif (java || cs || hl || cpp) StdTypes.Single; #else Float; #end
private typedef Float64 = #if simulate_num Float; #elseif cpp cpp.Float64; #else Float; #end
typedef GoUnTypedFloat = GoFloat64;
typedef GoUnTypedComplex = GoComplex128;

private function parseStringUInt(sParam:String):UInt32 {
	final base:UInt32 = ofIntUInt(10);
	var current:UInt32 = zeroUInt32();
	var multiplier:UInt32 = oneUInt32();

	var s = StringTools.trim(sParam);
	final len = s.length;
	for (i in 0...len) {
		final digitInt = s.charCodeAt(len - 1 - i) - '0'.code;
		if (digitInt < 0 || digitInt > 9)
			throw "NumberFormatError";
		if (digitInt != 0) {
			final digit = ofIntUInt(digitInt);
			current = current + multiplier * digit;
		}
		multiplier = multiplier * base;
	}
	return current;
}

function ofStringUInt(s:String):UInt32 {
	return #if simulate_num parseStringUInt(s); #elseif eval eval.integers.UInt64.ofString(s); #else parseStringUInt(s); #end
}

function ofStringInt64(s:String):Int64 {
	return #if simulate_num Int64.parseString(s); #elseif eval Int64.ofString(s); #else Int64.parseString(s); #end
}

function ofStringUnTypedInt(sParam:String):Int64 {
	return Int64.parseString(sParam);
}

function ofStringUInt64(s:String):UInt64 {
	return #if simulate_num UInt64.parseString(s); #elseif eval UInt64.ofString(s); #else UInt64.parseString(s); #end
}

function ofIntInt64(x:Int):Int64 {
	return Int64.ofInt(x); // (Int64.make(x >> 31, x) : GoInt64);
}

function copyInt64(x:Int64):Int64
	return #if simulate_num x.copy(); #elseif eval x; #else x.copy(); #end

function copyUInt64(x:UInt64):UInt64
	return #if simulate_num x.copy(); #elseif eval x; #else x.copy(); #end

function ofIntUInt64(x:Int):UInt64 {
	return UInt64.ofInt(x);
}

function zeroUInt32():UInt32
	return #if simulate_num 0; #elseif eval 0; #else 0; #end

function oneUInt32():UInt32
	return #if simulate_num 1; #elseif eval 1; #else 1; #end

function zeroInt64():Int64
	return #if simulate_num 0; #elseif eval Int64.ZERO; #else 0; #end

function oneInt64():Int64
	return #if simulate_num 1; #elseif eval Int64.ONE; #else 1; #end

function zeroUInt64():UInt64
	return #if simulate_num 0; #elseif eval UInt64.ZERO; #else 0; #end

function oneUInt64():UInt64
	return #if simulate_num 1; #elseif eval UInt64.ONE; #else 1; #end

function ofIntUInt(x:Int):UInt32 {
	return #if simulate_num x; #elseif eval eval.integers.UInt64.ofInt(x); #else x; #end
}

function ofFloatInt64(x:Float):Int64 {
	return
		#if simulate_num haxe.Int64Helper.fromFloat(x); #elseif eval Int64.ofHxInt64(haxe.Int64Helper.fromFloat(x)); #else haxe.Int64Helper.fromFloat(x); #end
}

function ofFloatUInt64(x:Float):UInt64 {
	return #if simulate_num Int64.fromFloat(x); #elseif eval Int64.ofHxInt64(haxe.Int64Helper.fromFloat(x)).toUInt64(); #else UInt64.fromFloat(x); #end
}

function toFloatInt64(x:Int64):Float {
	final i = #if simulate_num x; #elseif eval x.toHxInt64(); #else x; #end
	return i.high * 4294967296.0 + (i.low >>> 0);
}

function toStringInt64(x:Int64):String
	return #if simulate_num Int64.toStr(x); #elseif eval x.toString(); #else Int64.toStr(x); #end

function toStringUInt64(x:UInt64):String
	return #if simulate_num x.toString(); #elseif eval x.toString(); #else UInt64.toStr(x); #end

function toIntInt64(x:Int64):Int {
	return #if simulate_num Int64.toInt(x); #elseif eval x.toInt(); #else Int64.toInt(x); #end
}

function toInt64UInt64(x:UInt64):Int64 {
	return #if simulate_num Int64.make(x.high, x.low); #elseif eval x.toInt64(); #else Int64.make(x.high, x.low); #end
}

function toUInt64Int64(x:Int64):UInt64 {
	return #if simulate_num UInt64.make(x.high, x.low); #elseif eval x.toUInt64(); #else UInt64.make(x.high, x.low); #end
}

// Eliott's very nice code
typedef Complex64 = Complex<Float32>;
typedef Complex128 = Complex<Float64>;

class Complex<T:GoFloat64> {
	public var real:T;
	public var imag:T;

	public function new(r:T, i:T) {
		real = r;
		imag = i;
	}

	inline function toString():GoString {
		var imagString = Go.string(imag);
		var realString = Go.string(real);
		final sign2 = realString.charAt(0) == "-" ? "" : "+";
		return "(" + realString + sign2 + imagString + "i)";
	}
}

function shiftGuard(x:Int):Bool
	return x > 0xFF || x < 0;

function clampInt8(x:Int):Int {
	x = x & 0xFF;
	if (x & 0x80 != 0)
		return -1 - 0xFF + x;
	return x;
}

function clampInt16(x:Int):Int {
	x = x & 0xFFFF;
	if (x & 0x8000 != 0)
		return -1 - 0xFFFF + x;
	return x;
}

function clampUInt8(x:Int):Int
	return x & 0xFF;

function clampFloat32(x:Float):Float
	return x;

function clampUInt16(x:Int):Int
	return x & 0xFFFF;

function clampUInt(x:Int):UInt32 // TODO: clamp uint
	return x < zeroUInt32() ? zeroUInt32() : x;

// no clamp for UInt32 or UInt64 as they overflow into negative range

abstract GoUIntptr(Dynamic) from Dynamic from Dynamic {
	public inline function new(?x) {
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

	@:op(A / B) private static function div(a:GoUIntptr, b:GoUIntptr):GoUIntptr {
		return a.address() / b.address();
	}

	@:op(A + B) private static function add(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() + b.address();

	@:op(A * B) private static function mul(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() * b.address();

	@:op(A % B) private static function mod(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() % b.address();

	@:op(A - B) private static function sub(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() - b.address();

	@:op(A | B) private static function or(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() | b.address();

	@:op(A ^ B) private static function xor(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() ^ b.address();

	@:op(A & B) private static function and(a:GoUIntptr, b:GoUIntptr):GoUIntptr
		return a.address() & b.address();

	@:op(A++) inline function postInc():GoUIntptr {
		return this = address() + 1;
	}

	@:op(A--) inline function postDec():GoUIntptr {
		return this = address() - 1;
	}

	@:op(A > B) private static function gt(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A >= B) private static function gte(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A < B) private static function lt(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A <= B) private static function lte(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(~A) private static function bneg(t:GoUIntptr):GoUIntptr;
}

abstract GoFloat64(Float) from Float {
	public inline function new(x = 0)
		this = x;

	@:to inline function toFloat32():GoFloat32
		return clampFloat32(this);

	@:to inline function toInt64():GoInt64 {
		if (std.Math.isNaN(this))
			return ofStringInt64("-9223372036854775808");
		return ofFloatInt64(this);
	}

	@:to inline function toInt():GoInt {
		if (std.Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt32():GoInt32 {
		if (std.Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt8():GoInt8
		return clampInt8(Std.int(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(Std.int(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(Std.int(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(Std.int(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(Std.int(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(Std.int(this));

	@:to inline function toUInt64():GoUInt64 {
		if (std.Math.isNaN(this))
			return GoUInt64.ofString("9223372036854775808");
		return this > 0 ? this : 0;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public static function ofInt(x:Int):GoUInt
		return x;

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A / B) private static function div(a:GoFloat, b:GoFloat):GoFloat {
		if (b == 0)
			return std.Math.NaN;
		return a.toBasic() / b.toBasic();
	}

	@:op(A * B) private static function mul(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A - B) private static function sub(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A > B) private static function gt(a:GoFloat, b:GoFloat):Bool;

	@:op(A >= B) private static function gte(a:GoFloat, b:GoFloat):Bool;

	@:op(A < B) private static function lt(a:GoFloat, b:GoFloat):Bool;

	@:op(A <= B) private static function lte(a:GoFloat, b:GoFloat):Bool;

	@:op(A > B) private static function gtf(a:GoFloat, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat):Bool;

	@:op(A < B) private static function ltf(a:GoFloat, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat):Bool;

	@:op(~A) private static function bneg(t:GoFloat):GoFloat;

	@:op(-A) private static function neg(t:GoFloat):GoFloat;

	@:op(A--) private static function postDec(t:GoFloat):GoFloat;

	@:op(A++) private static function postInc(t:GoFloat):GoFloat;
}

abstract GoFloat32(Float32) from Float32 {
	public inline function new(x = 0)
		this = x;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toInt64():GoInt64 {
		if (std.Math.isNaN(this))
			return ofStringInt64("-9223372036854775808");
		return ofFloatInt64(this);
	}

	@:to inline function toInt():GoInt {
		if (std.Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt32():GoInt32 {
		if (std.Math.isNaN(this))
			return -2147483648;
		return Std.int(this);
	}

	@:to inline function toInt8():GoInt8
		return clampInt8(Std.int(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(Std.int(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(Std.int(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(Std.int(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(Std.int(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(Std.int(this));

	@:to inline function toUInt64():GoUInt64 {
		if (std.Math.isNaN(this))
			return GoUInt64.ofString("9223372036854775808");
		return this > 0 ? this : 0;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() * b.toBasic());

	@:op(A % B) private static function mod(a:GoFloat32, b:GoFloat32):GoFloat32
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoFloat32, b:GoFloat32):GoFloat32 {
		if (b == 0)
			return std.Math.NaN;
		return a.toBasic() / b.toBasic();
	}

	@:op(~A) private static function bneg(t:GoFloat32):GoFloat32;

	@:op(-A) private static function neg(t:GoFloat32):GoFloat32;

	@:op(A++) private inline function postInc():GoFloat32 {
		return this = this + 1;
	}

	@:op(A > B) private static function gt(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A >= B) private static function gte(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A < B) private static function lt(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A <= B) private static function lte(a:GoFloat32, b:GoFloat32):Bool;

	@:op(A > B) private static function gtf(a:GoFloat32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat32):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat32):Bool;

	@:op(A < B) private static function ltf(a:GoFloat32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat32):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat32):Bool;

	static function clamp(x:Float):Float
		return x;

	// TODO: Clamp Float32
}

abstract GoComplex64(Complex64) from Complex64 {
	public inline function new(r:GoFloat32, i:GoFloat32)
		this = new Complex64(r.toBasic(), i.toBasic());

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(real, imag);

	@:to inline function toInt():GoInt {
		return Std.int(this.real);
	}

	@:to inline function toInt8():GoInt8 {
		return clampInt8(Std.int(this.real));
	}

	@:to inline function toInt16():GoInt16 {
		return clampInt16(Std.int(this.real));
	}

	@:to inline function toInt32():GoInt32 {
		return Std.int(this.real);
	}

	@:to inline function toInt64():GoInt64 {
		return Std.int(this.real);
	}

	@:to inline function toUInt8():GoUInt8 {
		return clampUInt8(Std.int(this.real));
	}

	@:to inline function toUInt16():GoUInt16 {
		return clampUInt16(Std.int(this.real));
	}

	@:to inline function toUInt32():GoUInt32 {
		return clampUInt(Std.int(this.real));
	}

	@:to inline function toUInt64():GoUInt64 {
		return Std.int(this.real);
	}

	@:to inline function toFloat32():GoFloat32 {
		return this.real;
	}

	@:to inline function toFloat64():GoFloat64 {
		return this.real;
	}

	public inline function toBasic()
		return this;

	public var real(get, never):GoFloat32;
	public var imag(get, never):GoFloat32;

	private inline function get_real()
		return this.real;

	private inline function get_imag()
		return this.imag;

	@:from public static inline function ofInt(x:Int):GoComplex64
		return new Complex64(x, 0);

	@:op(A + B) @:commutative private static function addInt(a:GoComplex64, b:GoInt):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt8(a:GoComplex64, b:GoInt8):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt16(a:GoComplex64, b:GoInt16):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt32(a:GoComplex64, b:GoInt32):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt64(a:GoComplex64, b:GoInt64):GoComplex64
		return new GoComplex64(a.real + toIntInt64(b.toBasic()), a.imag);

	@:op(A + B) @:commutative private static function addUInt(a:GoComplex64, b:GoUInt):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt8(a:GoComplex64, b:GoUInt8):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt16(a:GoComplex64, b:GoUInt16):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt32(a:GoComplex64, b:GoUInt32):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt64(a:GoComplex64, b:GoUInt64):GoComplex64
		return new GoComplex64(a.real + b.toBasic().toInt(), a.imag);

	@:op(A + B) @:commutative private static function addFloat32(a:GoComplex64, b:GoFloat32):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addFloat64(a:GoComplex64, b:GoFloat64):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) private static function add(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real + b.real, a.imag.toBasic() + b.imag.toBasic());

	@:op(A * B) private static function mul(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64((a.real * b.real) - (a.imag.toBasic() * b.imag.toBasic()), (a.imag.toBasic() * b.real) + (a.real * b.imag.toBasic()));

	@:op(A / B) private static function div(a:GoComplex64, b:GoComplex64):GoComplex64 {
		// if (b.real == 0.0 && b.imag == 0.0)
		//	return std.Math.NaN;
		return new GoComplex64(((a.real * b.real) + (a.imag.toBasic() * b.imag.toBasic())) / ((b.real * b.real) + (b.imag.toBasic() * b.imag.toBasic())),
			((a.imag.toBasic() * b.real) - (a.real * b.imag.toBasic())) / ((b.real * b.real) + (b.imag.toBasic() * b.imag.toBasic())));
	}

	@:op(A - B) private static function subInt(a:GoComplex64, b:GoInt):GoComplex64
		return new GoComplex64(a.real - b.toBasic(), a.imag);

	@:op(A - B) private static function subInt2(a:GoInt, b:GoComplex64):GoComplex64
		return new GoComplex64(a.toBasic() - b.real, b.imag);

	@:op(A - B) private static function sub(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real - b.real, a.imag.toBasic() - b.imag.toBasic());

	@:op(A > B) private static function gt(a:GoComplex64, b:GoComplex64):Bool
		return (a.real > b.real) && (a.imag > b.imag);

	@:op(A >= B) private static function gte(a:GoComplex64, b:GoComplex64):Bool
		return (a.real >= b.real) && (a.imag >= b.imag);

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex64):Bool
		return (a.real < b.real) && (a.imag < b.imag);

	@:op(A <= B) private static function lte(a:GoComplex64, b:GoComplex64):Bool
		return (a.real <= b.real) && (a.imag <= b.imag);

	@:op(~A) private static function bneg(t:GoComplex64):GoComplex64
		return new GoComplex64(0.0 - t.real.toBasic(), 0.0 - t.imag.toBasic());

	@:op(-A) private static function neg(t:GoComplex64):GoComplex64
		return new GoComplex64(-t.real, -t.imag);
}

abstract GoComplex128(Complex128) from Complex128 {
	public inline function new(r:GoFloat64, i:GoFloat64)
		this = new Complex128(r.toBasic(), i.toBasic());

	@:to inline function toComplex64():GoComplex64 {
		return new GoComplex64(clampFloat32(real), clampFloat32(imag));
	}

	@:to inline function toInt():GoInt {
		return Std.int(this.real);
	}

	@:to inline function toInt8():GoInt8 {
		return clampInt8(Std.int(this.real));
	}

	@:to inline function toInt16():GoInt16 {
		return clampInt16(Std.int(this.real));
	}

	@:to inline function toInt32():GoInt32 {
		return Std.int(this.real);
	}

	@:to inline function toInt64():GoInt64 {
		return Std.int(this.real);
	}

	@:to inline function toUInt8():GoUInt8 {
		return clampUInt8(Std.int(this.real));
	}

	@:to inline function toUInt16():GoUInt16 {
		return clampUInt16(Std.int(this.real));
	}

	@:to inline function toUInt32():GoUInt32 {
		return clampUInt(Std.int(this.real));
	}

	@:to inline function toUInt64():GoUInt64 {
		return Std.int(this.real);
	}

	@:to inline function toFloat32():GoFloat32 {
		return this.real;
	}

	@:to inline function toFloat64():GoFloat64 {
		return this.real;
	}

	@:from static function fromFloat(f:Float):GoComplex128 {
		return new GoComplex128(f, 0);
	}

	public inline function toBasic()
		return this;

	public var real(get, never):Float;
	public var imag(get, never):Float;

	private inline function get_real()
		return this.real;

	private inline function get_imag()
		return this.imag;

	@:from public static inline function ofInt(x:Int):GoComplex128
		return new Complex128(x, 0);

	@:op(A + B) private static function add(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128(a.real + b.real, a.imag + b.imag);

	@:op(A + B) @:commutative private static function addInt(a:GoComplex128, b:GoInt):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt8(a:GoComplex128, b:GoInt8):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt16(a:GoComplex128, b:GoInt16):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt32(a:GoComplex128, b:GoInt32):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addInt64(a:GoComplex128, b:GoInt64):GoComplex128
		return new GoComplex128(a.real + toIntInt64(b.toBasic()), a.imag);

	@:op(A + B) @:commutative private static function addInt128(a:GoComplex128, b:GoInt64):GoComplex128
		return new GoComplex128(a.real + toIntInt64(b.toBasic()), a.imag);

	@:op(A + B) @:commutative private static function addUInt(a:GoComplex128, b:GoUInt):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt8(a:GoComplex128, b:GoUInt8):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt16(a:GoComplex128, b:GoUInt16):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt32(a:GoComplex128, b:GoUInt32):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt128(a:GoComplex128, b:GoUInt64):GoComplex128
		return new GoComplex128(a.real + b.toBasic().toInt(), a.imag);

	@:op(A + B) @:commutative private static function addFloat32(a:GoComplex128, b:GoFloat32):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addFloat128(a:GoComplex128, b:GoFloat64):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A * B) private static function mul(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128((a.real * b.real) - (a.imag * b.imag), (a.imag * b.real) + (a.real * b.imag));

	@:op(A / B) private static function div(a:GoComplex128, b:GoComplex128):GoComplex128 {
		if (b.real == 0.0 && b.imag == 0.0)
			return new GoComplex128(0.0, 0.0);
		return new GoComplex128(((a.real * b.real) + (a.imag * b.imag)) / ((b.real * b.real) + (b.imag * b.imag)),
			((a.imag * b.real) - (a.real * b.imag)) / ((b.real * b.real) + (b.imag * b.imag)));
	}

	@:op(A - B) private static function subInt(a:GoComplex128, b:GoInt):GoComplex128
		return new GoComplex128(a.real - b.toBasic(), a.imag);

	@:op(A - B) private static function subInt2(a:GoInt, b:GoComplex128):GoComplex128
		return new GoComplex128(a.toBasic() - b.real, b.imag);

	@:op(A - B) private static function sub(a:GoComplex128, b:GoComplex128):GoComplex128
		return new GoComplex128(a.real - b.real, a.imag - b.imag);

	@:op(A > B) private static function gt(a:GoComplex128, b:GoComplex128):Bool
		return (a.real > b.real) && (a.imag > b.imag);

	@:op(A >= B) private static function gte(a:GoComplex128, b:GoComplex128):Bool
		return (a.real >= b.real) && (a.imag >= b.imag);

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex128):Bool
		return (a.real < b.real) && (a.imag < b.imag);

	@:op(A <= B) private static function lte(a:GoComplex128, b:GoComplex128):Bool
		return (a.real <= b.real) && (a.imag <= b.imag);

	@:op(~A) private static function bneg(t:GoComplex128):GoComplex128
		return new GoComplex128(0.0 - t.real, 0.0 - t.imag);

	@:op(-A) private static function neg(t:GoComplex128):GoComplex128
		return new GoComplex128(-t.real, -t.imag);

	@:op(A == B) private static function eq(a:GoComplex128, b:GoComplex128):Bool
		return a.real == b.real && a.imag == b.imag;

	@:op(A != B) private static function neq(a:GoComplex128, b:GoComplex128):Bool
		return a.real != b.real || a.imag != b.imag;
}

// GoInt32 is an exact copy of GoInt, any changes here should be updated there as well
abstract GoInt(Int32) from Int32 from Int32 {
	public inline function new(x:Int32 = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:from static function fromFloat(x:Float):GoInt
		return Std.int(x);

	@:from static function fromRune(x:GoRune):GoInt
		return x.toBasic();

	@:from static function fromString(x:String):GoInt
		return Std.parseInt(x);

	@:from static function fromGoString(x:GoString):GoInt
		return fromString(x);

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return clampInt16(this);

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toUIntptr():GoUIntptr
		return this;

	public static function ofInt(x:Int):GoInt
		return x;

	@:op(A + B) private static function add(a:GoInt, b:GoInt):GoInt;

	@:op(A / B) private static inline function div(a:GoInt, b:GoInt):GoInt {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt, b:GoInt):GoInt;

	@:op(A % B) private static function mod(a:GoInt, b:GoInt):GoInt;

	@:op(A - B) private static function sub(a:GoInt, b:GoInt):GoInt;

	@:op(A | B) private static function or(a:GoInt, b:GoInt):GoInt;

	@:op(A ^ B) private static function xor(a:GoInt, b:GoInt):GoInt;

	@:op(A & B) private static function and(a:GoInt, b:GoInt):GoInt;

	@:op(-A) private static function neg(a:GoInt):GoInt
		return a * -1;

	@:op(A >> B) private static function shr(a:GoInt, b:GoInt):GoInt {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic();
	}

	@:op(A << B) private static function shl(a:GoInt, b:GoInt):GoInt {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic();
	}

	@:op(A > B) private static function gt(a:GoInt, b:GoInt):Bool;

	@:op(A >= B) private static function gte(a:GoInt, b:GoInt):Bool;

	@:op(A < B) private static function lt(a:GoInt, b:GoInt):Bool;

	@:op(A <= B) private static function lte(a:GoInt, b:GoInt):Bool;

	@:op(A > B) private static function gtf(a:GoInt, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoInt):Bool;

	@:op(A >= B) private static function gtef(a:GoInt, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoInt):Bool;

	@:op(A < B) private static function ltf(a:GoInt, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoInt):Bool;

	@:op(A <= B) private static function ltef(a:GoInt, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoInt):Bool;

	@:op(~A) private static function bneg(t:GoInt):GoInt;

	@:op(A++) inline function postInc():GoInt {
		return this = this + 1;
	}

	@:op(A--) inline function postDec():GoInt {
		return this = this - 1;
	}
}

abstract GoInt32(Int) from Int32 from Int {
	public inline function new(x:Int32 = 0)
		this = x;

	@:from static function fromFloat(x:Float):GoInt32
		return Std.int(x);

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toUIntptr():GoUIntptr
		return this;

	public static function ofInt(x:Int):GoInt32
		return x;

	@:op(A + B) private static function add(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A / B) private static inline function div(a:GoInt32, b:GoInt32):GoInt32 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A % B) private static function mod(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A - B) private static function sub(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A | B) private static function or(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A ^ B) private static function xor(a:GoInt32, b:GoInt32):GoInt32;

	@:op(A & B) private static function and(a:GoInt32, b:GoInt32):GoInt32;

	@:op(-A) private static function neg(a:GoInt32):GoInt32
		return a * -1;

	@:op(A >> B) private static function shr(a:GoInt32, b:GoInt32):GoInt32 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic();
	}

	@:op(A << B) private static function shl(a:GoInt32, b:GoInt32):GoInt32 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic();
	}

	@:op(A > B) private static function gt(a:GoInt32, b:GoInt32):Bool;

	@:op(A >= B) private static function gte(a:GoInt32, b:GoInt32):Bool;

	@:op(A < B) private static function lt(a:GoInt32, b:GoInt32):Bool;

	@:op(A <= B) private static function lte(a:GoInt32, b:GoInt32):Bool;

	@:op(A > B) private static function gtf(a:GoInt32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoInt32):Bool;

	@:op(A >= B) private static function gtef(a:GoInt32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoInt32):Bool;

	@:op(A < B) private static function ltf(a:GoInt32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoInt32):Bool;

	@:op(A <= B) private static function ltef(a:GoInt32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoInt32):Bool;

	@:op(~A) private static function bneg(t:GoInt32):GoInt32;

	@:op(A++) inline function postInc():GoInt32 {
		return this = this + 1;
	}

	@:op(A--) inline function postDec():GoInt32 {
		return this = this - 1;
	}
}

// GoUInt32 is an exact copy of GoUInt, any changes here should be updated there as well
abstract GoUInt(UInt32) from UInt32 {
	public inline function new(x = 0)
		this = ofIntUInt(x);

	public inline function toBasic()
		return this;

	@:from static inline function fromInt(x:Int):GoUInt {
		return ofIntUInt(x);
	}

	@:from static inline function fromString(s:String):GoUInt {
		return ofStringUInt(s);
	}

	@:from static function fromRune(x:GoRune):GoUInt
		return clamp(x.toBasic());

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt // TODO GoUInt max conversion check if result is same as go
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return clampInt16(this);

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoUInt
		return x;

	@:op(A + B) private static function add(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt, b:GoUInt):GoUInt
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt, b:GoUInt):GoUInt {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt, b:GoUInt):GoUInt {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt, b:GoUInt):GoUInt {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A++) inline function postInc():GoUInt {
		return this = clamp(this + 1);
	}

	@:op(-A) private static function neg(a:GoUInt):GoUInt
		return a * -1;

	@:op(A--) inline function postDec():GoUInt {
		return this = clamp(this - 1);
	}

	static function clamp(x:Int):Int
		return clampUInt(x);

	@:op(A > B) private static function gt(a:GoUInt, b:GoUInt):Bool;

	@:op(A >= B) private static function gte(a:GoUInt, b:GoUInt):Bool;

	@:op(A < B) private static function lt(a:GoUInt, b:GoUInt):Bool;

	@:op(A <= B) private static function lte(a:GoUInt, b:GoUInt):Bool;

	@:op(A > B) private static function gtf(a:GoUInt, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoUInt):Bool;

	@:op(A >= B) private static function gtef(a:GoUInt, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoUInt):Bool;

	@:op(A < B) private static function ltf(a:GoUInt, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoUInt):Bool;

	@:op(A <= B) private static function ltef(a:GoUInt, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoUInt):Bool;
}

abstract GoUInt32(UInt) from UInt {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:from static inline function fromFloat(x:Float):GoUInt32 {
		return new GoUInt32(Std.int(x));
	}

	@:from static inline function fromString(s:String):GoUInt32 {
		return ofStringUInt(s);
	}

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32 // TODO check if max range conversion is the same as go
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return clampInt16(this);

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoUInt32
		return x;

	@:op(A + B) private static function add(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt32, b:GoUInt32):GoUInt32
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt32, b:GoUInt32):GoUInt32 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A++) inline function postInc():GoUInt32 {
		return this = clamp(this + 1);
	}

	@:op(-A) private static function neg(a:GoUInt32):GoUInt32
		return a * -1;

	@:op(A--) inline function postDec():GoUInt32 {
		return this = clamp(this - 1);
	}

	static function clamp(x:UInt32):UInt32
		return clampUInt(x);

	@:op(A > B) private static function gt(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A >= B) private static function gte(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A < B) private static function lt(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A <= B) private static function lte(a:GoUInt32, b:GoUInt32):Bool;

	@:op(A > B) private static function gtf(a:GoUInt32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoUInt32):Bool;

	@:op(A >= B) private static function gtef(a:GoUInt32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoUInt32):Bool;

	@:op(A < B) private static function ltf(a:GoUInt32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoUInt32):Bool;

	@:op(A <= B) private static function ltef(a:GoUInt32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoUInt32):Bool;
}

abstract GoInt8(Int8) from Int8 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return this;

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoInt8
		return x;

	@:op(A > B) private static function gt(a:GoInt8, b:GoInt8):Bool;

	@:op(A >= B) private static function gte(a:GoInt8, b:GoInt8):Bool;

	@:op(A < B) private static function lt(a:GoInt8, b:GoInt8):Bool;

	@:op(A <= B) private static function lte(a:GoInt8, b:GoInt8):Bool;

	@:op(A >> B) private static function shr(a:GoInt8, b:GoInt8):GoInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt8, b:GoInt8):GoInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A + B) private static function add(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() + b.toBasic()));

	@:op(A - B) private static function sub(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() - b.toBasic()));

	@:op(A * B) private static function mul(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() * b.toBasic()));

	@:op(A & B) private static function and(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() & b.toBasic()));

	@:op(A | B) private static function or(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() | b.toBasic()));

	@:op(A ^ B) private static function xor(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() ^ b.toBasic()));

	@:op(A % B) private static function mod(a:GoInt8, b:GoInt8):GoInt8
		return clamp(Std.int(a.toBasic() % b.toBasic()));

	@:op(-A) private static function neg(a:GoInt8):GoInt8
		return a * -1;

	@:op(A++) inline function postInc():GoInt8 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoInt8 {
		return this = clamp(this - 1);
	}

	@:op(A > B) private static function gt(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt8, b:GoInt8):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A / B) private static function div(a:GoInt8, b:GoInt8):GoInt8 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	static function clamp(x:Int)
		return clampInt8(x);
}

abstract GoInt16(Int16) from Int16 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static function ofInt(x:Int):GoInt16
		return x;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(A > B) private static function gt(a:GoInt16, b:GoInt16):Bool;

	@:op(A >= B) private static function gte(a:GoInt16, b:GoInt16):Bool;

	@:op(A < B) private static function lt(a:GoInt16, b:GoInt16):Bool;

	@:op(A <= B) private static function lte(a:GoInt16, b:GoInt16):Bool;

	@:op(A > B) private static function gtf(a:GoInt16, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoInt16):Bool;

	@:op(A >= B) private static function gtef(a:GoInt16, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoInt16):Bool;

	@:op(A < B) private static function ltf(a:GoInt16, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoInt16):Bool;

	@:op(A <= B) private static function ltef(a:GoInt16, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoInt16):Bool;

	@:op(A >> B) private static function shr(a:GoInt16, b:GoInt16):GoInt16 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt16, b:GoInt16):GoInt16 {
		if (shiftGuard(b.toBasic()))
			return a < 0 ? -1 : 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A + B) private static function add(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoInt16, b:GoInt16):GoInt16
		return clamp(a.toBasic() % b.toBasic());

	@:op(A++) inline function postInc():GoInt16 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoInt16 {
		return this = clamp(this - 1);
	}

	@:op(-A) private static function neg(a:GoInt16):GoInt16
		return a * -1;

	@:op(A / B) private static function div(a:GoInt16, b:GoInt16):GoInt16 {
		if (b == 0)
			throw "division by zero";
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A > B) private static function gt(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt16, b:GoInt16):Bool
		return a.toBasic() <= b.toBasic();

	static function clamp(x:Int):Int
		return clampInt16(x);
}

abstract GoUnTypedInt(Int64) from Int64 {
	public inline function new(x) {
		this = x;
	}

	public inline function toBasic()
		return this;

	public inline function copy():GoUnTypedInt
		return copyInt64(this);

	@:from static function fromFloat(x:Float):GoUnTypedInt
		return ofFloatInt64(x);

	@:from static function fromString(x:String):GoUnTypedInt
		return ofStringUnTypedInt(x);

	@:from static function fromInt(x:Int):GoUnTypedInt
		return Int64.ofInt(x);

	public function toFloat():Float {
		return toFloatInt64(this);
	}

	@:to inline function toInt():GoInt
		return toIntInt64(this);

	@:to inline function toInt32():GoInt32
		return toIntInt64(this);

	@:to inline function toInt64():GoInt64
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(toIntInt64(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(toIntInt64(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(toIntInt64(this));

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(toFloat32(), 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(toFloat64(), 0);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(toIntInt64(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(toIntInt64(this));

	@:to inline function toUInt64():GoUInt64 {
		return toUInt64Int64(this);
	}

	@:to inline function toFloat32():GoFloat32
		return toIntInt64(this);

	@:to inline function toFloat64():GoFloat64
		return toIntInt64(this);

	@:to inline function toUIntptr():GoUIntptr
		return toIntInt64(this);

	function toString()
		return toStringInt64(this);

	public static inline function ofInt(x:Int):GoUnTypedInt
		return ofIntInt64(x);

	@:op(A >> B) private static function shr(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt {
		if (shiftGuard(toIntInt64(b.toBasic())))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> toIntInt64(b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt {
		if (shiftGuard(toIntInt64(b.toBasic())))
			return a < 0 ? -1 : 0;
		return a.toBasic() << toIntInt64(b.toBasic());
	}

	@:op(A + B) public static function add(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() + b.toBasic();

	@:op(A++) inline function postInc():GoUnTypedInt {
		return this + ofIntInt64(1);
	}

	@:op(A--) inline function postDec():GoUnTypedInt
		return this - ofIntInt64(1);

	@:op(A * B) public static function mul(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() * b.toBasic();

	@:op(-A) private static function neg(t:GoUnTypedInt):GoUnTypedInt
		return t * -1;

	@:op(A % B) public static function mod(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() / b.toBasic();

	@:op(A - B) public static function sub(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() - b.toBasic();

	@:op(A | B) public static function or(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) public static function xor(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) public static function and(a:GoUnTypedInt, b:GoUnTypedInt):GoUnTypedInt
		return a.toBasic() & b.toBasic();

	@:op(A > B) private static function gt(a:GoUnTypedInt, b:GoUnTypedInt):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUnTypedInt, b:GoUnTypedInt):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUnTypedInt, b:GoUnTypedInt):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUnTypedInt, b:GoUnTypedInt):Bool
		return a.toBasic() <= b.toBasic();

	@:op(~A) private static function bneg(t:GoUnTypedInt):GoUnTypedInt;

	@:op(A == B) private static function equals(a:GoUnTypedInt, b:GoUnTypedInt):Bool
		return a.toBasic() == b.toBasic();

	@:op(A != B) private static function notEquals(a:GoUnTypedInt, b:GoUnTypedInt):Bool
		return a.toBasic() != b.toBasic();
}

abstract GoInt64(Int64) from Int64 {
	public inline function new(x) {
		this = x;
	}

	public inline function toBasic()
		return this;

	public inline function copy():GoInt64
		return copyInt64(this);

	@:from static function fromFloat(x:Float):GoInt64
		return ofFloatInt64(x);

	@:from static function fromString(x:String):GoInt64
		return ofStringInt64(x);

	@:from static function fromInt(x:Int):GoInt64
		return Int64.ofInt(x);

	public function toFloat():Float {
		return toFloatInt64(this);
	}

	@:to inline function toInt():GoInt
		return toIntInt64(this);

	@:to inline function toInt32():GoInt32
		return toIntInt64(this);

	@:to inline function toInt8():GoInt8
		return clampInt8(toIntInt64(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(toIntInt64(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(toIntInt64(this));

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(toFloat32(), 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(toFloat64(), 0);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(toIntInt64(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(toIntInt64(this));

	@:to inline function toUInt64():GoUInt64 {
		return toUInt64Int64(this);
	}

	@:to inline function toFloat32():GoFloat32
		return toIntInt64(this);

	@:to inline function toFloat64():GoFloat64
		return toIntInt64(this);

	@:to inline function toUIntptr():GoUIntptr
		return toIntInt64(this);

	function toString()
		return toStringInt64(this);

	public static inline function ofInt(x:Int):GoInt64
		return ofIntInt64(x);

	@:op(A >> B) private static function shr(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(toIntInt64(b.toBasic())))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> toIntInt64(b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(toIntInt64(b.toBasic())))
			return a < 0 ? -1 : 0;
		return a.toBasic() << toIntInt64(b.toBasic());
	}

	@:op(A + B) public static function add(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() + b.toBasic();

	@:op(A++) inline function postInc():GoInt64 {
		return this + ofIntInt64(1);
	}

	@:op(A--) inline function postDec():GoInt64
		return this - ofIntInt64(1);

	@:op(A * B) public static function mul(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() * b.toBasic();

	@:op(-A) private static function neg(t:GoInt64):GoInt64
		return t * -1;

	@:op(A % B) public static function mod(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() / b.toBasic();

	@:op(A - B) public static function sub(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() - b.toBasic();

	@:op(A | B) public static function or(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) public static function xor(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) public static function and(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() & b.toBasic();

	@:op(A > B) private static function gt(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(~A) private static function bneg(t:GoInt64):GoInt64;

	@:op(A == B) private static function equals(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() == b.toBasic();

	@:op(A != B) private static function notEquals(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() != b.toBasic();
}

abstract GoUInt8(UInt8) from UInt8 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static inline function ofInt(x:Int)
		return x;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(A > B) private static function gt(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A >= B) private static function gte(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A < B) private static function lt(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A <= B) private static function lte(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A++) inline function postInc():GoUInt8
		return this = clamp(this + 1);

	@:op(-A) private static function neg(a:GoUInt8):GoUInt8
		return a * -1;

	@:op(A--) inline function postDec():GoUInt8
		return this = clamp(this - 1);

	@:op(A + B) private static function add(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt8, b:GoUInt8):GoUInt8
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (b == 0)
			throw "division by zero";
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A << B) private static function shl(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A >> B) private static function shr(a:GoUInt8, b:GoUInt8):GoUInt8 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	// TODO: clamp uint8
	static function clamp(x:Int)
		return clampUInt8(x);
}

abstract GoUInt16(UInt16) from UInt16 from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return Int64.ofInt(this);

	@:to inline function toInt():GoInt
		return this;

	@:to inline function toInt32():GoInt32
		return this;

	@:to inline function toInt8():GoInt8
		return clampInt8(this);

	@:to inline function toInt16():GoInt16
		return clampInt16(this);

	@:to inline function toUInt():GoUInt
		return clampUInt(this);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	public static function ofInt(x:Int):GoUInt16
		return x;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(-A) private static function neg(a:GoUInt16):GoUInt16
		return a * -1;

	@:op(A > B) private static function gt(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A >= B) private static function gte(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A < B) private static function lt(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A <= B) private static function lte(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A >> B) private static function shr(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() >> b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (shiftGuard(b.toBasic()))
			return 0;
		return clamp(a.toBasic() << b.toBasic());
	}

	@:op(A + B) private static function add(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() + b.toBasic());

	@:op(A - B) private static function sub(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() - b.toBasic());

	@:op(A * B) private static function mul(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() * b.toBasic());

	@:op(A & B) private static function and(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() & b.toBasic());

	@:op(A | B) private static function or(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() | b.toBasic());

	@:op(A ^ B) private static function xor(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() ^ b.toBasic());

	@:op(A % B) private static function mod(a:GoUInt16, b:GoUInt16):GoUInt16
		return clamp(a.toBasic() % b.toBasic());

	@:op(A / B) private static function div(a:GoUInt16, b:GoUInt16):GoUInt16 {
		if (b == 0)
			throw "division by zero";
		return clamp(Std.int(a.toBasic() / b.toBasic()));
	}

	@:op(A++) inline function postInc():GoUInt16 {
		return this = clamp(this + 1);
	}

	@:op(A--) inline function postDec():GoUInt16 {
		return this = clamp(this - 1);
	}

	static function clamp(x:Int)
		return clampUInt16(x);
}

abstract GoUInt64(UInt64) from UInt64 {
	public inline function new(x)
		this = x;

	public inline function copy():GoUInt64
		return copyUInt64(this);

	public inline function toBasic()
		return this;

	public inline function toString()
		return this.toString();

	@:from public static function ofString(x:String):GoUInt64 {
		return ofStringUInt64(x);
	}

	@:to inline function toInt():GoInt
		return this.toInt();

	@:to inline function toInt32():GoInt32
		return toInt();

	@:to inline function toInt64():GoInt64
		return toInt64UInt64(this);

	@:to inline function toInt8():GoInt8
		return clampInt8(this.toInt());

	@:to inline function toInt16():GoInt16
		return clampInt16(this.toInt());

	@:to inline function toUInt():GoUInt
		return clampUInt(this.toInt());

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this.toInt());

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this.toInt());

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this.toInt());

	@:to inline function toUInt64():GoUInt64
		return this > zeroUInt64() ? this : zeroUInt64();

	@:to inline function toFloat32():GoFloat32
		return this.toInt();

	@:to inline function toFloat64():GoFloat64
		return this.toInt();

	@:from public static inline function ofInt(x:Int):GoUInt64
		return UInt64.ofInt(x);

	@:from public static inline function ofFloat(x:Float):GoUInt64
		return (Std.int(x) : GoUInt64);

	@:op(A > B) private static function gt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A >> B) private static function shr(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (shiftGuard(b.toBasic().toInt()))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic().toInt();
	}

	@:op(A << B) private static function shl(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (shiftGuard(b.toBasic().toInt()))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic().toInt();
	}

	@:op(A != B) private static function neq(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() != b.toBasic();

	@:op(A == B) private static function equals(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() == b.toBasic();

	@:op(A + B) private static function add(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() + b.toBasic();

	@:op(A - B) private static function sub(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() - b.toBasic();

	@:op(A * B) private static function mul(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() * b.toBasic();

	@:op(A & B) private static function and(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() & b.toBasic();

	@:op(A | B) private static function or(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) private static function xor(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() ^ b.toBasic();

	@:op(A % B) private static function mod(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) private static function div(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() / b.toBasic();

	@:op(A++) inline function postInc():GoUInt64 {
		return this + ofIntUInt64(1);
	}

	@:op(-A) private static function neg(a:GoUInt64):GoInt64
		return a * -1;

	@:op(A--) inline function postDec():GoUInt64 {
		return this + ofIntUInt64(1);
	}
}

interface StructType {
	public function __underlying__():AnyInterface;
}

@:structInit
class AnyInterfaceData {
	public var value:Any;
	public var type:stdgo.reflect.Reflect.Type;

	public function new(value, type) {
		this.value = value;
		this.type = type;
	}

	public function __copy__():AnyInterfaceData {
		switch @:privateAccess type.common().value {
			case basic(kind):

			case sliceType(_):

			case arrayType(_, _):

			case mapType(_, _):

			case chanType(_, _):

			default:
				throw "unknown copy to interface{} type: " + @:privateAccess type.common().value;
		}
		return new AnyInterfaceData(value, type); // TODO copy type
	}

	public function toString():GoString
		return '$value';
}

@:forward
@:forward.new
abstract AnyInterface(AnyInterfaceData) from AnyInterfaceData {
	@:op(A != b) public static function notEquals(a:AnyInterface, b:AnyInterface):Bool {
		return !equals(a, b);
	}

	public function __underlying__():AnyInterface
		return this;

	@:op(A == B) public static function equals(a:AnyInterface, b:AnyInterface):Bool {
		if (!a.type.assignableTo(b.type)) {
			throw "invalid operation: (mismatched types " + a.type + " and " + b.type + ")";
		}
		var gt:GoType = @:privateAccess a.type.common().value;
		var gt2:GoType = @:privateAccess b.type.common().value;

		function isNamed(gt:GoType) {
			return switch gt {
				case structType(_):
					false;
				default:
					true;
			}
		}
		var aValue = a.value;
		var bValue = b.value;
		switch gt {
			case named(_, _, _, type):
				if (isNamed(type))
					aValue = (aValue : Dynamic).__t__;
			default:
		}
		switch gt2 {
			case named(_, _, _, type):
				if (isNamed(type))
					bValue = (bValue : Dynamic).__t__;
			default:
		}
		return switch stdgo.reflect.Reflect.getUnderlying(gt) {
			case basic(kind):
				switch kind {
					case string_kind:
						(aValue : GoString) == (bValue : GoString);
					case uint_kind:
						(aValue : GoUInt) == (bValue : GoUInt);
					case int_kind:
						(aValue : GoInt) == (bValue : GoInt);
					case uint64_kind:
						(aValue : GoUInt64) == (bValue : GoUInt64);
					case int64_kind:
						(aValue : GoInt64) == (bValue : GoInt64);
					case complex64_kind:
						(aValue : GoComplex64) == (bValue : GoComplex64);
					case complex128_kind:
						(aValue : GoComplex128) == (bValue : GoComplex128);
					case untyped_int_kind:
						if (!haxe.Int64.isInt64(bValue))
							bValue = haxe.Int64.ofInt(bValue);
						(aValue : GoUnTypedInt) == (bValue : GoUnTypedInt);
					case untyped_float_kind:
						(aValue : GoUnTypedFloat) == (bValue : GoUnTypedFloat);
					case untyped_complex_kind:
						(aValue : GoUnTypedComplex) == (bValue : GoUnTypedComplex);
					default:
						aValue == bValue;
				}
			case structType(fields):
				for (i in 0...fields.length) {
					final name = fields[i].name;
					if (StringTools.startsWith(name, "__blank__"))
						continue;
					final type = fields[i].type;
					final fieldValue = std.Reflect.field(aValue, name);
					final fieldValue2 = std.Reflect.field(bValue, name);

					if (fieldValue == null || fieldValue2 == null)
						throw "struct issue with field name: " + name;

					final type = @:privateAccess stdgo.reflect.Reflect.unroll(gt, type);
					final a = new AnyInterface(fieldValue, new stdgo.reflect.Reflect._Type(type));
					final b = new AnyInterface(fieldValue2, new stdgo.reflect.Reflect._Type(type));

					final bool = equals(a, b);
					if (!bool)
						return false;
				}
				true;
			case invalidType:
				switch @:privateAccess b.type.common().value {
					case invalidType: true;
					default: false;
				}
			case sliceType(elem):
				var a:Slice<Any> = aValue;
				var b:Slice<Any> = bValue;
				var t = new stdgo.reflect.Reflect._Type(elem);
				if (a.length != b.length)
					return false;
				for (i in 0...a.length.toBasic()) {
					if (!AnyInterface.equals(new AnyInterface(a[i], t), new AnyInterface(b[i], t)))
						return false;
				}
				true;
			case interfaceType(_): a == null && b == null;
			case arrayType(elem, _):
				var a:GoArray<Any> = aValue;
				var b:GoArray<Any> = bValue;
				var t = new stdgo.reflect.Reflect._Type(elem);
				for (i in 0...a.length.toBasic()) {
					if (!AnyInterface.equals(new AnyInterface(a[i], t), new AnyInterface(b[i], t)))
						return false;
				}
				true;
			case pointer(_):
				aValue == bValue;
			default:
				throw "unknown type equals: " + @:privateAccess a.type.common().value;
		}
	}
}

function isTitle(string:String):Bool {
	return string.charAt(0) == "_" ? false : string.charAt(0) == string.charAt(0).toUpperCase();
}

interface ArrayAccess<T> {
	function get(i:Int):T;
	function set(i:Int, value:T):T;
}

class GoIntIterator {
	var min:Int;
	var max:Int;

	public inline function new(min:GoInt, max:GoInt) {
		this.min = min.toBasic();
		this.max = max.toBasic();
	}

	public inline function hasNext() {
		return min < max;
	}

	public inline function next():GoInt {
		return min++;
	}
}

interface MapAccess<K, V> {
	function get(k:K):Null<V>;
	function set(k:K, v:V):Void;
}
/*
	uint8       the set of all unsigned  8-bit integers (0 to 255)
	uint16      the set of all unsigned 16-bit integers (0 to 65535)
	uint32      the set of all unsigned 32-bit integers (0 to 4294967295)
	uint64      the set of all unsigned 64-bit integers (0 to 18446744073709551615)

	int8        the set of all signed  8-bit integers (-128 to 127)
	int16       the set of all signed 16-bit integers (-32768 to 32767)
	int32       the set of all signed 32-bit integers (-2147483648 to 2147483647)
	int64       the set of all signed 64-bit integers (-9223372036854775808 to 9223372036854775807)

	float32     the set of all IEEE-754 32-bit floating-point numbers
	float64     the set of all IEEE-754 64-bit floating-point numbers

	complex64   the set of all complex numbers with float32 real and imaginary parts
	complex128  the set of all complex numbers with float64 real and imaginary parts

	byte        alias for uint8
	rune        alias for int32
 */
