package stdgo.runtime;
private function set_atoi(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_atoi.atoi = v;
        return v;
    }
