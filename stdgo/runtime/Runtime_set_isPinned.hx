package stdgo.runtime;
private function set_isPinned(v:stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool):stdgo._internal.unsafe.Unsafe.UnsafePointer -> Bool {
        stdgo._internal.runtime.Runtime_isPinned.isPinned = v;
        return v;
    }
