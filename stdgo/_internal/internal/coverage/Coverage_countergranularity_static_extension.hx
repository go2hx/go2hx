package stdgo._internal.internal.coverage;
@:keep @:allow(stdgo._internal.internal.coverage.Coverage.CounterGranularity_asInterface) class CounterGranularity_static_extension {
    @:keep
    @:tdfield
    static public function string( _cm:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.GoString {
        @:recv var _cm:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity = _cm;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L255"
        {
            final __value__ = _cm;
            if (__value__ == ((1 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L257"
                return ("perblock" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L259"
                return ("perfunc" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L261"
        return ("<invalid>" : stdgo.GoString);
    }
}
