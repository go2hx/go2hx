package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
function _canonicalAddr(_url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        var _addr = (_url.hostname()?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__idnaASCII._idnaASCII(_addr?.__copy__()), _v:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _addr = _v?.__copy__();
            };
        };
        var _port = (_url.port()?.__copy__() : stdgo.GoString);
        if (_port == (stdgo.Go.str())) {
            _port = (_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__portMap._portMap[_url.scheme] ?? ("" : stdgo.GoString))?.__copy__();
        };
        return stdgo._internal.net.Net_joinHostPort.joinHostPort(_addr?.__copy__(), _port?.__copy__())?.__copy__();
    }
