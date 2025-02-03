package stdgo.runtime;
private function set_fdiv64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fdiv64.fdiv64 = v;
        return v;
    }
