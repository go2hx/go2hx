package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _loopBreak = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2685346i32;
                    } else {
                        _gotoNext = 2685361i32;
                    };
                } else if (__value__ == (2685346i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2685361i32;
                } else if (__value__ == (2685361i32)) {
                    _gotoNext = 2685361i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2685371i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2685396i32;
                    } else {
                        _gotoNext = 2685449i32;
                    };
                } else if (__value__ == (2685371i32)) {
                    _i++;
                    _gotoNext = 2685449i32;
                } else if (__value__ == (2685396i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2685449i32;
                } else if (__value__ == (2685449i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2685591i32;
                    } else {
                        _gotoNext = 2685692i32;
                    };
                } else if (__value__ == (2685591i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2685692i32;
                } else if (__value__ == (2685692i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2685759i32;
                } else if (__value__ == (2685759i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2685766i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2685788i32;
                    } else {
                        _gotoNext = 2686508i32;
                    };
                } else if (__value__ == (2685788i32)) {
                    _gotoNext = 2685792i32;
                } else if (__value__ == (2685792i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2685819i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2685871i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2685964i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2686256i32;
                            } else {
                                _gotoNext = 2686498i32;
                            };
                        };
                    };
                } else if (__value__ == (2685819i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2685871i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2685899i32;
                    } else {
                        _gotoNext = 2685924i32;
                    };
                } else if (__value__ == (2685899i32)) {
                    _loopBreak = true;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2685924i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2685964i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2686037i32;
                    } else {
                        _gotoNext = 2686093i32;
                    };
                } else if (__value__ == (2686037i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2686093i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2686127i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2686217i32;
                    } else {
                        _gotoNext = 2686244i32;
                    };
                } else if (__value__ == (2686127i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2686244i32;
                } else if (__value__ == (2686217i32)) {
                    _trunc = true;
                    _gotoNext = 2686244i32;
                } else if (__value__ == (2686244i32)) {
                    _i++;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2686256i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2686368i32;
                    } else {
                        _gotoNext = 2686456i32;
                    };
                } else if (__value__ == (2686368i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2686483i32;
                } else if (__value__ == (2686456i32)) {
                    _gotoNext = 2686456i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2686483i32;
                } else if (__value__ == (2686483i32)) {
                    _i++;
                    _gotoNext = 2685766i32;
                } else if (__value__ == (2686498i32)) {
                    _gotoNext = 2686508i32;
                } else if (__value__ == (2686508i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2686522i32;
                    } else {
                        _gotoNext = 2686537i32;
                    };
                } else if (__value__ == (2686522i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686537i32;
                } else if (__value__ == (2686537i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2686548i32;
                    } else {
                        _gotoNext = 2686565i32;
                    };
                } else if (__value__ == (2686548i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2686565i32;
                } else if (__value__ == (2686565i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2686579i32;
                    } else {
                        _gotoNext = 2686824i32;
                    };
                } else if (__value__ == (2686579i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2686824i32;
                } else if (__value__ == (2686824i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2686864i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2687297i32;
                    } else {
                        _gotoNext = 2687338i32;
                    };
                } else if (__value__ == (2686864i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2686889i32;
                    } else {
                        _gotoNext = 2686907i32;
                    };
                } else if (__value__ == (2686889i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686907i32;
                } else if (__value__ == (2686907i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2686935i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2686968i32;
                    } else {
                        _gotoNext = 2686997i32;
                    };
                } else if (__value__ == (2686935i32)) {
                    _i++;
                    _gotoNext = 2686997i32;
                } else if (__value__ == (2686968i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2686997i32;
                } else if (__value__ == (2686997i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2687040i32;
                    } else {
                        _gotoNext = 2687058i32;
                    };
                } else if (__value__ == (2687040i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687058i32;
                } else if (__value__ == (2687058i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2687067i32;
                } else if (__value__ == (2687067i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2687136i32;
                    } else {
                        _gotoNext = 2687259i32;
                    };
                } else if (__value__ == (2687132i32)) {
                    _i++;
                    _gotoNext = 2687067i32;
                } else if (__value__ == (2687136i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2687156i32;
                    } else {
                        _gotoNext = 2687202i32;
                    };
                } else if (__value__ == (2687156i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2687067i32;
                } else if (__value__ == (2687202i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2687215i32;
                    } else {
                        _gotoNext = 2687132i32;
                    };
                } else if (__value__ == (2687215i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2687132i32;
                } else if (__value__ == (2687259i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2687338i32;
                } else if (__value__ == (2687297i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687338i32;
                } else if (__value__ == (2687338i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2687355i32;
                    } else {
                        _gotoNext = 2687382i32;
                    };
                } else if (__value__ == (2687355i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2687382i32;
                } else if (__value__ == (2687382i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2687421i32;
                    } else {
                        _gotoNext = 2687437i32;
                    };
                } else if (__value__ == (2687421i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687437i32;
                } else if (__value__ == (2687437i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
