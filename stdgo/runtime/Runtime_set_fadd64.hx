package stdgo.runtime;
private function set_fadd64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fadd64.fadd64 = v;
        return v;
    }
