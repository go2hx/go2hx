package stdgo.runtime;
private function set_fsub64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_fsub64.fsub64 = v;
        return v;
    }
