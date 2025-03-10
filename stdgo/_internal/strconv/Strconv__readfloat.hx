package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2757200i32;
                    } else {
                        _gotoNext = 2757215i32;
                    };
                } else if (__value__ == (2757200i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2757215i32;
                } else if (__value__ == (2757215i32)) {
                    _gotoNext = 2757215i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2757225i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2757250i32;
                    } else {
                        _gotoNext = 2757303i32;
                    };
                } else if (__value__ == (2757225i32)) {
                    _i++;
                    _gotoNext = 2757303i32;
                } else if (__value__ == (2757250i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2757303i32;
                } else if (__value__ == (2757303i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2757445i32;
                    } else {
                        _gotoNext = 2757546i32;
                    };
                } else if (__value__ == (2757445i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2757546i32;
                } else if (__value__ == (2757546i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2757613i32;
                } else if (__value__ == (2757613i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2757620i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2757642i32;
                    } else {
                        _gotoNext = 2758362i32;
                    };
                } else if (__value__ == (2757642i32)) {
                    _gotoNext = 2757646i32;
                } else if (__value__ == (2757646i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2757673i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2757725i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2757818i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2758110i32;
                            } else {
                                _gotoNext = 2758352i32;
                            };
                        };
                    };
                } else if (__value__ == (2757673i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2757725i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2757753i32;
                    } else {
                        _gotoNext = 2757778i32;
                    };
                } else if (__value__ == (2757753i32)) {
                    _loopBreak = true;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2757778i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2757818i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2757891i32;
                    } else {
                        _gotoNext = 2757947i32;
                    };
                } else if (__value__ == (2757891i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2757947i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2757981i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2758071i32;
                    } else {
                        _gotoNext = 2758098i32;
                    };
                } else if (__value__ == (2757981i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2758098i32;
                } else if (__value__ == (2758071i32)) {
                    _trunc = true;
                    _gotoNext = 2758098i32;
                } else if (__value__ == (2758098i32)) {
                    _i++;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2758110i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2758222i32;
                    } else {
                        _gotoNext = 2758310i32;
                    };
                } else if (__value__ == (2758222i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2758337i32;
                } else if (__value__ == (2758310i32)) {
                    _gotoNext = 2758310i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2758337i32;
                } else if (__value__ == (2758337i32)) {
                    _i++;
                    _gotoNext = 2757620i32;
                } else if (__value__ == (2758352i32)) {
                    _gotoNext = 2758362i32;
                } else if (__value__ == (2758362i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2758376i32;
                    } else {
                        _gotoNext = 2758391i32;
                    };
                } else if (__value__ == (2758376i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2758391i32;
                } else if (__value__ == (2758391i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2758402i32;
                    } else {
                        _gotoNext = 2758419i32;
                    };
                } else if (__value__ == (2758402i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2758419i32;
                } else if (__value__ == (2758419i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2758433i32;
                    } else {
                        _gotoNext = 2758678i32;
                    };
                } else if (__value__ == (2758433i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2758678i32;
                } else if (__value__ == (2758678i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2758718i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2759151i32;
                    } else {
                        _gotoNext = 2759192i32;
                    };
                } else if (__value__ == (2758718i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2758743i32;
                    } else {
                        _gotoNext = 2758761i32;
                    };
                } else if (__value__ == (2758743i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2758761i32;
                } else if (__value__ == (2758761i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2758789i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2758822i32;
                    } else {
                        _gotoNext = 2758851i32;
                    };
                } else if (__value__ == (2758789i32)) {
                    _i++;
                    _gotoNext = 2758851i32;
                } else if (__value__ == (2758822i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2758851i32;
                } else if (__value__ == (2758851i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2758894i32;
                    } else {
                        _gotoNext = 2758912i32;
                    };
                } else if (__value__ == (2758894i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2758912i32;
                } else if (__value__ == (2758912i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2758921i32;
                } else if (__value__ == (2758921i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2758990i32;
                    } else {
                        _gotoNext = 2759113i32;
                    };
                } else if (__value__ == (2758986i32)) {
                    _i++;
                    _gotoNext = 2758921i32;
                } else if (__value__ == (2758990i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2759010i32;
                    } else {
                        _gotoNext = 2759056i32;
                    };
                } else if (__value__ == (2759010i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2758921i32;
                } else if (__value__ == (2759056i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2759069i32;
                    } else {
                        _gotoNext = 2758986i32;
                    };
                } else if (__value__ == (2759069i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2758986i32;
                } else if (__value__ == (2759113i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2759192i32;
                } else if (__value__ == (2759151i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2759192i32;
                } else if (__value__ == (2759192i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2759209i32;
                    } else {
                        _gotoNext = 2759236i32;
                    };
                } else if (__value__ == (2759209i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2759236i32;
                } else if (__value__ == (2759236i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2759275i32;
                    } else {
                        _gotoNext = 2759291i32;
                    };
                } else if (__value__ == (2759275i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2759291i32;
                } else if (__value__ == (2759291i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
