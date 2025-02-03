package stdgo.runtime;
private function set_memProfileRate(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.runtime.Runtime_memProfileRate.memProfileRate = (v : stdgo.GoInt);
        return v;
    }
