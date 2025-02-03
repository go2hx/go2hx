package stdgo.runtime;
private function set_exitsyscall(v:() -> Void):() -> Void {
        stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall = v;
        return v;
    }
