package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2618626:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2618467:Bool = false;
        var _sawdot_2618869:Bool = false;
        var _esign_2620084:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2618915:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2618906:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2618646:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2618976:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2618928:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2618886:Bool = false;
        var _expChar_2618691:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2620235:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2618467 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2618523i32;
                    } else {
                        _gotoNext = 2618538i32;
                    };
                } else if (__value__ == (2618523i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618538i32;
                } else if (__value__ == (2618538i32)) {
                    _gotoNext = 2618538i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2618548i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2618573i32;
                    } else {
                        _gotoNext = 2618626i32;
                    };
                } else if (__value__ == (2618548i32)) {
                    _i++;
                    _gotoNext = 2618626i32;
                } else if (__value__ == (2618573i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2618626i32;
                } else if (__value__ == (2618626i32)) {
                    _base_2618626 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2618646 = (19 : stdgo.GoInt);
                    _expChar_2618691 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2618768i32;
                    } else {
                        _gotoNext = 2618869i32;
                    };
                } else if (__value__ == (2618768i32)) {
                    _base_2618626 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2618646 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2618691 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2618869i32;
                } else if (__value__ == (2618869i32)) {
                    _sawdot_2618869 = false;
                    _sawdigits_2618886 = false;
                    _nd_2618906 = (0 : stdgo.GoInt);
                    _ndMant_2618915 = (0 : stdgo.GoInt);
                    _dp_2618928 = (0 : stdgo.GoInt);
                    _gotoNext = 2618936i32;
                } else if (__value__ == (2618936i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2618943i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2618965i32;
                    } else {
                        _gotoNext = 2619685i32;
                    };
                } else if (__value__ == (2618965i32)) {
                    _gotoNext = 2618969i32;
                } else if (__value__ == (2618969i32)) {
                    {
                        _c_2618976 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2618976 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2618996i32;
                            } else if (__value__ == (_c_2618976 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2619048i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2618976 : Bool) && (_c_2618976 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2619141i32;
                            } else if (__value__ == (((_base_2618626 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2618976) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2618976) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2619433i32;
                            } else {
                                _gotoNext = 2619675i32;
                            };
                        };
                    };
                } else if (__value__ == (2618996i32)) {
                    _underscores_2618467 = true;
                    _i++;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2619048i32)) {
                    if (_sawdot_2618869) {
                        _gotoNext = 2619076i32;
                    } else {
                        _gotoNext = 2619101i32;
                    };
                } else if (__value__ == (2619076i32)) {
                    _loopBreak = true;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2619101i32)) {
                    _sawdot_2618869 = true;
                    _dp_2618928 = _nd_2618906;
                    _i++;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2619141i32)) {
                    _sawdigits_2618886 = true;
                    if (((_c_2618976 == (48 : stdgo.GoUInt8)) && (_nd_2618906 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2619214i32;
                    } else {
                        _gotoNext = 2619270i32;
                    };
                } else if (__value__ == (2619214i32)) {
                    _dp_2618928--;
                    _i++;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2619270i32)) {
                    _nd_2618906++;
                    if ((_ndMant_2618915 < _maxMantDigits_2618646 : Bool)) {
                        _gotoNext = 2619304i32;
                    } else if (_c_2618976 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2619394i32;
                    } else {
                        _gotoNext = 2619421i32;
                    };
                } else if (__value__ == (2619304i32)) {
                    _mantissa = (_mantissa * (_base_2618626) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2618976 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2618915++;
                    _gotoNext = 2619421i32;
                } else if (__value__ == (2619394i32)) {
                    _trunc = true;
                    _gotoNext = 2619421i32;
                } else if (__value__ == (2619421i32)) {
                    _i++;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2619433i32)) {
                    _sawdigits_2618886 = true;
                    _nd_2618906++;
                    if ((_ndMant_2618915 < _maxMantDigits_2618646 : Bool)) {
                        _gotoNext = 2619545i32;
                    } else {
                        _gotoNext = 2619633i32;
                    };
                } else if (__value__ == (2619545i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2618976) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2618915++;
                    _gotoNext = 2619660i32;
                } else if (__value__ == (2619633i32)) {
                    _gotoNext = 2619633i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2619660i32;
                } else if (__value__ == (2619660i32)) {
                    _i++;
                    _gotoNext = 2618943i32;
                } else if (__value__ == (2619675i32)) {
                    _gotoNext = 2619685i32;
                } else if (__value__ == (2619685i32)) {
                    if (!_sawdigits_2618886) {
                        _gotoNext = 2619699i32;
                    } else {
                        _gotoNext = 2619714i32;
                    };
                } else if (__value__ == (2619699i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619714i32;
                } else if (__value__ == (2619714i32)) {
                    if (!_sawdot_2618869) {
                        _gotoNext = 2619725i32;
                    } else {
                        _gotoNext = 2619742i32;
                    };
                } else if (__value__ == (2619725i32)) {
                    _dp_2618928 = _nd_2618906;
                    _gotoNext = 2619742i32;
                } else if (__value__ == (2619742i32)) {
                    if (_base_2618626 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619756i32;
                    } else {
                        _gotoNext = 2620001i32;
                    };
                } else if (__value__ == (2619756i32)) {
                    _dp_2618928 = (_dp_2618928 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2618915 = (_ndMant_2618915 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2620001i32;
                } else if (__value__ == (2620001i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2618691) : Bool)) {
                        _gotoNext = 2620041i32;
                    } else if (_base_2618626 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2620474i32;
                    } else {
                        _gotoNext = 2620515i32;
                    };
                } else if (__value__ == (2620041i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2620066i32;
                    } else {
                        _gotoNext = 2620084i32;
                    };
                } else if (__value__ == (2620066i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2620084i32;
                } else if (__value__ == (2620084i32)) {
                    _esign_2620084 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2620112i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2620145i32;
                    } else {
                        _gotoNext = 2620174i32;
                    };
                } else if (__value__ == (2620112i32)) {
                    _i++;
                    _gotoNext = 2620174i32;
                } else if (__value__ == (2620145i32)) {
                    _i++;
                    _esign_2620084 = (-1 : stdgo.GoInt);
                    _gotoNext = 2620174i32;
                } else if (__value__ == (2620174i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2620217i32;
                    } else {
                        _gotoNext = 2620235i32;
                    };
                } else if (__value__ == (2620217i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2620235i32;
                } else if (__value__ == (2620235i32)) {
                    _e_2620235 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2620244i32;
                } else if (__value__ == (2620244i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2620313i32;
                    } else {
                        _gotoNext = 2620436i32;
                    };
                } else if (__value__ == (2620309i32)) {
                    _i++;
                    _gotoNext = 2620244i32;
                } else if (__value__ == (2620313i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2620333i32;
                    } else {
                        _gotoNext = 2620379i32;
                    };
                } else if (__value__ == (2620333i32)) {
                    _underscores_2618467 = true;
                    _i++;
                    _gotoNext = 2620244i32;
                } else if (__value__ == (2620379i32)) {
                    if ((_e_2620235 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2620392i32;
                    } else {
                        _gotoNext = 2620309i32;
                    };
                } else if (__value__ == (2620392i32)) {
                    _e_2620235 = (((_e_2620235 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2620309i32;
                } else if (__value__ == (2620436i32)) {
                    _dp_2618928 = (_dp_2618928 + ((_e_2620235 * _esign_2620084 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2620515i32;
                } else if (__value__ == (2620474i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2620515i32;
                } else if (__value__ == (2620515i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2620532i32;
                    } else {
                        _gotoNext = 2620559i32;
                    };
                } else if (__value__ == (2620532i32)) {
                    _exp = (_dp_2618928 - _ndMant_2618915 : stdgo.GoInt);
                    _gotoNext = 2620559i32;
                } else if (__value__ == (2620559i32)) {
                    if ((_underscores_2618467 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2620598i32;
                    } else {
                        _gotoNext = 2620614i32;
                    };
                } else if (__value__ == (2620598i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2620614i32;
                } else if (__value__ == (2620614i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
