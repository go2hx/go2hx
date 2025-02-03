package stdgo.net;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errClosed.errClosed = (v : stdgo.Error);
        return v;
    }
