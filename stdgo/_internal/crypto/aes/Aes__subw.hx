package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _subw(_w:stdgo.GoUInt32):stdgo.GoUInt32 {
        return (((((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_w >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_w >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_w >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_w & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
