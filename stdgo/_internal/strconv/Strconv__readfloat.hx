package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_2886218:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2886173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2886455:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2886442:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2886413:Bool = false;
        var _nd_2886433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2886396:Bool = false;
        var _underscores_2885994:Bool = false;
        var _c_2886503:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2887611:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2886153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2887762:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2885994 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2886050i32;
                    } else {
                        _gotoNext = 2886065i32;
                    };
                } else if (__value__ == (2886050i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2886065i32;
                } else if (__value__ == (2886065i32)) {
                    _gotoNext = 2886065i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2886075i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2886100i32;
                    } else {
                        _gotoNext = 2886153i32;
                    };
                } else if (__value__ == (2886075i32)) {
                    _i++;
                    _gotoNext = 2886153i32;
                } else if (__value__ == (2886100i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2886153i32;
                } else if (__value__ == (2886153i32)) {
                    _base_2886153 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2886173 = (19 : stdgo.GoInt);
                    _expChar_2886218 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2886295i32;
                    } else {
                        _gotoNext = 2886396i32;
                    };
                } else if (__value__ == (2886295i32)) {
                    _base_2886153 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2886173 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2886218 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2886396i32;
                } else if (__value__ == (2886396i32)) {
                    _sawdot_2886396 = false;
                    _sawdigits_2886413 = false;
                    _nd_2886433 = (0 : stdgo.GoInt);
                    _ndMant_2886442 = (0 : stdgo.GoInt);
                    _dp_2886455 = (0 : stdgo.GoInt);
                    _gotoNext = 2886463i32;
                } else if (__value__ == (2886463i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2886470i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2886492i32;
                    } else {
                        _gotoNext = 2887212i32;
                    };
                } else if (__value__ == (2886492i32)) {
                    _gotoNext = 2886496i32;
                } else if (__value__ == (2886496i32)) {
                    {
                        _c_2886503 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2886503 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2886523i32;
                            } else if (__value__ == (_c_2886503 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2886575i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2886503 : Bool) && (_c_2886503 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2886668i32;
                            } else if (__value__ == (((_base_2886153 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2886503) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2886503) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2886960i32;
                            } else {
                                _gotoNext = 2887202i32;
                            };
                        };
                    };
                } else if (__value__ == (2886523i32)) {
                    _underscores_2885994 = true;
                    _i++;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2886575i32)) {
                    if (_sawdot_2886396) {
                        _gotoNext = 2886603i32;
                    } else {
                        _gotoNext = 2886628i32;
                    };
                } else if (__value__ == (2886603i32)) {
                    _loopBreak = true;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2886628i32)) {
                    _sawdot_2886396 = true;
                    _dp_2886455 = _nd_2886433;
                    _i++;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2886668i32)) {
                    _sawdigits_2886413 = true;
                    if (((_c_2886503 == (48 : stdgo.GoUInt8)) && (_nd_2886433 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2886741i32;
                    } else {
                        _gotoNext = 2886797i32;
                    };
                } else if (__value__ == (2886741i32)) {
                    _dp_2886455--;
                    _i++;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2886797i32)) {
                    _nd_2886433++;
                    if ((_ndMant_2886442 < _maxMantDigits_2886173 : Bool)) {
                        _gotoNext = 2886831i32;
                    } else if (_c_2886503 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2886921i32;
                    } else {
                        _gotoNext = 2886948i32;
                    };
                } else if (__value__ == (2886831i32)) {
                    _mantissa = (_mantissa * (_base_2886153) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2886503 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2886442++;
                    _gotoNext = 2886948i32;
                } else if (__value__ == (2886921i32)) {
                    _trunc = true;
                    _gotoNext = 2886948i32;
                } else if (__value__ == (2886948i32)) {
                    _i++;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2886960i32)) {
                    _sawdigits_2886413 = true;
                    _nd_2886433++;
                    if ((_ndMant_2886442 < _maxMantDigits_2886173 : Bool)) {
                        _gotoNext = 2887072i32;
                    } else {
                        _gotoNext = 2887160i32;
                    };
                } else if (__value__ == (2887072i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2886503) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2886442++;
                    _gotoNext = 2887187i32;
                } else if (__value__ == (2887160i32)) {
                    _gotoNext = 2887160i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2887187i32;
                } else if (__value__ == (2887187i32)) {
                    _i++;
                    _gotoNext = 2886470i32;
                } else if (__value__ == (2887202i32)) {
                    _gotoNext = 2887212i32;
                } else if (__value__ == (2887212i32)) {
                    if (!_sawdigits_2886413) {
                        _gotoNext = 2887226i32;
                    } else {
                        _gotoNext = 2887241i32;
                    };
                } else if (__value__ == (2887226i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2887241i32;
                } else if (__value__ == (2887241i32)) {
                    if (!_sawdot_2886396) {
                        _gotoNext = 2887252i32;
                    } else {
                        _gotoNext = 2887269i32;
                    };
                } else if (__value__ == (2887252i32)) {
                    _dp_2886455 = _nd_2886433;
                    _gotoNext = 2887269i32;
                } else if (__value__ == (2887269i32)) {
                    if (_base_2886153 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2887283i32;
                    } else {
                        _gotoNext = 2887528i32;
                    };
                } else if (__value__ == (2887283i32)) {
                    _dp_2886455 = (_dp_2886455 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2886442 = (_ndMant_2886442 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2887528i32;
                } else if (__value__ == (2887528i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2886218) : Bool)) {
                        _gotoNext = 2887568i32;
                    } else if (_base_2886153 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2888001i32;
                    } else {
                        _gotoNext = 2888042i32;
                    };
                } else if (__value__ == (2887568i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2887593i32;
                    } else {
                        _gotoNext = 2887611i32;
                    };
                } else if (__value__ == (2887593i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2887611i32;
                } else if (__value__ == (2887611i32)) {
                    _esign_2887611 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2887639i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2887672i32;
                    } else {
                        _gotoNext = 2887701i32;
                    };
                } else if (__value__ == (2887639i32)) {
                    _i++;
                    _gotoNext = 2887701i32;
                } else if (__value__ == (2887672i32)) {
                    _i++;
                    _esign_2887611 = (-1 : stdgo.GoInt);
                    _gotoNext = 2887701i32;
                } else if (__value__ == (2887701i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2887744i32;
                    } else {
                        _gotoNext = 2887762i32;
                    };
                } else if (__value__ == (2887744i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2887762i32;
                } else if (__value__ == (2887762i32)) {
                    _e_2887762 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2887771i32;
                } else if (__value__ == (2887771i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2887840i32;
                    } else {
                        _gotoNext = 2887963i32;
                    };
                } else if (__value__ == (2887836i32)) {
                    _i++;
                    _gotoNext = 2887771i32;
                } else if (__value__ == (2887840i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2887860i32;
                    } else {
                        _gotoNext = 2887906i32;
                    };
                } else if (__value__ == (2887860i32)) {
                    _underscores_2885994 = true;
                    _i++;
                    _gotoNext = 2887771i32;
                } else if (__value__ == (2887906i32)) {
                    if ((_e_2887762 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2887919i32;
                    } else {
                        _gotoNext = 2887836i32;
                    };
                } else if (__value__ == (2887919i32)) {
                    _e_2887762 = (((_e_2887762 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2887836i32;
                } else if (__value__ == (2887963i32)) {
                    _dp_2886455 = (_dp_2886455 + ((_e_2887762 * _esign_2887611 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2888042i32;
                } else if (__value__ == (2888001i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2888042i32;
                } else if (__value__ == (2888042i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2888059i32;
                    } else {
                        _gotoNext = 2888086i32;
                    };
                } else if (__value__ == (2888059i32)) {
                    _exp = (_dp_2886455 - _ndMant_2886442 : stdgo.GoInt);
                    _gotoNext = 2888086i32;
                } else if (__value__ == (2888086i32)) {
                    if ((_underscores_2885994 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2888125i32;
                    } else {
                        _gotoNext = 2888141i32;
                    };
                } else if (__value__ == (2888125i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2888141i32;
                } else if (__value__ == (2888141i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
