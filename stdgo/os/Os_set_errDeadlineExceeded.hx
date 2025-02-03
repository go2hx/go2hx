package stdgo.os;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errDeadlineExceeded.errDeadlineExceeded = (v : stdgo.Error);
        return v;
    }
