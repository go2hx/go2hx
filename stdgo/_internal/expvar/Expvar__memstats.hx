package stdgo._internal.expvar;
function _memstats():stdgo.AnyInterface {
        var _stats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_stats);
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_stats : stdgo._internal.runtime.Runtime_MemStats.MemStats)));
    }
