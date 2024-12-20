package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2737298:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2737261:Bool = false;
        var _expChar_2737083:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2737018:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2738627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2737368:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2737307:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2737320:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2737278:Bool = false;
        var _maxMantDigits_2737038:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2736859:Bool = false;
        var _esign_2738476:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2736859 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2736915i32;
                    } else {
                        _gotoNext = 2736930i32;
                    };
                } else if (__value__ == (2736915i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2736930i32;
                } else if (__value__ == (2736930i32)) {
                    _gotoNext = 2736930i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2736940i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2736965i32;
                    } else {
                        _gotoNext = 2737018i32;
                    };
                } else if (__value__ == (2736940i32)) {
                    _i++;
                    _gotoNext = 2737018i32;
                } else if (__value__ == (2736965i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2737018i32;
                } else if (__value__ == (2737018i32)) {
                    _base_2737018 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2737038 = (19 : stdgo.GoInt);
                    _expChar_2737083 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2737160i32;
                    } else {
                        _gotoNext = 2737261i32;
                    };
                } else if (__value__ == (2737160i32)) {
                    _base_2737018 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2737038 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2737083 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2737261i32;
                } else if (__value__ == (2737261i32)) {
                    _sawdot_2737261 = false;
                    _sawdigits_2737278 = false;
                    _nd_2737298 = (0 : stdgo.GoInt);
                    _ndMant_2737307 = (0 : stdgo.GoInt);
                    _dp_2737320 = (0 : stdgo.GoInt);
                    _gotoNext = 2737328i32;
                } else if (__value__ == (2737328i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2737335i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2737357i32;
                    } else {
                        _gotoNext = 2738077i32;
                    };
                } else if (__value__ == (2737357i32)) {
                    _gotoNext = 2737361i32;
                } else if (__value__ == (2737361i32)) {
                    {
                        _c_2737368 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2737368 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2737388i32;
                            } else if (__value__ == (_c_2737368 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2737440i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2737368 : Bool) && (_c_2737368 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737533i32;
                            } else if (__value__ == (((_base_2737018 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2737368) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2737368) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737825i32;
                            } else {
                                _gotoNext = 2738067i32;
                            };
                        };
                    };
                } else if (__value__ == (2737388i32)) {
                    _underscores_2736859 = true;
                    _i++;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2737440i32)) {
                    if (_sawdot_2737261) {
                        _gotoNext = 2737468i32;
                    } else {
                        _gotoNext = 2737493i32;
                    };
                } else if (__value__ == (2737468i32)) {
                    _loopBreak = true;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2737493i32)) {
                    _sawdot_2737261 = true;
                    _dp_2737320 = _nd_2737298;
                    _i++;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2737533i32)) {
                    _sawdigits_2737278 = true;
                    if (((_c_2737368 == (48 : stdgo.GoUInt8)) && (_nd_2737298 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2737606i32;
                    } else {
                        _gotoNext = 2737662i32;
                    };
                } else if (__value__ == (2737606i32)) {
                    _dp_2737320--;
                    _i++;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2737662i32)) {
                    _nd_2737298++;
                    if ((_ndMant_2737307 < _maxMantDigits_2737038 : Bool)) {
                        _gotoNext = 2737696i32;
                    } else if (_c_2737368 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2737786i32;
                    } else {
                        _gotoNext = 2737813i32;
                    };
                } else if (__value__ == (2737696i32)) {
                    _mantissa = (_mantissa * (_base_2737018) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2737368 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2737307++;
                    _gotoNext = 2737813i32;
                } else if (__value__ == (2737786i32)) {
                    _trunc = true;
                    _gotoNext = 2737813i32;
                } else if (__value__ == (2737813i32)) {
                    _i++;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2737825i32)) {
                    _sawdigits_2737278 = true;
                    _nd_2737298++;
                    if ((_ndMant_2737307 < _maxMantDigits_2737038 : Bool)) {
                        _gotoNext = 2737937i32;
                    } else {
                        _gotoNext = 2738025i32;
                    };
                } else if (__value__ == (2737937i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2737368) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2737307++;
                    _gotoNext = 2738052i32;
                } else if (__value__ == (2738025i32)) {
                    _gotoNext = 2738025i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2738052i32;
                } else if (__value__ == (2738052i32)) {
                    _i++;
                    _gotoNext = 2737335i32;
                } else if (__value__ == (2738067i32)) {
                    _gotoNext = 2738077i32;
                } else if (__value__ == (2738077i32)) {
                    if (!_sawdigits_2737278) {
                        _gotoNext = 2738091i32;
                    } else {
                        _gotoNext = 2738106i32;
                    };
                } else if (__value__ == (2738091i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738106i32;
                } else if (__value__ == (2738106i32)) {
                    if (!_sawdot_2737261) {
                        _gotoNext = 2738117i32;
                    } else {
                        _gotoNext = 2738134i32;
                    };
                } else if (__value__ == (2738117i32)) {
                    _dp_2737320 = _nd_2737298;
                    _gotoNext = 2738134i32;
                } else if (__value__ == (2738134i32)) {
                    if (_base_2737018 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738148i32;
                    } else {
                        _gotoNext = 2738393i32;
                    };
                } else if (__value__ == (2738148i32)) {
                    _dp_2737320 = (_dp_2737320 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2737307 = (_ndMant_2737307 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738393i32;
                } else if (__value__ == (2738393i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2737083) : Bool)) {
                        _gotoNext = 2738433i32;
                    } else if (_base_2737018 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738866i32;
                    } else {
                        _gotoNext = 2738907i32;
                    };
                } else if (__value__ == (2738433i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2738458i32;
                    } else {
                        _gotoNext = 2738476i32;
                    };
                } else if (__value__ == (2738458i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738476i32;
                } else if (__value__ == (2738476i32)) {
                    _esign_2738476 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2738504i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2738537i32;
                    } else {
                        _gotoNext = 2738566i32;
                    };
                } else if (__value__ == (2738504i32)) {
                    _i++;
                    _gotoNext = 2738566i32;
                } else if (__value__ == (2738537i32)) {
                    _i++;
                    _esign_2738476 = (-1 : stdgo.GoInt);
                    _gotoNext = 2738566i32;
                } else if (__value__ == (2738566i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2738609i32;
                    } else {
                        _gotoNext = 2738627i32;
                    };
                } else if (__value__ == (2738609i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738627i32;
                } else if (__value__ == (2738627i32)) {
                    _e_2738627 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2738636i32;
                } else if (__value__ == (2738636i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2738705i32;
                    } else {
                        _gotoNext = 2738828i32;
                    };
                } else if (__value__ == (2738701i32)) {
                    _i++;
                    _gotoNext = 2738636i32;
                } else if (__value__ == (2738705i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2738725i32;
                    } else {
                        _gotoNext = 2738771i32;
                    };
                } else if (__value__ == (2738725i32)) {
                    _underscores_2736859 = true;
                    _i++;
                    _gotoNext = 2738636i32;
                } else if (__value__ == (2738771i32)) {
                    if ((_e_2738627 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2738784i32;
                    } else {
                        _gotoNext = 2738701i32;
                    };
                } else if (__value__ == (2738784i32)) {
                    _e_2738627 = (((_e_2738627 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2738701i32;
                } else if (__value__ == (2738828i32)) {
                    _dp_2737320 = (_dp_2737320 + ((_e_2738627 * _esign_2738476 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738907i32;
                } else if (__value__ == (2738866i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738907i32;
                } else if (__value__ == (2738907i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738924i32;
                    } else {
                        _gotoNext = 2738951i32;
                    };
                } else if (__value__ == (2738924i32)) {
                    _exp = (_dp_2737320 - _ndMant_2737307 : stdgo.GoInt);
                    _gotoNext = 2738951i32;
                } else if (__value__ == (2738951i32)) {
                    if ((_underscores_2736859 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2738990i32;
                    } else {
                        _gotoNext = 2739006i32;
                    };
                } else if (__value__ == (2738990i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739006i32;
                } else if (__value__ == (2739006i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
