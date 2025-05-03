package stdgo._internal.unicode.utf8;
function validString(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L530"
        while (((_s.length) >= (8 : stdgo.GoInt) : Bool)) {
            var _first32 = ((((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _second32 = ((((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_s[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(7 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L537"
            if ((((_first32 | _second32 : stdgo.GoUInt32)) & (-2139062144u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L539"
                break;
            };
            _s = (_s.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _n = (_s.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L544"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _si = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L546"
                if ((_si < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L547"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L548"
                    continue;
                };
                var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_si : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L551"
                if (_x == ((241 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L552"
                    return false;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L555"
                if (((_i + _size : stdgo.GoInt) > _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L556"
                    return false;
                };
                var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L559"
                {
                    var _c = (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L560"
                        return false;
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L563"
                            return false;
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L566"
                                return false;
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L570"
        return true;
    }
