package stdgo._internal.net.http.internal;
function _trimTrailingWhitespace(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L152"
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.http.internal.Internal__isasciispace._isASCIISpace(_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L155"
        return _b;
    }
