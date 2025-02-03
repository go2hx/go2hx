package stdgo.runtime;
private function set_memclrNoHeapPointers(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> Void {
        stdgo._internal.runtime.Runtime_memclrNoHeapPointers.memclrNoHeapPointers = v;
        return v;
    }
