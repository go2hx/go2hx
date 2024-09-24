package stdgo.crypto.subtle;
/**
    Package subtle implements functions that are often useful in cryptographic
    code but require careful thought to use correctly.
**/
class Subtle {
    /**
        ConstantTimeCompare returns 1 if the two slices, x and y, have equal contents
        and 0 otherwise. The time taken is a function of the length of the slices and
        is independent of the contents. If the lengths of x and y do not match it
        returns 0 immediately.
    **/
    static public function constantTimeCompare(_x:Array<std.UInt>, _y:Array<std.UInt>):StdTypes.Int {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _y = ([for (i in _y) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_x, _y);
    }
    /**
        ConstantTimeSelect returns x if v == 1 and y if v == 0.
        Its behavior is undefined if v takes any other value.
    **/
    static public function constantTimeSelect(_v:StdTypes.Int, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.crypto.subtle.Subtle_constantTimeSelect.constantTimeSelect(_v, _x, _y);
    }
    /**
        ConstantTimeByteEq returns 1 if x == y and 0 otherwise.
    **/
    static public function constantTimeByteEq(_x:std.UInt, _y:std.UInt):StdTypes.Int {
        return stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_x, _y);
    }
    /**
        ConstantTimeEq returns 1 if x == y and 0 otherwise.
    **/
    static public function constantTimeEq(_x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.crypto.subtle.Subtle_constantTimeEq.constantTimeEq(_x, _y);
    }
    /**
        ConstantTimeCopy copies the contents of y into x (a slice of equal length)
        if v == 1. If v == 0, x is left unchanged. Its behavior is undefined if v
        takes any other value.
    **/
    static public function constantTimeCopy(_v:StdTypes.Int, _x:Array<std.UInt>, _y:Array<std.UInt>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _y = ([for (i in _y) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.subtle.Subtle_constantTimeCopy.constantTimeCopy(_v, _x, _y);
    }
    /**
        ConstantTimeLessOrEq returns 1 if x <= y and 0 otherwise.
        Its behavior is undefined if x or y are negative or > 2**31 - 1.
    **/
    static public function constantTimeLessOrEq(_x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.crypto.subtle.Subtle_constantTimeLessOrEq.constantTimeLessOrEq(_x, _y);
    }
    /**
        XORBytes sets dst[i] = x[i] ^ y[i] for all i < n = min(len(x), len(y)),
        returning n, the number of bytes written to dst.
        If dst does not have length at least n,
        XORBytes panics without writing anything to dst.
    **/
    static public function xorbytes(_dst:Array<std.UInt>, _x:Array<std.UInt>, _y:Array<std.UInt>):StdTypes.Int {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _y = ([for (i in _y) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.subtle.Subtle_xorbytes.xorbytes(_dst, _x, _y);
    }
}
