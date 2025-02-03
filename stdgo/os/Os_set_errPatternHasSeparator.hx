package stdgo.os;
private function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errPatternHasSeparator.errPatternHasSeparator = (v : stdgo.Error);
        return v;
    }
