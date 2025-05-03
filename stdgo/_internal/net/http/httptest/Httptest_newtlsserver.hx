package stdgo._internal.net.http.httptest;
function newTLSServer(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> {
        var _ts = stdgo._internal.net.http.httptest.Httptest_newunstartedserver.newUnstartedServer(_handler);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L192"
        _ts.startTLS();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L193"
        return _ts;
    }
