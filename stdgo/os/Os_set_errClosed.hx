package stdgo.os;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errClosed.errClosed = (v : stdgo.Error);
        return v;
    }
