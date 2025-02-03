package stdgo.runtime;
private function set_open(v:(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32):(stdgo.Pointer<stdgo.GoUInt8>, stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_open.open = v;
        return v;
    }
