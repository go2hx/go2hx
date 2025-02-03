package stdgo.os;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errExist.errExist = (v : stdgo.Error);
        return v;
    }
