package stdgo;
// simulate_num define flag
@:dox(hide)
typedef Int8 = Int;
@:dox(hide)
typedef Int16 = Int;
@:dox(hide)
typedef Int32 = haxe.Int32; // #if cpp cpp.Int32 #elseif cs cs.system.Int32 #else haxe.Int32 #end;
@:dox(hide)
typedef Int64 = haxe.Int64;
@:dox(hide)
typedef UInt8 = Int; // #if hl hl.UI8 #elseif cpp cpp.UInt8 #elseif cs cs.UInt8 #else Int #end;
@:dox(hide)
typedef UInt16 = Int;
@:dox(hide)
typedef UInt32 = UInt;
@:dox(hide)
typedef UInt64 = haxe.UInt64;
@:dox(hide)
typedef Float = Float64;
@:dox(hide)
typedef Float64 = #if hl hl.F64; #else StdTypes.Float; #end
@:dox(hide)
typedef Float32 = #if hl hl.F32; #else Float64; #end




@:dox(hide)
function copyInt64(x:Int64):Int64
	return x.copy();
@:dox(hide)
function copyUInt64(x:UInt64):UInt64
	return x.copy();
@:dox(hide)
function ofIntUInt64(x:Int):UInt64 {
	return haxe.UInt64.ofInt(x);
}
@:dox(hide)
function ofUIntUInt64(x:UInt):UInt64 {
	final y:Int = x;
	if (y < 0) {
		var u = haxe.UInt64.ofInt(2147483647);
		u *= 2;
		u += y + 2;
		return u;
	}
	return haxe.UInt64.ofInt(x);
}
@:dox(hide)
function zeroUInt32():UInt32
	return 0;
@:dox(hide)
function oneUInt32():UInt32
	return 1;
@:dox(hide)
function zeroInt64():Int64
	return 0;
@:dox(hide)
function oneInt64():Int64
	return 1;
@:dox(hide)
function zeroUInt64():UInt64
	return 0;
@:dox(hide)
function oneUInt64():UInt64
	return 1;
@:dox(hide)
function ofIntUInt(x:Int):UInt32 {
	return x;
}

// https://github.com/tardisgo/tardisgo/blob/master/haxe/haxeRuntime.go#L2014-L2034
@:dox(hide)
function ofFloatInt64(x:Float):Int64 {
	if (x == 0)
		return haxe.Int64.make(0, 0);
	final isNeg = x < 0;
	if (isNeg)
		x *= -1;
	if (std.Math.isNaN(x))
		return haxe.Int64.fromFloat((isNeg ? -1 : 1) * std.Math.floor(x));
	if (x > 9223372036854775807.0)
		return isNeg ? haxe.Int64.make(0x80000000, 0) : haxe.Int64.make(0x7fffffff, 0xffffffff);
	var res = ofFloatUInt64(x);
	return isNeg ? haxe.Int64.neg(res) : res;
}
@:dox(hide)
function ofFloatUInt64(x:Float):UInt64 {
	if (x < 0.0)
		x += 1;
	if (std.Math.isNaN(x))
		return haxe.Int64.make(0x80000000, 0);
	if (x < 2147483647.0)
		return haxe.Int64.fromFloat(std.Math.floor(x));
	if (x > 18446744073709551615.0)
		return haxe.Int64.make(0xffffffff, 0xffffffff);
	// https://github.com/tardisgo/tardisgo/blob/master/haxe/haxeRuntime.go#L2048-L2058
	var f32:Float = 4294967296.0; // the number of combinations in 32-bits
	var f16:Float = 65536.0; // the number of combinations in 16-bits
	x = std.Math.ffloor(x); // remove any fractional part
	var high:Float = std.Math.ffloor(x / f32);
	var highTop16:Float = std.Math.ffloor(high / f16);
	var highBot16:Float = high - (highTop16 * f16);
	var highBits:Int = std.Math.floor(highTop16) << 16 | std.Math.floor(highBot16);
	var low:Float = x - (high * f32);
	var lowTop16:Float = std.Math.ffloor(low / f16);
	var lowBot16:Float = low - (lowTop16 * f16);
	var lowBits:Int = std.Math.floor(lowTop16) << 16 | std.Math.floor(lowBot16);
	return haxe.Int64.make(highBits, lowBits);
}
@:dox(hide)
function toFloatInt64(x:Int64):Float {
	final i = x;
	return i.high * 4294967296.0 + (i.low >>> 0);
}
@:dox(hide)
function toFloatUInt64(x:UInt64):Float {
	final i = x;
	return i.high * 4294967296.0 + (i.low >>> 0);
}

