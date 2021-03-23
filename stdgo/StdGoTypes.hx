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

import stdgo.Pointer.PointerData;
import stdgo.StdGoTypes.AnyInterface;
import haxe.Int32;
import haxe.Int64;
//native_num define flag
typedef GoByte = GoUInt8;
typedef GoRune = GoInt;
typedef GoInt32 = GoInt;
typedef GoFloat64 = GoFloat;
private typedef Int = StdTypes.Int;
private typedef Int8 = #if !native_num Int #elseif cpp cpp.Int8 #elseif cs cs.Int8 #elseif java java.Int8 #else Int #end;
private typedef Int16 = #if !native_num Int #elseif cpp cpp.Int16 #elseif cs cs.Int16 #elseif java java.Int16 #else Int #end;
private typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
private typedef Int64 = haxe.Int64; // #if cpp cpp.Int64 #elseif cs cs.system.Int64 #elseif java java.Int64 #elseif eval eval.integers.Int64 #else haxe.Int64 #end;
private typedef UInt = Int;
private typedef UInt8 = Int;//#if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
private typedef UInt16 = #if !native_num Int #elseif hl hl.UI16 #elseif cpp cpp.UInt16 #elseif cs cs.UInt16 #else Int #end;
private typedef UInt32 = #if !native_num Int #elseif cpp cpp.UInt32 #elseif cs cs.system.UInt32 #else Int #end;
private typedef UInt64 = #if !native_num Int64 #elseif cpp cpp.UInt64 #elseif eval eval.integers.UInt64 #else Int64 #end // __UInt64 #end;
private typedef Float = StdTypes.Float;
private typedef Float32 = #if !native_num Float #elseif (java || cs || hl || cpp) StdTypes.Single #else Float #end;
private typedef Float64 = #if !native_num Float #elseif cpp cpp.Float64 #else Float #end

private class __UInt64 {
	public var high:Int64;
	public var low:Int64;

	public inline function new(high, low) {
		this.high = high;
		this.low = low;
	}

	public static inline function ofInt(x:Int) {
		if (x < 0)
			return new __UInt64(0,0);
		return new __UInt64(x >> 31, x);
	}
}

private class __Int128 {
	public var high:Int64;
	public var low:Int64;
	public inline function new(high,low) {
		this.high = high;
		this.low = low;
	}
	public static inline function ofInt(x:Int) {
		return new __Int128(x >> 63, x);
	}
	public function toString():String
		return GoComplex128.toStr(cast this);
}

abstract GoUIntptr(UInt) from UInt {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uintptr";



	@:op(A + B) private static function add(a:GoUIntptr, b:GoUIntptr):GoUIntptr;



	@:op(A * B) private static function mul(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A % B) private static function modI(a:GoUIntptr, b:Int):GoUIntptr;

	@:op(A % B) private static function modF(a:GoUIntptr, b:Float):Float;

	@:op(A % B) private static function mod(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A - B) private static function subI(a:GoUIntptr, b:Int):GoUIntptr;

	@:op(A - B) private static function subF(a:GoUIntptr, b:Float):Float;

	@:op(A - B) private static function sub(a:GoUIntptr, b:GoUIntptr):GoUIntptr;


	@:op(A | B) private static function or(a:GoUIntptr, b:GoUIntptr):GoUIntptr;


	@:op(A ^ B) private static function xor(a:GoUIntptr, b:GoUIntptr):GoUIntptr;


	@:op(A & B) private static function and(a:GoUIntptr, b:GoUIntptr):GoUIntptr;

	@:op(A << B) private static function shl(a:GoUIntptr, b:Int):GoUIntptr;

	@:op(A >> B) private static function shr(a:GoUIntptr, b:Int):GoUIntptr;

	@:op(A >>> B) private static function ushr(a:GoUIntptr, b:Int):GoUIntptr;

	@:op(A > B) private static function gt(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A >= B) private static function gte(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A < B) private static function lt(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A <= B) private static function lte(a:GoUIntptr, b:GoUIntptr):Bool;

	@:op(A > B) private static function gtf(a:GoUIntptr, b:Float):Bool;

	@:op(A > B) private static function gtf2(a:Float, b:GoUIntptr):Bool;

	@:op(A >= B) private static function gtef(a:GoUIntptr, b:Float):Bool;

	@:op(A >= B) private static function gtef2(a:Float, b:GoUIntptr):Bool;

	@:op(A < B) private static function ltf(a:GoUIntptr, b:Float):Bool;

	@:op(A < B) private static function ltf2(a:Float, b:GoUIntptr):Bool;

	@:op(A <= B) private static function ltef(a:GoUIntptr, b:Float):Bool;

	@:op(A <= B) private static function ltef2(a:Float, b:GoUIntptr):Bool;

	@:op(~A) private static function bneg(t:GoUIntptr):GoUIntptr;




}

abstract GoFloat(Float) from Float {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "float";



	@:op(A + B) private static function add(a:GoFloat, b:GoFloat):GoFloat;



	@:op(A * B) private static function mul(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A % B) private static function modI(a:GoFloat, b:Int):GoFloat;

	@:op(A % B) private static function modF(a:GoFloat, b:Float):Float;

	@:op(A % B) private static function mod(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A - B) private static function subI(a:GoFloat, b:Int):GoFloat;

	@:op(A - B) private static function subF(a:GoFloat, b:Float):Float;

	@:op(A - B) private static function sub(a:GoFloat, b:GoFloat):GoFloat;


	@:op(A | B) private static function or(a:GoFloat, b:GoFloat):GoFloat;


	@:op(A ^ B) private static function xor(a:GoFloat, b:GoFloat):GoFloat;


	@:op(A & B) private static function and(a:GoFloat, b:GoFloat):GoFloat;

	@:op(A << B) private static function shl(a:GoFloat, b:Int):GoFloat;

	@:op(A >> B) private static function shr(a:GoFloat, b:Int):GoFloat;

	@:op(A >>> B) private static function ushr(a:GoFloat, b:Int):GoFloat;

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




}

