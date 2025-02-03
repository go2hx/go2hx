package stdgo.os;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errNoDeadline.errNoDeadline = (v : stdgo.Error);
        return v;
    }
