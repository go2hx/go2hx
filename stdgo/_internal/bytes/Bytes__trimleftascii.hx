package stdgo._internal.bytes;
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L993"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L994"
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L995"
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L999"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1001"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1003"
        return _s;
    }
