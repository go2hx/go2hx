package stdgo.sync;
private function set_runtime_Semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void {
        stdgo._internal.sync.Sync_runtime_Semacquire.runtime_Semacquire = v;
        return v;
    }
