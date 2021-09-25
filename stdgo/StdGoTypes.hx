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
import stdgo.reflect.Reflect.GoType;
import stdgo.reflect.Reflect.uint64;

using stdgo.StdGoTypes.UInt64;

// native_num define flag
typedef GoByte = GoUInt8;
typedef GoRune = GoInt32;
typedef GoFloat = GoFloat64;
private typedef Int = StdTypes.Int;
private typedef Int8 = #if !native_num Int #elseif cpp cpp.Int8 #elseif cs cs.Int8 #elseif java java.Int8 #else Int #end;
private typedef Int16 = #if !native_num Int #elseif cpp cpp.Int16 #elseif cs cs.Int16 #elseif java java.Int16 #else Int #end;
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = haxe.Int64; // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt = Int;
private typedef UInt8 = Int; // #if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if !native_num Int #elseif hl hl.UI16 #elseif cpp cpp.UInt16 #elseif cs cs.UInt16 #else Int #end;
private typedef UInt32 = #if !native_num Int #elseif cpp cpp.UInt32 #elseif cs cs.system.UInt32 #else Int #end;
private typedef Float = StdTypes.Float;
private typedef Float32 = #if !native_num Float #elseif (java || cs || hl || cpp) StdTypes.Single #else Float #end;
private typedef Float64 = #if !native_num Float #elseif cpp cpp.Float64; #else Float; #end
typedef GoUnTypedInt = GoInt64;
typedef GoUnTypedFloat = GoFloat64;
typedef GoUnTypedComplex = GoComplex128;

