package stdgo.runtime;
private function set_memmove(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memmove.memmove = v;
        return v;
    }
