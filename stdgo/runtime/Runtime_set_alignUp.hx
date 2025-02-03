package stdgo.runtime;
private function set_alignUp(v:(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_alignUp.alignUp = v;
        return v;
    }
