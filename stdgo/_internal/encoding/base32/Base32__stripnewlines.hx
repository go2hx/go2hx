package stdgo._internal.encoding.base32;
function _stripNewlines(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _offset = (0 : stdgo.GoInt);
        for (__0 => _b in _src) {
            if (((_b == (13 : stdgo.GoUInt8)) || (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                continue;
            };
            _dst[(_offset : stdgo.GoInt)] = _b;
            _offset++;
        };
        return _offset;
    }
