package stdgo.runtime;
private function set_int32Hash(v:(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUInt32, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_int32Hash.int32Hash = v;
        return v;
    }
