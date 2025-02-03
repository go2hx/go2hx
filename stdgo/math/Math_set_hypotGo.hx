package stdgo.math;
private function set_hypotGo(v:(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64):(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 {
        stdgo._internal.math.Math_hypotGo.hypotGo = v;
        return v;
    }
