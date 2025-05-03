package stdgo._internal.net.http.httputil;
function _singleJoiningSlash(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        var _aslash = (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_a?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        var _bslash = (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_b?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L212"
        if ((_aslash && _bslash : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L214"
            return (_a + (_b.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        } else if ((!_aslash && !_bslash : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L216"
            return ((_a + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _b?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L218"
        return (_a + _b?.__copy__() : stdgo.GoString)?.__copy__();
    }
