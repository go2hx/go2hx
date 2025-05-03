package stdgo._internal.net.http.httptest;
function newServer(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> {
        var _ts = stdgo._internal.net.http.httptest.Httptest_newunstartedserver.newUnstartedServer(_handler);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L107"
        _ts.start();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L108"
        return _ts;
    }
