package stdgo._internal.net.http.httptest;
function newTLSServer(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> {
        var _ts = stdgo._internal.net.http.httptest.Httptest_newunstartedserver.newUnstartedServer(_handler);
        @:check2r _ts.startTLS();
        return _ts;
    }
