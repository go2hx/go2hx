package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2615027:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _loopBreak = false;
        var _ndMant_2615316:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2615307:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2615287:Bool = false;
        var _maxMantDigits_2615047:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2615377:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2616636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2615329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2615270:Bool = false;
        var _expChar_2615092:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2614868:Bool = false;
        var _esign_2616485:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2614868 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2614924i32;
                    } else {
                        _gotoNext = 2614939i32;
                    };
                } else if (__value__ == (2614924i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614939i32;
                } else if (__value__ == (2614939i32)) {
                    _gotoNext = 2614939i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2614949i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2614974i32;
                    } else {
                        _gotoNext = 2615027i32;
                    };
                } else if (__value__ == (2614949i32)) {
                    _i++;
                    _gotoNext = 2615027i32;
                } else if (__value__ == (2614974i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2615027i32;
                } else if (__value__ == (2615027i32)) {
                    _base_2615027 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2615047 = (19 : stdgo.GoInt);
                    _expChar_2615092 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2615169i32;
                    } else {
                        _gotoNext = 2615270i32;
                    };
                } else if (__value__ == (2615169i32)) {
                    _base_2615027 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2615047 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2615092 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2615270i32;
                } else if (__value__ == (2615270i32)) {
                    _sawdot_2615270 = false;
                    _sawdigits_2615287 = false;
                    _nd_2615307 = (0 : stdgo.GoInt);
                    _ndMant_2615316 = (0 : stdgo.GoInt);
                    _dp_2615329 = (0 : stdgo.GoInt);
                    _gotoNext = 2615337i32;
                } else if (__value__ == (2615337i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2615344i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2615366i32;
                    } else {
                        _gotoNext = 2616086i32;
                    };
                } else if (__value__ == (2615366i32)) {
                    _gotoNext = 2615370i32;
                } else if (__value__ == (2615370i32)) {
                    {
                        _c_2615377 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2615377 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2615397i32;
                            } else if (__value__ == (_c_2615377 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2615449i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2615377 : Bool) && (_c_2615377 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2615542i32;
                            } else if (__value__ == (((_base_2615027 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2615377) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2615377) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2615834i32;
                            } else {
                                _gotoNext = 2616076i32;
                            };
                        };
                    };
                } else if (__value__ == (2615397i32)) {
                    _underscores_2614868 = true;
                    _i++;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2615449i32)) {
                    if (_sawdot_2615270) {
                        _gotoNext = 2615477i32;
                    } else {
                        _gotoNext = 2615502i32;
                    };
                } else if (__value__ == (2615477i32)) {
                    _loopBreak = true;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2615502i32)) {
                    _sawdot_2615270 = true;
                    _dp_2615329 = _nd_2615307;
                    _i++;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2615542i32)) {
                    _sawdigits_2615287 = true;
                    if (((_c_2615377 == (48 : stdgo.GoUInt8)) && (_nd_2615307 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2615615i32;
                    } else {
                        _gotoNext = 2615671i32;
                    };
                } else if (__value__ == (2615615i32)) {
                    _dp_2615329--;
                    _i++;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2615671i32)) {
                    _nd_2615307++;
                    if ((_ndMant_2615316 < _maxMantDigits_2615047 : Bool)) {
                        _gotoNext = 2615705i32;
                    } else if (_c_2615377 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2615795i32;
                    } else {
                        _gotoNext = 2615822i32;
                    };
                } else if (__value__ == (2615705i32)) {
                    _mantissa = (_mantissa * (_base_2615027) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2615377 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2615316++;
                    _gotoNext = 2615822i32;
                } else if (__value__ == (2615795i32)) {
                    _trunc = true;
                    _gotoNext = 2615822i32;
                } else if (__value__ == (2615822i32)) {
                    _i++;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2615834i32)) {
                    _sawdigits_2615287 = true;
                    _nd_2615307++;
                    if ((_ndMant_2615316 < _maxMantDigits_2615047 : Bool)) {
                        _gotoNext = 2615946i32;
                    } else {
                        _gotoNext = 2616034i32;
                    };
                } else if (__value__ == (2615946i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2615377) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2615316++;
                    _gotoNext = 2616061i32;
                } else if (__value__ == (2616034i32)) {
                    _gotoNext = 2616034i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2616061i32;
                } else if (__value__ == (2616061i32)) {
                    _i++;
                    _gotoNext = 2615344i32;
                } else if (__value__ == (2616076i32)) {
                    _gotoNext = 2616086i32;
                } else if (__value__ == (2616086i32)) {
                    if (!_sawdigits_2615287) {
                        _gotoNext = 2616100i32;
                    } else {
                        _gotoNext = 2616115i32;
                    };
                } else if (__value__ == (2616100i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616115i32;
                } else if (__value__ == (2616115i32)) {
                    if (!_sawdot_2615270) {
                        _gotoNext = 2616126i32;
                    } else {
                        _gotoNext = 2616143i32;
                    };
                } else if (__value__ == (2616126i32)) {
                    _dp_2615329 = _nd_2615307;
                    _gotoNext = 2616143i32;
                } else if (__value__ == (2616143i32)) {
                    if (_base_2615027 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2616157i32;
                    } else {
                        _gotoNext = 2616402i32;
                    };
                } else if (__value__ == (2616157i32)) {
                    _dp_2615329 = (_dp_2615329 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2615316 = (_ndMant_2615316 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2616402i32;
                } else if (__value__ == (2616402i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2615092) : Bool)) {
                        _gotoNext = 2616442i32;
                    } else if (_base_2615027 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2616875i32;
                    } else {
                        _gotoNext = 2616916i32;
                    };
                } else if (__value__ == (2616442i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2616467i32;
                    } else {
                        _gotoNext = 2616485i32;
                    };
                } else if (__value__ == (2616467i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616485i32;
                } else if (__value__ == (2616485i32)) {
                    _esign_2616485 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2616513i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2616546i32;
                    } else {
                        _gotoNext = 2616575i32;
                    };
                } else if (__value__ == (2616513i32)) {
                    _i++;
                    _gotoNext = 2616575i32;
                } else if (__value__ == (2616546i32)) {
                    _i++;
                    _esign_2616485 = (-1 : stdgo.GoInt);
                    _gotoNext = 2616575i32;
                } else if (__value__ == (2616575i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2616618i32;
                    } else {
                        _gotoNext = 2616636i32;
                    };
                } else if (__value__ == (2616618i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616636i32;
                } else if (__value__ == (2616636i32)) {
                    _e_2616636 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2616645i32;
                } else if (__value__ == (2616645i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2616714i32;
                    } else {
                        _gotoNext = 2616837i32;
                    };
                } else if (__value__ == (2616710i32)) {
                    _i++;
                    _gotoNext = 2616645i32;
                } else if (__value__ == (2616714i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2616734i32;
                    } else {
                        _gotoNext = 2616780i32;
                    };
                } else if (__value__ == (2616734i32)) {
                    _underscores_2614868 = true;
                    _i++;
                    _gotoNext = 2616645i32;
                } else if (__value__ == (2616780i32)) {
                    if ((_e_2616636 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2616793i32;
                    } else {
                        _gotoNext = 2616710i32;
                    };
                } else if (__value__ == (2616793i32)) {
                    _e_2616636 = (((_e_2616636 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2616710i32;
                } else if (__value__ == (2616837i32)) {
                    _dp_2615329 = (_dp_2615329 + ((_e_2616636 * _esign_2616485 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2616916i32;
                } else if (__value__ == (2616875i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2616916i32;
                } else if (__value__ == (2616916i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2616933i32;
                    } else {
                        _gotoNext = 2616960i32;
                    };
                } else if (__value__ == (2616933i32)) {
                    _exp = (_dp_2615329 - _ndMant_2615316 : stdgo.GoInt);
                    _gotoNext = 2616960i32;
                } else if (__value__ == (2616960i32)) {
                    if ((_underscores_2614868 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2616999i32;
                    } else {
                        _gotoNext = 2617015i32;
                    };
                } else if (__value__ == (2616999i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2617015i32;
                } else if (__value__ == (2617015i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
