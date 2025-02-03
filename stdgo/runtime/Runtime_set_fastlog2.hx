package stdgo.runtime;
private function set_fastlog2(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
        stdgo._internal.runtime.Runtime_fastlog2.fastlog2 = v;
        return v;
    }
