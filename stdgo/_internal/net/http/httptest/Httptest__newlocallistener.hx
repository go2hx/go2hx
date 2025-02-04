package stdgo._internal.net.http.httptest;
function _newLocalListener():stdgo._internal.net.Net_listener.Listener {
        if (stdgo._internal.net.http.httptest.Httptest__serveflag._serveFlag != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), stdgo._internal.net.http.httptest.Httptest__serveflag._serveFlag?.__copy__()), _l:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: failed to listen on %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.httptest.Httptest__serveflag._serveFlag), stdgo.Go.toInterface(_err)));
            };
            return _l;
        };
        var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _l:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                {
                    var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp6" : stdgo.GoString), ("[::1]:0" : stdgo.GoString));
                    _l = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: failed to listen on a port: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                };
            };
        };
        return _l;
    }
