package stdgo._internal.net.http.httptest;
function newUnstartedServer(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> {
        return (stdgo.Go.setRef(({ listener : stdgo._internal.net.http.httptest.Httptest__newlocallistener._newLocalListener(), config : (stdgo.Go.setRef(({ handler : _handler } : stdgo._internal.net.http.Http_server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>) } : stdgo._internal.net.http.httptest.Httptest_server.Server)) : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
    }
