package stdgo.net.http;
private function set_defaultTransport(v:RoundTripper):RoundTripper {
        stdgo._internal.net.http.Http_defaultTransport.defaultTransport = v;
        return v;
    }
