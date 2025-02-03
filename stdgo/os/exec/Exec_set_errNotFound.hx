package stdgo.os.exec;
private function set_errNotFound(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.exec.Exec_errNotFound.errNotFound = (v : stdgo.Error);
        return v;
    }
