package stdgo._internal.net.http.cookiejar;
function _defaultPath(_path:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L371"
        if (((_path.length == (0 : stdgo.GoInt)) || (_path[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L372"
            return ("/" : stdgo.GoString);
        };
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_path?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L376"
        if (_i == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L377"
            return ("/" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L379"
        return (_path.__slice__(0, _i) : stdgo.GoString)?.__copy__();
    }
