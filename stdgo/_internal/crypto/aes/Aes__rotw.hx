package stdgo._internal.crypto.aes;
function _rotw(_w:stdgo.GoUInt32):stdgo.GoUInt32 {
        return ((_w << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_w >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
