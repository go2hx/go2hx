package stdgo._internal.encoding.hex;
function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _j = (0 : stdgo.GoInt);
        for (__0 => _v in _src) {
            _dst[(_j : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
            _dst[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
            _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return ((_src.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
