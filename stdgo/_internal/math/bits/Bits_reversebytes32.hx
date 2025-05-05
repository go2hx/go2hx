package stdgo._internal.math.bits;
function reverseBytes32(_x:stdgo.GoUInt32):stdgo.GoUInt32 {
        {};
        _x = (((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (16711935u32 : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_x & (16711935u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L286"
        return ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_x << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
