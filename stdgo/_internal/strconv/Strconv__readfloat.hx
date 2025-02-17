package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660814i32;
                    } else {
                        _gotoNext = 2660829i32;
                    };
                } else if (__value__ == (2660814i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660829i32;
                } else if (__value__ == (2660829i32)) {
                    _gotoNext = 2660829i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660839i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660864i32;
                    } else {
                        _gotoNext = 2660917i32;
                    };
                } else if (__value__ == (2660839i32)) {
                    _i++;
                    _gotoNext = 2660917i32;
                } else if (__value__ == (2660864i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2660917i32;
                } else if (__value__ == (2660917i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2661059i32;
                    } else {
                        _gotoNext = 2661160i32;
                    };
                } else if (__value__ == (2661059i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2661160i32;
                } else if (__value__ == (2661160i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2661227i32;
                } else if (__value__ == (2661227i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661234i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2661256i32;
                    } else {
                        _gotoNext = 2661976i32;
                    };
                } else if (__value__ == (2661256i32)) {
                    _gotoNext = 2661260i32;
                } else if (__value__ == (2661260i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2661287i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2661339i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2661432i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2661724i32;
                            } else {
                                _gotoNext = 2661966i32;
                            };
                        };
                    };
                } else if (__value__ == (2661287i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661339i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2661367i32;
                    } else {
                        _gotoNext = 2661392i32;
                    };
                } else if (__value__ == (2661367i32)) {
                    _loopBreak = true;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661392i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661432i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2661505i32;
                    } else {
                        _gotoNext = 2661561i32;
                    };
                } else if (__value__ == (2661505i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661561i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2661595i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2661685i32;
                    } else {
                        _gotoNext = 2661712i32;
                    };
                } else if (__value__ == (2661595i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2661712i32;
                } else if (__value__ == (2661685i32)) {
                    _trunc = true;
                    _gotoNext = 2661712i32;
                } else if (__value__ == (2661712i32)) {
                    _i++;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661724i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2661836i32;
                    } else {
                        _gotoNext = 2661924i32;
                    };
                } else if (__value__ == (2661836i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2661951i32;
                } else if (__value__ == (2661924i32)) {
                    _gotoNext = 2661924i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2661951i32;
                } else if (__value__ == (2661951i32)) {
                    _i++;
                    _gotoNext = 2661234i32;
                } else if (__value__ == (2661966i32)) {
                    _gotoNext = 2661976i32;
                } else if (__value__ == (2661976i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2661990i32;
                    } else {
                        _gotoNext = 2662005i32;
                    };
                } else if (__value__ == (2661990i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662005i32;
                } else if (__value__ == (2662005i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2662016i32;
                    } else {
                        _gotoNext = 2662033i32;
                    };
                } else if (__value__ == (2662016i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2662033i32;
                } else if (__value__ == (2662033i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662047i32;
                    } else {
                        _gotoNext = 2662292i32;
                    };
                } else if (__value__ == (2662047i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2662292i32;
                } else if (__value__ == (2662292i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2662332i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662765i32;
                    } else {
                        _gotoNext = 2662806i32;
                    };
                } else if (__value__ == (2662332i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2662357i32;
                    } else {
                        _gotoNext = 2662375i32;
                    };
                } else if (__value__ == (2662357i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662375i32;
                } else if (__value__ == (2662375i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2662403i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2662436i32;
                    } else {
                        _gotoNext = 2662465i32;
                    };
                } else if (__value__ == (2662403i32)) {
                    _i++;
                    _gotoNext = 2662465i32;
                } else if (__value__ == (2662436i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2662465i32;
                } else if (__value__ == (2662465i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2662508i32;
                    } else {
                        _gotoNext = 2662526i32;
                    };
                } else if (__value__ == (2662508i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662526i32;
                } else if (__value__ == (2662526i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2662535i32;
                } else if (__value__ == (2662535i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2662604i32;
                    } else {
                        _gotoNext = 2662727i32;
                    };
                } else if (__value__ == (2662600i32)) {
                    _i++;
                    _gotoNext = 2662535i32;
                } else if (__value__ == (2662604i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2662624i32;
                    } else {
                        _gotoNext = 2662670i32;
                    };
                } else if (__value__ == (2662624i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2662535i32;
                } else if (__value__ == (2662670i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2662683i32;
                    } else {
                        _gotoNext = 2662600i32;
                    };
                } else if (__value__ == (2662683i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2662600i32;
                } else if (__value__ == (2662727i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2662806i32;
                } else if (__value__ == (2662765i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662806i32;
                } else if (__value__ == (2662806i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662823i32;
                    } else {
                        _gotoNext = 2662850i32;
                    };
                } else if (__value__ == (2662823i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2662850i32;
                } else if (__value__ == (2662850i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2662889i32;
                    } else {
                        _gotoNext = 2662905i32;
                    };
                } else if (__value__ == (2662889i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662905i32;
                } else if (__value__ == (2662905i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
