package stdgo._internal.net.netip;
function _stringsLastIndexByte(_s:stdgo.GoString, _b:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/net/netip/leaf_alts.go#L11"
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/netip/leaf_alts.go#L12"
                if (_s[(_i : stdgo.GoInt)] == (_b)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/netip/leaf_alts.go#L13"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/leaf_alts.go#L16"
        return (-1 : stdgo.GoInt);
    }
