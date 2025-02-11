package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2640456:Bool = false;
        var _expChar_2640261:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2640196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2641654:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _e_2641805:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2640546:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdot_2640439:Bool = false;
        var _dp_2640498:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2640037:Bool = false;
        var _ndMant_2640485:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2640476:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2640216:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2640037 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2640093i32;
                    } else {
                        _gotoNext = 2640108i32;
                    };
                } else if (__value__ == (2640093i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640108i32;
                } else if (__value__ == (2640108i32)) {
                    _gotoNext = 2640108i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2640118i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2640143i32;
                    } else {
                        _gotoNext = 2640196i32;
                    };
                } else if (__value__ == (2640118i32)) {
                    _i++;
                    _gotoNext = 2640196i32;
                } else if (__value__ == (2640143i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2640196i32;
                } else if (__value__ == (2640196i32)) {
                    _base_2640196 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2640216 = (19 : stdgo.GoInt);
                    _expChar_2640261 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2640338i32;
                    } else {
                        _gotoNext = 2640439i32;
                    };
                } else if (__value__ == (2640338i32)) {
                    _base_2640196 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2640216 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2640261 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2640439i32;
                } else if (__value__ == (2640439i32)) {
                    _sawdot_2640439 = false;
                    _sawdigits_2640456 = false;
                    _nd_2640476 = (0 : stdgo.GoInt);
                    _ndMant_2640485 = (0 : stdgo.GoInt);
                    _dp_2640498 = (0 : stdgo.GoInt);
                    _gotoNext = 2640506i32;
                } else if (__value__ == (2640506i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2640513i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2640535i32;
                    } else {
                        _gotoNext = 2641255i32;
                    };
                } else if (__value__ == (2640535i32)) {
                    _gotoNext = 2640539i32;
                } else if (__value__ == (2640539i32)) {
                    {
                        _c_2640546 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2640546 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2640566i32;
                            } else if (__value__ == (_c_2640546 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2640618i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2640546 : Bool) && (_c_2640546 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2640711i32;
                            } else if (__value__ == (((_base_2640196 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2640546) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2640546) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2641003i32;
                            } else {
                                _gotoNext = 2641245i32;
                            };
                        };
                    };
                } else if (__value__ == (2640566i32)) {
                    _underscores_2640037 = true;
                    _i++;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2640618i32)) {
                    if (_sawdot_2640439) {
                        _gotoNext = 2640646i32;
                    } else {
                        _gotoNext = 2640671i32;
                    };
                } else if (__value__ == (2640646i32)) {
                    _loopBreak = true;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2640671i32)) {
                    _sawdot_2640439 = true;
                    _dp_2640498 = _nd_2640476;
                    _i++;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2640711i32)) {
                    _sawdigits_2640456 = true;
                    if (((_c_2640546 == (48 : stdgo.GoUInt8)) && (_nd_2640476 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2640784i32;
                    } else {
                        _gotoNext = 2640840i32;
                    };
                } else if (__value__ == (2640784i32)) {
                    _dp_2640498--;
                    _i++;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2640840i32)) {
                    _nd_2640476++;
                    if ((_ndMant_2640485 < _maxMantDigits_2640216 : Bool)) {
                        _gotoNext = 2640874i32;
                    } else if (_c_2640546 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2640964i32;
                    } else {
                        _gotoNext = 2640991i32;
                    };
                } else if (__value__ == (2640874i32)) {
                    _mantissa = (_mantissa * (_base_2640196) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2640546 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2640485++;
                    _gotoNext = 2640991i32;
                } else if (__value__ == (2640964i32)) {
                    _trunc = true;
                    _gotoNext = 2640991i32;
                } else if (__value__ == (2640991i32)) {
                    _i++;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2641003i32)) {
                    _sawdigits_2640456 = true;
                    _nd_2640476++;
                    if ((_ndMant_2640485 < _maxMantDigits_2640216 : Bool)) {
                        _gotoNext = 2641115i32;
                    } else {
                        _gotoNext = 2641203i32;
                    };
                } else if (__value__ == (2641115i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2640546) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2640485++;
                    _gotoNext = 2641230i32;
                } else if (__value__ == (2641203i32)) {
                    _gotoNext = 2641203i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2641230i32;
                } else if (__value__ == (2641230i32)) {
                    _i++;
                    _gotoNext = 2640513i32;
                } else if (__value__ == (2641245i32)) {
                    _gotoNext = 2641255i32;
                } else if (__value__ == (2641255i32)) {
                    if (!_sawdigits_2640456) {
                        _gotoNext = 2641269i32;
                    } else {
                        _gotoNext = 2641284i32;
                    };
                } else if (__value__ == (2641269i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641284i32;
                } else if (__value__ == (2641284i32)) {
                    if (!_sawdot_2640439) {
                        _gotoNext = 2641295i32;
                    } else {
                        _gotoNext = 2641312i32;
                    };
                } else if (__value__ == (2641295i32)) {
                    _dp_2640498 = _nd_2640476;
                    _gotoNext = 2641312i32;
                } else if (__value__ == (2641312i32)) {
                    if (_base_2640196 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641326i32;
                    } else {
                        _gotoNext = 2641571i32;
                    };
                } else if (__value__ == (2641326i32)) {
                    _dp_2640498 = (_dp_2640498 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2640485 = (_ndMant_2640485 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2641571i32;
                } else if (__value__ == (2641571i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2640261) : Bool)) {
                        _gotoNext = 2641611i32;
                    } else if (_base_2640196 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2642044i32;
                    } else {
                        _gotoNext = 2642085i32;
                    };
                } else if (__value__ == (2641611i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2641636i32;
                    } else {
                        _gotoNext = 2641654i32;
                    };
                } else if (__value__ == (2641636i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641654i32;
                } else if (__value__ == (2641654i32)) {
                    _esign_2641654 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2641682i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2641715i32;
                    } else {
                        _gotoNext = 2641744i32;
                    };
                } else if (__value__ == (2641682i32)) {
                    _i++;
                    _gotoNext = 2641744i32;
                } else if (__value__ == (2641715i32)) {
                    _i++;
                    _esign_2641654 = (-1 : stdgo.GoInt);
                    _gotoNext = 2641744i32;
                } else if (__value__ == (2641744i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2641787i32;
                    } else {
                        _gotoNext = 2641805i32;
                    };
                } else if (__value__ == (2641787i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641805i32;
                } else if (__value__ == (2641805i32)) {
                    _e_2641805 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2641814i32;
                } else if (__value__ == (2641814i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2641883i32;
                    } else {
                        _gotoNext = 2642006i32;
                    };
                } else if (__value__ == (2641879i32)) {
                    _i++;
                    _gotoNext = 2641814i32;
                } else if (__value__ == (2641883i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2641903i32;
                    } else {
                        _gotoNext = 2641949i32;
                    };
                } else if (__value__ == (2641903i32)) {
                    _underscores_2640037 = true;
                    _i++;
                    _gotoNext = 2641814i32;
                } else if (__value__ == (2641949i32)) {
                    if ((_e_2641805 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2641962i32;
                    } else {
                        _gotoNext = 2641879i32;
                    };
                } else if (__value__ == (2641962i32)) {
                    _e_2641805 = (((_e_2641805 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2641879i32;
                } else if (__value__ == (2642006i32)) {
                    _dp_2640498 = (_dp_2640498 + ((_e_2641805 * _esign_2641654 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2642085i32;
                } else if (__value__ == (2642044i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642085i32;
                } else if (__value__ == (2642085i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2642102i32;
                    } else {
                        _gotoNext = 2642129i32;
                    };
                } else if (__value__ == (2642102i32)) {
                    _exp = (_dp_2640498 - _ndMant_2640485 : stdgo.GoInt);
                    _gotoNext = 2642129i32;
                } else if (__value__ == (2642129i32)) {
                    if ((_underscores_2640037 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2642168i32;
                    } else {
                        _gotoNext = 2642184i32;
                    };
                } else if (__value__ == (2642168i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642184i32;
                } else if (__value__ == (2642184i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
