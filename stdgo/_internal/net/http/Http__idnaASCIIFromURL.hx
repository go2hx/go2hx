package stdgo._internal.net.http;
function _idnaASCIIFromURL(_url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        var _addr = (_url.hostname()?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.net.http.Http__idnaASCII._idnaASCII(_addr?.__copy__()), _v:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _addr = _v?.__copy__();
            };
        };
        return _addr?.__copy__();
    }
