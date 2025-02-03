package stdgo.net.http;
private function set_errHandlerTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errHandlerTimeout.errHandlerTimeout = (v : stdgo.Error);
        return v;
    }
