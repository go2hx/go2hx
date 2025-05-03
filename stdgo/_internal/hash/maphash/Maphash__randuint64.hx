package stdgo._internal.hash.maphash;
function _randUint64():stdgo.GoUInt64 {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.rand.Rand_read.read(_buf);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash_purego.go#L28"
        return stdgo._internal.hash.maphash.Maphash__leuint64._leUint64(_buf);
    }
