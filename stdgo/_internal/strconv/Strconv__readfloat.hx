package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2651949i32;
                    } else {
                        _gotoNext = 2651964i32;
                    };
                } else if (__value__ == (2651949i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2651964i32;
                } else if (__value__ == (2651964i32)) {
                    _gotoNext = 2651964i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2651974i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2651999i32;
                    } else {
                        _gotoNext = 2652052i32;
                    };
                } else if (__value__ == (2651974i32)) {
                    _i++;
                    _gotoNext = 2652052i32;
                } else if (__value__ == (2651999i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2652052i32;
                } else if (__value__ == (2652052i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2652194i32;
                    } else {
                        _gotoNext = 2652295i32;
                    };
                } else if (__value__ == (2652194i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2652295i32;
                } else if (__value__ == (2652295i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2652362i32;
                } else if (__value__ == (2652362i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2652369i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2652391i32;
                    } else {
                        _gotoNext = 2653111i32;
                    };
                } else if (__value__ == (2652391i32)) {
                    _gotoNext = 2652395i32;
                } else if (__value__ == (2652395i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2652422i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2652474i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2652567i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2652859i32;
                            } else {
                                _gotoNext = 2653101i32;
                            };
                        };
                    };
                } else if (__value__ == (2652422i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2652474i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2652502i32;
                    } else {
                        _gotoNext = 2652527i32;
                    };
                } else if (__value__ == (2652502i32)) {
                    _loopBreak = true;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2652527i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2652567i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2652640i32;
                    } else {
                        _gotoNext = 2652696i32;
                    };
                } else if (__value__ == (2652640i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2652696i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2652730i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2652820i32;
                    } else {
                        _gotoNext = 2652847i32;
                    };
                } else if (__value__ == (2652730i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2652847i32;
                } else if (__value__ == (2652820i32)) {
                    _trunc = true;
                    _gotoNext = 2652847i32;
                } else if (__value__ == (2652847i32)) {
                    _i++;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2652859i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2652971i32;
                    } else {
                        _gotoNext = 2653059i32;
                    };
                } else if (__value__ == (2652971i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2653086i32;
                } else if (__value__ == (2653059i32)) {
                    _gotoNext = 2653059i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2653086i32;
                } else if (__value__ == (2653086i32)) {
                    _i++;
                    _gotoNext = 2652369i32;
                } else if (__value__ == (2653101i32)) {
                    _gotoNext = 2653111i32;
                } else if (__value__ == (2653111i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2653125i32;
                    } else {
                        _gotoNext = 2653140i32;
                    };
                } else if (__value__ == (2653125i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2653140i32;
                } else if (__value__ == (2653140i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2653151i32;
                    } else {
                        _gotoNext = 2653168i32;
                    };
                } else if (__value__ == (2653151i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2653168i32;
                } else if (__value__ == (2653168i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2653182i32;
                    } else {
                        _gotoNext = 2653427i32;
                    };
                } else if (__value__ == (2653182i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2653427i32;
                } else if (__value__ == (2653427i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2653467i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2653900i32;
                    } else {
                        _gotoNext = 2653941i32;
                    };
                } else if (__value__ == (2653467i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2653492i32;
                    } else {
                        _gotoNext = 2653510i32;
                    };
                } else if (__value__ == (2653492i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2653510i32;
                } else if (__value__ == (2653510i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2653538i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2653571i32;
                    } else {
                        _gotoNext = 2653600i32;
                    };
                } else if (__value__ == (2653538i32)) {
                    _i++;
                    _gotoNext = 2653600i32;
                } else if (__value__ == (2653571i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2653600i32;
                } else if (__value__ == (2653600i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2653643i32;
                    } else {
                        _gotoNext = 2653661i32;
                    };
                } else if (__value__ == (2653643i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2653661i32;
                } else if (__value__ == (2653661i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2653670i32;
                } else if (__value__ == (2653670i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2653739i32;
                    } else {
                        _gotoNext = 2653862i32;
                    };
                } else if (__value__ == (2653735i32)) {
                    _i++;
                    _gotoNext = 2653670i32;
                } else if (__value__ == (2653739i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2653759i32;
                    } else {
                        _gotoNext = 2653805i32;
                    };
                } else if (__value__ == (2653759i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2653670i32;
                } else if (__value__ == (2653805i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2653818i32;
                    } else {
                        _gotoNext = 2653735i32;
                    };
                } else if (__value__ == (2653818i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2653735i32;
                } else if (__value__ == (2653862i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2653941i32;
                } else if (__value__ == (2653900i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2653941i32;
                } else if (__value__ == (2653941i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2653958i32;
                    } else {
                        _gotoNext = 2653985i32;
                    };
                } else if (__value__ == (2653958i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2653985i32;
                } else if (__value__ == (2653985i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2654024i32;
                    } else {
                        _gotoNext = 2654040i32;
                    };
                } else if (__value__ == (2654024i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2654040i32;
                } else if (__value__ == (2654040i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
