package stdgo.io;
private function set_errClosedPipe(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errClosedPipe.errClosedPipe = (v : stdgo.Error);
        return v;
    }
