package stdgo.runtime;
private function set_zeroBase(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        stdgo._internal.runtime.Runtime_zeroBase.zeroBase = v;
        return v;
    }
