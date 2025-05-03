package stdgo._internal.net.http.cookiejar;
function _hasPort(_host:stdgo.GoString):Bool {
        var _colons = (stdgo._internal.strings.Strings_count.count(_host?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L323"
        if (_colons == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L324"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L326"
        if (_colons == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L327"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L329"
        return ((_host[(0 : stdgo.GoInt)] == (91 : stdgo.GoUInt8)) && stdgo._internal.strings.Strings_contains.contains(_host?.__copy__(), ("]:" : stdgo.GoString)) : Bool);
    }
