package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_2617450:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2618994:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2617687:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2617665:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2617645:Bool = false;
        var _sawdot_2617628:Bool = false;
        var _base_2617385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ndMant_2617674:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2617226:Bool = false;
        var _esign_2618843:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2617735:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _maxMantDigits_2617405:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2617226 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2617282i32;
                    } else {
                        _gotoNext = 2617297i32;
                    };
                } else if (__value__ == (2617282i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2617297i32;
                } else if (__value__ == (2617297i32)) {
                    _gotoNext = 2617297i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2617307i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2617332i32;
                    } else {
                        _gotoNext = 2617385i32;
                    };
                } else if (__value__ == (2617307i32)) {
                    _i++;
                    _gotoNext = 2617385i32;
                } else if (__value__ == (2617332i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2617385i32;
                } else if (__value__ == (2617385i32)) {
                    _base_2617385 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2617405 = (19 : stdgo.GoInt);
                    _expChar_2617450 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2617527i32;
                    } else {
                        _gotoNext = 2617628i32;
                    };
                } else if (__value__ == (2617527i32)) {
                    _base_2617385 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2617405 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2617450 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2617628i32;
                } else if (__value__ == (2617628i32)) {
                    _sawdot_2617628 = false;
                    _sawdigits_2617645 = false;
                    _nd_2617665 = (0 : stdgo.GoInt);
                    _ndMant_2617674 = (0 : stdgo.GoInt);
                    _dp_2617687 = (0 : stdgo.GoInt);
                    _gotoNext = 2617695i32;
                } else if (__value__ == (2617695i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2617702i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2617724i32;
                    } else {
                        _gotoNext = 2618444i32;
                    };
                } else if (__value__ == (2617724i32)) {
                    _gotoNext = 2617728i32;
                } else if (__value__ == (2617728i32)) {
                    {
                        _c_2617735 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2617735 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2617755i32;
                            } else if (__value__ == (_c_2617735 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2617807i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2617735 : Bool) && (_c_2617735 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2617900i32;
                            } else if (__value__ == (((_base_2617385 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2617735) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2617735) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2618192i32;
                            } else {
                                _gotoNext = 2618434i32;
                            };
                        };
                    };
                } else if (__value__ == (2617755i32)) {
                    _underscores_2617226 = true;
                    _i++;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2617807i32)) {
                    if (_sawdot_2617628) {
                        _gotoNext = 2617835i32;
                    } else {
                        _gotoNext = 2617860i32;
                    };
                } else if (__value__ == (2617835i32)) {
                    _loopBreak = true;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2617860i32)) {
                    _sawdot_2617628 = true;
                    _dp_2617687 = _nd_2617665;
                    _i++;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2617900i32)) {
                    _sawdigits_2617645 = true;
                    if (((_c_2617735 == (48 : stdgo.GoUInt8)) && (_nd_2617665 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2617973i32;
                    } else {
                        _gotoNext = 2618029i32;
                    };
                } else if (__value__ == (2617973i32)) {
                    _dp_2617687--;
                    _i++;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2618029i32)) {
                    _nd_2617665++;
                    if ((_ndMant_2617674 < _maxMantDigits_2617405 : Bool)) {
                        _gotoNext = 2618063i32;
                    } else if (_c_2617735 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2618153i32;
                    } else {
                        _gotoNext = 2618180i32;
                    };
                } else if (__value__ == (2618063i32)) {
                    _mantissa = (_mantissa * (_base_2617385) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2617735 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2617674++;
                    _gotoNext = 2618180i32;
                } else if (__value__ == (2618153i32)) {
                    _trunc = true;
                    _gotoNext = 2618180i32;
                } else if (__value__ == (2618180i32)) {
                    _i++;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2618192i32)) {
                    _sawdigits_2617645 = true;
                    _nd_2617665++;
                    if ((_ndMant_2617674 < _maxMantDigits_2617405 : Bool)) {
                        _gotoNext = 2618304i32;
                    } else {
                        _gotoNext = 2618392i32;
                    };
                } else if (__value__ == (2618304i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2617735) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2617674++;
                    _gotoNext = 2618419i32;
                } else if (__value__ == (2618392i32)) {
                    _gotoNext = 2618392i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2618419i32;
                } else if (__value__ == (2618419i32)) {
                    _i++;
                    _gotoNext = 2617702i32;
                } else if (__value__ == (2618434i32)) {
                    _gotoNext = 2618444i32;
                } else if (__value__ == (2618444i32)) {
                    if (!_sawdigits_2617645) {
                        _gotoNext = 2618458i32;
                    } else {
                        _gotoNext = 2618473i32;
                    };
                } else if (__value__ == (2618458i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618473i32;
                } else if (__value__ == (2618473i32)) {
                    if (!_sawdot_2617628) {
                        _gotoNext = 2618484i32;
                    } else {
                        _gotoNext = 2618501i32;
                    };
                } else if (__value__ == (2618484i32)) {
                    _dp_2617687 = _nd_2617665;
                    _gotoNext = 2618501i32;
                } else if (__value__ == (2618501i32)) {
                    if (_base_2617385 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2618515i32;
                    } else {
                        _gotoNext = 2618760i32;
                    };
                } else if (__value__ == (2618515i32)) {
                    _dp_2617687 = (_dp_2617687 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2617674 = (_ndMant_2617674 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2618760i32;
                } else if (__value__ == (2618760i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2617450) : Bool)) {
                        _gotoNext = 2618800i32;
                    } else if (_base_2617385 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619233i32;
                    } else {
                        _gotoNext = 2619274i32;
                    };
                } else if (__value__ == (2618800i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2618825i32;
                    } else {
                        _gotoNext = 2618843i32;
                    };
                } else if (__value__ == (2618825i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618843i32;
                } else if (__value__ == (2618843i32)) {
                    _esign_2618843 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2618871i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2618904i32;
                    } else {
                        _gotoNext = 2618933i32;
                    };
                } else if (__value__ == (2618871i32)) {
                    _i++;
                    _gotoNext = 2618933i32;
                } else if (__value__ == (2618904i32)) {
                    _i++;
                    _esign_2618843 = (-1 : stdgo.GoInt);
                    _gotoNext = 2618933i32;
                } else if (__value__ == (2618933i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2618976i32;
                    } else {
                        _gotoNext = 2618994i32;
                    };
                } else if (__value__ == (2618976i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618994i32;
                } else if (__value__ == (2618994i32)) {
                    _e_2618994 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2619003i32;
                } else if (__value__ == (2619003i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2619072i32;
                    } else {
                        _gotoNext = 2619195i32;
                    };
                } else if (__value__ == (2619068i32)) {
                    _i++;
                    _gotoNext = 2619003i32;
                } else if (__value__ == (2619072i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2619092i32;
                    } else {
                        _gotoNext = 2619138i32;
                    };
                } else if (__value__ == (2619092i32)) {
                    _underscores_2617226 = true;
                    _i++;
                    _gotoNext = 2619003i32;
                } else if (__value__ == (2619138i32)) {
                    if ((_e_2618994 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2619151i32;
                    } else {
                        _gotoNext = 2619068i32;
                    };
                } else if (__value__ == (2619151i32)) {
                    _e_2618994 = (((_e_2618994 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2619068i32;
                } else if (__value__ == (2619195i32)) {
                    _dp_2617687 = (_dp_2617687 + ((_e_2618994 * _esign_2618843 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2619274i32;
                } else if (__value__ == (2619233i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619274i32;
                } else if (__value__ == (2619274i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619291i32;
                    } else {
                        _gotoNext = 2619318i32;
                    };
                } else if (__value__ == (2619291i32)) {
                    _exp = (_dp_2617687 - _ndMant_2617674 : stdgo.GoInt);
                    _gotoNext = 2619318i32;
                } else if (__value__ == (2619318i32)) {
                    if ((_underscores_2617226 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2619357i32;
                    } else {
                        _gotoNext = 2619373i32;
                    };
                } else if (__value__ == (2619357i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619373i32;
                } else if (__value__ == (2619373i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
