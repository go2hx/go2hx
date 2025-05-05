package stdgo._internal.net.url;
function _ishex(_c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L49"
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L51"
            return true;
        } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L53"
            return true;
        } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L55"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L57"
        return false;
    }
