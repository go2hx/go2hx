package stdgo._internal.net.textproto;
function trimBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/textproto.go#L136"
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isasciispace._isASCIISpace(_b[(0 : stdgo.GoInt)]) : Bool)) {
            _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/textproto.go#L139"
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isasciispace._isASCIISpace(_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/textproto.go#L142"
        return _b;
    }
