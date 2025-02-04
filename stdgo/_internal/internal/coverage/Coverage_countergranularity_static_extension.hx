package stdgo._internal.internal.coverage;
@:keep @:allow(stdgo._internal.internal.coverage.Coverage.CounterGranularity_asInterface) class CounterGranularity_static_extension {
    @:keep
    @:tdfield
    static public function string( _cm:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.GoString {
        @:recv var _cm:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity = _cm;
        {
            final __value__ = _cm;
            if (__value__ == ((1 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity))) {
                return ("perblock" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity))) {
                return ("perfunc" : stdgo.GoString);
            };
        };
        return ("<invalid>" : stdgo.GoString);
    }
}
