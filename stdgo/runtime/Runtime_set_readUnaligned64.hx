package stdgo.runtime;
private function set_readUnaligned64(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.GoUInt64 {
        stdgo._internal.runtime.Runtime_readUnaligned64.readUnaligned64 = v;
        return v;
    }
