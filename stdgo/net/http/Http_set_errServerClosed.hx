package stdgo.net.http;
private function set_errServerClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errServerClosed.errServerClosed = (v : stdgo.Error);
        return v;
    }
