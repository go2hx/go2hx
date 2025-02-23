package stdgo.math;
final maxUintptr : stdgo.GoUIntptr = stdgo._internal.runtime.internal.math.Math_maxuintptr.maxUintptr;
class Math {
    /**
        * MulUintptr returns a * b and whether the multiplication overflowed.
        * On supported platforms this is an intrinsic lowered by the compiler.
    **/
    static public inline function mulUintptr(_a:stdgo.GoUIntptr, _b:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _a = (_a : stdgo.GoUIntptr);
        final _b = (_b : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.internal.math.Math_muluintptr.mulUintptr(_a, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
        * with the product bits' upper half returned in hi and the lower
        * half returned in lo.
        * This is a copy from math/bits.Mul64
        * On supported platforms this is an intrinsic lowered by the compiler.
    **/
    static public inline function mul64(_x:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        final _x = (_x : stdgo.GoUInt64);
        final _y = (_y : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.runtime.internal.math.Math_mul64.mul64(_x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
