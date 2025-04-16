package stdgo.crypto.subtle;
/**
    * Package subtle implements functions that are often useful in cryptographic
    * code but require careful thought to use correctly.
**/
class Subtle {
    /**
        * ConstantTimeCompare returns 1 if the two slices, x and y, have equal contents
        * and 0 otherwise. The time taken is a function of the length of the slices and
        * is independent of the contents. If the lengths of x and y do not match it
        * returns 0 immediately.
    **/
    static public inline function constantTimeCompare(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_x, _y);
    /**
        * ConstantTimeSelect returns x if v == 1 and y if v == 0.
        * Its behavior is undefined if v takes any other value.
    **/
    static public inline function constantTimeSelect(_v:stdgo.GoInt, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect(_v, _x, _y);
    /**
        * ConstantTimeByteEq returns 1 if x == y and 0 otherwise.
    **/
    static public inline function constantTimeByteEq(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_x, _y);
    /**
        * ConstantTimeEq returns 1 if x == y and 0 otherwise.
    **/
    static public inline function constantTimeEq(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoInt return stdgo._internal.crypto.subtle.Subtle_constanttimeeq.constantTimeEq(_x, _y);
    /**
        * ConstantTimeCopy copies the contents of y into x (a slice of equal length)
        * if v == 1. If v == 0, x is left unchanged. Its behavior is undefined if v
        * takes any other value.
    **/
    static public inline function constantTimeCopy(_v:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Void stdgo._internal.crypto.subtle.Subtle_constanttimecopy.constantTimeCopy(_v, _x, _y);
    /**
        * ConstantTimeLessOrEq returns 1 if x <= y and 0 otherwise.
        * Its behavior is undefined if x or y are negative or > 2**31 - 1.
    **/
    static public inline function constantTimeLessOrEq(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return stdgo._internal.crypto.subtle.Subtle_constanttimelessoreq.constantTimeLessOrEq(_x, _y);
    /**
        * XORBytes sets dst[i] = x[i] ^ y[i] for all i < n = min(len(x), len(y)),
        * returning n, the number of bytes written to dst.
        * If dst does not have length at least n,
        * XORBytes panics without writing anything to dst.
    **/
    static public inline function xORBytes(_dst:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_dst, _x, _y);
}