abstract GoFloat32(Float32) from Float32 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "float32";

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

	// TODO: Clamp Float32
}
abstract GoComplex64(Int64) from Int64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public static inline function ofInt(x:Int):GoComplex64 
		return new GoComplex64(Int64.make(x >> 31, x));

	public inline function _typeName_()
		return "complex64";

	@:op(A + B) private static function add(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() + b.toBasic();

	@:op(A * B) private static function mul(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() * b.toBasic();
	@:op(A / B) private static function div(a:GoComplex64,b:GoComplex64):GoComplex64
		return Int64.div(a.toBasic(),b.toBasic());

	@:op(A % B) private static function mod(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() % b.toBasic();

	@:op(A - B) private static function sub(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() - b.toBasic();

	@:op(A | B) private static function or(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() | b.toBasic();

	@:op(A ^ B) private static function xor(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() ^ b.toBasic();

	@:op(A & B) private static function and(a:GoComplex64, b:GoComplex64):GoComplex64
		return a.toBasic() & b.toBasic();

	@:op(A > B) private static function gt(a:GoComplex64, b:GoComplex64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoComplex64, b:GoComplex64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoComplex64, b:GoComplex64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoComplex64, b:GoComplex64):Bool
		return a.toBasic() <= b.toBasic();
	@:op(~A) private static function bneg(t:GoComplex64):GoComplex64;

	@:op(A >> B) private static function shr(a:GoComplex64,b:GoComplex64):GoComplex64
		return a.toBasic() >> (b.toBasic().low : Int);
	@:op(A << B) private static function shl(a:GoComplex64,b:GoComplex64):GoComplex64
		return a.toBasic() << (b.toBasic().low : Int);

}
abstract GoComplex128(__Int128) from __Int128 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;
	public inline function toInt()
		return Int64.toInt(low);
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "complex128";

	public static inline function toStr(x:GoComplex128):String
		return x.toString();
	function toString():String {
		var i:GoComplex128 = cast this;
		if (i == ofInt(0))
			return "0";
		var str = "";
		var neg = false;
		if (i.isNeg())
			neg = true;
		var ten:GoComplex128 = ofInt(10);
		var zero = ofInt(0);
		while (i != zero) {
			var r = divMod(i,ten);
			if (r.modulus.isNeg()) {
				str = GoComplex128.neg(r.modulus).low + str;
				i = GoComplex128.neg(r.quotient);
			} else {
				str = r.modulus.low + str;
				i = r.quotient;
			}
		}
		if (neg)
			str = "-" + str;
		return str;
	}
	public function isNeg():Bool {
		return this.high < 0;
	}
	public static function divMod(dividend:GoComplex128, divisor:GoComplex128):{quotient:GoComplex128, modulus:GoComplex128} {
		// Handle special cases of 0 and 1
		if (divisor.high == 0) {
			if (divisor.low == 0) {
				throw "divide by zero";
			} else if (divisor.low == 1) {
				return {quotient: dividend.copy(), modulus: ofInt(0)};
			}
		}

		var divSign = dividend.isNeg() != divisor.isNeg();

		var modulus = dividend.isNeg() ? -dividend : dividend.copy();
		divisor = divisor.isNeg() ? -divisor : divisor;

		var quotient:GoComplex128 = ofInt(0);
		var mask:GoComplex128 = ofInt(1);

		while (!divisor.isNeg()) {
			var cmp = ucompare(divisor, modulus);
			divisor <<= GoComplex128.ofInt(1);
			mask <<= GoComplex128.ofInt(1);
			if (cmp >= 0)
				break;
		}
		var zero = ofInt(0);
		while (mask != zero) {
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

	@:op(A * B)
	public static #if !lua inline #end function mul(a:GoComplex128, b:GoComplex128):GoComplex128 {
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
		if (Int64.ucompare(low, p01) < 0)
			high++;
		p10 <<= 16;
		low += p10;
		if (Int64.ucompare(low, p10) < 0)
			high++;
		high += a.low * b.high + a.high * b.low;
		return make(high, low);
	}

	public static inline function compare(a:GoComplex128, b:GoComplex128):Int64 {
		var v = a.high - b.high;
		v = if (v != 0) v else Int64.ucompare(a.low, b.low);
		return a.high < 0 ? (b.high < 0 ? v : -1) : (b.high >= 0 ? v : 1);
	}
	public static inline function ucompare(a:GoComplex128,b:GoComplex128):Int64 {
		var v = Int64.compare(a.high,b.high);
		return if (v != 0) v else Int64.ucompare(a.low,b.low);
	}
	public inline function copy()
		return make(this.high.copy(),this.low.copy());
	public static inline function make(high:Int64,low:Int64):GoComplex128
		return new GoComplex128(new __Int128(high,low));
	public static inline function ofInt(x:Int):GoComplex128 {
		return make(x >> 63,x);
	}

	@:op(A == B) public static inline function eq(a:GoComplex128, b:GoComplex128):Bool
		return a.high == b.high && a.low == b.low;

	@:op(A != B) public static inline function neq(a:GoComplex128, b:GoComplex128):Bool {
		return a.high != b.high || a.low != b.low;
	}

	@:op(A < B) private static inline function lt(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) < 0;

	@:op(A <= B) private static inline function lte(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) <= 0;

	@:op(A > B) private static inline function gt(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) > 0;

	@:op(A >= B) private static inline function gte(a:GoComplex128, b:GoComplex128):Bool
		return compare(a, b) >= 0;

	@:op(-A) public static inline function neg(x:GoComplex128):GoComplex128 {
		var high = ~x.high;
		var low = -x.low;
		if (low == 0)
			high++;
		return make(high, low);
	}
	@:op(~A) private static inline function complement(a:GoComplex128):GoComplex128
		return make(~a.high, ~a.low);

	@:op(A >> B) public static inline function shr(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var b = b.toInt();
		b &= 127;
		return if (b == 0) a.copy() else if (b < 64) make(a.high >> b, (a.high << (64 - b)) | (a.low >>> b)); else make(a.high >> 63, a.high >> (b - 64));
	}
	@:op(A ^ B) public static inline function xor(a:GoComplex128, b:GoComplex128):GoComplex128
		return make(a.high ^ b.high, a.low ^ b.low);

	@:op(A << B) public static inline function shl(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var b = b.toInt();
		b &= 127;
		return if (b == 0) a.copy() else if (b < 64) make((a.high << b) | (a.low >>> (64 - b)), a.low << b) else make(a.low << (b - 64), 0);
	}

	@:op(A & B) public static inline function and(a:GoComplex128, b:GoComplex128):GoComplex128
		return make(a.high & b.high, a.low & b.low);
	@:op(A | B) public static inline function or(a:GoComplex128, b:GoComplex128):GoComplex128
		return make(a.high | b.high, a.low | b.low);
	@:op(A >>> B) public static inline function ushr(a:GoComplex128, b:Int):GoComplex128 {
		b &= 127;
		return if (b == 0) a.copy() else if (b < 64) make(a.high >>> b, (a.high << (64 - b)) | (a.low >>> b)); else make(0, a.high >>> (b - 64));
	}
	@:op(A + B) public static inline function add(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var high = a.high + b.high;
		var low = a.low + b.low;
		if (Int64.ucompare(low, a.low) < 0)
			high++;
		return make(high, low);
	}
	@:op(A - B) public static inline function sub(a:GoComplex128, b:GoComplex128):GoComplex128 {
		var high = a.high - b.high;
		var low = a.low - b.low;
		if (Int64.ucompare(a.low, b.low) < 0)
			high--;
		return make(high, low);
	}
	@:op(A % B) public static inline function mod(a:GoComplex128,b:GoComplex128):GoComplex128
		return divMod(a,b).modulus;
	@:op(A / B) public static inline function div(a:GoComplex128,b:GoComplex128):GoComplex128
		return divMod(a,b).quotient;

	public var high(get, never):Int64;

	private inline function get_high()
		return this.high;

	private inline function set_high(x)
		return this.high = x;

	public var low(get, never):Int64;

	private inline function get_low()
		return this.low;

	private inline function set_low(x)
		return this.low = x;
	public static function parseString(sParam:String):GoComplex128 {
		var base = GoComplex128.ofInt(10);
		var current = GoComplex128.ofInt(0);
		var multiplier = GoComplex128.ofInt(1);
		var sIsNegative = false;

		var s = StringTools.trim(sParam);
		if (s.charAt(0) == "-") {
			sIsNegative = true;
			s = s.substring(1, s.length);
		}
		var len = s.length;

		for (i in 0...len) {
			var digitInt = s.charCodeAt(len - 1 - i) - '0'.code;

			if (digitInt < 0 || digitInt > 9) {
				throw "NumberFormatError";
			}

			if (digitInt != 0) {
				var digit:GoComplex128 = GoComplex128.ofInt(digitInt);
				if (sIsNegative) {
					current = GoComplex128.sub(current, GoComplex128.mul(multiplier, digit));
					if (!current.isNeg()) {
						throw "NumberFormatError: Underflow";
					}
				} else {
					current = GoComplex128.add(current, GoComplex128.mul(multiplier, digit));
					if (current.isNeg()) {
						throw "NumberFormatError: Overflow";
					}
				}
			}

			multiplier = GoComplex128.mul(multiplier, base);
		}
		return current;
	}
}


abstract GoInt(Int) from Int32 {
	public inline function new(x:Int32=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "int";

	public static function ofInt(x:Int):GoInt
		return x;



	@:op(A + B) private static function add(a:GoInt, b:GoInt):GoInt;

	@:op(A / B) private static function div(a:GoInt,b:GoInt):GoInt
		return Std.int(a.toBasic() / b.toBasic());

	@:op(A * B) private static function mul(a:GoInt, b:GoInt):GoInt;

	@:op(A % B) private static function mod(a:GoInt, b:GoInt):GoInt;

	@:op(A - B) private static function sub(a:GoInt, b:GoInt):GoInt;


	@:op(A | B) private static function or(a:GoInt, b:GoInt):GoInt;


	@:op(A ^ B) private static function xor(a:GoInt, b:GoInt):GoInt;


	@:op(A & B) private static function and(a:GoInt, b:GoInt):GoInt;

	@:op(A >> B) private static function shr(a:GoInt,b:GoInt):GoInt
		return a.toBasic() >> b.toBasic();
	@:op(A << B) private static function shl(a:GoInt,b:GoInt):GoInt
		return a.toBasic() << b.toBasic();
	@:op(A >>> B) private static function ushr(a:GoInt,b:GoInt):GoInt
		return a.toBasic() << b.toBasic();

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




}

abstract GoUInt(Int) from Int {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint";

	public static function ofInt(x:Int):GoUInt
		return x;

	@:op(A + B) private static function add(a:GoUInt, b:GoUInt):GoUInt;

	@:op(A >> B) private static function shr(a:GoUInt,b:GoUInt):GoUInt
		return a.toBasic() >> b.toBasic();
	@:op(A << B) private static function shl(a:GoUInt,b:GoUInt):GoUInt
		return a.toBasic() << b.toBasic();

	@:op(A * B) private static function mul(a:GoUInt, b:GoUInt):GoUInt;

	@:op(A / B) private static function mul(a:GoUInt, b:GoUInt):GoUInt
		return Std.int(a.toBasic() / b.toBasic());

	@:op(A % B) private static function modI(a:GoUInt, b:Int):GoUInt;

	@:op(A % B) private static function modF(a:GoUInt, b:Float):Float;

	@:op(A % B) private static function mod(a:GoUInt, b:GoUInt):GoUInt;

	@:op(A - B) private static function subI(a:GoUInt, b:Int):GoUInt;

	@:op(A - B) private static function subF(a:GoUInt, b:Float):Float;

	@:op(A - B) private static function sub(a:GoUInt, b:GoUInt):GoUInt;


	@:op(A | B) private static function or(a:GoUInt, b:GoUInt):GoUInt;


	@:op(A ^ B) private static function xor(a:GoUInt, b:GoUInt):GoUInt;


	@:op(A & B) private static function and(a:GoUInt, b:GoUInt):GoUInt;

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

	@:op(~A) private static function bneg(t:GoUInt):GoUInt;





	// TODO: clamp uint, increase number range
}

abstract GoInt8(Int8) from Int8 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	public static function ofInt(x:Int):GoInt8
		return x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public inline function _typeName_()
		return "int8";

	@:op(A > B) private static function gt(a:GoInt8, b:GoInt8):Bool;

	@:op(A >= B) private static function gte(a:GoInt8, b:GoInt8):Bool;

	@:op(A < B) private static function lt(a:GoInt8, b:GoInt8):Bool;

	@:op(A <= B) private static function lte(a:GoInt8, b:GoInt8):Bool;

	@:op(A >> B) private static function shr(a:GoInt8,b:GoInt8):GoInt8
		return a.toBasic() >> b.toBasic();
	@:op(A << B) private static function shl(a:GoInt8,b:GoInt8):GoInt8
		return a.toBasic() << b.toBasic();
	@:op(A >>> B) private static function ushr(a:GoInt8,b:GoInt8):GoInt8
		return a.toBasic() << b.toBasic();

	@:op(A + B) private static function add(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() + b.toBasic());
	@:op(A - B) private static function sub(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() - b.toBasic());
	@:op(A * B) private static function mul(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() - b.toBasic());
	@:op(A & B) private static function and(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() & b.toBasic());
	@:op(A | B) private static function or(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() | b.toBasic());
	@:op(A ^ B) private static function xor(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() ^ b.toBasic());
	@:op(A % B) private static function mod(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() % b.toBasic());

	@:op(A > B) private static function gt(a:GoInt8,b:GoInt8):Bool
		return a.toBasic() > b.toBasic();
	@:op(A >= B) private static function gte(a:GoInt8,b:GoInt8):Bool
		return a.toBasic() >= b.toBasic();
	@:op(A < B) private static function lt(a:GoInt8,b:GoInt8):Bool
		return a.toBasic() < b.toBasic();
	@:op(A <= B) private static function lte(a:GoInt8,b:GoInt8):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A / B) private static function div(a:GoInt8,b:GoInt8):GoInt8
		return Std.int(a.toBasic() / b.toBasic());
	// TODO: clamp int8
	static function clamp(x:Int):Int {
		var r = x & 0xFF;
		if ((r & 0x80) != 0) {
			return -1 - 0xFF + r;
		}
		return r;
	}
}

abstract GoInt16(Int16) from Int16 {
	public inline function new(x=0)
		this = x;

	public inline function toBasic()
		return this;

	public static function ofInt(x:Int):GoInt16
		return x;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "int16";

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
	
	@:op(A >> B) private static function shr(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() >> b.toBasic());
	@:op(A << B) private static function shl(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() << b.toBasic());
	@:op(A >>> B) private static function ushr(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() << b.toBasic());

	@:op(A + B) private static function add(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() + b.toBasic());
	@:op(A - B) private static function sub(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() - b.toBasic());
	@:op(A * B) private static function mul(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() * b.toBasic());
	@:op(A & B) private static function and(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() & b.toBasic());
	@:op(A | B) private static function or(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() | b.toBasic());
	@:op(A ^ B) private static function xor(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() ^ b.toBasic());
	@:op(A % B) private static function mod(a:GoInt16,b:GoInt16):GoInt16
		return clamp(a.toBasic() % b.toBasic());
	@:op(A / B) private static function div(a:GoInt16,b:GoInt16):GoInt16
		return Std.int(a.toBasic() / b.toBasic());

	@:op(A > B) private static function gt(a:GoInt16,b:GoInt16):Bool
		return a.toBasic() > b.toBasic();
	@:op(A >= B) private static function gte(a:GoInt16,b:GoInt16):Bool
		return a.toBasic() >= b.toBasic();
	@:op(A < B) private static function lt(a:GoInt16,b:GoInt16):Bool
		return a.toBasic() < b.toBasic();
	@:op(A <= B) private static function lte(a:GoInt16,b:GoInt16):Bool
		return a.toBasic() <= b.toBasic();
	static function clamp(x:Int):Int {
		var r = x & 0xFFFF;
		if ((r & 0x8000) != 0) {
			return -1 - 0xFFFF + r;
		}
		return r;
	}
}
@:transitive
abstract IntegerTypeInt(Int) from Int to Int {
	public inline function new(x) {
		this = x;
	}
	function toString():String
		return Std.string(this);
	@:commutative @:op(A + B) private static inline function addInt(a:IntegerTypeInt, b:GoInt):GoInt
		return GoInt.ofInt(a) + b;
	@:op(A - B) private static inline function sublInt(a:IntegerTypeInt, b:GoInt):GoInt
		return GoInt.ofInt(a) - b;
	@:op(A - B) private static inline function subrInt(a:GoInt,b:IntegerTypeInt):GoInt
		return a - GoInt.ofInt(b);
	@:op(A * B) private static inline function mulInt(b:GoInt,a:IntegerTypeInt):GoInt
		return b * GoInt.ofInt(a);
	@:op(A / B) private static inline function divlInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) / b;
	@:op(A / B) private static inline function divrInt(a:GoInt,b:IntegerTypeInt):GoInt
		return b / GoInt.ofInt(b);
	@:commutative @:op(A | B) private static inline function orInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modInt(a:IntegerTypeInt,b:GoInt):GoInt
		return GoInt.ofInt(a) % b;
	@:op(A > B) private static inline function gtlInt(a:IntegerTypeInt,b:GoInt):Bool
		return GoInt.ofInt(a) > b;
	@:op(A > B) private static inline function gtrInt(a:GoInt,b:IntegerTypeInt):Bool
		return a > GoInt.ofInt(b);
	@:op(A >= B) private static inline function gtelInt(a:IntegerTypeInt,b:GoInt):Bool
		return GoInt.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterInt(a:GoInt,b:IntegerTypeInt):Bool
		return a >= GoInt.ofInt(b);
	@:op(A < B) private static inline function ltlInt(a:IntegerTypeInt,b:GoInt):Bool
		return GoInt.ofInt(a) < b;
	@:op(A < B) private static inline function ltrInt(a:GoInt,b:IntegerTypeInt):Bool
		return a < GoInt.ofInt(b);
	@:op(A <= B) private static inline function ltelInt(a:IntegerTypeInt,b:GoInt):Bool
		return GoInt.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterInt(a:GoInt,b:IntegerTypeInt):Bool
		return a <= GoInt.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqInt(a:IntegerTypeInt,b:GoInt):Bool
		return GoInt.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqInt(a:IntegerTypeInt,b:GoInt):Bool
		return GoInt.ofInt(a) == b;


	@:commutative @:op(A + B) private static inline function addInt8(a:IntegerTypeInt, b:GoInt8):GoInt8
		return GoInt8.ofInt(a) + b;
	@:op(A - B) private static inline function sublInt8(a:IntegerTypeInt, b:GoInt8):GoInt8
		return GoInt8.ofInt(a) - b;
	@:op(A - B) private static inline function subrInt8(a:GoInt8,b:IntegerTypeInt):GoInt8
		return a - GoInt8.ofInt(b);
	@:op(A * B) private static inline function mulInt8(b:GoInt8,a:IntegerTypeInt):GoInt8
		return b * GoInt8.ofInt(a);
	@:op(A / B) private static inline function divlInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) / b;
	@:op(A / B) private static inline function divrInt8(a:GoInt8,b:IntegerTypeInt):GoInt8
		return b / GoInt8.ofInt(b);
	@:commutative @:op(A | B) private static inline function orInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modInt8(a:IntegerTypeInt,b:GoInt8):GoInt8
		return GoInt8.ofInt(a) % b;
	@:op(A > B) private static inline function gtlInt8(a:IntegerTypeInt,b:GoInt8):Bool
		return GoInt8.ofInt(a) > b;
	@:op(A > B) private static inline function gtrInt8(a:GoInt8,b:IntegerTypeInt):Bool
		return a > GoInt8.ofInt(b);
	@:op(A >= B) private static inline function gtelInt8(a:IntegerTypeInt,b:GoInt8):Bool
		return GoInt8.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterInt8(a:GoInt8,b:IntegerTypeInt):Bool
		return a >= GoInt8.ofInt(b);
	@:op(A < B) private static inline function ltlInt8(a:IntegerTypeInt,b:GoInt8):Bool
		return GoInt8.ofInt(a) < b;
	@:op(A < B) private static inline function ltrInt8(a:GoInt8,b:IntegerTypeInt):Bool
		return a < GoInt8.ofInt(b);
	@:op(A <= B) private static inline function ltelInt8(a:IntegerTypeInt,b:GoInt8):Bool
		return GoInt8.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterInt8(a:GoInt8,b:IntegerTypeInt):Bool
		return a <= GoInt8.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqInt8(a:IntegerTypeInt,b:GoInt8):Bool
		return GoInt8.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqInt8(a:IntegerTypeInt,b:GoInt8):Bool
		return GoInt8.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addInt16(a:IntegerTypeInt, b:GoInt16):GoInt16
		return GoInt16.ofInt(a) + b;
	@:op(A - B) private static inline function sublInt16(a:IntegerTypeInt, b:GoInt16):GoInt16
		return GoInt16.ofInt(a) - b;
	@:op(A - B) private static inline function subrInt16(a:GoInt16,b:IntegerTypeInt):GoInt16
		return a - GoInt16.ofInt(b);
	@:op(A * B) private static inline function mulInt16(b:GoInt16,a:IntegerTypeInt):GoInt16
		return b * GoInt16.ofInt(a);
	@:op(A / B) private static inline function divlInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) / b;
	@:op(A / B) private static inline function divrInt16(a:GoInt16,b:IntegerTypeInt):GoInt16
		return b / GoInt16.ofInt(b);
	@:commutative @:op(A | B) private static inline function orInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modInt16(a:IntegerTypeInt,b:GoInt16):GoInt16
		return GoInt16.ofInt(a) % b;
	@:op(A > B) private static inline function gtlInt16(a:IntegerTypeInt,b:GoInt16):Bool
		return GoInt16.ofInt(a) > b;
	@:op(A > B) private static inline function gtrInt16(a:GoInt16,b:IntegerTypeInt):Bool
		return a > GoInt16.ofInt(b);
	@:op(A >= B) private static inline function gtelInt16(a:IntegerTypeInt,b:GoInt16):Bool
		return GoInt16.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterInt16(a:GoInt16,b:IntegerTypeInt):Bool
		return a >= GoInt16.ofInt(b);
	@:op(A < B) private static inline function ltlInt16(a:IntegerTypeInt,b:GoInt16):Bool
		return GoInt16.ofInt(a) < b;
	@:op(A < B) private static inline function ltrInt16(a:GoInt16,b:IntegerTypeInt):Bool
		return a < GoInt16.ofInt(b);
	@:op(A <= B) private static inline function ltelInt16(a:IntegerTypeInt,b:GoInt16):Bool
		return GoInt16.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterInt16(a:GoInt16,b:IntegerTypeInt):Bool
		return a <= GoInt16.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqInt16(a:IntegerTypeInt,b:GoInt16):Bool
		return GoInt16.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqInt16(a:IntegerTypeInt,b:GoInt16):Bool
		return GoInt16.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addInt32(a:IntegerTypeInt, b:GoInt32):GoInt32
		return GoInt32.ofInt(a) + b;
	@:op(A - B) private static inline function sublInt32(a:IntegerTypeInt, b:GoInt32):GoInt32
		return GoInt32.ofInt(a) - b;
	@:op(A - B) private static inline function subrInt32(a:GoInt32,b:IntegerTypeInt):GoInt32
		return a - GoInt32.ofInt(b);
	@:op(A * B) private static inline function mulInt32(b:GoInt32,a:IntegerTypeInt):GoInt32
		return b * GoInt32.ofInt(a);
	@:op(A / B) private static inline function divlInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) / b;
	@:op(A / B) private static inline function divrInt32(a:GoInt32,b:IntegerTypeInt):GoInt32
		return b / GoInt32.ofInt(b);
	@:commutative @:op(A | B) private static inline function orInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modInt32(a:IntegerTypeInt,b:GoInt32):GoInt32
		return GoInt32.ofInt(a) % b;
	@:op(A > B) private static inline function gtlInt32(a:IntegerTypeInt,b:GoInt32):Bool
		return GoInt32.ofInt(a) > b;
	@:op(A > B) private static inline function gtrInt32(a:GoInt32,b:IntegerTypeInt):Bool
		return a > GoInt32.ofInt(b);
	@:op(A >= B) private static inline function gtelInt32(a:IntegerTypeInt,b:GoInt32):Bool
		return GoInt32.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterInt32(a:GoInt32,b:IntegerTypeInt):Bool
		return a >= GoInt32.ofInt(b);
	@:op(A < B) private static inline function ltlInt32(a:IntegerTypeInt,b:GoInt32):Bool
		return GoInt32.ofInt(a) < b;
	@:op(A < B) private static inline function ltrInt32(a:GoInt32,b:IntegerTypeInt):Bool
		return a < GoInt32.ofInt(b);
	@:op(A <= B) private static inline function ltelInt32(a:IntegerTypeInt,b:GoInt32):Bool
		return GoInt32.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterInt32(a:GoInt32,b:IntegerTypeInt):Bool
		return a <= GoInt32.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqInt32(a:IntegerTypeInt,b:GoInt32):Bool
		return GoInt32.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqInt32(a:IntegerTypeInt,b:GoInt32):Bool
		return GoInt32.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addInt64(a:IntegerTypeInt, b:GoInt64):GoInt64
		return GoInt64.ofInt(a) + b;
	@:op(A - B) private static inline function sublInt64(a:IntegerTypeInt, b:GoInt64):GoInt64
		return GoInt64.ofInt(a) - b;
	@:op(A - B) private static inline function subrInt64(a:GoInt64,b:IntegerTypeInt):GoInt64
		return a - GoInt64.ofInt(b);
	@:op(A * B) private static inline function mulInt64(b:GoInt64,a:IntegerTypeInt):GoInt64
		return b * GoInt64.ofInt(a);
	@:op(A / B) private static inline function divlInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) / b;
	@:op(A / B) private static inline function divrInt64(a:GoInt64,b:IntegerTypeInt):GoInt64
		return a / GoInt64.ofInt(b);
	@:commutative @:op(A | B) private static inline function orInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modInt64(a:IntegerTypeInt,b:GoInt64):GoInt64
		return GoInt64.ofInt(a) % b;
	@:op(A > B) private static inline function gtlInt64(a:IntegerTypeInt,b:GoInt64):Bool
		return GoInt64.ofInt(a) > b;
	@:op(A > B) private static inline function gtrInt64(a:GoInt64,b:IntegerTypeInt):Bool
		return a > GoInt64.ofInt(b);
	@:op(A >= B) private static inline function gtelInt64(a:IntegerTypeInt,b:GoInt64):Bool
		return GoInt64.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterInt64(a:GoInt64,b:IntegerTypeInt):Bool
		return a >= GoInt64.ofInt(b);
	@:op(A < B) private static inline function ltlInt64(a:IntegerTypeInt,b:GoInt64):Bool
		return GoInt64.ofInt(a) < b;
	@:op(A < B) private static inline function ltrInt64(a:GoInt64,b:IntegerTypeInt):Bool
		return a < GoInt64.ofInt(b);
	@:op(A <= B) private static inline function ltelInt64(a:IntegerTypeInt,b:GoInt64):Bool
		return GoInt64.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterInt64(a:GoInt64,b:IntegerTypeInt):Bool
		return a <= GoInt64.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqInt64(a:IntegerTypeInt,b:GoInt64):Bool
		return GoInt64.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqInt64(a:IntegerTypeInt,b:GoInt64):Bool
		return GoInt64.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addUInt(a:IntegerTypeInt, b:GoUInt):GoUInt
		return GoUInt.ofInt(a) + b;
	@:op(A - B) private static inline function sublUInt(a:IntegerTypeInt, b:GoUInt):GoUInt
		return GoUInt.ofInt(a) - b;
	@:op(A - B) private static inline function subrUInt(a:GoUInt,b:IntegerTypeInt):GoUInt
		return a - GoUInt.ofInt(b);
	@:op(A * B) private static inline function mulUInt(b:GoUInt,a:IntegerTypeInt):GoUInt
		return b * GoUInt.ofInt(a);
	@:op(A / B) private static inline function divlUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) / b;
	@:op(A / B) private static inline function divrUInt(a:GoUInt,b:IntegerTypeInt):GoUInt
		return b / GoUInt.ofInt(b);
	@:commutative @:op(A | B) private static inline function orUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modUInt(a:IntegerTypeInt,b:GoUInt):GoUInt
		return GoUInt.ofInt(a) % b;
	@:op(A > B) private static inline function gtlUInt(a:IntegerTypeInt,b:GoUInt):Bool
		return GoUInt.ofInt(a) > b;
	@:op(A > B) private static inline function gtrUInt(a:GoUInt,b:IntegerTypeInt):Bool
		return a > GoUInt.ofInt(b);
	@:op(A >= B) private static inline function gtelUInt(a:IntegerTypeInt,b:GoUInt):Bool
		return GoUInt.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterUInt(a:GoUInt,b:IntegerTypeInt):Bool
		return a >= GoUInt.ofInt(b);
	@:op(A < B) private static inline function ltlUInt(a:IntegerTypeInt,b:GoUInt):Bool
		return GoUInt.ofInt(a) < b;
	@:op(A < B) private static inline function ltrUInt(a:GoUInt,b:IntegerTypeInt):Bool
		return a < GoUInt.ofInt(b);
	@:op(A <= B) private static inline function ltelUInt(a:IntegerTypeInt,b:GoUInt):Bool
		return GoUInt.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterUInt(a:GoUInt,b:IntegerTypeInt):Bool
		return a <= GoUInt.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqUInt(a:IntegerTypeInt,b:GoUInt):Bool
		return GoUInt.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqUInt(a:IntegerTypeInt,b:GoUInt):Bool
		return GoUInt.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addUInt8(a:IntegerTypeInt, b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) + b;
	@:op(A - B) private static inline function sublUInt8(a:IntegerTypeInt, b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) - b;
	@:op(A - B) private static inline function subrUInt8(a:GoUInt8,b:IntegerTypeInt):GoUInt8
		return a - GoUInt8.ofInt(b);
	@:op(A * B) private static inline function mulUInt8(b:GoUInt8,a:IntegerTypeInt):GoUInt8
		return b * GoUInt8.ofInt(a);
	@:op(A / B) private static inline function divlUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) / b;
	@:op(A / B) private static inline function divrUInt8(a:GoUInt8,b:IntegerTypeInt):GoUInt8
		return a / GoUInt8.ofInt(b);
	@:commutative @:op(A | B) private static inline function orUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modUInt8(a:IntegerTypeInt,b:GoUInt8):GoUInt8
		return GoUInt8.ofInt(a) % b;
	@:op(A > B) private static inline function gtlUInt8(a:IntegerTypeInt,b:GoUInt8):Bool
		return GoUInt8.ofInt(a) > b;
	@:op(A > B) private static inline function gtrUInt8(a:GoUInt8,b:IntegerTypeInt):Bool
		return a > GoUInt8.ofInt(b);
	@:op(A >= B) private static inline function gtelUInt8(a:IntegerTypeInt,b:GoUInt8):Bool
		return GoUInt8.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterUInt8(a:GoUInt8,b:IntegerTypeInt):Bool
		return a >= GoUInt8.ofInt(b);
	@:op(A < B) private static inline function ltlUInt8(a:IntegerTypeInt,b:GoUInt8):Bool
		return GoUInt8.ofInt(a) < b;
	@:op(A < B) private static inline function ltrUInt8(a:GoUInt8,b:IntegerTypeInt):Bool
		return a < GoUInt8.ofInt(b);
	@:op(A <= B) private static inline function ltelUInt8(a:IntegerTypeInt,b:GoUInt8):Bool
		return GoUInt8.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterUInt8(a:GoUInt8,b:IntegerTypeInt):Bool
		return a <= GoUInt8.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqUInt8(a:IntegerTypeInt,b:GoUInt8):Bool
		return GoUInt8.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqUInt8(a:IntegerTypeInt,b:GoUInt8):Bool
		return GoUInt8.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addUInt16(a:IntegerTypeInt, b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) + b;
	@:op(A - B) private static inline function sublUInt16(a:IntegerTypeInt, b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) - b;
	@:op(A - B) private static inline function subrUInt16(a:GoUInt16,b:IntegerTypeInt):GoUInt16
		return a - GoUInt16.ofInt(b);
	@:op(A * B) private static inline function mulUInt16(b:GoUInt16,a:IntegerTypeInt):GoUInt16
		return b * GoUInt16.ofInt(a);
	@:op(A / B) private static inline function divlUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) / b;
	@:op(A / B) private static inline function divrUInt16(a:GoUInt16,b:IntegerTypeInt):GoUInt16
		return b / GoUInt16.ofInt(b);
	@:commutative @:op(A | B) private static inline function orUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modUInt16(a:IntegerTypeInt,b:GoUInt16):GoUInt16
		return GoUInt16.ofInt(a) % b;
	@:op(A > B) private static inline function gtlUInt16(a:IntegerTypeInt,b:GoUInt16):Bool
		return GoUInt16.ofInt(a) > b;
	@:op(A > B) private static inline function gtrUInt16(a:GoUInt16,b:IntegerTypeInt):Bool
		return a > GoUInt16.ofInt(b);
	@:op(A >= B) private static inline function gtelUInt16(a:IntegerTypeInt,b:GoUInt16):Bool
		return GoUInt16.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterUInt16(a:GoUInt16,b:IntegerTypeInt):Bool
		return a >= GoUInt16.ofInt(b);
	@:op(A < B) private static inline function ltlUInt16(a:IntegerTypeInt,b:GoUInt16):Bool
		return GoUInt16.ofInt(a) < b;
	@:op(A < B) private static inline function ltrUInt16(a:GoUInt16,b:IntegerTypeInt):Bool
		return a < GoUInt16.ofInt(b);
	@:op(A <= B) private static inline function ltelUInt16(a:IntegerTypeInt,b:GoUInt16):Bool
		return GoUInt16.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterUInt16(a:GoUInt16,b:IntegerTypeInt):Bool
		return a <= GoUInt16.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqUInt16(a:IntegerTypeInt,b:GoUInt16):Bool
		return GoUInt16.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqUInt16(a:IntegerTypeInt,b:GoUInt16):Bool
		return GoUInt16.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addUInt32(a:IntegerTypeInt, b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) + b;
	@:op(A - B) private static inline function sublUInt32(a:IntegerTypeInt, b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) - b;
	@:op(A - B) private static inline function subrUInt32(a:GoUInt32,b:IntegerTypeInt):GoUInt32
		return a - GoUInt32.ofInt(b);
	@:op(A * B) private static inline function mulUInt32(b:GoUInt32,a:IntegerTypeInt):GoUInt32
		return b * GoUInt32.ofInt(a);
	@:op(A / B) private static inline function divlUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) / b;
	@:op(A / B) private static inline function divrUInt32(a:GoUInt32,b:IntegerTypeInt):GoUInt32
		return b / GoUInt32.ofInt(b);
	@:commutative @:op(A | B) private static inline function orUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modUInt32(a:IntegerTypeInt,b:GoUInt32):GoUInt32
		return GoUInt32.ofInt(a) % b;
	@:op(A > B) private static inline function gtlUInt32(a:IntegerTypeInt,b:GoUInt32):Bool
		return GoUInt32.ofInt(a) > b;
	@:op(A > B) private static inline function gtrUInt32(a:GoUInt32,b:IntegerTypeInt):Bool
		return a > GoUInt32.ofInt(b);
	@:op(A >= B) private static inline function gtelUInt32(a:IntegerTypeInt,b:GoUInt32):Bool
		return GoUInt32.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterUInt32(a:GoUInt32,b:IntegerTypeInt):Bool
		return a >= GoUInt32.ofInt(b);
	@:op(A < B) private static inline function ltlUInt32(a:IntegerTypeInt,b:GoUInt32):Bool
		return GoUInt32.ofInt(a) < b;
	@:op(A < B) private static inline function ltrUInt32(a:GoUInt32,b:IntegerTypeInt):Bool
		return a < GoUInt32.ofInt(b);
	@:op(A <= B) private static inline function ltelUInt32(a:IntegerTypeInt,b:GoUInt32):Bool
		return GoUInt32.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterUInt32(a:GoUInt32,b:IntegerTypeInt):Bool
		return a <= GoUInt32.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqUInt32(a:IntegerTypeInt,b:GoUInt32):Bool
		return GoUInt32.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqUInt32(a:IntegerTypeInt,b:GoUInt32):Bool
		return GoUInt32.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addUInt64(a:IntegerTypeInt, b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) + b;
	@:op(A - B) private static inline function sublUInt64(a:IntegerTypeInt, b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) - b;
	@:op(A - B) private static inline function subrUInt64(a:GoUInt64,b:IntegerTypeInt):GoUInt64
		return a - GoUInt64.ofInt(b);
	@:op(A * B) private static inline function mulUInt64(b:GoUInt64,a:IntegerTypeInt):GoUInt64
		return b * GoUInt64.ofInt(a);
	@:op(A / B) private static inline function divlUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) / b;
	@:op(A / B) private static inline function divrUInt64(a:GoUInt64,b:IntegerTypeInt):GoUInt64
		return b / GoUInt64.ofInt(b);
	@:commutative @:op(A | B) private static inline function orUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modUInt64(a:IntegerTypeInt,b:GoUInt64):GoUInt64
		return GoUInt64.ofInt(a) % b;
	@:op(A > B) private static inline function gtlUInt64(a:IntegerTypeInt,b:GoUInt64):Bool
		return GoUInt64.ofInt(a) > b;
	@:op(A > B) private static inline function gtrUInt64(a:GoUInt64,b:IntegerTypeInt):Bool
		return a > GoUInt64.ofInt(b);
	@:op(A >= B) private static inline function gtelUInt64(a:IntegerTypeInt,b:GoUInt64):Bool
		return GoUInt64.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterUInt64(a:GoUInt64,b:IntegerTypeInt):Bool
		return a >= GoUInt64.ofInt(b);
	@:op(A < B) private static inline function ltlUInt64(a:IntegerTypeInt,b:GoUInt64):Bool
		return GoUInt64.ofInt(a) < b;
	@:op(A < B) private static inline function ltrUInt64(a:GoUInt64,b:IntegerTypeInt):Bool
		return a < GoUInt64.ofInt(b);
	@:op(A <= B) private static inline function ltelUInt64(a:IntegerTypeInt,b:GoUInt64):Bool
		return GoUInt64.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterUInt64(a:GoUInt64,b:IntegerTypeInt):Bool
		return a <= GoUInt64.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqUInt64(a:IntegerTypeInt,b:GoUInt64):Bool
		return GoUInt64.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqUInt64(a:IntegerTypeInt,b:GoUInt64):Bool
		return GoUInt64.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addComplex64(a:IntegerTypeInt, b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) + b;
	@:op(A - B) private static inline function sublComplex64(a:IntegerTypeInt, b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) - b;
	@:op(A - B) private static inline function subrComplex64(a:GoComplex64,b:IntegerTypeInt):GoComplex64
		return a - GoComplex64.ofInt(b);
	@:commutative @:op(A * B) private static inline function mulComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) * b;
	@:op(A / B) private static inline function divlComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) / b;
	@:op(A / B) private static inline function divrComplex64(a:GoComplex64,b:IntegerTypeInt):GoComplex64
		return b / GoComplex64.ofInt(b);
	@:commutative @:op(A | B) private static inline function orComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) & b;
	@:commutative @:op(A >> B) private static inline function shlComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) << b;
	@:commutative @:op(A << B) private static inline function shrComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) << b;
	@:commutative @:op(A % B) private static inline function modComplex64(a:IntegerTypeInt,b:GoComplex64):GoComplex64
		return GoComplex64.ofInt(a) % b;
	@:op(A > B) private static inline function gtlComplex64(a:IntegerTypeInt,b:GoComplex64):Bool
		return GoComplex64.ofInt(a) > b;
	@:op(A > B) private static inline function gtrComplex64(a:GoComplex64,b:IntegerTypeInt):Bool
		return a > GoComplex64.ofInt(b);
	@:op(A >= B) private static inline function gtelComplex64(a:IntegerTypeInt,b:GoComplex64):Bool
		return GoComplex64.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterComplex64(a:GoComplex64,b:IntegerTypeInt):Bool
		return a >= GoComplex64.ofInt(b);
	@:op(A < B) private static inline function ltlComplex64(a:IntegerTypeInt,b:GoComplex64):Bool
		return GoComplex64.ofInt(a) < b;
	@:op(A < B) private static inline function ltrComplex64(a:GoComplex64,b:IntegerTypeInt):Bool
		return a < GoComplex64.ofInt(b);
	@:op(A <= B) private static inline function ltelComplex64(a:IntegerTypeInt,b:GoComplex64):Bool
		return GoComplex64.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterComplex64(a:GoComplex64,b:IntegerTypeInt):Bool
		return a <= GoComplex64.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqComplex64(a:IntegerTypeInt,b:GoComplex64):Bool
		return GoComplex64.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqComplex64(a:IntegerTypeInt,b:GoComplex64):Bool
		return GoComplex64.ofInt(a) == b;

	@:commutative @:op(A + B) private static inline function addComplex128(a:IntegerTypeInt, b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) + b;
	@:op(A - B) private static inline function sublComplex128(a:IntegerTypeInt, b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) - b;
	@:op(A - B) private static inline function subrComplex128(a:GoComplex128,b:IntegerTypeInt):GoComplex128
		return a - GoComplex128.ofInt(b);
	@:op(A * B) private static inline function mulComplex128(b:GoComplex128,a:IntegerTypeInt):GoComplex128
		return b * GoComplex128.ofInt(a);
	@:op(A / B) private static inline function divlComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) / b;
	@:op(A / B) private static inline function divrComplex128(a:GoComplex128,b:IntegerTypeInt):GoComplex128
		return a / GoComplex128.ofInt(b);
	@:commutative @:op(A | B) private static inline function orComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) | b;
	@:commutative @:op(A ^ B) private static inline function xorComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) ^ b;
	@:commutative @:op(A & B) private static inline function andComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) & b;
	@:commutative @:op(A << B) private static inline function shlComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) << b;
	@:commutative @:op(A >> B) private static inline function shrComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) >> b;
	@:commutative @:op(A % B) private static inline function modComplex128(a:IntegerTypeInt,b:GoComplex128):GoComplex128
		return GoComplex128.ofInt(a) % b;
	@:op(A > B) private static inline function gtlComplex128(a:IntegerTypeInt,b:GoComplex128):Bool
		return GoComplex128.ofInt(a) > b;
	@:op(A > B) private static inline function gtrComplex128(a:GoComplex128,b:IntegerTypeInt):Bool
		return a > GoComplex128.ofInt(b);
	@:op(A >= B) private static inline function gtelComplex128(a:IntegerTypeInt,b:GoComplex128):Bool
		return GoComplex128.ofInt(a) >= b;
	@:op(A >= B) private static inline function gterComplex128(a:GoComplex128,b:IntegerTypeInt):Bool
		return a >= GoComplex128.ofInt(b);
	@:op(A < B) private static inline function ltlComplex128(a:IntegerTypeInt,b:GoComplex128):Bool
		return GoComplex128.ofInt(a) < b;
	@:op(A < B) private static inline function ltrComplex128(a:GoComplex128,b:IntegerTypeInt):Bool
		return a < GoComplex128.ofInt(b);
	@:op(A <= B) private static inline function ltelComplex128(a:IntegerTypeInt,b:GoComplex128):Bool
		return GoComplex128.ofInt(a) <= b;
	@:op(A <= B) private static inline function lterComplex128(a:GoComplex128,b:IntegerTypeInt):Bool
		return a <= GoComplex128.ofInt(b);
	@:commutative @:op(A != B) private static inline function neqComplex128(a:IntegerTypeInt,b:GoComplex128):Bool
		return GoComplex128.ofInt(a) != b;
	@:commutative @:op(A == B) private static inline function eqComplex128(a:IntegerTypeInt,b:GoComplex128):Bool
		return GoComplex128.ofInt(a) == b;
}
abstract IntegerTypeInt64(Int64) {
	public inline function new(x) {
		this = x;
	}
	@:from public static inline function ofString(x:String) {
		try {
			return new IntegerTypeInt64(Int64.parseString(x));
		}catch(e) {
			trace("integer type from string error: " + e);
			return new IntegerTypeInt64(Int64.make(0,0));
		}
	}
	function toString()
		return @:privateAccess this.toString();
}

