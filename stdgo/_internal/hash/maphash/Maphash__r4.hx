package stdgo._internal.hash.maphash;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.math.bits.Bits;
function _r4(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        return (stdgo._internal.hash.maphash.Maphash__leUint32._leUint32(_p) : stdgo.GoUInt64);
    }
