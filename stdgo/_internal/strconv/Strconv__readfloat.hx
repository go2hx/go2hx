package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2643794i32;
                    } else {
                        _gotoNext = 2643809i32;
                    };
                } else if (__value__ == (2643794i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643809i32;
                } else if (__value__ == (2643809i32)) {
                    _gotoNext = 2643809i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2643819i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2643844i32;
                    } else {
                        _gotoNext = 2643897i32;
                    };
                } else if (__value__ == (2643819i32)) {
                    _i++;
                    _gotoNext = 2643897i32;
                } else if (__value__ == (2643844i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2643897i32;
                } else if (__value__ == (2643897i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2644039i32;
                    } else {
                        _gotoNext = 2644140i32;
                    };
                } else if (__value__ == (2644039i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2644140i32;
                } else if (__value__ == (2644140i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2644207i32;
                } else if (__value__ == (2644207i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644214i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2644236i32;
                    } else {
                        _gotoNext = 2644956i32;
                    };
                } else if (__value__ == (2644236i32)) {
                    _gotoNext = 2644240i32;
                } else if (__value__ == (2644240i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2644267i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2644319i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2644412i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2644704i32;
                            } else {
                                _gotoNext = 2644946i32;
                            };
                        };
                    };
                } else if (__value__ == (2644267i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644319i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2644347i32;
                    } else {
                        _gotoNext = 2644372i32;
                    };
                } else if (__value__ == (2644347i32)) {
                    _loopBreak = true;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644372i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644412i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2644485i32;
                    } else {
                        _gotoNext = 2644541i32;
                    };
                } else if (__value__ == (2644485i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644541i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2644575i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2644665i32;
                    } else {
                        _gotoNext = 2644692i32;
                    };
                } else if (__value__ == (2644575i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2644692i32;
                } else if (__value__ == (2644665i32)) {
                    _trunc = true;
                    _gotoNext = 2644692i32;
                } else if (__value__ == (2644692i32)) {
                    _i++;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644704i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2644816i32;
                    } else {
                        _gotoNext = 2644904i32;
                    };
                } else if (__value__ == (2644816i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2644931i32;
                } else if (__value__ == (2644904i32)) {
                    _gotoNext = 2644904i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2644931i32;
                } else if (__value__ == (2644931i32)) {
                    _i++;
                    _gotoNext = 2644214i32;
                } else if (__value__ == (2644946i32)) {
                    _gotoNext = 2644956i32;
                } else if (__value__ == (2644956i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2644970i32;
                    } else {
                        _gotoNext = 2644985i32;
                    };
                } else if (__value__ == (2644970i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2644985i32;
                } else if (__value__ == (2644985i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2644996i32;
                    } else {
                        _gotoNext = 2645013i32;
                    };
                } else if (__value__ == (2644996i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2645013i32;
                } else if (__value__ == (2645013i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2645027i32;
                    } else {
                        _gotoNext = 2645272i32;
                    };
                } else if (__value__ == (2645027i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2645272i32;
                } else if (__value__ == (2645272i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2645312i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2645745i32;
                    } else {
                        _gotoNext = 2645786i32;
                    };
                } else if (__value__ == (2645312i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2645337i32;
                    } else {
                        _gotoNext = 2645355i32;
                    };
                } else if (__value__ == (2645337i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645355i32;
                } else if (__value__ == (2645355i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2645383i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2645416i32;
                    } else {
                        _gotoNext = 2645445i32;
                    };
                } else if (__value__ == (2645383i32)) {
                    _i++;
                    _gotoNext = 2645445i32;
                } else if (__value__ == (2645416i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2645445i32;
                } else if (__value__ == (2645445i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2645488i32;
                    } else {
                        _gotoNext = 2645506i32;
                    };
                } else if (__value__ == (2645488i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645506i32;
                } else if (__value__ == (2645506i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2645515i32;
                } else if (__value__ == (2645515i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2645584i32;
                    } else {
                        _gotoNext = 2645707i32;
                    };
                } else if (__value__ == (2645580i32)) {
                    _i++;
                    _gotoNext = 2645515i32;
                } else if (__value__ == (2645584i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2645604i32;
                    } else {
                        _gotoNext = 2645650i32;
                    };
                } else if (__value__ == (2645604i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2645515i32;
                } else if (__value__ == (2645650i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2645663i32;
                    } else {
                        _gotoNext = 2645580i32;
                    };
                } else if (__value__ == (2645663i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2645580i32;
                } else if (__value__ == (2645707i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2645786i32;
                } else if (__value__ == (2645745i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645786i32;
                } else if (__value__ == (2645786i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2645803i32;
                    } else {
                        _gotoNext = 2645830i32;
                    };
                } else if (__value__ == (2645803i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2645830i32;
                } else if (__value__ == (2645830i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2645869i32;
                    } else {
                        _gotoNext = 2645885i32;
                    };
                } else if (__value__ == (2645869i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645885i32;
                } else if (__value__ == (2645885i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
