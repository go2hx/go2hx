package stdgo._internal.net.http;
function _stripHostPort(_h:stdgo.GoString):stdgo.GoString {
        if (!stdgo._internal.strings.Strings_contains.contains(_h?.__copy__(), (":" : stdgo.GoString))) {
            return _h?.__copy__();
        };
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_h?.__copy__()), _host:stdgo.GoString = __tmp__._0, __132:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _h?.__copy__();
        };
        return _host?.__copy__();
    }
