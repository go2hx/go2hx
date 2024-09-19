package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function punycodeHostPort(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__isASCII._isASCII(_v?.__copy__())) {
            return { _0 : _v?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_v?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _host = _v?.__copy__();
            _port = stdgo.Go.str()?.__copy__();
        };
        {
            var __tmp__ = _internal.golang_dot_org.x.net.idna.Idna_toASCII.toASCII(_host?.__copy__());
            _host = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
        };
        if (_port == (stdgo.Go.str())) {
            return { _0 : _host?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo._internal.net.Net_joinHostPort.joinHostPort(_host?.__copy__(), _port?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
