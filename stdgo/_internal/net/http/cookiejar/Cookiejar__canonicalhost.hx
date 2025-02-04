package stdgo._internal.net.http.cookiejar;
function _canonicalHost(_host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        if (stdgo._internal.net.http.cookiejar.Cookiejar__hasport._hasPort(_host?.__copy__())) {
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_host?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
        };
        _host = stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__();
        var __tmp__ = stdgo._internal.net.http.cookiejar.Cookiejar__toascii._toASCII(_host?.__copy__()), _encoded:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_tolower.toLower(_encoded?.__copy__()), _lower:stdgo.GoString = __tmp__._0, __0:Bool = __tmp__._1;
        return { _0 : _lower?.__copy__(), _1 : (null : stdgo.Error) };
    }
