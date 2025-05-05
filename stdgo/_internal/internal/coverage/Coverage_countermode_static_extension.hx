package stdgo._internal.internal.coverage;
@:keep @:allow(stdgo._internal.internal.coverage.Coverage.CounterMode_asInterface) class CounterMode_static_extension {
    @:keep
    @:tdfield
    static public function string( _cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):stdgo.GoString {
        @:recv var _cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode = _cm;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L210"
        {
            final __value__ = _cm;
            if (__value__ == ((1 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L212"
                return ("set" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L214"
                return ("count" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L216"
                return ("atomic" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L218"
                return ("regonly" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L220"
                return ("testmain" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/defs.go#L222"
        return ("<invalid>" : stdgo.GoString);
    }
}
