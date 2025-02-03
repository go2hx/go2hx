package stdgo.os;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errNotExist.errNotExist = (v : stdgo.Error);
        return v;
    }
