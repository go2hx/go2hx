package stdgo.runtime;
private function set_nanotime(v:() -> stdgo.GoInt64):() -> stdgo.GoInt64 {
        stdgo._internal.runtime.Runtime_nanotime.nanotime = v;
        return v;
    }
