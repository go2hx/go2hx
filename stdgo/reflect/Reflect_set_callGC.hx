package stdgo.reflect;
private function set_callGC(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.reflect.Reflect_callGC.callGC = v;
        return v;
    }
