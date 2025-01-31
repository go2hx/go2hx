package stdgo._internal.hash.maphash;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.math.bits.Bits;
function _rthashString(_s:stdgo.GoString, _state:stdgo.GoUInt64):stdgo.GoUInt64 {
        return stdgo._internal.hash.maphash.Maphash__rthash._rthash((_s : stdgo.Slice<stdgo.GoUInt8>), _state);
    }
