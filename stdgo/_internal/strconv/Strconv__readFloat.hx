package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _ndMant_2726814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2726785:Bool = false;
        var _expChar_2726590:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2726545:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2726525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2728134:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2726875:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2726827:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2727983:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2726366:Bool = false;
        var _nd_2726805:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2726768:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2726366 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2726422i32;
                    } else {
                        _gotoNext = 2726437i32;
                    };
                } else if (__value__ == (2726422i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2726437i32;
                } else if (__value__ == (2726437i32)) {
                    _gotoNext = 2726437i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2726447i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2726472i32;
                    } else {
                        _gotoNext = 2726525i32;
                    };
                } else if (__value__ == (2726447i32)) {
                    _i++;
                    _gotoNext = 2726525i32;
                } else if (__value__ == (2726472i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2726525i32;
                } else if (__value__ == (2726525i32)) {
                    _base_2726525 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2726545 = (19 : stdgo.GoInt);
                    _expChar_2726590 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2726667i32;
                    } else {
                        _gotoNext = 2726768i32;
                    };
                } else if (__value__ == (2726667i32)) {
                    _base_2726525 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2726545 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2726590 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2726768i32;
                } else if (__value__ == (2726768i32)) {
                    _sawdot_2726768 = false;
                    _sawdigits_2726785 = false;
                    _nd_2726805 = (0 : stdgo.GoInt);
                    _ndMant_2726814 = (0 : stdgo.GoInt);
                    _dp_2726827 = (0 : stdgo.GoInt);
                    _gotoNext = 2726835i32;
                } else if (__value__ == (2726835i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2726842i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2726864i32;
                    } else {
                        _gotoNext = 2727584i32;
                    };
                } else if (__value__ == (2726864i32)) {
                    _gotoNext = 2726868i32;
                } else if (__value__ == (2726868i32)) {
                    {
                        _c_2726875 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2726875 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2726895i32;
                            } else if (__value__ == (_c_2726875 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2726947i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2726875 : Bool) && (_c_2726875 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2727040i32;
                            } else if (__value__ == (((_base_2726525 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2726875) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2726875) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2727332i32;
                            } else {
                                _gotoNext = 2727574i32;
                            };
                        };
                    };
                } else if (__value__ == (2726895i32)) {
                    _underscores_2726366 = true;
                    _i++;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2726947i32)) {
                    if (_sawdot_2726768) {
                        _gotoNext = 2726975i32;
                    } else {
                        _gotoNext = 2727000i32;
                    };
                } else if (__value__ == (2726975i32)) {
                    _loopBreak = true;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2727000i32)) {
                    _sawdot_2726768 = true;
                    _dp_2726827 = _nd_2726805;
                    _i++;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2727040i32)) {
                    _sawdigits_2726785 = true;
                    if (((_c_2726875 == (48 : stdgo.GoUInt8)) && (_nd_2726805 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2727113i32;
                    } else {
                        _gotoNext = 2727169i32;
                    };
                } else if (__value__ == (2727113i32)) {
                    _dp_2726827--;
                    _i++;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2727169i32)) {
                    _nd_2726805++;
                    if ((_ndMant_2726814 < _maxMantDigits_2726545 : Bool)) {
                        _gotoNext = 2727203i32;
                    } else if (_c_2726875 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2727293i32;
                    } else {
                        _gotoNext = 2727320i32;
                    };
                } else if (__value__ == (2727203i32)) {
                    _mantissa = (_mantissa * (_base_2726525) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2726875 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2726814++;
                    _gotoNext = 2727320i32;
                } else if (__value__ == (2727293i32)) {
                    _trunc = true;
                    _gotoNext = 2727320i32;
                } else if (__value__ == (2727320i32)) {
                    _i++;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2727332i32)) {
                    _sawdigits_2726785 = true;
                    _nd_2726805++;
                    if ((_ndMant_2726814 < _maxMantDigits_2726545 : Bool)) {
                        _gotoNext = 2727444i32;
                    } else {
                        _gotoNext = 2727532i32;
                    };
                } else if (__value__ == (2727444i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2726875) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2726814++;
                    _gotoNext = 2727559i32;
                } else if (__value__ == (2727532i32)) {
                    _gotoNext = 2727532i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2727559i32;
                } else if (__value__ == (2727559i32)) {
                    _i++;
                    _gotoNext = 2726842i32;
                } else if (__value__ == (2727574i32)) {
                    _gotoNext = 2727584i32;
                } else if (__value__ == (2727584i32)) {
                    if (!_sawdigits_2726785) {
                        _gotoNext = 2727598i32;
                    } else {
                        _gotoNext = 2727613i32;
                    };
                } else if (__value__ == (2727598i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2727613i32;
                } else if (__value__ == (2727613i32)) {
                    if (!_sawdot_2726768) {
                        _gotoNext = 2727624i32;
                    } else {
                        _gotoNext = 2727641i32;
                    };
                } else if (__value__ == (2727624i32)) {
                    _dp_2726827 = _nd_2726805;
                    _gotoNext = 2727641i32;
                } else if (__value__ == (2727641i32)) {
                    if (_base_2726525 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2727655i32;
                    } else {
                        _gotoNext = 2727900i32;
                    };
                } else if (__value__ == (2727655i32)) {
                    _dp_2726827 = (_dp_2726827 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2726814 = (_ndMant_2726814 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2727900i32;
                } else if (__value__ == (2727900i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2726590) : Bool)) {
                        _gotoNext = 2727940i32;
                    } else if (_base_2726525 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2728373i32;
                    } else {
                        _gotoNext = 2728414i32;
                    };
                } else if (__value__ == (2727940i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2727965i32;
                    } else {
                        _gotoNext = 2727983i32;
                    };
                } else if (__value__ == (2727965i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2727983i32;
                } else if (__value__ == (2727983i32)) {
                    _esign_2727983 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2728011i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2728044i32;
                    } else {
                        _gotoNext = 2728073i32;
                    };
                } else if (__value__ == (2728011i32)) {
                    _i++;
                    _gotoNext = 2728073i32;
                } else if (__value__ == (2728044i32)) {
                    _i++;
                    _esign_2727983 = (-1 : stdgo.GoInt);
                    _gotoNext = 2728073i32;
                } else if (__value__ == (2728073i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2728116i32;
                    } else {
                        _gotoNext = 2728134i32;
                    };
                } else if (__value__ == (2728116i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728134i32;
                } else if (__value__ == (2728134i32)) {
                    _e_2728134 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2728143i32;
                } else if (__value__ == (2728143i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2728212i32;
                    } else {
                        _gotoNext = 2728335i32;
                    };
                } else if (__value__ == (2728208i32)) {
                    _i++;
                    _gotoNext = 2728143i32;
                } else if (__value__ == (2728212i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2728232i32;
                    } else {
                        _gotoNext = 2728278i32;
                    };
                } else if (__value__ == (2728232i32)) {
                    _underscores_2726366 = true;
                    _i++;
                    _gotoNext = 2728143i32;
                } else if (__value__ == (2728278i32)) {
                    if ((_e_2728134 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2728291i32;
                    } else {
                        _gotoNext = 2728208i32;
                    };
                } else if (__value__ == (2728291i32)) {
                    _e_2728134 = (((_e_2728134 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2728208i32;
                } else if (__value__ == (2728335i32)) {
                    _dp_2726827 = (_dp_2726827 + ((_e_2728134 * _esign_2727983 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2728414i32;
                } else if (__value__ == (2728373i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728414i32;
                } else if (__value__ == (2728414i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2728431i32;
                    } else {
                        _gotoNext = 2728458i32;
                    };
                } else if (__value__ == (2728431i32)) {
                    _exp = (_dp_2726827 - _ndMant_2726814 : stdgo.GoInt);
                    _gotoNext = 2728458i32;
                } else if (__value__ == (2728458i32)) {
                    if ((_underscores_2726366 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2728497i32;
                    } else {
                        _gotoNext = 2728513i32;
                    };
                } else if (__value__ == (2728497i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728513i32;
                } else if (__value__ == (2728513i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
