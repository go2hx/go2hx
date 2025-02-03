package stdgo.runtime;
private function set_cgoCheckPointer(v:(stdgo.AnyInterface, stdgo.AnyInterface) -> Void):(stdgo.AnyInterface, stdgo.AnyInterface) -> Void {
        stdgo._internal.runtime.Runtime_cgoCheckPointer.cgoCheckPointer = v;
        return v;
    }
