package stdgo.debug.plan9obj;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.plan9obj.Plan9obj_errNoSymbols.errNoSymbols = (v : stdgo.Error);
        return v;
    }
