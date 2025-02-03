package stdgo.context;
private function set_canceled(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context_canceled.canceled = (v : stdgo.Error);
        return v;
    }
