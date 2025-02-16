package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdot_4:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _underscores_0:Bool = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2658836i32;
                    } else {
                        _gotoNext = 2658851i32;
                    };
                } else if (__value__ == (2658836i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658851i32;
                } else if (__value__ == (2658851i32)) {
                    _gotoNext = 2658851i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2658861i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2658886i32;
                    } else {
                        _gotoNext = 2658939i32;
                    };
                } else if (__value__ == (2658861i32)) {
                    _i++;
                    _gotoNext = 2658939i32;
                } else if (__value__ == (2658886i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2658939i32;
                } else if (__value__ == (2658939i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2659081i32;
                    } else {
                        _gotoNext = 2659182i32;
                    };
                } else if (__value__ == (2659081i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2659182i32;
                } else if (__value__ == (2659182i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2659249i32;
                } else if (__value__ == (2659249i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659256i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2659278i32;
                    } else {
                        _gotoNext = 2659998i32;
                    };
                } else if (__value__ == (2659278i32)) {
                    _gotoNext = 2659282i32;
                } else if (__value__ == (2659282i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2659309i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2659361i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659454i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659746i32;
                            } else {
                                _gotoNext = 2659988i32;
                            };
                        };
                    };
                } else if (__value__ == (2659309i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659361i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2659389i32;
                    } else {
                        _gotoNext = 2659414i32;
                    };
                } else if (__value__ == (2659389i32)) {
                    _loopBreak = true;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659414i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659454i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2659527i32;
                    } else {
                        _gotoNext = 2659583i32;
                    };
                } else if (__value__ == (2659527i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659583i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2659617i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2659707i32;
                    } else {
                        _gotoNext = 2659734i32;
                    };
                } else if (__value__ == (2659617i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2659734i32;
                } else if (__value__ == (2659707i32)) {
                    _trunc = true;
                    _gotoNext = 2659734i32;
                } else if (__value__ == (2659734i32)) {
                    _i++;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659746i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2659858i32;
                    } else {
                        _gotoNext = 2659946i32;
                    };
                } else if (__value__ == (2659858i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2659973i32;
                } else if (__value__ == (2659946i32)) {
                    _gotoNext = 2659946i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2659973i32;
                } else if (__value__ == (2659973i32)) {
                    _i++;
                    _gotoNext = 2659256i32;
                } else if (__value__ == (2659988i32)) {
                    _gotoNext = 2659998i32;
                } else if (__value__ == (2659998i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2660012i32;
                    } else {
                        _gotoNext = 2660027i32;
                    };
                } else if (__value__ == (2660012i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660027i32;
                } else if (__value__ == (2660027i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2660038i32;
                    } else {
                        _gotoNext = 2660055i32;
                    };
                } else if (__value__ == (2660038i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2660055i32;
                } else if (__value__ == (2660055i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660069i32;
                    } else {
                        _gotoNext = 2660314i32;
                    };
                } else if (__value__ == (2660069i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660314i32;
                } else if (__value__ == (2660314i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2660354i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660787i32;
                    } else {
                        _gotoNext = 2660828i32;
                    };
                } else if (__value__ == (2660354i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660379i32;
                    } else {
                        _gotoNext = 2660397i32;
                    };
                } else if (__value__ == (2660379i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660397i32;
                } else if (__value__ == (2660397i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660425i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660458i32;
                    } else {
                        _gotoNext = 2660487i32;
                    };
                } else if (__value__ == (2660425i32)) {
                    _i++;
                    _gotoNext = 2660487i32;
                } else if (__value__ == (2660458i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2660487i32;
                } else if (__value__ == (2660487i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2660530i32;
                    } else {
                        _gotoNext = 2660548i32;
                    };
                } else if (__value__ == (2660530i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660548i32;
                } else if (__value__ == (2660548i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2660557i32;
                } else if (__value__ == (2660557i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2660626i32;
                    } else {
                        _gotoNext = 2660749i32;
                    };
                } else if (__value__ == (2660622i32)) {
                    _i++;
                    _gotoNext = 2660557i32;
                } else if (__value__ == (2660626i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2660646i32;
                    } else {
                        _gotoNext = 2660692i32;
                    };
                } else if (__value__ == (2660646i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2660557i32;
                } else if (__value__ == (2660692i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2660705i32;
                    } else {
                        _gotoNext = 2660622i32;
                    };
                } else if (__value__ == (2660705i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2660622i32;
                } else if (__value__ == (2660749i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660828i32;
                } else if (__value__ == (2660787i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660828i32;
                } else if (__value__ == (2660828i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660845i32;
                    } else {
                        _gotoNext = 2660872i32;
                    };
                } else if (__value__ == (2660845i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2660872i32;
                } else if (__value__ == (2660872i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2660911i32;
                    } else {
                        _gotoNext = 2660927i32;
                    };
                } else if (__value__ == (2660911i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660927i32;
                } else if (__value__ == (2660927i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
