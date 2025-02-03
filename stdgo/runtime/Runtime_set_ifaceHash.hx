package stdgo.runtime;
private function set_ifaceHash(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo.AnyInterface, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_ifaceHash.ifaceHash = v;
        return v;
    }
