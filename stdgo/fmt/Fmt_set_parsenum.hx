package stdgo.fmt;
private function set_parsenum(v:(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; }):(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        stdgo._internal.fmt.Fmt_parsenum.parsenum = v;
        return v;
    }
