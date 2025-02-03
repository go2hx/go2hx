package stdgo.runtime;
private function set_readUnaligned32(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt32 {
        stdgo._internal.runtime.Runtime_readUnaligned32.readUnaligned32 = v;
        return v;
    }
