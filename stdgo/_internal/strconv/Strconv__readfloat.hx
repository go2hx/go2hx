package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _loopBreak = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2629840i32;
                    } else {
                        _gotoNext = 2629855i32;
                    };
                } else if (__value__ == (2629840i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629855i32;
                } else if (__value__ == (2629855i32)) {
                    _gotoNext = 2629855i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2629865i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2629890i32;
                    } else {
                        _gotoNext = 2629943i32;
                    };
                } else if (__value__ == (2629865i32)) {
                    _i++;
                    _gotoNext = 2629943i32;
                } else if (__value__ == (2629890i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2629943i32;
                } else if (__value__ == (2629943i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630085i32;
                    } else {
                        _gotoNext = 2630186i32;
                    };
                } else if (__value__ == (2630085i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2630186i32;
                } else if (__value__ == (2630186i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2630253i32;
                } else if (__value__ == (2630253i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630260i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2630282i32;
                    } else {
                        _gotoNext = 2631002i32;
                    };
                } else if (__value__ == (2630282i32)) {
                    _gotoNext = 2630286i32;
                } else if (__value__ == (2630286i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2630313i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2630365i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630458i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630750i32;
                            } else {
                                _gotoNext = 2630992i32;
                            };
                        };
                    };
                } else if (__value__ == (2630313i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630365i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2630393i32;
                    } else {
                        _gotoNext = 2630418i32;
                    };
                } else if (__value__ == (2630393i32)) {
                    _loopBreak = true;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630418i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630458i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2630531i32;
                    } else {
                        _gotoNext = 2630587i32;
                    };
                } else if (__value__ == (2630531i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630587i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2630621i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2630711i32;
                    } else {
                        _gotoNext = 2630738i32;
                    };
                } else if (__value__ == (2630621i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2630738i32;
                } else if (__value__ == (2630711i32)) {
                    _trunc = true;
                    _gotoNext = 2630738i32;
                } else if (__value__ == (2630738i32)) {
                    _i++;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630750i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2630862i32;
                    } else {
                        _gotoNext = 2630950i32;
                    };
                } else if (__value__ == (2630862i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2630977i32;
                } else if (__value__ == (2630950i32)) {
                    _gotoNext = 2630950i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2630977i32;
                } else if (__value__ == (2630977i32)) {
                    _i++;
                    _gotoNext = 2630260i32;
                } else if (__value__ == (2630992i32)) {
                    _gotoNext = 2631002i32;
                } else if (__value__ == (2631002i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2631016i32;
                    } else {
                        _gotoNext = 2631031i32;
                    };
                } else if (__value__ == (2631016i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631031i32;
                } else if (__value__ == (2631031i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2631042i32;
                    } else {
                        _gotoNext = 2631059i32;
                    };
                } else if (__value__ == (2631042i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2631059i32;
                } else if (__value__ == (2631059i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631073i32;
                    } else {
                        _gotoNext = 2631318i32;
                    };
                } else if (__value__ == (2631073i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631318i32;
                } else if (__value__ == (2631318i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2631358i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631791i32;
                    } else {
                        _gotoNext = 2631832i32;
                    };
                } else if (__value__ == (2631358i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2631383i32;
                    } else {
                        _gotoNext = 2631401i32;
                    };
                } else if (__value__ == (2631383i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631401i32;
                } else if (__value__ == (2631401i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631429i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631462i32;
                    } else {
                        _gotoNext = 2631491i32;
                    };
                } else if (__value__ == (2631429i32)) {
                    _i++;
                    _gotoNext = 2631491i32;
                } else if (__value__ == (2631462i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2631491i32;
                } else if (__value__ == (2631491i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2631534i32;
                    } else {
                        _gotoNext = 2631552i32;
                    };
                } else if (__value__ == (2631534i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631552i32;
                } else if (__value__ == (2631552i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2631561i32;
                } else if (__value__ == (2631561i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2631630i32;
                    } else {
                        _gotoNext = 2631753i32;
                    };
                } else if (__value__ == (2631626i32)) {
                    _i++;
                    _gotoNext = 2631561i32;
                } else if (__value__ == (2631630i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2631650i32;
                    } else {
                        _gotoNext = 2631696i32;
                    };
                } else if (__value__ == (2631650i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2631561i32;
                } else if (__value__ == (2631696i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2631709i32;
                    } else {
                        _gotoNext = 2631626i32;
                    };
                } else if (__value__ == (2631709i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2631626i32;
                } else if (__value__ == (2631753i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631832i32;
                } else if (__value__ == (2631791i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631832i32;
                } else if (__value__ == (2631832i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631849i32;
                    } else {
                        _gotoNext = 2631876i32;
                    };
                } else if (__value__ == (2631849i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2631876i32;
                } else if (__value__ == (2631876i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2631915i32;
                    } else {
                        _gotoNext = 2631931i32;
                    };
                } else if (__value__ == (2631915i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631931i32;
                } else if (__value__ == (2631931i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
