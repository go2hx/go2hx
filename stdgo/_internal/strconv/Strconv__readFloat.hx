package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2676313:Bool = false;
        var _esign_2677511:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2676403:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2676342:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2676073:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2675894:Bool = false;
        var _e_2677662:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2676355:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2676296:Bool = false;
        var _nd_2676333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2676118:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2676053:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2675894 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2675950i32;
                    } else {
                        _gotoNext = 2675965i32;
                    };
                } else if (__value__ == (2675950i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675965i32;
                } else if (__value__ == (2675965i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2675965i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2675975i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2676000i32;
                    } else {
                        _gotoNext = 2676053i32;
                    };
                } else if (__value__ == (2675975i32)) {
                    _i++;
                    _gotoNext = 2676053i32;
                } else if (__value__ == (2676000i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2676053i32;
                } else if (__value__ == (2676053i32)) {
                    _base_2676053 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2676073 = (19 : stdgo.GoInt);
                    _expChar_2676118 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2676195i32;
                    } else {
                        _gotoNext = 2676296i32;
                    };
                } else if (__value__ == (2676195i32)) {
                    _base_2676053 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2676073 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2676118 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2676296i32;
                } else if (__value__ == (2676296i32)) {
                    _sawdot_2676296 = false;
                    _sawdigits_2676313 = false;
                    _nd_2676333 = (0 : stdgo.GoInt);
                    _ndMant_2676342 = (0 : stdgo.GoInt);
                    _dp_2676355 = (0 : stdgo.GoInt);
                    _gotoNext = 2676363i32;
                } else if (__value__ == (2676363i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2676370i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2676392i32;
                    } else {
                        _gotoNext = 2677112i32;
                    };
                } else if (__value__ == (2676392i32)) {
                    _c_2676403 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2676396i32;
                } else if (__value__ == (2676396i32)) {
                    {
                        _c_2676403 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2676403 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2676423i32;
                            } else if (__value__ == (_c_2676403 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2676475i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2676403 : Bool) && (_c_2676403 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2676568i32;
                            } else if (__value__ == (((_base_2676053 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2676403) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2676403) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2676860i32;
                            } else {
                                _gotoNext = 2677102i32;
                            };
                        };
                    };
                } else if (__value__ == (2676423i32)) {
                    _underscores_2675894 = true;
                    _i++;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2676475i32)) {
                    if (_sawdot_2676296) {
                        _gotoNext = 2676503i32;
                    } else {
                        _gotoNext = 2676528i32;
                    };
                } else if (__value__ == (2676503i32)) {
                    _loopBreak = true;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2676528i32)) {
                    _sawdot_2676296 = true;
                    _dp_2676355 = _nd_2676333;
                    _i++;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2676568i32)) {
                    _sawdigits_2676313 = true;
                    if (((_c_2676403 == (48 : stdgo.GoUInt8)) && (_nd_2676333 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2676641i32;
                    } else {
                        _gotoNext = 2676697i32;
                    };
                } else if (__value__ == (2676641i32)) {
                    _dp_2676355--;
                    _i++;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2676697i32)) {
                    _nd_2676333++;
                    if ((_ndMant_2676342 < _maxMantDigits_2676073 : Bool)) {
                        _gotoNext = 2676731i32;
                    } else if (_c_2676403 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2676821i32;
                    } else {
                        _gotoNext = 2676848i32;
                    };
                } else if (__value__ == (2676731i32)) {
                    _mantissa = (_mantissa * (_base_2676053) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2676403 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2676342++;
                    _gotoNext = 2676848i32;
                } else if (__value__ == (2676821i32)) {
                    _trunc = true;
                    _gotoNext = 2676848i32;
                } else if (__value__ == (2676848i32)) {
                    _i++;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2676860i32)) {
                    _sawdigits_2676313 = true;
                    _nd_2676333++;
                    if ((_ndMant_2676342 < _maxMantDigits_2676073 : Bool)) {
                        _gotoNext = 2676972i32;
                    } else {
                        _gotoNext = 2677060i32;
                    };
                } else if (__value__ == (2676972i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2676403) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2676342++;
                    _gotoNext = 2677087i32;
                } else if (__value__ == (2677060i32)) {
                    _trunc = true;
                    _gotoNext = 2677087i32;
                } else if (__value__ == (2677087i32)) {
                    _i++;
                    _gotoNext = 2676370i32;
                } else if (__value__ == (2677102i32)) {
                    _gotoNext = 2677112i32;
                } else if (__value__ == (2677112i32)) {
                    if (!_sawdigits_2676313) {
                        _gotoNext = 2677126i32;
                    } else {
                        _gotoNext = 2677141i32;
                    };
                } else if (__value__ == (2677126i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677141i32;
                } else if (__value__ == (2677141i32)) {
                    if (!_sawdot_2676296) {
                        _gotoNext = 2677152i32;
                    } else {
                        _gotoNext = 2677169i32;
                    };
                } else if (__value__ == (2677152i32)) {
                    _dp_2676355 = _nd_2676333;
                    _gotoNext = 2677169i32;
                } else if (__value__ == (2677169i32)) {
                    if (_base_2676053 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677183i32;
                    } else {
                        _gotoNext = 2677428i32;
                    };
                } else if (__value__ == (2677183i32)) {
                    _dp_2676355 = (_dp_2676355 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2676342 = (_ndMant_2676342 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2677428i32;
                } else if (__value__ == (2677428i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2676118) : Bool)) {
                        _gotoNext = 2677468i32;
                    } else if (_base_2676053 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677901i32;
                    } else {
                        _gotoNext = 2677942i32;
                    };
                } else if (__value__ == (2677468i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2677493i32;
                    } else {
                        _gotoNext = 2677511i32;
                    };
                } else if (__value__ == (2677493i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677511i32;
                } else if (__value__ == (2677511i32)) {
                    _esign_2677511 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2677539i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2677572i32;
                    } else {
                        _gotoNext = 2677601i32;
                    };
                } else if (__value__ == (2677539i32)) {
                    _i++;
                    _gotoNext = 2677601i32;
                } else if (__value__ == (2677572i32)) {
                    _i++;
                    _esign_2677511 = (-1 : stdgo.GoInt);
                    _gotoNext = 2677601i32;
                } else if (__value__ == (2677601i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2677644i32;
                    } else {
                        _gotoNext = 2677662i32;
                    };
                } else if (__value__ == (2677644i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677662i32;
                } else if (__value__ == (2677662i32)) {
                    _e_2677662 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2677671i32;
                } else if (__value__ == (2677671i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2677740i32;
                    } else {
                        _gotoNext = 2677863i32;
                    };
                } else if (__value__ == (2677736i32)) {
                    _i++;
                    _gotoNext = 2677671i32;
                } else if (__value__ == (2677740i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2677760i32;
                    } else {
                        _gotoNext = 2677806i32;
                    };
                } else if (__value__ == (2677760i32)) {
                    _underscores_2675894 = true;
                    _i++;
                    _gotoNext = 2677671i32;
                } else if (__value__ == (2677806i32)) {
                    if ((_e_2677662 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2677819i32;
                    } else {
                        _gotoNext = 2677736i32;
                    };
                } else if (__value__ == (2677819i32)) {
                    _e_2677662 = (((_e_2677662 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2677736i32;
                } else if (__value__ == (2677863i32)) {
                    _dp_2676355 = (_dp_2676355 + ((_e_2677662 * _esign_2677511 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2677942i32;
                } else if (__value__ == (2677901i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677942i32;
                } else if (__value__ == (2677942i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677959i32;
                    } else {
                        _gotoNext = 2677986i32;
                    };
                } else if (__value__ == (2677959i32)) {
                    _exp = (_dp_2676355 - _ndMant_2676342 : stdgo.GoInt);
                    _gotoNext = 2677986i32;
                } else if (__value__ == (2677986i32)) {
                    if ((_underscores_2675894 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2678025i32;
                    } else {
                        _gotoNext = 2678041i32;
                    };
                } else if (__value__ == (2678025i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678041i32;
                } else if (__value__ == (2678041i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
