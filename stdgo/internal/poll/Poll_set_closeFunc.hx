package stdgo.internal.poll;
private function set_closeFunc(v:stdgo.GoInt -> stdgo.Error):stdgo.GoInt -> stdgo.Error {
        stdgo._internal.internal.poll.Poll_closeFunc.closeFunc = v;
        return v;
    }
