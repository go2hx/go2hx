package stdgo.net.http;
private function set_defaultServeMux(v:ServeMux):ServeMux {
        stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux = (v : stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>);
        return v;
    }
