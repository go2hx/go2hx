package stdgo._internal.net.http;
function _http2lowerHeader(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _lower = ("" : stdgo.GoString), _ascii = false;
        stdgo._internal.net.http.Http__http2buildCommonHeaderMapsOnce._http2buildCommonHeaderMapsOnce();
        {
            var __tmp__ = (stdgo._internal.net.http.Http__http2commonLowerHeader._http2commonLowerHeader != null && stdgo._internal.net.http.Http__http2commonLowerHeader._http2commonLowerHeader.exists(_v?.__copy__()) ? { _0 : stdgo._internal.net.http.Http__http2commonLowerHeader._http2commonLowerHeader[_v?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _lower = _s?.__copy__(), _1 : _ascii = true };
            };
        };
        return {
            var __tmp__ = stdgo._internal.net.http.Http__http2asciiToLower._http2asciiToLower(_v?.__copy__());
            _lower = __tmp__._0;
            _ascii = __tmp__._1;
            __tmp__;
        };
    }
