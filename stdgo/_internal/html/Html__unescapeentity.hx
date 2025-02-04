package stdgo._internal.html;
function _unescapeEntity(_b:stdgo.Slice<stdgo.GoUInt8>, _dst:stdgo.GoInt, _src:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        var _dst1 = (0 : stdgo.GoInt), _src1 = (0 : stdgo.GoInt);
        {};
        var __0 = (1 : stdgo.GoInt), __1 = (_b.__slice__(_src) : stdgo.Slice<stdgo.GoUInt8>);
var _s = __1, _i = __0;
        if (((_s.length) <= (1 : stdgo.GoInt) : Bool)) {
            _b[(_dst : stdgo.GoInt)] = _b[(_src : stdgo.GoInt)];
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_src + (1 : stdgo.GoInt) : stdgo.GoInt) };
                _dst1 = __tmp__._0;
                _src1 = __tmp__._1;
                __tmp__;
            };
        };
        if (_s[(_i : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
            if (((_s.length) <= (3 : stdgo.GoInt) : Bool)) {
                _b[(_dst : stdgo.GoInt)] = _b[(_src : stdgo.GoInt)];
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_src + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    _dst1 = __tmp__._0;
                    _src1 = __tmp__._1;
                    __tmp__;
                };
            };
            _i++;
            var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            var _hex = (false : Bool);
            if (((_c == (120 : stdgo.GoUInt8)) || (_c == (88 : stdgo.GoUInt8)) : Bool)) {
                _hex = true;
                _i++;
            };
            var _x = (0 : stdgo.GoInt32);
            while ((_i < (_s.length) : Bool)) {
                _c = _s[(_i : stdgo.GoInt)];
                _i++;
                if (_hex) {
                    if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _x = ((((16 : stdgo.GoInt32) * _x : stdgo.GoInt32) + (_c : stdgo.GoInt32) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                        continue;
                    } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _x = (((((16 : stdgo.GoInt32) * _x : stdgo.GoInt32) + (_c : stdgo.GoInt32) : stdgo.GoInt32) - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
                        continue;
                    } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _x = (((((16 : stdgo.GoInt32) * _x : stdgo.GoInt32) + (_c : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
                        continue;
                    };
                } else if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _x = ((((10 : stdgo.GoInt32) * _x : stdgo.GoInt32) + (_c : stdgo.GoInt32) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    continue;
                };
                if (_c != ((59 : stdgo.GoUInt8))) {
                    _i--;
                };
                break;
            };
            if ((_i <= (3 : stdgo.GoInt) : Bool)) {
                _b[(_dst : stdgo.GoInt)] = _b[(_src : stdgo.GoInt)];
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_src + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    _dst1 = __tmp__._0;
                    _src1 = __tmp__._1;
                    __tmp__;
                };
            };
            if ((((128 : stdgo.GoInt32) <= _x : Bool) && (_x <= (159 : stdgo.GoInt32) : Bool) : Bool)) {
                _x = stdgo._internal.html.Html__replacementtable._replacementTable[((_x - (128 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
            } else if (((_x == ((0 : stdgo.GoInt32)) || ((((55296 : stdgo.GoInt32) <= _x : Bool) && (_x <= (57343 : stdgo.GoInt32) : Bool) : Bool)) : Bool) || (_x > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
                _x = (65533 : stdgo.GoInt32);
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst + stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), _x) : stdgo.GoInt), _1 : (_src + _i : stdgo.GoInt) };
                _dst1 = __tmp__._0;
                _src1 = __tmp__._1;
                __tmp__;
            };
        };
        while ((_i < (_s.length) : Bool)) {
            var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            _i++;
            if ((((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                continue;
            };
            if (_c != ((59 : stdgo.GoUInt8))) {
                _i--;
            };
            break;
        };
        var _entityName = (_s.__slice__((1 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_entityName.length) == ((0 : stdgo.GoInt))) {} else if ((((false && _entityName[((_entityName.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8)) : Bool) && ((_s.length) > _i : Bool) : Bool) && (_s[(_i : stdgo.GoInt)] == (61 : stdgo.GoUInt8)) : Bool)) {} else {
            var _x = (stdgo._internal.html.Html__entity._entity[(_entityName : stdgo.GoString)] ?? (0 : stdgo.GoInt32) : stdgo.GoInt32);
            if (_x != ((0 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst + stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), _x) : stdgo.GoInt), _1 : (_src + _i : stdgo.GoInt) };
                    _dst1 = __tmp__._0;
                    _src1 = __tmp__._1;
                    __tmp__;
                };
            } else {
                var _x = (stdgo._internal.html.Html__entity2._entity2[(_entityName : stdgo.GoString)] ?? new stdgo.GoArray<stdgo.GoInt32>(2, 2).__setNumber32__())?.__copy__();
                if (_x[(0 : stdgo.GoInt)] != ((0 : stdgo.GoInt32))) {
                    var _dst1 = (_dst + stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), _x[(0 : stdgo.GoInt)]) : stdgo.GoInt);
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst1 + stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_dst1) : stdgo.Slice<stdgo.GoUInt8>), _x[(1 : stdgo.GoInt)]) : stdgo.GoInt), _1 : (_src + _i : stdgo.GoInt) };
                        _dst1 = __tmp__._0;
                        _src1 = __tmp__._1;
                        __tmp__;
                    };
                } else if (true) {
                    var _maxLen = ((_entityName.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if ((_maxLen > (6 : stdgo.GoInt) : Bool)) {
                        _maxLen = (6 : stdgo.GoInt);
                    };
                    {
                        var _j = (_maxLen : stdgo.GoInt);
                        while ((_j > (1 : stdgo.GoInt) : Bool)) {
                            {
                                var _x = (stdgo._internal.html.Html__entity._entity[((_entityName.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)] ?? (0 : stdgo.GoInt32) : stdgo.GoInt32);
                                if (_x != ((0 : stdgo.GoInt32))) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (_dst + stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), _x) : stdgo.GoInt), _1 : ((_src + _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
                                        _dst1 = __tmp__._0;
                                        _src1 = __tmp__._1;
                                        __tmp__;
                                    };
                                };
                            };
                            _j--;
                        };
                    };
                };
            };
        };
        {
            final __tmp__0 = (_dst + _i : stdgo.GoInt);
            final __tmp__1 = (_src + _i : stdgo.GoInt);
            _dst1 = __tmp__0;
            _src1 = __tmp__1;
        };
        (_b.__slice__(_dst, _dst1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_src, _src1) : stdgo.Slice<stdgo.GoUInt8>));
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _dst1, _1 : _src1 };
            _dst1 = __tmp__._0;
            _src1 = __tmp__._1;
            __tmp__;
        };
    }
