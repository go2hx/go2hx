package stdgo.runtime;
private function set_memHash64(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memHash64.memHash64 = v;
        return v;
    }
