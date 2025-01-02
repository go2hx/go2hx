package stdgo._internal.net.http;
function _canonicalAddr(_url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        var _port = (@:check2r _url.port()?.__copy__() : stdgo.GoString);
        if (_port == (stdgo.Go.str())) {
            _port = (stdgo._internal.net.http.Http__portMap._portMap[(@:checkr _url ?? throw "null pointer dereference").scheme] ?? ("" : stdgo.GoString))?.__copy__();
        };
        return stdgo._internal.net.Net_joinHostPort.joinHostPort(stdgo._internal.net.http.Http__idnaASCIIFromURL._idnaASCIIFromURL(_url)?.__copy__(), _port?.__copy__())?.__copy__();
    }
