package stdgo.io.fs;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errInvalid.errInvalid = (v : stdgo.Error);
        return v;
    }
