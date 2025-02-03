package stdgo.os.exec;
private function set_errWaitDelay(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.exec.Exec_errWaitDelay.errWaitDelay = (v : stdgo.Error);
        return v;
    }
