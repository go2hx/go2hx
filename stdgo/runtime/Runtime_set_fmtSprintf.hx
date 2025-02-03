package stdgo.runtime;
private function set_fmtSprintf(v:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString):(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo.GoString {
        stdgo._internal.runtime.Runtime_fmtSprintf.fmtSprintf = v;
        return v;
    }
