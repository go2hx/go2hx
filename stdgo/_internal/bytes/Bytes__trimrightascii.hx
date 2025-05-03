package stdgo._internal.bytes;
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1047"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1048"
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1049"
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1053"
        return _s;
    }
