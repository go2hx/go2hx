package stdgo.runtime;
private function set_fmul64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fmul64.fmul64 = v;
        return v;
    }
