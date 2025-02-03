package stdgo.runtime;
private function set_atomicFields(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        stdgo._internal.runtime.Runtime_atomicFields.atomicFields = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
