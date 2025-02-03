package stdgo.sync;
private function set_runtime_procPin(v:() -> stdgo.GoInt):() -> stdgo.GoInt {
        stdgo._internal.sync.Sync_runtime_procPin.runtime_procPin = v;
        return v;
    }
