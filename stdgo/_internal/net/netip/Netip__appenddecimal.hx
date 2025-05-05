package stdgo._internal.net.netip;
function _appendDecimal(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L805"
        if ((_x >= (100 : stdgo.GoUInt8) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x / (100 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L808"
        if ((_x >= (10 : stdgo.GoUInt8) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[(((_x / (10 : stdgo.GoUInt8) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L811"
        return (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
