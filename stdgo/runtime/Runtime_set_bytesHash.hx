package stdgo.runtime;
private function set_bytesHash(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_bytesHash.bytesHash = v;
        return v;
    }
