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

using stdgo.StdGoTypes.UInt64;

// simulate_num define flag
typedef GoByte = GoUInt8;
typedef GoRune = GoInt32;
typedef GoFloat = GoFloat64;
typedef GoInt = GoInt32;
typedef GoUInt = GoUInt32;
private typedef Int8 = #if simulate_num Int; #elseif cpp cpp.Int8; #elseif cs cs.Int8; #elseif java java.Int8; #else Int #end
private typedef Int16 = #if simulate_num Int; #elseif cpp cpp.Int16; #elseif cs cs.Int16; #elseif java java.Int16; #else Int; #end
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = #if simulate_num haxe.Int64; #elseif eval eval.integers.Int64; #else haxe.Int64; #end // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt8 = Int; // #if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if simulate_num Int; #elseif hl hl.UI16; #elseif cpp cpp.UInt16; #elseif cs cs.UInt16; #else Int; #end
private typedef UInt32 = #if simulate_num UInt; #elseif cpp cpp.UInt32; #elseif cs cs.system.UInt32; #elseif eval eval.integers.UInt64; #else UInt; #end
private typedef UInt64 = haxe.UInt64;
private typedef Float = Float64;
private typedef Float64 = #if hl hl.F64; #else StdTypes.Float; #end
private typedef Float32 = #if hl hl.F32; #else Float64; #end
typedef Ref<T> = T; // refrence type used only for macro reflection type info purposes, has no overhead

@:eager
typedef InvalidType = Dynamic; // invalid type, attempt to use Dynamic

private function ofIntInt64(x:Int):Int64 {
	return haxe.Int64.ofInt(x);
}

private function copyInt64(x:Int64):Int64
	return x.copy();

private function copyUInt64(x:UInt64):UInt64
	return x.copy();

private function ofIntUInt64(x:Int):UInt64 {
	return haxe.UInt64.ofInt(x);
}

private function ofUIntUInt64(x:UInt):UInt64 {
	final y:Int = x;
	if (y < 0) {
		var u = haxe.UInt64.ofInt(2147483647);
		u *= 2;
		u += y + 2;
		return u;
	}
	return haxe.UInt64.ofInt(x);
}

private function zeroUInt32():UInt32
	return 0;

private function oneUInt32():UInt32
	return 1;

private function zeroInt64():Int64
	return 0;

private function oneInt64():Int64
	return 1;

private function zeroUInt64():UInt64
	return 0;

private function oneUInt64():UInt64
	return 1;

private function ofIntUInt(x:Int):UInt32 {
	return x;
}

// https://github.com/tardisgo/tardisgo/blob/master/haxe/haxeRuntime.go#L2014-L2034
private function ofFloatInt64(x:Float):Int64 {
	if (x == 0)
		return haxe.Int64.make(0, 0);
	final isNeg = x < 0;
	if (isNeg)
		x *= -1;
	if (Math.isNaN(x))
		return (isNeg ? -1 : 1) * Math.floor(x);
	if (x > 9223372036854775807.0)
		return isNeg ? haxe.Int64.make(0x80000000, 0) : haxe.Int64.make(0x7fffffff, 0xffffffff);
	var res = ofFloatUInt64(x);
	return isNeg ? haxe.Int64.neg(res) : res;
}

private function ofFloatUInt64(x:Float):UInt64 {
	if (x < 0.0)
		throw "negative float passed to uint64";
	if (Math.isNaN(x))
		return haxe.Int64.make(0x80000000, 0);
	if (x < 2147483647.0)
		return Math.floor(x);
	if (x > 18446744073709551615.0)
		return haxe.Int64.make(0xffffffff, 0xffffffff);
	// https://github.com/tardisgo/tardisgo/blob/master/haxe/haxeRuntime.go#L2048-L2058
	var f32:Float = 4294967296.0; // the number of combinations in 32-bits
	var f16:Float = 65536.0; // the number of combinations in 16-bits
	x = Math.ffloor(x); // remove any fractional part
	var high:Float = Math.ffloor(x / f32);
	var highTop16:Float = Math.ffloor(high / f16);
	var highBot16:Float = high - (highTop16 * f16);
	var highBits:Int = Math.floor(highTop16) << 16 | Math.floor(highBot16);
	var low:Float = x - (high * f32);
	var lowTop16:Float = Math.ffloor(low / f16);
	var lowBot16:Float = low - (lowTop16 * f16);
	var lowBits:Int = Math.floor(lowTop16) << 16 | Math.floor(lowBot16);
	return haxe.Int64.make(highBits, lowBits);
}

