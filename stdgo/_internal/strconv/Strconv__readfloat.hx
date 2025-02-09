package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_2612105:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2611881:Bool = false;
        var _esign_2613498:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2612320:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2612300:Bool = false;
        var _sawdot_2612283:Bool = false;
        var _dp_2612342:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2612040:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2612390:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _e_2613649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2612329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2612060:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2611881 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2611937i32;
                    } else {
                        _gotoNext = 2611952i32;
                    };
                } else if (__value__ == (2611937i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2611952i32;
                } else if (__value__ == (2611952i32)) {
                    _gotoNext = 2611952i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2611962i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2611987i32;
                    } else {
                        _gotoNext = 2612040i32;
                    };
                } else if (__value__ == (2611962i32)) {
                    _i++;
                    _gotoNext = 2612040i32;
                } else if (__value__ == (2611987i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2612040i32;
                } else if (__value__ == (2612040i32)) {
                    _base_2612040 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2612060 = (19 : stdgo.GoInt);
                    _expChar_2612105 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2612182i32;
                    } else {
                        _gotoNext = 2612283i32;
                    };
                } else if (__value__ == (2612182i32)) {
                    _base_2612040 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2612060 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2612105 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2612283i32;
                } else if (__value__ == (2612283i32)) {
                    _sawdot_2612283 = false;
                    _sawdigits_2612300 = false;
                    _nd_2612320 = (0 : stdgo.GoInt);
                    _ndMant_2612329 = (0 : stdgo.GoInt);
                    _dp_2612342 = (0 : stdgo.GoInt);
                    _gotoNext = 2612350i32;
                } else if (__value__ == (2612350i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2612357i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2612379i32;
                    } else {
                        _gotoNext = 2613099i32;
                    };
                } else if (__value__ == (2612379i32)) {
                    _gotoNext = 2612383i32;
                } else if (__value__ == (2612383i32)) {
                    {
                        _c_2612390 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2612390 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2612410i32;
                            } else if (__value__ == (_c_2612390 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2612462i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2612390 : Bool) && (_c_2612390 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2612555i32;
                            } else if (__value__ == (((_base_2612040 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2612390) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2612390) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2612847i32;
                            } else {
                                _gotoNext = 2613089i32;
                            };
                        };
                    };
                } else if (__value__ == (2612410i32)) {
                    _underscores_2611881 = true;
                    _i++;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2612462i32)) {
                    if (_sawdot_2612283) {
                        _gotoNext = 2612490i32;
                    } else {
                        _gotoNext = 2612515i32;
                    };
                } else if (__value__ == (2612490i32)) {
                    _loopBreak = true;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2612515i32)) {
                    _sawdot_2612283 = true;
                    _dp_2612342 = _nd_2612320;
                    _i++;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2612555i32)) {
                    _sawdigits_2612300 = true;
                    if (((_c_2612390 == (48 : stdgo.GoUInt8)) && (_nd_2612320 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2612628i32;
                    } else {
                        _gotoNext = 2612684i32;
                    };
                } else if (__value__ == (2612628i32)) {
                    _dp_2612342--;
                    _i++;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2612684i32)) {
                    _nd_2612320++;
                    if ((_ndMant_2612329 < _maxMantDigits_2612060 : Bool)) {
                        _gotoNext = 2612718i32;
                    } else if (_c_2612390 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2612808i32;
                    } else {
                        _gotoNext = 2612835i32;
                    };
                } else if (__value__ == (2612718i32)) {
                    _mantissa = (_mantissa * (_base_2612040) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2612390 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2612329++;
                    _gotoNext = 2612835i32;
                } else if (__value__ == (2612808i32)) {
                    _trunc = true;
                    _gotoNext = 2612835i32;
                } else if (__value__ == (2612835i32)) {
                    _i++;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2612847i32)) {
                    _sawdigits_2612300 = true;
                    _nd_2612320++;
                    if ((_ndMant_2612329 < _maxMantDigits_2612060 : Bool)) {
                        _gotoNext = 2612959i32;
                    } else {
                        _gotoNext = 2613047i32;
                    };
                } else if (__value__ == (2612959i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2612390) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2612329++;
                    _gotoNext = 2613074i32;
                } else if (__value__ == (2613047i32)) {
                    _gotoNext = 2613047i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2613074i32;
                } else if (__value__ == (2613074i32)) {
                    _i++;
                    _gotoNext = 2612357i32;
                } else if (__value__ == (2613089i32)) {
                    _gotoNext = 2613099i32;
                } else if (__value__ == (2613099i32)) {
                    if (!_sawdigits_2612300) {
                        _gotoNext = 2613113i32;
                    } else {
                        _gotoNext = 2613128i32;
                    };
                } else if (__value__ == (2613113i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613128i32;
                } else if (__value__ == (2613128i32)) {
                    if (!_sawdot_2612283) {
                        _gotoNext = 2613139i32;
                    } else {
                        _gotoNext = 2613156i32;
                    };
                } else if (__value__ == (2613139i32)) {
                    _dp_2612342 = _nd_2612320;
                    _gotoNext = 2613156i32;
                } else if (__value__ == (2613156i32)) {
                    if (_base_2612040 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2613170i32;
                    } else {
                        _gotoNext = 2613415i32;
                    };
                } else if (__value__ == (2613170i32)) {
                    _dp_2612342 = (_dp_2612342 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2612329 = (_ndMant_2612329 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2613415i32;
                } else if (__value__ == (2613415i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2612105) : Bool)) {
                        _gotoNext = 2613455i32;
                    } else if (_base_2612040 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2613888i32;
                    } else {
                        _gotoNext = 2613929i32;
                    };
                } else if (__value__ == (2613455i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2613480i32;
                    } else {
                        _gotoNext = 2613498i32;
                    };
                } else if (__value__ == (2613480i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613498i32;
                } else if (__value__ == (2613498i32)) {
                    _esign_2613498 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2613526i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2613559i32;
                    } else {
                        _gotoNext = 2613588i32;
                    };
                } else if (__value__ == (2613526i32)) {
                    _i++;
                    _gotoNext = 2613588i32;
                } else if (__value__ == (2613559i32)) {
                    _i++;
                    _esign_2613498 = (-1 : stdgo.GoInt);
                    _gotoNext = 2613588i32;
                } else if (__value__ == (2613588i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2613631i32;
                    } else {
                        _gotoNext = 2613649i32;
                    };
                } else if (__value__ == (2613631i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613649i32;
                } else if (__value__ == (2613649i32)) {
                    _e_2613649 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2613658i32;
                } else if (__value__ == (2613658i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2613727i32;
                    } else {
                        _gotoNext = 2613850i32;
                    };
                } else if (__value__ == (2613723i32)) {
                    _i++;
                    _gotoNext = 2613658i32;
                } else if (__value__ == (2613727i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2613747i32;
                    } else {
                        _gotoNext = 2613793i32;
                    };
                } else if (__value__ == (2613747i32)) {
                    _underscores_2611881 = true;
                    _i++;
                    _gotoNext = 2613658i32;
                } else if (__value__ == (2613793i32)) {
                    if ((_e_2613649 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2613806i32;
                    } else {
                        _gotoNext = 2613723i32;
                    };
                } else if (__value__ == (2613806i32)) {
                    _e_2613649 = (((_e_2613649 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2613723i32;
                } else if (__value__ == (2613850i32)) {
                    _dp_2612342 = (_dp_2612342 + ((_e_2613649 * _esign_2613498 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2613929i32;
                } else if (__value__ == (2613888i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613929i32;
                } else if (__value__ == (2613929i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2613946i32;
                    } else {
                        _gotoNext = 2613973i32;
                    };
                } else if (__value__ == (2613946i32)) {
                    _exp = (_dp_2612342 - _ndMant_2612329 : stdgo.GoInt);
                    _gotoNext = 2613973i32;
                } else if (__value__ == (2613973i32)) {
                    if ((_underscores_2611881 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2614012i32;
                    } else {
                        _gotoNext = 2614028i32;
                    };
                } else if (__value__ == (2614012i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614028i32;
                } else if (__value__ == (2614028i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
