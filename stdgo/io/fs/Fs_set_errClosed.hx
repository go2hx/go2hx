package stdgo.io.fs;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errClosed.errClosed = (v : stdgo.Error);
        return v;
    }
