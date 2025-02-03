package stdgo.net.http;
private function set_errAbortHandler(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errAbortHandler.errAbortHandler = (v : stdgo.Error);
        return v;
    }
