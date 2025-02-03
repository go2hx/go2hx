package stdgo.runtime;
private function set_int64Hash(v:(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUInt64, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int64Hash.int64Hash = v;
        return v;
    }
