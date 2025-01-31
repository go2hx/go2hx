package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _rotw(_w:stdgo.GoUInt32):stdgo.GoUInt32 {
        return ((_w << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_w >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
