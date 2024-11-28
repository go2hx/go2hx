package stdgo._internal.net.http;
function _http2authorityAddr(_scheme:stdgo.GoString, _authority:stdgo.GoString):stdgo.GoString {
        var _addr = ("" : stdgo.GoString);
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_authority?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _host = _authority?.__copy__();
            _port = stdgo.Go.str()?.__copy__();
        };
        if (_port == (stdgo.Go.str())) {
            _port = ("443" : stdgo.GoString);
            if (_scheme == (("http" : stdgo.GoString))) {
                _port = ("80" : stdgo.GoString);
            };
        };
        {
            var __tmp__ = _internal.golang_dot_org.x.net.idna.Idna_toASCII.toASCII(_host?.__copy__()), _a:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _host = _a?.__copy__();
            };
        };
        if ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            return _addr = ((_host + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _addr = stdgo._internal.net.Net_joinHostPort.joinHostPort(_host?.__copy__(), _port?.__copy__())?.__copy__();
    }
