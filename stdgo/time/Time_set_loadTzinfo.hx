package stdgo.time;
private function set_loadTzinfo(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_loadTzinfo.loadTzinfo = v;
        return v;
    }
