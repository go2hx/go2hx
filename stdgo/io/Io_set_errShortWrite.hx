package stdgo.io;
private function set_errShortWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errShortWrite.errShortWrite = (v : stdgo.Error);
        return v;
    }
