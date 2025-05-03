package stdgo._internal.runtime.pprof;
function _countThreadCreate():stdgo.GoInt {
        var __tmp__ = stdgo._internal.runtime.Runtime_threadcreateprofile.threadCreateProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>)), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L668"
        return _n;
    }
