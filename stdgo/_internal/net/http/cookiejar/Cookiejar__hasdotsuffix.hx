package stdgo._internal.net.http.cookiejar;
function _hasDotSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L151"
        return ((((_s.length) > (_suffix.length) : Bool) && _s[(((_s.length) - (_suffix.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((_s.__slice__(((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString) == _suffix) : Bool);
    }
