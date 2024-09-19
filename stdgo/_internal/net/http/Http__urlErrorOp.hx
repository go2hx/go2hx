package stdgo._internal.net.http;
function _urlErrorOp(_method:stdgo.GoString):stdgo.GoString {
        if (_method == (stdgo.Go.str())) {
            return ("Get" : stdgo.GoString);
        };
        {
            var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_toLower.toLower(_method?.__copy__()), _lowerMethod:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return ((_method.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString) + (_lowerMethod.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return _method?.__copy__();
    }
