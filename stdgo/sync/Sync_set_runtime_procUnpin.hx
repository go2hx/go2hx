package stdgo.sync;
private function set_runtime_procUnpin(v:() -> Void):() -> Void {
        stdgo._internal.sync.Sync_runtime_procUnpin.runtime_procUnpin = v;
        return v;
    }
