package stdgo._internal.net.http.cookiejar;
function _jarKey(_host:stdgo.GoString, _psl:stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L334"
        if (stdgo._internal.net.http.cookiejar.Cookiejar__isip._isIP(_host?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L335"
            return _host?.__copy__();
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L339"
        if (_psl == null) {
            _i = stdgo._internal.strings.Strings_lastindex.lastIndex(_host?.__copy__(), ("." : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L341"
            if ((_i <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L342"
                return _host?.__copy__();
            };
        } else {
            var _suffix = (_psl.publicSuffix(_host?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L346"
            if (_suffix == (_host)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L347"
                return _host?.__copy__();
            };
            _i = ((_host.length) - (_suffix.length) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L350"
            if (((_i <= (0 : stdgo.GoInt) : Bool) || (_host[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L353"
                return _host?.__copy__();
            };
        };
        var _prevDot = (stdgo._internal.strings.Strings_lastindex.lastIndex((_host.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L360"
        return (_host.__slice__((_prevDot + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
    }
