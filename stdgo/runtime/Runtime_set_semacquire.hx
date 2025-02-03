package stdgo.runtime;
private function set_semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void {
        stdgo._internal.runtime.Runtime_semacquire.semacquire = v;
        return v;
    }
