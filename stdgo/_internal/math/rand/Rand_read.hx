package stdgo._internal.math.rand;
function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return stdgo._internal.math.rand.Rand__globalRand._globalRand().read(_p);
    }
