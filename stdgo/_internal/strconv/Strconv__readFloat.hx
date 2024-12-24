package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2616713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2615169:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _dp_2615406:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2615124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2616562:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2615454:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2615393:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2615384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2615347:Bool = false;
        var _underscores_2614945:Bool = false;
        var _sawdigits_2615364:Bool = false;
        var _base_2615104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2614945 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2615001i32;
                    } else {
                        _gotoNext = 2615016i32;
                    };
                } else if (__value__ == (2615001i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2615016i32;
                } else if (__value__ == (2615016i32)) {
                    _gotoNext = 2615016i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2615026i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2615051i32;
                    } else {
                        _gotoNext = 2615104i32;
                    };
                } else if (__value__ == (2615026i32)) {
                    _i++;
                    _gotoNext = 2615104i32;
                } else if (__value__ == (2615051i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2615104i32;
                } else if (__value__ == (2615104i32)) {
                    _base_2615104 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2615124 = (19 : stdgo.GoInt);
                    _expChar_2615169 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2615246i32;
                    } else {
                        _gotoNext = 2615347i32;
                    };
                } else if (__value__ == (2615246i32)) {
                    _base_2615104 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2615124 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2615169 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2615347i32;
                } else if (__value__ == (2615347i32)) {
                    _sawdot_2615347 = false;
                    _sawdigits_2615364 = false;
                    _nd_2615384 = (0 : stdgo.GoInt);
                    _ndMant_2615393 = (0 : stdgo.GoInt);
                    _dp_2615406 = (0 : stdgo.GoInt);
                    _gotoNext = 2615414i32;
                } else if (__value__ == (2615414i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2615421i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2615443i32;
                    } else {
                        _gotoNext = 2616163i32;
                    };
                } else if (__value__ == (2615443i32)) {
                    _gotoNext = 2615447i32;
                } else if (__value__ == (2615447i32)) {
                    {
                        _c_2615454 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2615454 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2615474i32;
                            } else if (__value__ == (_c_2615454 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2615526i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2615454 : Bool) && (_c_2615454 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2615619i32;
                            } else if (__value__ == (((_base_2615104 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2615454) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2615454) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2615911i32;
                            } else {
                                _gotoNext = 2616153i32;
                            };
                        };
                    };
                } else if (__value__ == (2615474i32)) {
                    _underscores_2614945 = true;
                    _i++;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2615526i32)) {
                    if (_sawdot_2615347) {
                        _gotoNext = 2615554i32;
                    } else {
                        _gotoNext = 2615579i32;
                    };
                } else if (__value__ == (2615554i32)) {
                    _loopBreak = true;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2615579i32)) {
                    _sawdot_2615347 = true;
                    _dp_2615406 = _nd_2615384;
                    _i++;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2615619i32)) {
                    _sawdigits_2615364 = true;
                    if (((_c_2615454 == (48 : stdgo.GoUInt8)) && (_nd_2615384 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2615692i32;
                    } else {
                        _gotoNext = 2615748i32;
                    };
                } else if (__value__ == (2615692i32)) {
                    _dp_2615406--;
                    _i++;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2615748i32)) {
                    _nd_2615384++;
                    if ((_ndMant_2615393 < _maxMantDigits_2615124 : Bool)) {
                        _gotoNext = 2615782i32;
                    } else if (_c_2615454 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2615872i32;
                    } else {
                        _gotoNext = 2615899i32;
                    };
                } else if (__value__ == (2615782i32)) {
                    _mantissa = (_mantissa * (_base_2615104) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2615454 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2615393++;
                    _gotoNext = 2615899i32;
                } else if (__value__ == (2615872i32)) {
                    _trunc = true;
                    _gotoNext = 2615899i32;
                } else if (__value__ == (2615899i32)) {
                    _i++;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2615911i32)) {
                    _sawdigits_2615364 = true;
                    _nd_2615384++;
                    if ((_ndMant_2615393 < _maxMantDigits_2615124 : Bool)) {
                        _gotoNext = 2616023i32;
                    } else {
                        _gotoNext = 2616111i32;
                    };
                } else if (__value__ == (2616023i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2615454) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2615393++;
                    _gotoNext = 2616138i32;
                } else if (__value__ == (2616111i32)) {
                    _gotoNext = 2616111i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2616138i32;
                } else if (__value__ == (2616138i32)) {
                    _i++;
                    _gotoNext = 2615421i32;
                } else if (__value__ == (2616153i32)) {
                    _gotoNext = 2616163i32;
                } else if (__value__ == (2616163i32)) {
                    if (!_sawdigits_2615364) {
                        _gotoNext = 2616177i32;
                    } else {
                        _gotoNext = 2616192i32;
                    };
                } else if (__value__ == (2616177i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616192i32;
                } else if (__value__ == (2616192i32)) {
                    if (!_sawdot_2615347) {
                        _gotoNext = 2616203i32;
                    } else {
                        _gotoNext = 2616220i32;
                    };
                } else if (__value__ == (2616203i32)) {
                    _dp_2615406 = _nd_2615384;
                    _gotoNext = 2616220i32;
                } else if (__value__ == (2616220i32)) {
                    if (_base_2615104 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2616234i32;
                    } else {
                        _gotoNext = 2616479i32;
                    };
                } else if (__value__ == (2616234i32)) {
                    _dp_2615406 = (_dp_2615406 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2615393 = (_ndMant_2615393 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2616479i32;
                } else if (__value__ == (2616479i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2615169) : Bool)) {
                        _gotoNext = 2616519i32;
                    } else if (_base_2615104 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2616952i32;
                    } else {
                        _gotoNext = 2616993i32;
                    };
                } else if (__value__ == (2616519i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2616544i32;
                    } else {
                        _gotoNext = 2616562i32;
                    };
                } else if (__value__ == (2616544i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616562i32;
                } else if (__value__ == (2616562i32)) {
                    _esign_2616562 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2616590i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2616623i32;
                    } else {
                        _gotoNext = 2616652i32;
                    };
                } else if (__value__ == (2616590i32)) {
                    _i++;
                    _gotoNext = 2616652i32;
                } else if (__value__ == (2616623i32)) {
                    _i++;
                    _esign_2616562 = (-1 : stdgo.GoInt);
                    _gotoNext = 2616652i32;
                } else if (__value__ == (2616652i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2616695i32;
                    } else {
                        _gotoNext = 2616713i32;
                    };
                } else if (__value__ == (2616695i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616713i32;
                } else if (__value__ == (2616713i32)) {
                    _e_2616713 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2616722i32;
                } else if (__value__ == (2616722i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2616791i32;
                    } else {
                        _gotoNext = 2616914i32;
                    };
                } else if (__value__ == (2616787i32)) {
                    _i++;
                    _gotoNext = 2616722i32;
                } else if (__value__ == (2616791i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2616811i32;
                    } else {
                        _gotoNext = 2616857i32;
                    };
                } else if (__value__ == (2616811i32)) {
                    _underscores_2614945 = true;
                    _i++;
                    _gotoNext = 2616722i32;
                } else if (__value__ == (2616857i32)) {
                    if ((_e_2616713 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2616870i32;
                    } else {
                        _gotoNext = 2616787i32;
                    };
                } else if (__value__ == (2616870i32)) {
                    _e_2616713 = (((_e_2616713 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2616787i32;
                } else if (__value__ == (2616914i32)) {
                    _dp_2615406 = (_dp_2615406 + ((_e_2616713 * _esign_2616562 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2616993i32;
                } else if (__value__ == (2616952i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616993i32;
                } else if (__value__ == (2616993i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2617010i32;
                    } else {
                        _gotoNext = 2617037i32;
                    };
                } else if (__value__ == (2617010i32)) {
                    _exp = (_dp_2615406 - _ndMant_2615393 : stdgo.GoInt);
                    _gotoNext = 2617037i32;
                } else if (__value__ == (2617037i32)) {
                    if ((_underscores_2614945 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2617076i32;
                    } else {
                        _gotoNext = 2617092i32;
                    };
                } else if (__value__ == (2617076i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2617092i32;
                } else if (__value__ == (2617092i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
