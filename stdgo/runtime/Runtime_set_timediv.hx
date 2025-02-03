package stdgo.runtime;
private function set_timediv(v:(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32):(stdgo.GoInt64, stdgo.GoInt32, stdgo.Pointer<stdgo.GoInt32>) -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_timediv.timediv = v;
        return v;
    }
