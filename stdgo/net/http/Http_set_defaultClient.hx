package stdgo.net.http;
private function set_defaultClient(v:Client):Client {
        stdgo._internal.net.http.Http_defaultClient.defaultClient = (v : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        return v;
    }