@:transitive
abstract UInt64(__UInt64) from __UInt64 to __UInt64 {
	private inline function new(x:__UInt64)
		this = x;

	/**
		Makes a copy of `this` Int64.
	**/
	public inline function copy():UInt64
		return make(high, low);

	/**
		Construct an Int64 from two 32-bit words `high` and `low`.
	**/
	public static inline function make(high:Int32, low:Int32):UInt64
		return new UInt64(new __UInt64(high, low));

	/**
		Returns an Int64 with the value of the Int `x`.
		`x` is sign-extended to fill 64 bits.
	**/
	@:from public static inline function ofInt(x:UInt):UInt64 #if lua return make((x : Int32) >> 31, (x : Int32)); #else return make(x >> 31, x); #end

	/**
		Returns an Int with the value of the Int64 `x`.
		Throws an exception  if `x` cannot be represented in 32 bits.
	**/
	public static inline function toInt(x:UInt64):Int {
		if (x.high != x.low >> 31)
			throw "Overflow";

		return x.low;
	}

	public static inline function toInt64(x:UInt64):Int64
		return Int64.make(x.high, x.low);

	@:deprecated('haxe.Int64.is() is deprecated. Use haxe.Int64.isInt64() instead')
	inline public static function is(val:Dynamic):Bool {
		return isUInt64(val);
	}

	/**
		Returns whether the value `val` is of type `haxe.Int64`
	**/
	inline public static function isUInt64(val:Dynamic):Bool
		return Std.isOfType(val, __UInt64);

	/**
		Returns the high 32-bit word of `x`.
	**/
	@:deprecated("Use high instead")
	public static inline function getHigh(x:UInt64):Int32
		return x.high;

	/**
		Returns the low 32-bit word of `x`.
	**/
	@:deprecated("Use low instead")
	public static inline function getLow(x:UInt64):Int32
		return x.low;

	/**
		Returns `true` if `x` is less than zero.
	**/
	public static inline function isNeg(x:UInt64):Bool
		return x.high < 0;

	/**
		Returns `true` if `x` is exactly zero.
	**/
	public static inline function isZero(x:UInt64):Bool
		return x == 0;

	/**
		Compares `a` and `b` in signed mode.
		Returns a negative value if `a < b`, positive if `a > b`,
		or 0 if `a == b`.
	**/
	public static inline function compare(a:UInt64, b:UInt64):Int {
		var v = a.high - b.high;
		v = if (v != 0) v else Int32.ucompare(a.low, b.low);
		return a.high < 0 ? (b.high < 0 ? v : -1) : (b.high >= 0 ? v : 1);
	}

	/**
		Compares `a` and `b` in unsigned mode.
		Returns a negative value if `a < b`, positive if `a > b`,
		or 0 if `a == b`.
	**/
	public static inline function ucompare(a:UInt64, b:UInt64):Int {
		var v = Int32.ucompare(a.high, b.high);
		return if (v != 0) v else Int32.ucompare(a.low, b.low);
	}

	/**
		Returns a signed decimal `String` representation of `x`.
	**/
	public static inline function toStr(x:UInt64):String
		return x.toString();

	function toString():String {
		var i:UInt64 = cast this;
		if (i == 0)
			return "0";
		var str = "";
		var neg = false;
		if (i.isNeg()) {
			neg = true;
			// i = -i; cannot negate here as --9223372036854775808 = -9223372036854775808
		}
		var ten:UInt64 = 10;
		while (i != 0) {
			var r = i.divMod(ten);
			if (r.modulus.isNeg()) {
				str = UInt64.neg(r.modulus).low + str;
				i = UInt64.neg(r.quotient);
			} else {
				str = r.modulus.low + str;
				i = r.quotient;
			}
		}
		if (neg)
			str = "-" + str;
		return str;
	}

	public static inline function parseString(sParam:String):UInt64 {
		final base = UInt64.ofInt(10);
		var current = UInt64.ofInt(0);
		var multiplier = UInt64.ofInt(1);

		var s = StringTools.trim(sParam);
		final len = s.length;
		for (i in 0...len) {
			final digitInt:UInt = s.charCodeAt(len - 1 - i) - '0'.code;
			if (digitInt < 0 || digitInt > 9)
				throw "NumberFormatError";
			if (digitInt != 0) {
				final digit = UInt64.ofInt(digitInt);
				current = UInt64.add(current, UInt64.mul(multiplier, digit));
			}
			multiplier = UInt64.mul(multiplier, base);
		}
		return UInt64.make(current.high, current.low);
	}

	public static inline function fromFloat(f:Float):UInt64 {
		return 0;
	}

	/**
		Performs signed integer divison of `dividend` by `divisor`.
		Returns `{ quotient : Int64, modulus : Int64 }`.
	**/
	public static function divMod(dividend:UInt64, divisor:UInt64):{quotient:UInt64, modulus:UInt64} {
		// Handle special cases of 0 and 1
		if (divisor.high == 0) {
			switch (divisor.low) {
				case 0:
					throw "divide by zero";
				case 1:
					return {quotient: dividend.copy(), modulus: 0};
			}
		}

		var divSign = dividend.isNeg() != divisor.isNeg();

		var modulus = dividend.isNeg() ? -dividend : dividend.copy();
		divisor = divisor.isNeg() ? -divisor : divisor;

		var quotient:UInt64 = 0;
		var mask:UInt64 = 1;

		while (!divisor.isNeg()) {
			var cmp = ucompare(divisor, modulus);
			divisor <<= 1;
			mask <<= 1;
			if (cmp >= 0)
				break;
		}

		while (mask != 0) {
			if (ucompare(modulus, divisor) >= 0) {
				quotient |= mask;
				modulus -= divisor;
			}
			mask >>>= 1;
			divisor >>>= 1;
		}

		if (divSign)
			quotient = -quotient;
		if (dividend.isNeg())
			modulus = -modulus;

		return {
			quotient: quotient,
			modulus: modulus
		};
	}

	/**
		Returns the negative of `x`.
	**/
	@:op(-A) public static inline function neg(x:UInt64):UInt64 {
		var high = ~x.high;
		var low = -x.low;
		if (low == 0)
			high++;
		return make(high, low);
	}

	@:op(++A) private inline function preIncrement():UInt64 {
		this = copy();
		this.low++;
		if (this.low == 0)
			this.high++;
		return cast this;
	}

	@:op(A++) private inline function postIncrement():UInt64 {
		var ret = this;
		preIncrement();
		return ret;
	}

	@:op(--A) private inline function preDecrement():UInt64 {
		this = copy();
		if (this.low == 0)
			this.high--;
		this.low--;
		return cast this;
	}

	@:op(A--) private inline function postDecrement():UInt64 {
		var ret = this;
		preDecrement();
		return ret;
	}

	/**
		Returns the sum of `a` and `b`.
	**/
	@:op(A + B) public static inline function add(a:UInt64, b:UInt64):UInt64 {
		var high = a.high + b.high;
		var low = a.low + b.low;
		if (Int32.ucompare(low, a.low) < 0)
			high++;
		return make(high, low);
	}

	@:op(A + B) @:commutative private static inline function addInt(a:UInt64, b:Int):UInt64
		return add(a, b);

	/**
		Returns `a` minus `b`.
	**/
	@:op(A - B) public static inline function sub(a:UInt64, b:UInt64):UInt64 {
		var high = a.high - b.high;
		var low = a.low - b.low;
		if (Int32.ucompare(a.low, b.low) < 0)
			high--;
		return make(high, low);
	}

	@:op(A - B) private static inline function subInt(a:UInt64, b:Int):UInt64
		return sub(a, b);

	@:op(A - B) private static inline function intSub(a:Int, b:UInt64):UInt64
		return sub(a, b);

	/**
		Returns the product of `a` and `b`.
	**/
	@:op(A * B)
	public static #if !lua inline #end function mul(a:UInt64, b:UInt64):UInt64 {
		var mask = 0xFFFF;
		var al = a.low & mask, ah = a.low >>> 16;
		var bl = b.low & mask, bh = b.low >>> 16;
		var p00 = al * bl;
		var p10 = ah * bl;
		var p01 = al * bh;
		var p11 = ah * bh;
		var low = p00;
		var high = p11 + (p01 >>> 16) + (p10 >>> 16);
		p01 <<= 16;
		low += p01;
		if (Int32.ucompare(low, p01) < 0)
			high++;
		p10 <<= 16;
		low += p10;
		if (Int32.ucompare(low, p10) < 0)
			high++;
		high += a.low * b.high + a.high * b.low;
		return make(high, low);
	}

	@:op(A * B) @:commutative private static inline function mulInt(a:UInt64, b:Int):UInt64
		return mul(a, b);

	/**
		Returns the quotient of `a` divided by `b`.
	**/
	@:op(A / B) public static inline function div(a:UInt64, b:UInt64):UInt64
		return divMod(a, b).quotient;

	@:op(A / B) private static inline function divInt(a:UInt64, b:Int):UInt64
		return div(a, b);

	@:op(A / B) private static inline function intDiv(a:Int, b:UInt64):UInt64
		return div(a, b).toInt();

	/**
		Returns the modulus of `a` divided by `b`.
	**/
	@:op(A % B) public static inline function mod(a:UInt64, b:UInt64):UInt64
		return divMod(a, b).modulus;

	@:op(A % B) private static inline function modInt(a:UInt64, b:Int):UInt64
		return mod(a, b).toInt();

	@:op(A % B) private static inline function intMod(a:Int, b:UInt64):UInt64
		return mod(a, b).toInt();

	/**
		Returns `true` if `a` is equal to `b`.
	**/
	@:op(A == B) public static inline function eq(a:UInt64, b:UInt64):Bool
		return a.high == b.high && a.low == b.low;

	@:op(A == B) @:commutative private static inline function eqInt(a:UInt64, b:Int):Bool
		return eq(a, b);

	/**
		Returns `true` if `a` is not equal to `b`.
	**/
	@:op(A != B) public static inline function neq(a:UInt64, b:UInt64):Bool
		return a.high != b.high || a.low != b.low;

	@:op(A != B) @:commutative private static inline function neqInt(a:UInt64, b:Int):Bool
		return neq(a, b);

	@:op(A < B) private static inline function lt(a:UInt64, b:UInt64):Bool
		return compare(a, b) < 0;

	@:op(A < B) private static inline function ltInt(a:UInt64, b:Int):Bool
		return lt(a, b);

	@:op(A < B) private static inline function intLt(a:Int, b:UInt64):Bool
		return lt(a, b);

	@:op(A <= B) private static inline function lte(a:UInt64, b:UInt64):Bool
		return compare(a, b) <= 0;

	@:op(A <= B) private static inline function lteInt(a:UInt64, b:Int):Bool
		return lte(a, b);

	@:op(A <= B) private static inline function intLte(a:Int, b:UInt64):Bool
		return lte(a, b);

	@:op(A > B) private static inline function gt(a:UInt64, b:UInt64):Bool
		return compare(a, b) > 0;

	@:op(A > B) private static inline function gtInt(a:UInt64, b:Int):Bool
		return gt(a, b);

	@:op(A > B) private static inline function intGt(a:Int, b:UInt64):Bool
		return gt(a, b);

	@:op(A >= B) private static inline function gte(a:UInt64, b:UInt64):Bool
		return compare(a, b) >= 0;

	@:op(A >= B) private static inline function gteInt(a:UInt64, b:Int):Bool
		return gte(a, b);

	@:op(A >= B) private static inline function intGte(a:Int, b:UInt64):Bool
		return gte(a, b);

	/**
		Returns the bitwise NOT of `a`.
	**/
	@:op(~A) private static inline function complement(a:UInt64):UInt64
		return make(~a.high, ~a.low);

	/**
		Returns the bitwise AND of `a` and `b`.
	**/
	@:op(A & B) public static inline function and(a:UInt64, b:UInt64):UInt64
		return make(a.high & b.high, a.low & b.low);

	/**
		Returns the bitwise OR of `a` and `b`.
	**/
	@:op(A | B) public static inline function or(a:UInt64, b:UInt64):UInt64
		return make(a.high | b.high, a.low | b.low);

	/**
		Returns the bitwise XOR of `a` and `b`.
	**/
	@:op(A ^ B) public static inline function xor(a:UInt64, b:UInt64):UInt64
		return make(a.high ^ b.high, a.low ^ b.low);

	/**
		Returns `a` left-shifted by `b` bits.
	**/
	@:op(A << B) public static inline function shl(a:UInt64, b:Int):UInt64 {
		b &= 63;
		return if (b == 0) a.copy() else if (b < 32) make((a.high << b) | (a.low >>> (32 - b)), a.low << b) else make(a.low << (b - 32), 0);
	}

	/**
		Returns `a` right-shifted by `b` bits in signed mode.
		`a` is sign-extended.
	**/
	@:op(A >> B) public static inline function shr(a:UInt64, b:Int):UInt64 {
		b &= 63;
		return if (b == 0) a.copy() else if (b < 32) make(a.high >> b, (a.high << (32 - b)) | (a.low >>> b)); else make(a.high >> 31, a.high >> (b - 32));
	}

	/**
		Returns `a` right-shifted by `b` bits in unsigned mode.
		`a` is padded with zeroes.
	**/
	@:op(A >>> B) public static inline function ushr(a:UInt64, b:Int):UInt64 {
		b &= 63;
		return if (b == 0) a.copy() else if (b < 32) make(a.high >>> b, (a.high << (32 - b)) | (a.low >>> b)); else make(0, a.high >>> (b - 32));
	}

	public var high(get, never):Int32;

	private inline function get_high()
		return this.high;

	private inline function set_high(x)
		return this.high = x;

	public var low(get, never):Int32;

	private inline function get_low()
		return this.low;

	private inline function set_low(x)
		return this.low = x;
}

