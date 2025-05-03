package stdgo._internal.net.http.httputil;
function _valueOrDefault(_value:stdgo.GoString, _def:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L190"
        if (_value != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L191"
            return _value?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L193"
        return _def?.__copy__();
    }
