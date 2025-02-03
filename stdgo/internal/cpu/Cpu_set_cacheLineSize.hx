package stdgo.internal.cpu;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.cpu.Cpu_cacheLineSize.cacheLineSize = (v : stdgo.GoUIntptr);
        return v;
    }