abstract IntegerTypeInt128(GoComplex128) from GoComplex128 to GoComplex128 {
	public inline function new(x) {
		this = x;
	}
	@:from public static inline function ofString(x:String):IntegerTypeInt128 {
		try {
			return GoComplex128.parseString(x);
		}catch(e) {
			trace("integer type from string error: " + e);
			return  GoComplex128.ofInt(0);
		}
	}
	function toString()
		return @:privateAccess this.toString();
}

abstract GoInt64(Int64) from Int64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	function toString()
		return haxe.Int64.toStr(this);

	public inline function _typeName_()
		return "int64";

	public static inline function ofInt(x:Int):GoInt64
		return (Int64.make(x >> 31, x) : GoInt64);

	@:op(A >> B) private static function shr(a:GoInt64,b:GoInt64):GoInt64
		return a.toBasic() >> (b.toBasic().low : Int);
	@:op(A << B) private static function shl(a:GoInt64,b:GoInt64):GoInt64
		return a.toBasic() << (b.toBasic().low : Int);

	@:op(A + B) public static function add(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() + b.toBasic();

	@:op(A * B) public static function mul(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() * b.toBasic();

	@:op(A % B) public static function mod(a:GoInt64, b:GoInt64):GoInt64
		return a.toBasic() % b.toBasic();

	@:op(A / B) public static function div(a:GoInt64, b:GoInt64):GoInt64
		return Int64.div(a.toBasic(),b.toBasic());

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

	@:op(A == B) private static function equals(a:GoInt64,b:GoInt64):Bool
		return Int64.eq(a.toBasic(),b.toBasic());
	@:op(A != B) private static function notEquals(a:GoInt64,b:GoInt64):Bool
		return Int64.neq(a.toBasic(),b.toBasic());
}

abstract GoUInt8(UInt8) from UInt8 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});
	public static inline function ofInt(x:Int)
		return x;
	public inline function _typeName_()
		return "uint8";

	@:op(A > B) private static function gt(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A >= B) private static function gte(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A < B) private static function lt(a:GoUInt8, b:GoUInt8):Bool;

	@:op(A <= B) private static function lte(a:GoUInt8, b:GoUInt8):Bool;

	