private function toFloatInt64(x:Int64):Float {
	final i = x;
	return i.high * 4294967296.0 + (i.low >>> 0);
}

private function toFloatUInt64(x:UInt64):Float {
	final i = x;
	return i.high * 4294967296.0 + (i.low >>> 0);
}

/**
	Converts an `Int64` to `Float`;
	Implementation by Elliott Stoneham.
 */
/*private function toFloatInt64(i:Int64):Float {
	var isNegative = false;
	if (i < 0) {
					   if (i < min)
						   return -9223372036854775808.0; // most -ve value can't be made +ve
					   isNegative = true;
					   i = -i;
	}
	var multiplier = 1.0, ret = 0.0;
	for (_ in 0...64) {
					   if (i.and(one) != zero)
						   ret += multiplier;
					   multiplier *= 2.0;
					   i = i.shr(1);
	}
	return (isNegative ? -1 : 1) * ret;
}*/
private function toStringInt64(x:Int64):String
	return haxe.Int64.toStr(x);

private function toStringUInt64(x:UInt64):String
	return x.toString();

private function toIntUInt64(x:UInt64):Int {
	return x.low;
}

private function toIntInt64(x:Int64):Int {
	return x.low;
}

private function toInt64UInt64(x:UInt64):Int64 {
	return x;
}

private function toUInt64Int64(x:Int64):UInt64 {
	return haxe.Int64.make(x.high, x.low);
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

	public function toString():String
		return '($real+$imag' + 'i)';
}

private function shiftGuard(x:Int):Bool
	return x > 0xFF || x < 0;

private function clampInt8(x:Int):Int {
	x = x & 0xFF;
	if (x & 0x80 != 0)
		return -1 - 0xFF + x;
	return x;
}

private function clampInt16(x:Int):Int {
	x = x & 0xFFFF;
	if (x & 0x8000 != 0)
		return -1 - 0xFFFF + x;
	return x;
}

private function clampUInt8(x:Int):Int
	return x & 0xFF;

private function clampUInt16(x:Int):Int
	return x & 0xFFFF;

private function clampUInt(x:Int):UInt32
	return x;

// no clamp for UInt32 or UInt64 as they overflow into negative range

abstract GoUIntptr(Dynamic) from Dynamic {
	public inline function new(?x) {
		this = x;
	}

	@:to
	private function toError():Error
		return {error: () -> 'uintptr: $this', __underlying__: () -> null};

	@:to
	public function toDynamic():Dynamic
		return this;

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
		return a.address().toBasic() / b.address().toBasic();
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

	@:op(A > B) private static function gt(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUIntptr, b:GoUIntptr):Bool
		return a.toBasic() <= b.toBasic();
}

@:notNull
abstract GoFloat64(Float) from Float {
	public inline function new(x = 0.0)
		this = x;

	@:to inline function toFloat32():GoFloat32 {
		#if interp
		// lose precision
		final array = new haxe.io.Float32Array(1);
		array.set(0, this);
		return array.get(0);
		#else
		return this;
		#end
	}

	@:to inline function toInt64():GoInt64 {
		if (std.Math.isNaN(this))
			return -9223372036854775808i64;
		return ofFloatInt64(this);
	}

	@:to function toInt():GoInt {
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
			return -9223372036854775808i64;
		return this;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public static function ofInt(x:Int):GoUInt
		return x;

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat, b:GoFloat):GoFloat
		return a.toBasic() + b.toBasic();

	@:op(A / B) private static function div(a:GoFloat, b:GoFloat):GoFloat {
		if (b == 0)
			return std.Math.NaN;
		return a.toBasic() / b.toBasic();
	}

	@:op(A * B) private static function mul(a:GoFloat, b:GoFloat):GoFloat
		return a.toBasic() * b.toBasic();

	@:op(A - B) private static function sub(a:GoFloat, b:GoFloat):GoFloat
		return a.toBasic() - b.toBasic();

	@:op(A % B) private static function mod(a:GoFloat64, b:GoFloat64):GoFloat64
		return a.toBasic() % b.toBasic();

	@:op(A > B) private static function gt(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoFloat64, b:GoFloat64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A > B) private static function gtf(a:GoFloat64, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat64):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat64, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat64):Bool;

	@:op(A < B) private static function ltf(a:GoFloat64, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat64):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat64, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat64):Bool;

	@:op(~A) private static function bneg(t:GoFloat):GoFloat;

	@:op(-A) private static function neg(t:GoFloat):GoFloat {
		#if interp
		if (t == 0) // && t / 0 != Math.POSITIVE_INFINITY)
			return -0.0;
		#end
		return t.toBasic() * -1;
	}

	@:op(A--) private inline function postDec():GoFloat
		return this = this - 1;

	@:op(A++) private inline function postInc():GoFloat
		return this = this + 1;
}

