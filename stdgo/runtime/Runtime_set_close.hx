package stdgo.runtime;
private function set_close(v:stdgo.GoInt32 -> stdgo.GoInt32):stdgo.GoInt32 -> stdgo.GoInt32 {
        stdgo._internal.runtime.Runtime_close.close = v;
        return v;
    }
