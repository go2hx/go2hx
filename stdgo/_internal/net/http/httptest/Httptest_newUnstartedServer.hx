package stdgo._internal.net.http.httptest;
function newUnstartedServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> {
        return (stdgo.Go.setRef(({ listener : stdgo._internal.net.http.httptest.Httptest__newLocalListener._newLocalListener(), config : (stdgo.Go.setRef(({ handler : _handler } : stdgo._internal.net.http.Http_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>) } : stdgo._internal.net.http.httptest.Httptest_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
    }
