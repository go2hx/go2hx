package stdgo._internal.bytes;
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