private class __UInt64 {
	public var high:Int;
	public var low:Int;

	public inline function new(high, low) {
		this.high = high;
		this.low = low;
	}

	public static inline function ofInt(x:Int) {
		if (x < 0)
			return new __UInt64(0, 0);
		return new __UInt64(x >> 31, x);
	}

	public function toInt64():Int64
		return Int64.make(high, low);

	public function toString():String {
		var i:UInt64 = this;
		if (i == 0)
			return "0";
		var str = "";
		if (i.isNeg()) {
			return "NULL";
		} else {
			return @:privateAccess i.toInt64().toString();
		}
	}
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

function clampUInt(x:Int):Int // TODO: clamp uint
	return x < 0 ? 0 : x;

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
			return Int64.parseString("-9223372036854775808");
		return Int64.fromFloat(this);
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
			return Int64.parseString("-9223372036854775808");
		return Int64.fromFloat(this);
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
		return new GoComplex64(a.real + b.toBasic().low, a.imag);

	@:op(A + B) @:commutative private static function addUInt(a:GoComplex64, b:GoUInt):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt8(a:GoComplex64, b:GoUInt8):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt16(a:GoComplex64, b:GoUInt16):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt32(a:GoComplex64, b:GoUInt32):GoComplex64
		return new GoComplex64(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt64(a:GoComplex64, b:GoUInt64):GoComplex64
		return new GoComplex64(a.real + b.toBasic().low, a.imag);

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
		return new GoComplex128(a.real + b.toBasic().low, a.imag);

	@:op(A + B) @:commutative private static function addInt128(a:GoComplex128, b:GoInt64):GoComplex128
		return new GoComplex128(a.real + b.toBasic().low, a.imag);

	@:op(A + B) @:commutative private static function addUInt(a:GoComplex128, b:GoUInt):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt8(a:GoComplex128, b:GoUInt8):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt16(a:GoComplex128, b:GoUInt16):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt32(a:GoComplex128, b:GoUInt32):GoComplex128
		return new GoComplex128(a.real + b.toBasic(), a.imag);

	@:op(A + B) @:commutative private static function addUInt128(a:GoComplex128, b:GoUInt64):GoComplex128
		return new GoComplex128(a.real + b.toBasic().low, a.imag);

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
abstract GoUInt(Int) from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

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

abstract GoUInt32(Int) from Int {
	public inline function new(x = 0)
		this = x;

	public inline function toBasic()
		return this;

	@:from static inline function fromFloat(x:Float):GoUInt32 {
		return new GoUInt32(Std.int(x));
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

	static function clamp(x:Int):Int
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

abstract GoInt64(Int64) from Int64 {
	public inline function new(x) {
		this = x;
	}

	public inline function toBasic()
		return this;

	public inline function copy():GoInt64
		return this.copy();

	@:from static function fromFloat(x:Float):GoInt64
		return Int64.fromFloat(x);

	@:from static function fromString(x:String):GoInt64
		return Int64.parseString(x);

	@:from static function fromInt(x:Int):GoInt64
		return Int64.ofInt(x);

	public function toFloat():Float {
		return this.high * 4294967296. + (this.low >>> 0);
	}

	@:to inline function toInt():GoInt
		return this.low;

	@:to inline function toInt32():GoInt32
		return this.low;

	@:to inline function toInt8():GoInt8
		return clampInt8(this.low);

	@:to inline function toInt16():GoInt16
		return clampInt16(this.low);

	@:to inline function toUInt():GoUInt
		return clampUInt(this.low);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this.low);

	@:to inline function toComplex64():GoComplex64
		return new GoComplex64(toFloat32(), 0);

	@:to inline function toComplex128():GoComplex128
		return new GoComplex128(toFloat64(), 0);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this.low);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this.low);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? UInt64.make(this.high, this.low) : 0;

	@:to inline function toFloat32():GoFloat32
		return this.low;

	@:to inline function toFloat64():GoFloat64
		return this.low;

	@:to inline function toUIntptr():GoUIntptr
		return this.low;

	function toString()
		return Int64.toStr(this);

	public static inline function ofInt(x:Int):GoInt64
		return (Int64.make(x >> 31, x) : GoInt64);

	@:op(A >> B) private static function shr(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(b.toBasic().low))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic().low;
	}