@:op(A + B) private static function add(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() + b.toBasic();
@:op(A - B) private static function sub(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() - b.toBasic();
@:op(A * B) private static function mul(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() * b.toBasic();
@:op(A & B) private static function and(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() & b.toBasic();
@:op(A | B) private static function or(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() | b.toBasic();
@:op(A ^ B) private static function xor(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() ^ b.toBasic();
@:op(A % B) private static function mod(a:GoUInt8,b:GoUInt8):GoUInt8
	return a.toBasic() % b.toBasic();
@:op(A / B) private static function div(a:GoUInt8,b:GoUInt8):GoUInt8
    return Std.int(a.toBasic() / b.toBasic());

	@:op(A << B) private static function shl(a:GoUInt8, b:GoUInt8):GoUInt8
		return a.toBasic() << b.toBasic();

	@:op(A >> B) private static function shr(a:GoUInt8, b:GoUInt8):GoUInt8
		return a.toBasic() << b.toBasic();
	// TODO: clamp uint8
	static function clamp(x:Int):Int {
		return x & 0xFF;
	}
}

abstract GoUInt16(UInt16) from UInt16 {
	public inline function new(x=0)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public static function ofInt(x:Int):GoUInt16
		return x;

	public inline function _typeName_()
		return "uint16";

	@:op(A > B) private static function gt(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A >= B) private static function gte(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A < B) private static function lt(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A <= B) private static function lte(a:GoUInt16, b:GoUInt16):Bool;

	@:op(A >> B) private static function shr(a:GoUInt16,b:GoUInt16):GoUInt16
		return a.toBasic() >> b.toBasic();
	@:op(A << B) private static function shl(a:GoUInt16,b:GoUInt16):GoUInt16
		return a.toBasic() << b.toBasic();

	
@:op(A + B) private static function add(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() + b.toBasic();
@:op(A - B) private static function sub(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() - b.toBasic();
@:op(A * B) private static function mul(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() * b.toBasic();
@:op(A & B) private static function and(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() & b.toBasic();
@:op(A | B) private static function or(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() | b.toBasic();
@:op(A ^ B) private static function xor(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() ^ b.toBasic();
@:op(A % B) private static function mod(a:GoUInt16,b:GoUInt16):GoUInt16
	return a.toBasic() % b.toBasic();
@:op(A / B) private static function div(a:GoUInt16,b:GoUInt16):GoUInt16
    return Std.int(a.toBasic() / b.toBasic());
	static function clamp(x:Int):Int {
		return x & 0xFFFF;
	}
}
abstract GoUInt32(UInt32) from UInt32 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;
	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint32";

	public static function ofInt(x:Int):GoUInt32
		return x;

	@:op(A + B) private static function add(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() + b.toBasic();
	@:op(A - B) private static function sub(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() - b.toBasic();
	@:op(A * B) private static function mul(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() * b.toBasic();
	@:op(A / B) private static function div(a:GoUInt32,b:GoUInt32):GoUInt32
		return Std.int(a.toBasic() / b.toBasic());
	@:op(A % B) private static function mod(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() % b.toBasic();
	@:op(A & B) private static function and(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() & b.toBasic();
	@:op(A | B) private static function or(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() | b.toBasic();
	@:op(A ^ B) private static function xor(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() ^ b.toBasic();
	@:op(A >> B) private static function shr(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() >> b.toBasic();
	@:op(A << B) private static function shl(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() << b.toBasic();
	@:op(A >>> B) private static function ushr(a:GoUInt32,b:GoUInt32):GoUInt32
		return a.toBasic() << b.toBasic();

	@:op(A > B) private static function gt(a:GoUInt32,b:GoUInt32):Bool
		return a.toBasic() > b.toBasic();
	@:op(A >= B) private static function gte(a:GoUInt32,b:GoUInt32):Bool
		return a.toBasic() >= b.toBasic();
	@:op(A < B) private static function lt(a:GoUInt32,b:GoUInt32):Bool
		return a.toBasic() < b.toBasic();
	@:op(A <= B) private static function lte(a:GoUInt32,b:GoUInt32):Bool
		return a.toBasic() <= b.toBasic();

}


abstract GoUInt64(UInt64) from UInt64 {
	public inline function new(x)
		this = x;
	public inline function toBasic()
		return this;

	@:to inline function __promote()
		return new AnyInterface({value: this, typeName: _typeName_()});

	public inline function _typeName_()
		return "uint64";

	@:from public static inline function ofInt(x:Int):GoUInt64 {
		return new GoUInt64(UInt64.ofInt(x));
	}

	@:from public static inline function ofFloat(x:Float):GoUInt64 {
		return (Std.int(x) : GoUInt64);
	}

	@:op(A > B) private static function gt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() > b.toBasic();

	@:op(A >= B) private static function gte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() >= b.toBasic();

	@:op(A < B) private static function lt(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() < b.toBasic();

	@:op(A <= B) private static function lte(a:GoUInt64, b:GoUInt64):Bool
		return a.toBasic() <= b.toBasic();

	@:op(A << B) private static function shl(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() << (b.toBasic().low : Int);
	@:op(A >> B) private static function shr(a:GoUInt64, b:GoUInt64):GoUInt64
		return a.toBasic() >> (b.toBasic().low : Int);

	
@:op(A + B) private static function add(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() + b.toBasic();
@:op(A - B) private static function sub(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() - b.toBasic();
@:op(A * B) private static function mul(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() * b.toBasic();
@:op(A & B) private static function and(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() & b.toBasic();
@:op(A | B) private static function or(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() | b.toBasic();
@:op(A ^ B) private static function xor(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() ^ b.toBasic();
@:op(A % B) private static function mod(a:GoUInt64,b:GoUInt64):GoUInt64
	return a.toBasic() % b.toBasic();
@:op(A / B) private static function div(a:GoUInt64,b:GoUInt64):GoUInt64
    return Int64.div(a.toBasic(), b.toBasic());
}
interface StructType {
	public final _typeName_:String;
	public var _address_:Int;
	public var _is_pointer_:Bool;
}
interface Error {
	public function error():String;
}

abstract AnyInterface({value:Any, typeName:String}) {
	public inline function new(obj=null) {
		this = obj;
	}

	@:to private inline function to<T>() {
		return (this.value : T);
	}

	@:from private static inline function from<T>(x:T) {
		if (x == null)
			return new AnyInterface({value: null,typeName: "null"});
		return new AnyInterface({value: x, typeName: "unknown"});
	}

	public inline function typeName() {
		return this.typeName;
	}

	public inline function value() {
		return this.value;
	}
}

interface ArrayAccess<T> {
	function get(i:Int):T;
	function set(i:Int, value:T):T;
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