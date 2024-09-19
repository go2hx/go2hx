package stdgo._internal.net.http.httptest;
function newServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> {
        var _ts = stdgo._internal.net.http.httptest.Httptest_newUnstartedServer.newUnstartedServer(_handler);
        _ts.start();
        return _ts;
    }
