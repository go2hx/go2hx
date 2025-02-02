package stdgo._internal.net.http.httptest;
function newTLSServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> {
        var _ts = stdgo._internal.net.http.httptest.Httptest_newUnstartedServer.newUnstartedServer(_handler);
        @:check2r _ts.startTLS();
        return _ts;
    }
