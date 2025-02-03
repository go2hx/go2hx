package stdgo.time;
private function set_parseTimeZone(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.time.Time_parseTimeZone.parseTimeZone = v;
        return v;
    }
