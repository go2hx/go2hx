package stdgo.runtime.internal.math;
var maxUintptr : stdgo.GoUIntptr = 4294967295i64;
class Math {
    /**
        * MulUintptr returns a * b and whether the multiplication overflowed.
        * On supported platforms this is an intrinsic lowered by the compiler.
    **/
    static public inline function mulUintptr(_a:stdgo.GoUIntptr, _b:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return stdgo._internal.runtime.internal.math.Math_muluintptr.mulUintptr(_a, _b);
    /**
        * Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
        * with the product bits' upper half returned in hi and the lower
        * half returned in lo.
        * This is a copy from math/bits.Mul64
        * On supported platforms this is an intrinsic lowered by the compiler.
    **/
    static public inline function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return stdgo._internal.runtime.internal.math.Math_mul64.mul64(_x, _y);
}
