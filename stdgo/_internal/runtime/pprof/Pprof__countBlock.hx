package stdgo._internal.runtime.pprof;
function _countBlock():stdgo.GoInt {
        var __tmp__ = stdgo._internal.runtime.Runtime_blockProfile.blockProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_BlockProfileRecord.BlockProfileRecord>)), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        return _n;
    }