	@:op(A << B) private static function shl(a:GoInt64, b:GoInt64):GoInt64 {
		if (shiftGuard(b.toBasic().low))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic().low;
	}

	@:op(A + B) public static function add(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() + b.toBasic();

	@:op(A++) inline function postInc():GoInt64 {
		return this
		++;
	}

	@:op(A--) inline function postDec():GoInt64
		return this - 1;

	@:op(A * B) public static function mul(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() * b.toBasic();

	@:op(-A) private static function neg(t:GoInt64):GoInt64
		return t * -1;

	@:op(A % B) public static function mod(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoInt64, b:GoInt64):GoInt64
		return Int64.div(a.toBasic(), b.toBasic());

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
		return Int64.eq(a.toBasic(), b.toBasic());

	@:op(A != B) private static function notEquals(a:GoInt64, b:GoInt64):Bool
		return Int64.neq(a.toBasic(), b.toBasic());
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
		return this.copy();

	public inline function toBasic()
		return this;

	@:from public static function ofString(x:String):GoUInt64 {
		return UInt64.parseString(x);
	}

	@:to inline function toInt():GoInt
		return this.low;

	@:to inline function toInt32():GoInt32
		return this.low;

	@:to inline function toInt64():GoInt64
		return Int64.make(this.high, this.low);

	@:to inline function toInt8():GoInt8
		return clampInt8(this.low);

	@:to inline function toInt16():GoInt16
		return clampInt16(this.low);

	@:to inline function toUInt():GoUInt
		return clampUInt(this.low);

	@:to inline function toUInt32():GoUInt32
		return clampUInt(this.low);

	@:to inline function toUInt8():GoUInt8
		return clampUInt8(this.low);

	@:to inline function toUInt16():GoUInt16
		return clampUInt16(this.low);

	@:to inline function toUInt64():GoUInt64
		return this > 0 ? this : 0;

	@:to inline function toFloat32():GoFloat32
		return this.low;

	@:to inline function toFloat64():GoFloat64
		return this.low;

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
		if (shiftGuard(b.toBasic().low))
			return a < 0 ? -1 : 0;
		return a.toBasic() >> b.toBasic().low;
	}

	@:op(A << B) private static function shl(a:GoUInt64, b:GoUInt64):GoUInt64 {
		if (shiftGuard(b.toBasic().low))
			return a < 0 ? -1 : 0;
		return a.toBasic() << b.toBasic().low;
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
		return this
		++;
	}

	@:op(-A) private static function neg(a:GoUInt64):GoUInt64
		return a * -1;

	@:op(A--) inline function postDec():GoUInt64 {
		return this
		--;
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
