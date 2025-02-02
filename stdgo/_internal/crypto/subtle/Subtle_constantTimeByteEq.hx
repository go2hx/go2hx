package stdgo._internal.crypto.subtle;
function constantTimeByteEq(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt {
        return ((((((_x ^ _y : stdgo.GoUInt8) : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt);
    }
