package stdgo.os;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errInvalid.errInvalid = (v : stdgo.Error);
        return v;
    }
