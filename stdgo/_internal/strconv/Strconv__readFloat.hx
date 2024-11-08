package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2682471:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2681315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2682622:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2681363:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2681302:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2681273:Bool = false;
        var _expChar_2681078:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2680854:Bool = false;
        var _nd_2681293:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2681256:Bool = false;
        var _maxMantDigits_2681033:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2681013:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2680854 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2680910i32;
                    } else {
                        _gotoNext = 2680925i32;
                    };
                } else if (__value__ == (2680910i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680925i32;
                } else if (__value__ == (2680925i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2680925i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2680935i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2680960i32;
                    } else {
                        _gotoNext = 2681013i32;
                    };
                } else if (__value__ == (2680935i32)) {
                    _i++;
                    _gotoNext = 2681013i32;
                } else if (__value__ == (2680960i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2681013i32;
                } else if (__value__ == (2681013i32)) {
                    _base_2681013 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2681033 = (19 : stdgo.GoInt);
                    _expChar_2681078 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2681155i32;
                    } else {
                        _gotoNext = 2681256i32;
                    };
                } else if (__value__ == (2681155i32)) {
                    _base_2681013 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2681033 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2681078 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2681256i32;
                } else if (__value__ == (2681256i32)) {
                    _sawdot_2681256 = false;
                    _sawdigits_2681273 = false;
                    _nd_2681293 = (0 : stdgo.GoInt);
                    _ndMant_2681302 = (0 : stdgo.GoInt);
                    _dp_2681315 = (0 : stdgo.GoInt);
                    _gotoNext = 2681323i32;
                } else if (__value__ == (2681323i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2681330i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2681352i32;
                    } else {
                        _gotoNext = 2682072i32;
                    };
                } else if (__value__ == (2681352i32)) {
                    _c_2681363 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2681356i32;
                } else if (__value__ == (2681356i32)) {
                    {
                        _c_2681363 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2681363 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2681383i32;
                            } else if (__value__ == (_c_2681363 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2681435i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2681363 : Bool) && (_c_2681363 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681528i32;
                            } else if (__value__ == (((_base_2681013 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2681363) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2681363) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681820i32;
                            } else {
                                _gotoNext = 2682062i32;
                            };
                        };
                    };
                } else if (__value__ == (2681383i32)) {
                    _underscores_2680854 = true;
                    _i++;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2681435i32)) {
                    if (_sawdot_2681256) {
                        _gotoNext = 2681463i32;
                    } else {
                        _gotoNext = 2681488i32;
                    };
                } else if (__value__ == (2681463i32)) {
                    _loopBreak = true;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2681488i32)) {
                    _sawdot_2681256 = true;
                    _dp_2681315 = _nd_2681293;
                    _i++;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2681528i32)) {
                    _sawdigits_2681273 = true;
                    if (((_c_2681363 == (48 : stdgo.GoUInt8)) && (_nd_2681293 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2681601i32;
                    } else {
                        _gotoNext = 2681657i32;
                    };
                } else if (__value__ == (2681601i32)) {
                    _dp_2681315--;
                    _i++;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2681657i32)) {
                    _nd_2681293++;
                    if ((_ndMant_2681302 < _maxMantDigits_2681033 : Bool)) {
                        _gotoNext = 2681691i32;
                    } else if (_c_2681363 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2681781i32;
                    } else {
                        _gotoNext = 2681808i32;
                    };
                } else if (__value__ == (2681691i32)) {
                    _mantissa = (_mantissa * (_base_2681013) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2681363 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2681302++;
                    _gotoNext = 2681808i32;
                } else if (__value__ == (2681781i32)) {
                    _trunc = true;
                    _gotoNext = 2681808i32;
                } else if (__value__ == (2681808i32)) {
                    _i++;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2681820i32)) {
                    _sawdigits_2681273 = true;
                    _nd_2681293++;
                    if ((_ndMant_2681302 < _maxMantDigits_2681033 : Bool)) {
                        _gotoNext = 2681932i32;
                    } else {
                        _gotoNext = 2682020i32;
                    };
                } else if (__value__ == (2681932i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2681363) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2681302++;
                    _gotoNext = 2682047i32;
                } else if (__value__ == (2682020i32)) {
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2682047i32;
                } else if (__value__ == (2682047i32)) {
                    _i++;
                    _gotoNext = 2681330i32;
                } else if (__value__ == (2682062i32)) {
                    _gotoNext = 2682072i32;
                } else if (__value__ == (2682072i32)) {
                    if (!_sawdigits_2681273) {
                        _gotoNext = 2682086i32;
                    } else {
                        _gotoNext = 2682101i32;
                    };
                } else if (__value__ == (2682086i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682101i32;
                } else if (__value__ == (2682101i32)) {
                    if (!_sawdot_2681256) {
                        _gotoNext = 2682112i32;
                    } else {
                        _gotoNext = 2682129i32;
                    };
                } else if (__value__ == (2682112i32)) {
                    _dp_2681315 = _nd_2681293;
                    _gotoNext = 2682129i32;
                } else if (__value__ == (2682129i32)) {
                    if (_base_2681013 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682143i32;
                    } else {
                        _gotoNext = 2682388i32;
                    };
                } else if (__value__ == (2682143i32)) {
                    _dp_2681315 = (_dp_2681315 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2681302 = (_ndMant_2681302 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682388i32;
                } else if (__value__ == (2682388i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2681078) : Bool)) {
                        _gotoNext = 2682428i32;
                    } else if (_base_2681013 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682861i32;
                    } else {
                        _gotoNext = 2682902i32;
                    };
                } else if (__value__ == (2682428i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2682453i32;
                    } else {
                        _gotoNext = 2682471i32;
                    };
                } else if (__value__ == (2682453i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682471i32;
                } else if (__value__ == (2682471i32)) {
                    _esign_2682471 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2682499i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2682532i32;
                    } else {
                        _gotoNext = 2682561i32;
                    };
                } else if (__value__ == (2682499i32)) {
                    _i++;
                    _gotoNext = 2682561i32;
                } else if (__value__ == (2682532i32)) {
                    _i++;
                    _esign_2682471 = (-1 : stdgo.GoInt);
                    _gotoNext = 2682561i32;
                } else if (__value__ == (2682561i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2682604i32;
                    } else {
                        _gotoNext = 2682622i32;
                    };
                } else if (__value__ == (2682604i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682622i32;
                } else if (__value__ == (2682622i32)) {
                    _e_2682622 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2682631i32;
                } else if (__value__ == (2682631i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2682700i32;
                    } else {
                        _gotoNext = 2682823i32;
                    };
                } else if (__value__ == (2682696i32)) {
                    _i++;
                    _gotoNext = 2682631i32;
                } else if (__value__ == (2682700i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2682720i32;
                    } else {
                        _gotoNext = 2682766i32;
                    };
                } else if (__value__ == (2682720i32)) {
                    _underscores_2680854 = true;
                    _i++;
                    _gotoNext = 2682631i32;
                } else if (__value__ == (2682766i32)) {
                    if ((_e_2682622 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2682779i32;
                    } else {
                        _gotoNext = 2682696i32;
                    };
                } else if (__value__ == (2682779i32)) {
                    _e_2682622 = (((_e_2682622 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2682696i32;
                } else if (__value__ == (2682823i32)) {
                    _dp_2681315 = (_dp_2681315 + ((_e_2682622 * _esign_2682471 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682902i32;
                } else if (__value__ == (2682861i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682902i32;
                } else if (__value__ == (2682902i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682919i32;
                    } else {
                        _gotoNext = 2682946i32;
                    };
                } else if (__value__ == (2682919i32)) {
                    _exp = (_dp_2681315 - _ndMant_2681302 : stdgo.GoInt);
                    _gotoNext = 2682946i32;
                } else if (__value__ == (2682946i32)) {
                    if ((_underscores_2680854 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2682985i32;
                    } else {
                        _gotoNext = 2683001i32;
                    };
                } else if (__value__ == (2682985i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2683001i32;
                } else if (__value__ == (2683001i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
