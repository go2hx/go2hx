package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2736952i32;
                    } else {
                        _gotoNext = 2736967i32;
                    };
                } else if (__value__ == (2736952i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2736967i32;
                } else if (__value__ == (2736967i32)) {
                    _gotoNext = 2736967i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2736977i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2737002i32;
                    } else {
                        _gotoNext = 2737055i32;
                    };
                } else if (__value__ == (2736977i32)) {
                    _i++;
                    _gotoNext = 2737055i32;
                } else if (__value__ == (2737002i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2737055i32;
                } else if (__value__ == (2737055i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2737197i32;
                    } else {
                        _gotoNext = 2737298i32;
                    };
                } else if (__value__ == (2737197i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2737298i32;
                } else if (__value__ == (2737298i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2737365i32;
                } else if (__value__ == (2737365i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2737372i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2737394i32;
                    } else {
                        _gotoNext = 2738114i32;
                    };
                } else if (__value__ == (2737394i32)) {
                    _gotoNext = 2737398i32;
                } else if (__value__ == (2737398i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2737425i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2737477i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737570i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737862i32;
                            } else {
                                _gotoNext = 2738104i32;
                            };
                        };
                    };
                } else if (__value__ == (2737425i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2737477i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2737505i32;
                    } else {
                        _gotoNext = 2737530i32;
                    };
                } else if (__value__ == (2737505i32)) {
                    _loopBreak = true;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2737530i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2737570i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2737643i32;
                    } else {
                        _gotoNext = 2737699i32;
                    };
                } else if (__value__ == (2737643i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2737699i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2737733i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2737823i32;
                    } else {
                        _gotoNext = 2737850i32;
                    };
                } else if (__value__ == (2737733i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2737850i32;
                } else if (__value__ == (2737823i32)) {
                    _trunc = true;
                    _gotoNext = 2737850i32;
                } else if (__value__ == (2737850i32)) {
                    _i++;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2737862i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2737974i32;
                    } else {
                        _gotoNext = 2738062i32;
                    };
                } else if (__value__ == (2737974i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2738089i32;
                } else if (__value__ == (2738062i32)) {
                    _gotoNext = 2738062i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2738089i32;
                } else if (__value__ == (2738089i32)) {
                    _i++;
                    _gotoNext = 2737372i32;
                } else if (__value__ == (2738104i32)) {
                    _gotoNext = 2738114i32;
                } else if (__value__ == (2738114i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2738128i32;
                    } else {
                        _gotoNext = 2738143i32;
                    };
                } else if (__value__ == (2738128i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738143i32;
                } else if (__value__ == (2738143i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2738154i32;
                    } else {
                        _gotoNext = 2738171i32;
                    };
                } else if (__value__ == (2738154i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2738171i32;
                } else if (__value__ == (2738171i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738185i32;
                    } else {
                        _gotoNext = 2738430i32;
                    };
                } else if (__value__ == (2738185i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738430i32;
                } else if (__value__ == (2738430i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2738470i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738903i32;
                    } else {
                        _gotoNext = 2738944i32;
                    };
                } else if (__value__ == (2738470i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2738495i32;
                    } else {
                        _gotoNext = 2738513i32;
                    };
                } else if (__value__ == (2738495i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738513i32;
                } else if (__value__ == (2738513i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2738541i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2738574i32;
                    } else {
                        _gotoNext = 2738603i32;
                    };
                } else if (__value__ == (2738541i32)) {
                    _i++;
                    _gotoNext = 2738603i32;
                } else if (__value__ == (2738574i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2738603i32;
                } else if (__value__ == (2738603i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2738646i32;
                    } else {
                        _gotoNext = 2738664i32;
                    };
                } else if (__value__ == (2738646i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738664i32;
                } else if (__value__ == (2738664i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2738673i32;
                } else if (__value__ == (2738673i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2738742i32;
                    } else {
                        _gotoNext = 2738865i32;
                    };
                } else if (__value__ == (2738738i32)) {
                    _i++;
                    _gotoNext = 2738673i32;
                } else if (__value__ == (2738742i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2738762i32;
                    } else {
                        _gotoNext = 2738808i32;
                    };
                } else if (__value__ == (2738762i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2738673i32;
                } else if (__value__ == (2738808i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2738821i32;
                    } else {
                        _gotoNext = 2738738i32;
                    };
                } else if (__value__ == (2738821i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2738738i32;
                } else if (__value__ == (2738865i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738944i32;
                } else if (__value__ == (2738903i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738944i32;
                } else if (__value__ == (2738944i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738961i32;
                    } else {
                        _gotoNext = 2738988i32;
                    };
                } else if (__value__ == (2738961i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2738988i32;
                } else if (__value__ == (2738988i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2739027i32;
                    } else {
                        _gotoNext = 2739043i32;
                    };
                } else if (__value__ == (2739027i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739043i32;
                } else if (__value__ == (2739043i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
