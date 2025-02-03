package stdgo.runtime;
private function set_physPageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physPageSize.physPageSize = (v : stdgo.GoUIntptr);
        return v;
    }
