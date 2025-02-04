package stdgo._internal.bytes;
function trimPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_s, _prefix)) {
            return (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
