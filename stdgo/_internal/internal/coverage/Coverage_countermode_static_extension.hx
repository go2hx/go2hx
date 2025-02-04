package stdgo._internal.internal.coverage;
@:keep @:allow(stdgo._internal.internal.coverage.Coverage.CounterMode_asInterface) class CounterMode_static_extension {
    @:keep
    @:tdfield
    static public function string( _cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):stdgo.GoString {
        @:recv var _cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode = _cm;
        {
            final __value__ = _cm;
            if (__value__ == ((1 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                return ("set" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                return ("count" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                return ("atomic" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                return ("regonly" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                return ("testmain" : stdgo.GoString);
            };
        };
        return ("<invalid>" : stdgo.GoString);
    }
}
