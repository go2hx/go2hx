package stdgo._internal.bytes;
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }