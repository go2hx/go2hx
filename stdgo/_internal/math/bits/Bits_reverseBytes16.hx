package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16 {
        return ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_x << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
