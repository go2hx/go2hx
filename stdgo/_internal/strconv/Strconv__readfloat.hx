package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _sawdot_4:Bool = false;
        var _underscores_0:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2629051i32;
                    } else {
                        _gotoNext = 2629066i32;
                    };
                } else if (__value__ == (2629051i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629066i32;
                } else if (__value__ == (2629066i32)) {
                    _gotoNext = 2629066i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2629076i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2629101i32;
                    } else {
                        _gotoNext = 2629154i32;
                    };
                } else if (__value__ == (2629076i32)) {
                    _i++;
                    _gotoNext = 2629154i32;
                } else if (__value__ == (2629101i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2629154i32;
                } else if (__value__ == (2629154i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2629296i32;
                    } else {
                        _gotoNext = 2629397i32;
                    };
                } else if (__value__ == (2629296i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2629397i32;
                } else if (__value__ == (2629397i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2629464i32;
                } else if (__value__ == (2629464i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2629471i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2629493i32;
                    } else {
                        _gotoNext = 2630213i32;
                    };
                } else if (__value__ == (2629493i32)) {
                    _gotoNext = 2629497i32;
                } else if (__value__ == (2629497i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2629524i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2629576i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2629669i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2629961i32;
                            } else {
                                _gotoNext = 2630203i32;
                            };
                        };
                    };
                } else if (__value__ == (2629524i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2629576i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2629604i32;
                    } else {
                        _gotoNext = 2629629i32;
                    };
                } else if (__value__ == (2629604i32)) {
                    _loopBreak = true;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2629629i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2629669i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2629742i32;
                    } else {
                        _gotoNext = 2629798i32;
                    };
                } else if (__value__ == (2629742i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2629798i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2629832i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2629922i32;
                    } else {
                        _gotoNext = 2629949i32;
                    };
                } else if (__value__ == (2629832i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2629949i32;
                } else if (__value__ == (2629922i32)) {
                    _trunc = true;
                    _gotoNext = 2629949i32;
                } else if (__value__ == (2629949i32)) {
                    _i++;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2629961i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2630073i32;
                    } else {
                        _gotoNext = 2630161i32;
                    };
                } else if (__value__ == (2630073i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2630188i32;
                } else if (__value__ == (2630161i32)) {
                    _gotoNext = 2630161i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2630188i32;
                } else if (__value__ == (2630188i32)) {
                    _i++;
                    _gotoNext = 2629471i32;
                } else if (__value__ == (2630203i32)) {
                    _gotoNext = 2630213i32;
                } else if (__value__ == (2630213i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2630227i32;
                    } else {
                        _gotoNext = 2630242i32;
                    };
                } else if (__value__ == (2630227i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630242i32;
                } else if (__value__ == (2630242i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2630253i32;
                    } else {
                        _gotoNext = 2630270i32;
                    };
                } else if (__value__ == (2630253i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2630270i32;
                } else if (__value__ == (2630270i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630284i32;
                    } else {
                        _gotoNext = 2630529i32;
                    };
                } else if (__value__ == (2630284i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2630529i32;
                } else if (__value__ == (2630529i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2630569i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631002i32;
                    } else {
                        _gotoNext = 2631043i32;
                    };
                } else if (__value__ == (2630569i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2630594i32;
                    } else {
                        _gotoNext = 2630612i32;
                    };
                } else if (__value__ == (2630594i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630612i32;
                } else if (__value__ == (2630612i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2630640i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2630673i32;
                    } else {
                        _gotoNext = 2630702i32;
                    };
                } else if (__value__ == (2630640i32)) {
                    _i++;
                    _gotoNext = 2630702i32;
                } else if (__value__ == (2630673i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2630702i32;
                } else if (__value__ == (2630702i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2630745i32;
                    } else {
                        _gotoNext = 2630763i32;
                    };
                } else if (__value__ == (2630745i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630763i32;
                } else if (__value__ == (2630763i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2630772i32;
                } else if (__value__ == (2630772i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2630841i32;
                    } else {
                        _gotoNext = 2630964i32;
                    };
                } else if (__value__ == (2630837i32)) {
                    _i++;
                    _gotoNext = 2630772i32;
                } else if (__value__ == (2630841i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2630861i32;
                    } else {
                        _gotoNext = 2630907i32;
                    };
                } else if (__value__ == (2630861i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2630772i32;
                } else if (__value__ == (2630907i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2630920i32;
                    } else {
                        _gotoNext = 2630837i32;
                    };
                } else if (__value__ == (2630920i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2630837i32;
                } else if (__value__ == (2630964i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631043i32;
                } else if (__value__ == (2631002i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631043i32;
                } else if (__value__ == (2631043i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631060i32;
                    } else {
                        _gotoNext = 2631087i32;
                    };
                } else if (__value__ == (2631060i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2631087i32;
                } else if (__value__ == (2631087i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2631126i32;
                    } else {
                        _gotoNext = 2631142i32;
                    };
                } else if (__value__ == (2631126i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631142i32;
                } else if (__value__ == (2631142i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
