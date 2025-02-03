package stdgo.runtime;
private function set_useAeshash(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.runtime.Runtime_useAeshash.useAeshash = v;
        return v;
    }
