package stdgo._internal.hash.maphash;
function _randUint64():stdgo.GoUInt64 {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __blank__ = stdgo._internal.crypto.rand.Rand_read.read(_buf);
        return stdgo._internal.hash.maphash.Maphash__leuint64._leUint64(_buf);
    }
