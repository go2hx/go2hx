package stdgo._internal.hash.maphash;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.math.bits.Bits;
function _r8(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        return stdgo._internal.hash.maphash.Maphash__leUint64._leUint64(_p);
    }
