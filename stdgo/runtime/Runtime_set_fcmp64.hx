package stdgo.runtime;
private function set_fcmp64(v:(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; }):(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoInt32; var _1 : Bool; } {
        stdgo._internal.runtime.Runtime_fcmp64.fcmp64 = v;
        return v;
    }
