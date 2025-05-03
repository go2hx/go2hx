package stdgo._internal.net.http.httputil;
function _ishex(_c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L825"
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L827"
            return true;
        } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L829"
            return true;
        } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L831"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L833"
        return false;
    }
