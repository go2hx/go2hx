package stdgo.runtime;
private function set_forceGCPeriod(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        stdgo._internal.runtime.Runtime_forceGCPeriod.forceGCPeriod = v;
        return v;
    }
