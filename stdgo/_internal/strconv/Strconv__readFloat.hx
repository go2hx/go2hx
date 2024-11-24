package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2643498:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2643469:Bool = false;
        var _sawdot_2643452:Bool = false;
        var _nd_2643489:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2644818:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2643559:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _dp_2643511:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2643274:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2643229:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2643209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2643050:Bool = false;
        var _esign_2644667:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2643050 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2643106i32;
                    } else {
                        _gotoNext = 2643121i32;
                    };
                } else if (__value__ == (2643106i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643121i32;
                } else if (__value__ == (2643121i32)) {
                    _gotoNext = 2643121i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2643131i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2643156i32;
                    } else {
                        _gotoNext = 2643209i32;
                    };
                } else if (__value__ == (2643131i32)) {
                    _i++;
                    _gotoNext = 2643209i32;
                } else if (__value__ == (2643156i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2643209i32;
                } else if (__value__ == (2643209i32)) {
                    _base_2643209 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2643229 = (19 : stdgo.GoInt);
                    _expChar_2643274 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2643351i32;
                    } else {
                        _gotoNext = 2643452i32;
                    };
                } else if (__value__ == (2643351i32)) {
                    _base_2643209 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2643229 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2643274 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2643452i32;
                } else if (__value__ == (2643452i32)) {
                    _sawdot_2643452 = false;
                    _sawdigits_2643469 = false;
                    _nd_2643489 = (0 : stdgo.GoInt);
                    _ndMant_2643498 = (0 : stdgo.GoInt);
                    _dp_2643511 = (0 : stdgo.GoInt);
                    _gotoNext = 2643519i32;
                } else if (__value__ == (2643519i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2643526i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2643548i32;
                    } else {
                        _gotoNext = 2644268i32;
                    };
                } else if (__value__ == (2643548i32)) {
                    _gotoNext = 2643552i32;
                } else if (__value__ == (2643552i32)) {
                    {
                        _c_2643559 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2643559 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2643579i32;
                            } else if (__value__ == (_c_2643559 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2643631i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2643559 : Bool) && (_c_2643559 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2643724i32;
                            } else if (__value__ == (((_base_2643209 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2643559) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2643559) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2644016i32;
                            } else {
                                _gotoNext = 2644258i32;
                            };
                        };
                    };
                } else if (__value__ == (2643579i32)) {
                    _underscores_2643050 = true;
                    _i++;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2643631i32)) {
                    if (_sawdot_2643452) {
                        _gotoNext = 2643659i32;
                    } else {
                        _gotoNext = 2643684i32;
                    };
                } else if (__value__ == (2643659i32)) {
                    _loopBreak = true;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2643684i32)) {
                    _sawdot_2643452 = true;
                    _dp_2643511 = _nd_2643489;
                    _i++;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2643724i32)) {
                    _sawdigits_2643469 = true;
                    if (((_c_2643559 == (48 : stdgo.GoUInt8)) && (_nd_2643489 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2643797i32;
                    } else {
                        _gotoNext = 2643853i32;
                    };
                } else if (__value__ == (2643797i32)) {
                    _dp_2643511--;
                    _i++;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2643853i32)) {
                    _nd_2643489++;
                    if ((_ndMant_2643498 < _maxMantDigits_2643229 : Bool)) {
                        _gotoNext = 2643887i32;
                    } else if (_c_2643559 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2643977i32;
                    } else {
                        _gotoNext = 2644004i32;
                    };
                } else if (__value__ == (2643887i32)) {
                    _mantissa = (_mantissa * (_base_2643209) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2643559 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2643498++;
                    _gotoNext = 2644004i32;
                } else if (__value__ == (2643977i32)) {
                    _trunc = true;
                    _gotoNext = 2644004i32;
                } else if (__value__ == (2644004i32)) {
                    _i++;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2644016i32)) {
                    _sawdigits_2643469 = true;
                    _nd_2643489++;
                    if ((_ndMant_2643498 < _maxMantDigits_2643229 : Bool)) {
                        _gotoNext = 2644128i32;
                    } else {
                        _gotoNext = 2644216i32;
                    };
                } else if (__value__ == (2644128i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2643559) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2643498++;
                    _gotoNext = 2644243i32;
                } else if (__value__ == (2644216i32)) {
                    _gotoNext = 2644216i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2644243i32;
                } else if (__value__ == (2644243i32)) {
                    _i++;
                    _gotoNext = 2643526i32;
                } else if (__value__ == (2644258i32)) {
                    _gotoNext = 2644268i32;
                } else if (__value__ == (2644268i32)) {
                    if (!_sawdigits_2643469) {
                        _gotoNext = 2644282i32;
                    } else {
                        _gotoNext = 2644297i32;
                    };
                } else if (__value__ == (2644282i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2644297i32;
                } else if (__value__ == (2644297i32)) {
                    if (!_sawdot_2643452) {
                        _gotoNext = 2644308i32;
                    } else {
                        _gotoNext = 2644325i32;
                    };
                } else if (__value__ == (2644308i32)) {
                    _dp_2643511 = _nd_2643489;
                    _gotoNext = 2644325i32;
                } else if (__value__ == (2644325i32)) {
                    if (_base_2643209 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2644339i32;
                    } else {
                        _gotoNext = 2644584i32;
                    };
                } else if (__value__ == (2644339i32)) {
                    _dp_2643511 = (_dp_2643511 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2643498 = (_ndMant_2643498 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2644584i32;
                } else if (__value__ == (2644584i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2643274) : Bool)) {
                        _gotoNext = 2644624i32;
                    } else if (_base_2643209 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2645057i32;
                    } else {
                        _gotoNext = 2645098i32;
                    };
                } else if (__value__ == (2644624i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2644649i32;
                    } else {
                        _gotoNext = 2644667i32;
                    };
                } else if (__value__ == (2644649i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2644667i32;
                } else if (__value__ == (2644667i32)) {
                    _esign_2644667 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2644695i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2644728i32;
                    } else {
                        _gotoNext = 2644757i32;
                    };
                } else if (__value__ == (2644695i32)) {
                    _i++;
                    _gotoNext = 2644757i32;
                } else if (__value__ == (2644728i32)) {
                    _i++;
                    _esign_2644667 = (-1 : stdgo.GoInt);
                    _gotoNext = 2644757i32;
                } else if (__value__ == (2644757i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2644800i32;
                    } else {
                        _gotoNext = 2644818i32;
                    };
                } else if (__value__ == (2644800i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2644818i32;
                } else if (__value__ == (2644818i32)) {
                    _e_2644818 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2644827i32;
                } else if (__value__ == (2644827i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2644896i32;
                    } else {
                        _gotoNext = 2645019i32;
                    };
                } else if (__value__ == (2644892i32)) {
                    _i++;
                    _gotoNext = 2644827i32;
                } else if (__value__ == (2644896i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2644916i32;
                    } else {
                        _gotoNext = 2644962i32;
                    };
                } else if (__value__ == (2644916i32)) {
                    _underscores_2643050 = true;
                    _i++;
                    _gotoNext = 2644827i32;
                } else if (__value__ == (2644962i32)) {
                    if ((_e_2644818 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2644975i32;
                    } else {
                        _gotoNext = 2644892i32;
                    };
                } else if (__value__ == (2644975i32)) {
                    _e_2644818 = (((_e_2644818 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2644892i32;
                } else if (__value__ == (2645019i32)) {
                    _dp_2643511 = (_dp_2643511 + ((_e_2644818 * _esign_2644667 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2645098i32;
                } else if (__value__ == (2645057i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645098i32;
                } else if (__value__ == (2645098i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2645115i32;
                    } else {
                        _gotoNext = 2645142i32;
                    };
                } else if (__value__ == (2645115i32)) {
                    _exp = (_dp_2643511 - _ndMant_2643498 : stdgo.GoInt);
                    _gotoNext = 2645142i32;
                } else if (__value__ == (2645142i32)) {
                    if ((_underscores_2643050 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2645181i32;
                    } else {
                        _gotoNext = 2645197i32;
                    };
                } else if (__value__ == (2645181i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645197i32;
                } else if (__value__ == (2645197i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
