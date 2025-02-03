package stdgo.os;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errPermission.errPermission = (v : stdgo.Error);
        return v;
    }
