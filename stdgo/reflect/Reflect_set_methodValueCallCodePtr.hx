package stdgo.reflect;
private function set_methodValueCallCodePtr(v:() -> stdgo.GoUIntptr):() -> stdgo.GoUIntptr {
        stdgo._internal.reflect.Reflect_methodValueCallCodePtr.methodValueCallCodePtr = v;
        return v;
    }
