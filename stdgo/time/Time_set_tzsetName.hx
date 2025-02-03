package stdgo.time;
private function set_tzsetName(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time_tzsetName.tzsetName = v;
        return v;
    }
