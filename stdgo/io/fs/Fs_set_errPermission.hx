package stdgo.io.fs;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.fs.Fs_errPermission.errPermission = (v : stdgo.Error);
        return v;
    }
