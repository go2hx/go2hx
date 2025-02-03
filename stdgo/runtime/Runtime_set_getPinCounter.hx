package stdgo.runtime;
private function set_getPinCounter(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr>):stdgo._internal.unsafe.Unsafe.UnsafePointer -> stdgo.Pointer<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter = v;
        return v;
    }
