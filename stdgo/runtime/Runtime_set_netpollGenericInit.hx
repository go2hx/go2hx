package stdgo.runtime;
private function set_netpollGenericInit(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollGenericInit.netpollGenericInit = v;
        return v;
    }
