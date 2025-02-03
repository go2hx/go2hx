package stdgo.time;
private function set_tzsetOffset(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time_tzsetOffset.tzsetOffset = v;
        return v;
    }
