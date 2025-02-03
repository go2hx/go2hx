package stdgo.runtime;
private function set_memHash32(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_memHash32.memHash32 = v;
        return v;
    }
