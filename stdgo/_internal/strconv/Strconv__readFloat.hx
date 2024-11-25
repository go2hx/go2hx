package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _underscores_2632648:Bool = false;
        var _sawdot_2633050:Bool = false;
        var _sawdigits_2633067:Bool = false;
        var _loopBreak = false;
        var _base_2632807:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2634265:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2633157:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2633109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2633087:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2632827:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2632872:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2634416:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2633096:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2632648 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2632704i32;
                    } else {
                        _gotoNext = 2632719i32;
                    };
                } else if (__value__ == (2632704i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632719i32;
                } else if (__value__ == (2632719i32)) {
                    _gotoNext = 2632719i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2632729i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2632754i32;
                    } else {
                        _gotoNext = 2632807i32;
                    };
                } else if (__value__ == (2632729i32)) {
                    _i++;
                    _gotoNext = 2632807i32;
                } else if (__value__ == (2632754i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2632807i32;
                } else if (__value__ == (2632807i32)) {
                    _base_2632807 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2632827 = (19 : stdgo.GoInt);
                    _expChar_2632872 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2632949i32;
                    } else {
                        _gotoNext = 2633050i32;
                    };
                } else if (__value__ == (2632949i32)) {
                    _base_2632807 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2632827 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2632872 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2633050i32;
                } else if (__value__ == (2633050i32)) {
                    _sawdot_2633050 = false;
                    _sawdigits_2633067 = false;
                    _nd_2633087 = (0 : stdgo.GoInt);
                    _ndMant_2633096 = (0 : stdgo.GoInt);
                    _dp_2633109 = (0 : stdgo.GoInt);
                    _gotoNext = 2633117i32;
                } else if (__value__ == (2633117i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633124i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2633146i32;
                    } else {
                        _gotoNext = 2633866i32;
                    };
                } else if (__value__ == (2633146i32)) {
                    _gotoNext = 2633150i32;
                } else if (__value__ == (2633150i32)) {
                    {
                        _c_2633157 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2633157 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2633177i32;
                            } else if (__value__ == (_c_2633157 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2633229i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2633157 : Bool) && (_c_2633157 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2633322i32;
                            } else if (__value__ == (((_base_2632807 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2633157) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2633157) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2633614i32;
                            } else {
                                _gotoNext = 2633856i32;
                            };
                        };
                    };
                } else if (__value__ == (2633177i32)) {
                    _underscores_2632648 = true;
                    _i++;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633229i32)) {
                    if (_sawdot_2633050) {
                        _gotoNext = 2633257i32;
                    } else {
                        _gotoNext = 2633282i32;
                    };
                } else if (__value__ == (2633257i32)) {
                    _loopBreak = true;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633282i32)) {
                    _sawdot_2633050 = true;
                    _dp_2633109 = _nd_2633087;
                    _i++;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633322i32)) {
                    _sawdigits_2633067 = true;
                    if (((_c_2633157 == (48 : stdgo.GoUInt8)) && (_nd_2633087 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2633395i32;
                    } else {
                        _gotoNext = 2633451i32;
                    };
                } else if (__value__ == (2633395i32)) {
                    _dp_2633109--;
                    _i++;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633451i32)) {
                    _nd_2633087++;
                    if ((_ndMant_2633096 < _maxMantDigits_2632827 : Bool)) {
                        _gotoNext = 2633485i32;
                    } else if (_c_2633157 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2633575i32;
                    } else {
                        _gotoNext = 2633602i32;
                    };
                } else if (__value__ == (2633485i32)) {
                    _mantissa = (_mantissa * (_base_2632807) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2633157 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2633096++;
                    _gotoNext = 2633602i32;
                } else if (__value__ == (2633575i32)) {
                    _trunc = true;
                    _gotoNext = 2633602i32;
                } else if (__value__ == (2633602i32)) {
                    _i++;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633614i32)) {
                    _sawdigits_2633067 = true;
                    _nd_2633087++;
                    if ((_ndMant_2633096 < _maxMantDigits_2632827 : Bool)) {
                        _gotoNext = 2633726i32;
                    } else {
                        _gotoNext = 2633814i32;
                    };
                } else if (__value__ == (2633726i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2633157) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2633096++;
                    _gotoNext = 2633841i32;
                } else if (__value__ == (2633814i32)) {
                    _gotoNext = 2633814i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2633841i32;
                } else if (__value__ == (2633841i32)) {
                    _i++;
                    _gotoNext = 2633124i32;
                } else if (__value__ == (2633856i32)) {
                    _gotoNext = 2633866i32;
                } else if (__value__ == (2633866i32)) {
                    if (!_sawdigits_2633067) {
                        _gotoNext = 2633880i32;
                    } else {
                        _gotoNext = 2633895i32;
                    };
                } else if (__value__ == (2633880i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633895i32;
                } else if (__value__ == (2633895i32)) {
                    if (!_sawdot_2633050) {
                        _gotoNext = 2633906i32;
                    } else {
                        _gotoNext = 2633923i32;
                    };
                } else if (__value__ == (2633906i32)) {
                    _dp_2633109 = _nd_2633087;
                    _gotoNext = 2633923i32;
                } else if (__value__ == (2633923i32)) {
                    if (_base_2632807 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2633937i32;
                    } else {
                        _gotoNext = 2634182i32;
                    };
                } else if (__value__ == (2633937i32)) {
                    _dp_2633109 = (_dp_2633109 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2633096 = (_ndMant_2633096 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2634182i32;
                } else if (__value__ == (2634182i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2632872) : Bool)) {
                        _gotoNext = 2634222i32;
                    } else if (_base_2632807 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2634655i32;
                    } else {
                        _gotoNext = 2634696i32;
                    };
                } else if (__value__ == (2634222i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2634247i32;
                    } else {
                        _gotoNext = 2634265i32;
                    };
                } else if (__value__ == (2634247i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2634265i32;
                } else if (__value__ == (2634265i32)) {
                    _esign_2634265 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2634293i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2634326i32;
                    } else {
                        _gotoNext = 2634355i32;
                    };
                } else if (__value__ == (2634293i32)) {
                    _i++;
                    _gotoNext = 2634355i32;
                } else if (__value__ == (2634326i32)) {
                    _i++;
                    _esign_2634265 = (-1 : stdgo.GoInt);
                    _gotoNext = 2634355i32;
                } else if (__value__ == (2634355i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2634398i32;
                    } else {
                        _gotoNext = 2634416i32;
                    };
                } else if (__value__ == (2634398i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2634416i32;
                } else if (__value__ == (2634416i32)) {
                    _e_2634416 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2634425i32;
                } else if (__value__ == (2634425i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2634494i32;
                    } else {
                        _gotoNext = 2634617i32;
                    };
                } else if (__value__ == (2634490i32)) {
                    _i++;
                    _gotoNext = 2634425i32;
                } else if (__value__ == (2634494i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2634514i32;
                    } else {
                        _gotoNext = 2634560i32;
                    };
                } else if (__value__ == (2634514i32)) {
                    _underscores_2632648 = true;
                    _i++;
                    _gotoNext = 2634425i32;
                } else if (__value__ == (2634560i32)) {
                    if ((_e_2634416 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2634573i32;
                    } else {
                        _gotoNext = 2634490i32;
                    };
                } else if (__value__ == (2634573i32)) {
                    _e_2634416 = (((_e_2634416 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2634490i32;
                } else if (__value__ == (2634617i32)) {
                    _dp_2633109 = (_dp_2633109 + ((_e_2634416 * _esign_2634265 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2634696i32;
                } else if (__value__ == (2634655i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2634696i32;
                } else if (__value__ == (2634696i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2634713i32;
                    } else {
                        _gotoNext = 2634740i32;
                    };
                } else if (__value__ == (2634713i32)) {
                    _exp = (_dp_2633109 - _ndMant_2633096 : stdgo.GoInt);
                    _gotoNext = 2634740i32;
                } else if (__value__ == (2634740i32)) {
                    if ((_underscores_2632648 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2634779i32;
                    } else {
                        _gotoNext = 2634795i32;
                    };
                } else if (__value__ == (2634779i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2634795i32;
                } else if (__value__ == (2634795i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
