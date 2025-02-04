package stdgo._internal.runtime.pprof;
function _countHeap():stdgo.GoInt {
        var __tmp__ = stdgo._internal.runtime.Runtime_memprofile.memProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_memprofilerecord.MemProfileRecord>), true), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        return _n;
    }
