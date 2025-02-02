package stdgo._internal.encoding.binary;
function uvarint(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        for (_i => _b in _buf) {
            if (_i == ((10 : stdgo.GoInt))) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : -((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) };
            };
            if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : -((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                };
                return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
            };
            _x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0 : stdgo.GoInt) };
    }
