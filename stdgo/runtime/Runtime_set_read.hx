package stdgo.runtime;
private function set_read(v:(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.GoInt32, stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_read.read = v;
        return v;
    }
