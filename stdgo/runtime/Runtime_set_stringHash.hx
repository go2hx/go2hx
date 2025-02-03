package stdgo.runtime;
private function set_stringHash(v:(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoString, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_stringHash.stringHash = v;
        return v;
    }
