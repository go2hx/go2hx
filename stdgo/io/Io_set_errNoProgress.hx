package stdgo.io;
private function set_errNoProgress(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errNoProgress.errNoProgress = (v : stdgo.Error);
        return v;
    }
