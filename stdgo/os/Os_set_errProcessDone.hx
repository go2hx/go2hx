package stdgo.os;
private function set_errProcessDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errProcessDone.errProcessDone = (v : stdgo.Error);
        return v;
    }
