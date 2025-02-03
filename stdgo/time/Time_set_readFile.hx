package stdgo.time;
private function set_readFile(v:stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_readFile.readFile = v;
        return v;
    }
