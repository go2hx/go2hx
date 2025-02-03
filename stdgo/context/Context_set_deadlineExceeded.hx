package stdgo.context;
private function set_deadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded = (v : stdgo.Error);
        return v;
    }