@:notNull
abstract GoFloat32(Float32) from Float32 {
	public inline function new(x = 0)
		this = x;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toInt64():GoInt64 {
		if (std.Math.isNaN(this))
			return -9223372036854775808i64;
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
			return -9223372036854775808i64;
		return this;
	}

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(this, 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(this, 0);

	public inline function toBasic()
		return this;

	@:op(A + B) private static function add(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() + b.toBasic();

	@:op(A - B) private static function sub(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() - b.toBasic();

	@:op(A * B) private static function mul(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() * b.toBasic();

	@:op(A % B) private static function mod(a:GoFloat32, b:GoFloat32):GoFloat32
		return a.toBasic() % b.toBasic();

	@:op(A / B) private static function div(a:GoFloat32, b:GoFloat32):GoFloat32 {
		if (b == 0)
			return std.Math.NaN;
		return a.toBasic() / b.toBasic();
	}

	@:op(-A) private static function neg(t:GoFloat32):GoFloat32
		return t.toBasic() * -1;

	@:op(A++) private inline function postInc():GoFloat32 {
		return this = this + 1;
	}

	@:op(A--) private inline function postDec():GoFloat32 {
		return this = this - 1;
	}

	@:op(A > B) private static function gt(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A > B) private static function gtf(a:GoFloat32, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoFloat32):Bool;

	@:op(A >= B) private static function gtef(a:GoFloat32, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoFloat32):Bool;

	@:op(A < B) private static function ltf(a:GoFloat32, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoFloat32):Bool;

	@:op(A <= B) private static function ltef(a:GoFloat32, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoFloat32):Bool;

	@:op(A == B) private static function eq(a:GoFloat32, b:GoFloat32):Bool
		return a.toBasic() == b.toBasic();

	@:op(A != B) private static function notEq(a:GoFloat32, b:GoFloat32):Bool
		return !eq(a, b);
}

@:notNull
abstract GoComplex64(Complex64) from Complex64 {
	public inline function new(?r:GoFloat32, ?i:GoFloat32) {
		if (r == null || i == null) {
			this = new Complex64(0, 0);
		} else {
			this = new Complex64(r.toBasic(), i.toBasic());
		}
	}

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(real, imag);

	inline function toComplex64()
		return this;

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

	@:op(A + B) private static function add(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64(a.real + b.real, a.imag.toBasic() + b.imag.toBasic());

	@:op(A * B) private static function mul(a:GoComplex64, b:GoComplex64):GoComplex64
		return new GoComplex64((a.real * b.real) - (a.imag.toBasic() * b.imag.toBasic()), (a.imag.toBasic() * b.real) + (a.real * b.imag.toBasic()));

	@:op(A / B) private static function div(a:GoComplex64, b:GoComplex64):GoComplex64 {
		// if (b.real == 0.0 && b.imag == 0.0)
		//  return std.Math.NaN;
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

	@:op(-A) private static function neg(t:GoComplex64):GoComplex64
		return new GoComplex64(-t.real, -t.imag);
}

@:notNull
abstract GoComplex128(Complex128) from Complex128 {
	public inline function new(?r:GoFloat64, ?i:GoFloat64) {
		if (r == null || i == null) {
			this = new Complex128(0, 0);
		} else {
			this = new Complex128(r.toBasic(), i.toBasic());
		}
	}

	@:to inline function toComplex64():GoComplex64 {
		return new GoComplex64(real, imag);
	}

	inline function toComplex128()
		return this;

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

	@:op(-A) private static function neg(t:GoComplex128):GoComplex128
		return new GoComplex128(-t.real, -t.imag);

	@:op(A == B) private static function eq(a:GoComplex128, b:GoComplex128):Bool
		return a.real == b.real && a.imag == b.imag;

	@:op(A != B) private static function neq(a:GoComplex128, b:GoComplex128):Bool
		return a.real != b.real || a.imag != b.imag;
}

@:notNull
abstract GoInt32(Int) from Int32 to Int32 to Int {
	public inline function new(x:Int32 = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:from static function fromFloat(x:Float):GoInt32
		return Std.int(x);

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

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
		return this;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:to inline function toUIntptr():GoUIntptr
		return this;

	public static function ofInt(x:Int):GoInt32
		return x;

	@:op(A + B) private static function add(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() + b.toBasic();

	@:op(A / B) private static inline function div(a:GoInt32, b:GoInt32):GoInt32 {
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
		return Std.int(a.toBasic() / b.toBasic());
	}

	@:op(A * B) private static function mul(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() * b.toBasic();

	@:op(A % B) private static function mod(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() % b.toBasic();

	@:op(A - B) private static function sub(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() - b.toBasic();

	@:op(A | B) private static function or(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) private static function xor(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) private static function and(a:GoInt32, b:GoInt32):GoInt32
		return a.toBasic() & b.toBasic();

	@:op(-A) inline function neg():GoInt32
		return this * -1;

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

	@:op(A > B) private static function gt(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoInt32, b:GoInt32):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A++) inline function postInc():GoInt32 {
		return this = this + 1;
	}

	@:op(A--) inline function postDec():GoInt32 {
		return this = this - 1;
	}
}

@:notNull
abstract GoUInt32(UInt) from UInt from Int to UInt to Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

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
		return ofUIntUInt64(this);

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
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
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

	@:op(A > B) private static function gt(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt32, b:GoUInt32):Bool
		return a.toBasic() <= b.toBasic();
}

@:notNull
abstract GoInt8(Int8) from Int8 from Int to Int8 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

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
		return this;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	public static function ofInt(x:Int):GoInt8
		return x;

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
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
		return Std.int(a.toBasic() / b.toBasic());
	}

	static function clamp(x:Int)
		return clampInt8(x);
}

@:notNull
abstract GoInt16(Int16) from Int16 from Int to Int16 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static function ofInt(x:Int):GoInt16
		return x;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

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
		return this;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

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
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
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

@:notNull
abstract GoInt64(Int64) from Int64 {
	public inline function new(x = 0) {
		this = x;
	}

	public inline function toBasic()
		return this;

	public inline function copy():GoInt64
		return copyInt64(this);

	@:from static function fromFloat(x:Float):GoInt64
		return ofFloatInt64(x);

	@:from static function fromInt(x:Int):GoInt64
		return ofIntInt64(x);

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

	@:to inline function toInt64():GoInt64
		return this;

	@:to inline function toUInt():GoUInt
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(toIntInt64(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(toIntInt64(this));

	@:to function toUInt64():GoUInt64 {
		return toUInt64Int64(this);
	}

	@:to inline function toFloat32():GoFloat32
		return toIntInt64(this);

	@:to inline function toFloat64():GoFloat64
		return toIntInt64(this);

	@:to inline function toUIntptr():GoUIntptr
		return toIntInt64(this);

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
		return this = this + ofIntInt64(1);
	}

	@:op(A--) inline function postDec():GoInt64
		return this = this - ofIntInt64(1);

	@:op(A * B) public static function mul(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() * b.toBasic();

	@:op(-A) private static function neg(t:GoInt64):GoInt64
		return t * -1;

	@:op(A % B) public static function mod(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoInt64, b:GoInt64):GoInt64 {
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
		return a.toBasic() / b.toBasic();
	}

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

	@:op(A == B) private static function equals(a:GoInt64, b:GoInt64):Bool {
		return a.toBasic() == b.toBasic();
	}
	@:op(A != B) private static function notEquals(a:GoInt64, b:GoInt64):Bool
		return a.toBasic() != b.toBasic();
}

@:notNull
abstract GoUInt8(UInt8) from UInt8 from Int to UInt8 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	public static inline function ofInt(x:Int)
		return x;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

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
		return this;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(A > B) private static function gt(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt8, b:GoUInt8):Bool
		return a.toBasic() <= b.toBasic();

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
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
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

@:notNull
abstract GoUInt16(UInt16) from UInt16 from Int to UInt16 {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function toInt64():GoInt64
		return ofIntInt64(this);

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
		return this;

	public static function ofInt(x:Int):GoUInt16
		return x;

	@:to inline function toFloat32():GoFloat32
		return this;

	@:to inline function toFloat64():GoFloat64
		return this;

	@:op(-A) private static function neg(a:GoUInt16):GoUInt16
		return a * -1;

	@:op(A > B) private static function gt(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt16, b:GoUInt16):Bool
		return a.toBasic() <= b.toBasic();

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
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
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

@:notNull
abstract GoUInt64(UInt64) from UInt64 {
	public inline function new(x = 0) {
		this = x;
	}

	public inline function copy():GoUInt64
		return copyUInt64(this);

	public inline function toBasic():UInt64
		return this;

	@:to inline function toInt():GoInt
		return toIntInt64(this);

	@:to inline function toInt32():GoInt32
		return toIntInt64(this);

	@:to inline function toInt64():GoInt64
		return toInt64UInt64(this);

	@:to inline function toInt8():GoInt8
		return clampInt8(toIntInt64(this));

	@:to inline function toInt16():GoInt16
		return clampInt16(toIntInt64(this));

	@:to inline function toUInt():GoUInt
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt32():GoUInt32
		return clampUInt(toIntInt64(this));

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(toIntInt64(this));

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(toIntInt64(this));

	@:to inline function toUInt64():GoUInt64
		return this > zeroUInt64() ? this : zeroUInt64();

	@:to inline function toFloat32():GoFloat32
		return toFloatUInt64(this);

	@:to inline function toFloat64():GoFloat64 {
		return toFloatUInt64(this);
	}

	@:from public static inline function ofInt(x:Int):GoUInt64
		return ofIntUInt64(x);

	@:from public static inline function ofFloat(x:Float):GoUInt64
		return ofFloatUInt64(x);

	@:op(A > B) private static function gt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A >> B) private static function shr(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b < 0 || b >= 64)
			return a < 0 ? -1 : 0;
		return a.toBasic() >> toIntInt64(b.toBasic());
	}

	@:op(A << B) private static function shl(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b < 0 || b >= 64)
			return 0;
		return a.toBasic() << toIntInt64(b.toBasic());
	}

	@:op(A >>> B) private static function ushr(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b < 0 || b >= 64)
			return a < 0 ? -1 : 0;
		return a.toBasic() >>> toIntInt64(b.toBasic());
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

	@:op(A / B) private static function div(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (b == 0) {
			#if !macro
			throw Go.toInterface(@:privateAccess stdgo.Error._divideError);
			#end
		}
		return a.toBasic() / b.toBasic();
	}

	@:op(A++) inline function postInc():GoUInt64
		return this = this + ofIntUInt64(1);

	@:op(-A) inline function neg():GoInt64
		return this * -1;

	@:op(A--) inline function postDec():GoUInt64 {
		return this = this - ofIntUInt64(1);
	}
}

typedef StructType = {
	public function __underlying__():AnyInterface;
}

@:structInit
class AnyInterfaceData {
	public var value:Any;
	public var type:stdgo.internal.reflect.Reflect._Type;
	public var __nil__:Bool = false;

	public function new(value, type) {
		this.value = value;
		this.type = type;
	}

	public function toString():String
		return '$value';
}

@:forward
@:forward.new
abstract AnyInterface(AnyInterfaceData) from AnyInterfaceData {
	public function __underlying__():AnyInterface
		return this;

	public inline function __setNil__():AnyInterface {
		this.__nil__ = true;
		return this;
	}

	public inline function __setData__(data:AnyInterface) {
		this.type = data.type;
		this.value = data.value;
		this.__nil__ = data.__nil__;
	}

	@:op(A != b) public static function notEquals(a:AnyInterface, b:AnyInterface):Bool {
		return !equals(a, b);
	}

	@:op(A == B) public static function equals(a:AnyInterface, b:AnyInterface):Bool {
		if (a == null || b == null) // null check
			return a == null && b == null;
		var gt:stdgo.internal.reflect.Reflect.GoType = @:privateAccess (a.type : Dynamic)._common();
		var gt2:stdgo.internal.reflect.Reflect.GoType = @:privateAccess (b.type : Dynamic)._common();

		if (gt.match(invalidType) || gt2.match(invalidType))
			return gt.match(invalidType) && gt2.match(invalidType);
		if (gt.match(basic(untyped_nil_kind)) || gt2.match(basic(untyped_nil_kind)))
			return gt.match(basic(untyped_nil_kind)) && gt2.match(basic(untyped_nil_kind));
		// set internal Type
		if (!a.type.assignableTo(cast new stdgo.internal.reflect.Reflect._Type_asInterface(new Pointer(() -> b.type, value -> b.type = value), b.type))) {
			return false;
		}
		var aValue = a.value;
		var bValue = b.value;
		switch gt {
			case named(path, _, _, _):
				if (aValue != null) {
					final cl = std.Type.getClassName(std.Type.getClass(path));
					if (StringTools.endsWith(cl, "_asInterface")) {
						aValue = (aValue : Dynamic).__underlying__().value;
					}
				}
			default:
		}
		switch gt2 {
			case named(path, _, _, _):
				if (bValue != null) {
					final cl = std.Type.getClassName(std.Type.getClass(path));
					if (StringTools.endsWith(cl, "_asInterface")) {
						bValue = (bValue : Dynamic).__underlying__().value;
					}
				}
			default:
		}

		gt = stdgo.internal.reflect.Reflect.getUnderlying(gt);
		gt2 = stdgo.internal.reflect.Reflect.getUnderlying(gt2);
		// trace(gt, gt2);
		return switch gt {
			case refType(_):
				aValue == bValue;
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
					case untyped_int_kind, untyped_float_kind, untyped_complex_kind:
						throw "untyped kind";
					default:
						aValue == bValue;
				}
			case structType(fields):
				if (aValue == null)
					throw "struct equals a value null, b value: " + bValue;
				if (bValue == null)
					throw "struct equals b value null, a value: " + aValue;
				for (i in 0...fields.length) {
					final name = fields[i].name;
					if (StringTools.startsWith(name, "__blank__"))
						continue;
					final type = fields[i].type.get();
					final fieldValue = std.Reflect.field(aValue, name);
					final fieldValue2 = std.Reflect.field(bValue, name);

					if (fieldValue == null || fieldValue2 == null) {
						if (fieldValue == null && fieldValue2 == null)
							return true;
						trace(fieldValue, fieldValue2);
						trace(aValue, bValue);
						throw "struct issue with field name: " + name;
					}

					final type = @:privateAccess new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, type));
					final a = new AnyInterface(fieldValue, type);
					final b = new AnyInterface(fieldValue2, type);
					if (AnyInterface.notEquals(a, b))
						return false;
				}
				true;

			case invalidType:
				switch @:privateAccess ((b.type : Dynamic)._common() : stdgo.internal.reflect.Reflect.GoType) {
					case invalidType: true;
					default: false;
				}
			case sliceType(_.get() => elem):
				var a:Slice<Any> = aValue;
				var b:Slice<Any> = bValue;
				var t:Dynamic = new stdgo.internal.reflect.Reflect._Type(elem);
				if (a.length != b.length)
					return false;
				if (a == null || b == null) {
					a == b;
				}else{
					a.__toVector__() == b.__toVector__();
				}
			case interfaceType(_, _):
				aValue == bValue;
			case arrayType(_.get() => elem, _):
				var a:GoArray<Any> = aValue;
				var b:GoArray<Any> = bValue;
				var t:Dynamic = new stdgo.internal.reflect.Reflect._Type(elem);
				for (i in 0...a.length.toBasic()) {
					if (AnyInterface.notEquals(new AnyInterface(a[i], t), new AnyInterface(b[i], t)))
						return false;
				}
				true;
			case pointerType(_):
				(aValue : Pointer<Dynamic>) == (bValue : Pointer<Dynamic>);
			default:
				throw "unknown type equals: " + gt;
		}
	}
}

private function isTitle(string:String):Bool {
	return string.charAt(0) == "_" ? false : string.charAt(0) == string.charAt(0).toUpperCase();
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

typedef MapAccess<K, V> = {
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
