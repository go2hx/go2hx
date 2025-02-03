package stdgo.time;
private function set_tzset(v:(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; }):(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        stdgo._internal.time.Time_tzset.tzset = v;
        return v;
    }
