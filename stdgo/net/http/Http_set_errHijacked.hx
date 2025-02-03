package stdgo.net.http;
private function set_errHijacked(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errHijacked.errHijacked = (v : stdgo.Error);
        return v;
    }
