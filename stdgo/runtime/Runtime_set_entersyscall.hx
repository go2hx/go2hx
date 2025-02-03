package stdgo.runtime;
private function set_entersyscall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_entersyscall.entersyscall = v;
        return v;
    }
