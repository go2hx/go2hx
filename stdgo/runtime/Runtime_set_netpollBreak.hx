package stdgo.runtime;
private function set_netpollBreak(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_netpollBreak.netpollBreak = v;
        return v;
    }
