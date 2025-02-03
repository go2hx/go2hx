package stdgo.runtime;
private function set_physHugePageSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.runtime.Runtime_physHugePageSize.physHugePageSize = (v : stdgo.GoUIntptr);
        return v;
    }
