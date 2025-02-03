package stdgo.runtime;
private function set_memHash(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memHash.memHash = v;
        return v;
    }
