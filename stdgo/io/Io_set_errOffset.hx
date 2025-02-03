package stdgo.io;
private function set_errOffset(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errOffset.errOffset = (v : stdgo.Error);
        return v;
    }
