package stdgo._internal.math.big;
function _allocBytes(_f:() -> Void):stdgo.GoUInt64 {
        var _stats:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_stats) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
        var _t = (_stats.totalAlloc : stdgo.GoUInt64);
        _f();
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_stats) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
        return (_stats.totalAlloc - _t : stdgo.GoUInt64);
    }
