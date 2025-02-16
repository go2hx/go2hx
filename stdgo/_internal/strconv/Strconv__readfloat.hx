package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_5:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2721989i32;
                    } else {
                        _gotoNext = 2722004i32;
                    };
                } else if (__value__ == (2721989i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2722004i32;
                } else if (__value__ == (2722004i32)) {
                    _gotoNext = 2722004i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2722014i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2722039i32;
                    } else {
                        _gotoNext = 2722092i32;
                    };
                } else if (__value__ == (2722014i32)) {
                    _i++;
                    _gotoNext = 2722092i32;
                } else if (__value__ == (2722039i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2722092i32;
                } else if (__value__ == (2722092i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2722234i32;
                    } else {
                        _gotoNext = 2722335i32;
                    };
                } else if (__value__ == (2722234i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2722335i32;
                } else if (__value__ == (2722335i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2722402i32;
                } else if (__value__ == (2722402i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2722409i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2722431i32;
                    } else {
                        _gotoNext = 2723151i32;
                    };
                } else if (__value__ == (2722431i32)) {
                    _gotoNext = 2722435i32;
                } else if (__value__ == (2722435i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2722462i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2722514i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2722607i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2722899i32;
                            } else {
                                _gotoNext = 2723141i32;
                            };
                        };
                    };
                } else if (__value__ == (2722462i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2722514i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2722542i32;
                    } else {
                        _gotoNext = 2722567i32;
                    };
                } else if (__value__ == (2722542i32)) {
                    _loopBreak = true;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2722567i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2722607i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2722680i32;
                    } else {
                        _gotoNext = 2722736i32;
                    };
                } else if (__value__ == (2722680i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2722736i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2722770i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2722860i32;
                    } else {
                        _gotoNext = 2722887i32;
                    };
                } else if (__value__ == (2722770i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2722887i32;
                } else if (__value__ == (2722860i32)) {
                    _trunc = true;
                    _gotoNext = 2722887i32;
                } else if (__value__ == (2722887i32)) {
                    _i++;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2722899i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2723011i32;
                    } else {
                        _gotoNext = 2723099i32;
                    };
                } else if (__value__ == (2723011i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2723126i32;
                } else if (__value__ == (2723099i32)) {
                    _gotoNext = 2723099i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2723126i32;
                } else if (__value__ == (2723126i32)) {
                    _i++;
                    _gotoNext = 2722409i32;
                } else if (__value__ == (2723141i32)) {
                    _gotoNext = 2723151i32;
                } else if (__value__ == (2723151i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2723165i32;
                    } else {
                        _gotoNext = 2723180i32;
                    };
                } else if (__value__ == (2723165i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2723180i32;
                } else if (__value__ == (2723180i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2723191i32;
                    } else {
                        _gotoNext = 2723208i32;
                    };
                } else if (__value__ == (2723191i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2723208i32;
                } else if (__value__ == (2723208i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2723222i32;
                    } else {
                        _gotoNext = 2723467i32;
                    };
                } else if (__value__ == (2723222i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2723467i32;
                } else if (__value__ == (2723467i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2723507i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2723940i32;
                    } else {
                        _gotoNext = 2723981i32;
                    };
                } else if (__value__ == (2723507i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2723532i32;
                    } else {
                        _gotoNext = 2723550i32;
                    };
                } else if (__value__ == (2723532i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2723550i32;
                } else if (__value__ == (2723550i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2723578i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2723611i32;
                    } else {
                        _gotoNext = 2723640i32;
                    };
                } else if (__value__ == (2723578i32)) {
                    _i++;
                    _gotoNext = 2723640i32;
                } else if (__value__ == (2723611i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2723640i32;
                } else if (__value__ == (2723640i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2723683i32;
                    } else {
                        _gotoNext = 2723701i32;
                    };
                } else if (__value__ == (2723683i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2723701i32;
                } else if (__value__ == (2723701i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2723710i32;
                } else if (__value__ == (2723710i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2723779i32;
                    } else {
                        _gotoNext = 2723902i32;
                    };
                } else if (__value__ == (2723775i32)) {
                    _i++;
                    _gotoNext = 2723710i32;
                } else if (__value__ == (2723779i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2723799i32;
                    } else {
                        _gotoNext = 2723845i32;
                    };
                } else if (__value__ == (2723799i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2723710i32;
                } else if (__value__ == (2723845i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2723858i32;
                    } else {
                        _gotoNext = 2723775i32;
                    };
                } else if (__value__ == (2723858i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2723775i32;
                } else if (__value__ == (2723902i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2723981i32;
                } else if (__value__ == (2723940i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2723981i32;
                } else if (__value__ == (2723981i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2723998i32;
                    } else {
                        _gotoNext = 2724025i32;
                    };
                } else if (__value__ == (2723998i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2724025i32;
                } else if (__value__ == (2724025i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2724064i32;
                    } else {
                        _gotoNext = 2724080i32;
                    };
                } else if (__value__ == (2724064i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2724080i32;
                } else if (__value__ == (2724080i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
