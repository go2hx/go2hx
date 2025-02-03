package stdgo.net.http.fcgi;
private function set_errConnClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.fcgi.Fcgi_errConnClosed.errConnClosed = (v : stdgo.Error);
        return v;
    }