/**
	Converts an `Int64` to `Float`;
	Implementation by Elliott Stoneham.
 */
/*function toFloatInt64(i:Int64):Float {
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
@:dox(hide)
function toStringInt64(x:Int64):String
	return haxe.Int64.toStr(x);
@:dox(hide)
function toStringUInt64(x:UInt64):String
	return x.toString();
@:dox(hide)
function toIntUInt64(x:UInt64):Int {
	return x.low;
}
@:dox(hide)
function toIntInt64(x:Int64):Int {
	return x.low;
}
@:dox(hide)
function toInt64UInt64(x:UInt64):Int64 {
	return x;
}
@:dox(hide)
function toUInt64Int64(x:Int64):UInt64 {
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

function clampInt16(x:Int):Int {
	x = x & 0xFFFF;
	if (x & 0x8000 != 0)
		return -1 - 0xFFFF + x;
	return x;
}

function clampUInt8(x:Int):Int
	return x & 0xFF;

function clampUInt16(x:Int):Int
	return x & 0xFFFF;

function clampUInt(x:Int):UInt32
	#if js 
		return x >>> js.Syntax.code("0"); // using GopherJS method (with workround to stop it being optimized away by Haxe)
	#else
		return x;
	#end


function shiftGuard(x:Int):Bool
	return x > 0xFF || x < 0;

function clampInt8(x:Int):Int {
	x = x & 0xFF;
	if (x & 0x80 != 0)
		return -1 - 0xFF + x;
	return x;
}

function ofIntInt64(x:Int):Int64 {
	return haxe.Int64.ofInt(x);
}
@:dox(hide)
inline function mulInt(a:Int, b:Int):Int {
	#if js
	final ah = js.Syntax.code('(a >>> 16) & 0xffff');
	final al = js.Syntax.code('a & 0xffff');
	final bh = js.Syntax.code('(b >>> 16) & 0xffff');
	final bl = js.Syntax.code('b & 0xffff');
	return js.Syntax.code('((al * bl) + (((ah * bl + al * bh) << 16) >>> 0) >> 0)');
	#else
	return a * b;
	#end
}

/**
*	uint8       the set of all unsigned  8-bit integers (0 to 255)
*	uint16      the set of all unsigned 16-bit integers (0 to 65535)
*	uint32      the set of all unsigned 32-bit integers (0 to 4294967295)
*	uint64      the set of all unsigned 64-bit integers (0 to 18446744073709551615)
*
*	int8        the set of all signed  8-bit integers (-128 to 127)
*	int16       the set of all signed 16-bit integers (-32768 to 32767)
*	int32       the set of all signed 32-bit integers (-2147483648 to 2147483647)
*	int64       the set of all signed 64-bit integers (-9223372036854775808 to 9223372036854775807)
*
*	float32     the set of all IEEE-754 32-bit floating-point numbers
*	float64     the set of all IEEE-754 64-bit floating-point numbers
*
*	complex64   the set of all complex numbers with float32 real and imaginary parts
*	complex128  the set of all complex numbers with float64 real and imaginary parts
*
*	byte        alias for uint8
*	rune        alias for int32
*/
 class GoNumber {}