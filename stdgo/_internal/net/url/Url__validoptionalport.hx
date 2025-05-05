package stdgo._internal.net.url;
function _validOptionalPort(_port:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L773"
        if (_port == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L774"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L776"
        if (_port[(0 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L777"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L779"
        for (__0 => _b in (_port.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L780"
            if (((_b < (48 : stdgo.GoInt32) : Bool) || (_b > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L781"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L784"
        return true;
    }
