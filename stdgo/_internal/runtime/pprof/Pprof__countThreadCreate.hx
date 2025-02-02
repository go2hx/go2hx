package stdgo._internal.runtime.pprof;
function _countThreadCreate():stdgo.GoInt {
        var __tmp__ = stdgo._internal.runtime.Runtime_threadCreateProfile.threadCreateProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>)), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        return _n;
    }
