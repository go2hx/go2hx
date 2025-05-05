package stdgo._internal.math.bits;
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L584"
        return ((((((_hi : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo : stdgo.GoUInt64) : stdgo.GoUInt64)) % (_y : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
