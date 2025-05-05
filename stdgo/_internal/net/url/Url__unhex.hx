package stdgo._internal.net.url;
function _unhex(_c:stdgo.GoUInt8):stdgo.GoUInt8 {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L61"
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L63"
            return (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L65"
            return ((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
        } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L67"
            return ((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L69"
        return (0 : stdgo.GoUInt8);
    }
