package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2672758:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2671438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2671429:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2672607:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _expChar_2671214:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2671169:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2671451:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2671392:Bool = false;
        var _underscores_2670990:Bool = false;
        var _c_2671499:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2671409:Bool = false;
        var _base_2671149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2670990 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2671046i32;
                    } else {
                        _gotoNext = 2671061i32;
                    };
                } else if (__value__ == (2671046i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2671061i32;
                } else if (__value__ == (2671061i32)) {
                    _gotoNext = 2671061i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2671071i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2671096i32;
                    } else {
                        _gotoNext = 2671149i32;
                    };
                } else if (__value__ == (2671071i32)) {
                    _i++;
                    _gotoNext = 2671149i32;
                } else if (__value__ == (2671096i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2671149i32;
                } else if (__value__ == (2671149i32)) {
                    _base_2671149 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2671169 = (19 : stdgo.GoInt);
                    _expChar_2671214 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2671291i32;
                    } else {
                        _gotoNext = 2671392i32;
                    };
                } else if (__value__ == (2671291i32)) {
                    _base_2671149 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2671169 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2671214 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2671392i32;
                } else if (__value__ == (2671392i32)) {
                    _sawdot_2671392 = false;
                    _sawdigits_2671409 = false;
                    _nd_2671429 = (0 : stdgo.GoInt);
                    _ndMant_2671438 = (0 : stdgo.GoInt);
                    _dp_2671451 = (0 : stdgo.GoInt);
                    _gotoNext = 2671459i32;
                } else if (__value__ == (2671459i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2671466i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2671488i32;
                    } else {
                        _gotoNext = 2672208i32;
                    };
                } else if (__value__ == (2671488i32)) {
                    _gotoNext = 2671492i32;
                } else if (__value__ == (2671492i32)) {
                    {
                        _c_2671499 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2671499 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2671519i32;
                            } else if (__value__ == (_c_2671499 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2671571i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2671499 : Bool) && (_c_2671499 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2671664i32;
                            } else if (__value__ == (((_base_2671149 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2671499) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2671499) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2671956i32;
                            } else {
                                _gotoNext = 2672198i32;
                            };
                        };
                    };
                } else if (__value__ == (2671519i32)) {
                    _underscores_2670990 = true;
                    _i++;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2671571i32)) {
                    if (_sawdot_2671392) {
                        _gotoNext = 2671599i32;
                    } else {
                        _gotoNext = 2671624i32;
                    };
                } else if (__value__ == (2671599i32)) {
                    _loopBreak = true;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2671624i32)) {
                    _sawdot_2671392 = true;
                    _dp_2671451 = _nd_2671429;
                    _i++;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2671664i32)) {
                    _sawdigits_2671409 = true;
                    if (((_c_2671499 == (48 : stdgo.GoUInt8)) && (_nd_2671429 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2671737i32;
                    } else {
                        _gotoNext = 2671793i32;
                    };
                } else if (__value__ == (2671737i32)) {
                    _dp_2671451--;
                    _i++;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2671793i32)) {
                    _nd_2671429++;
                    if ((_ndMant_2671438 < _maxMantDigits_2671169 : Bool)) {
                        _gotoNext = 2671827i32;
                    } else if (_c_2671499 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2671917i32;
                    } else {
                        _gotoNext = 2671944i32;
                    };
                } else if (__value__ == (2671827i32)) {
                    _mantissa = (_mantissa * (_base_2671149) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2671499 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2671438++;
                    _gotoNext = 2671944i32;
                } else if (__value__ == (2671917i32)) {
                    _trunc = true;
                    _gotoNext = 2671944i32;
                } else if (__value__ == (2671944i32)) {
                    _i++;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2671956i32)) {
                    _sawdigits_2671409 = true;
                    _nd_2671429++;
                    if ((_ndMant_2671438 < _maxMantDigits_2671169 : Bool)) {
                        _gotoNext = 2672068i32;
                    } else {
                        _gotoNext = 2672156i32;
                    };
                } else if (__value__ == (2672068i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2671499) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2671438++;
                    _gotoNext = 2672183i32;
                } else if (__value__ == (2672156i32)) {
                    _gotoNext = 2672156i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2672183i32;
                } else if (__value__ == (2672183i32)) {
                    _i++;
                    _gotoNext = 2671466i32;
                } else if (__value__ == (2672198i32)) {
                    _gotoNext = 2672208i32;
                } else if (__value__ == (2672208i32)) {
                    if (!_sawdigits_2671409) {
                        _gotoNext = 2672222i32;
                    } else {
                        _gotoNext = 2672237i32;
                    };
                } else if (__value__ == (2672222i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2672237i32;
                } else if (__value__ == (2672237i32)) {
                    if (!_sawdot_2671392) {
                        _gotoNext = 2672248i32;
                    } else {
                        _gotoNext = 2672265i32;
                    };
                } else if (__value__ == (2672248i32)) {
                    _dp_2671451 = _nd_2671429;
                    _gotoNext = 2672265i32;
                } else if (__value__ == (2672265i32)) {
                    if (_base_2671149 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2672279i32;
                    } else {
                        _gotoNext = 2672524i32;
                    };
                } else if (__value__ == (2672279i32)) {
                    _dp_2671451 = (_dp_2671451 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2671438 = (_ndMant_2671438 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2672524i32;
                } else if (__value__ == (2672524i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2671214) : Bool)) {
                        _gotoNext = 2672564i32;
                    } else if (_base_2671149 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2672997i32;
                    } else {
                        _gotoNext = 2673038i32;
                    };
                } else if (__value__ == (2672564i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2672589i32;
                    } else {
                        _gotoNext = 2672607i32;
                    };
                } else if (__value__ == (2672589i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2672607i32;
                } else if (__value__ == (2672607i32)) {
                    _esign_2672607 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2672635i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2672668i32;
                    } else {
                        _gotoNext = 2672697i32;
                    };
                } else if (__value__ == (2672635i32)) {
                    _i++;
                    _gotoNext = 2672697i32;
                } else if (__value__ == (2672668i32)) {
                    _i++;
                    _esign_2672607 = (-1 : stdgo.GoInt);
                    _gotoNext = 2672697i32;
                } else if (__value__ == (2672697i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2672740i32;
                    } else {
                        _gotoNext = 2672758i32;
                    };
                } else if (__value__ == (2672740i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2672758i32;
                } else if (__value__ == (2672758i32)) {
                    _e_2672758 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2672767i32;
                } else if (__value__ == (2672767i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2672836i32;
                    } else {
                        _gotoNext = 2672959i32;
                    };
                } else if (__value__ == (2672832i32)) {
                    _i++;
                    _gotoNext = 2672767i32;
                } else if (__value__ == (2672836i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2672856i32;
                    } else {
                        _gotoNext = 2672902i32;
                    };
                } else if (__value__ == (2672856i32)) {
                    _underscores_2670990 = true;
                    _i++;
                    _gotoNext = 2672767i32;
                } else if (__value__ == (2672902i32)) {
                    if ((_e_2672758 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2672915i32;
                    } else {
                        _gotoNext = 2672832i32;
                    };
                } else if (__value__ == (2672915i32)) {
                    _e_2672758 = (((_e_2672758 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2672832i32;
                } else if (__value__ == (2672959i32)) {
                    _dp_2671451 = (_dp_2671451 + ((_e_2672758 * _esign_2672607 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2673038i32;
                } else if (__value__ == (2672997i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2673038i32;
                } else if (__value__ == (2673038i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2673055i32;
                    } else {
                        _gotoNext = 2673082i32;
                    };
                } else if (__value__ == (2673055i32)) {
                    _exp = (_dp_2671451 - _ndMant_2671438 : stdgo.GoInt);
                    _gotoNext = 2673082i32;
                } else if (__value__ == (2673082i32)) {
                    if ((_underscores_2670990 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2673121i32;
                    } else {
                        _gotoNext = 2673137i32;
                    };
                } else if (__value__ == (2673121i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2673137i32;
                } else if (__value__ == (2673137i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
