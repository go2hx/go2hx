package stdgo.sync;
private function set_runtime_Semrelease(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void {
        stdgo._internal.sync.Sync_runtime_Semrelease.runtime_Semrelease = v;
        return v;
    }
