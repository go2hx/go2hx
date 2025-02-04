package stdgo._internal.unicode.utf8;
function valid(_p:stdgo.Slice<stdgo.GoUInt8>):Bool {
        _p = (_p.__slice__(0, (_p.length), (_p.length)) : stdgo.Slice<stdgo.GoUInt8>);
        while (((_p.length) >= (8 : stdgo.GoInt) : Bool)) {
            var _first32 = ((((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _second32 = ((((_p[(4 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(6 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(7 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((((_first32 | _second32 : stdgo.GoUInt32)) & (-2139062144u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = (_p.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _pi = (_p[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_pi < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    continue;
                };
                var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_pi : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_x == ((241 : stdgo.GoUInt8))) {
                    return false;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                if (((_i + _size : stdgo.GoInt) > _n : Bool)) {
                    return false;
                };
                var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
                {
                    var _c = (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        return false;
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_p[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            return false;
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_p[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                return false;
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        return true;
    }
