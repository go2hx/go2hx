package stdgo._internal.expvar;
function _memstats():stdgo.AnyInterface {
        var _stats = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_memstats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_memstats.MemStats>);
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L365"
        stdgo._internal.runtime.Runtime_readmemstats.readMemStats(_stats);
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L366"
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_stats : stdgo._internal.runtime.Runtime_memstats.MemStats)));
    }
