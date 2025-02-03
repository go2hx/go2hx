package stdgo.runtime;
private function set_write(v:(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.GoUIntptr, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_write.write = v;
        return v;
    }
