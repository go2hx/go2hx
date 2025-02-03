package stdgo.runtime;
private function set_atomicVariables(v:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        stdgo._internal.runtime.Runtime_atomicVariables.atomicVariables = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
