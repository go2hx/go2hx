package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_2736671:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2736908:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2736895:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2736626:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2736447:Bool = false;
        var _c_2736956:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _e_2738215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2738064:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2736886:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2736866:Bool = false;
        var _sawdot_2736849:Bool = false;
        var _base_2736606:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2736447 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2736503i32;
                    } else {
                        _gotoNext = 2736518i32;
                    };
                } else if (__value__ == (2736503i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2736518i32;
                } else if (__value__ == (2736518i32)) {
                    _gotoNext = 2736518i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2736528i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2736553i32;
                    } else {
                        _gotoNext = 2736606i32;
                    };
                } else if (__value__ == (2736528i32)) {
                    _i++;
                    _gotoNext = 2736606i32;
                } else if (__value__ == (2736553i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2736606i32;
                } else if (__value__ == (2736606i32)) {
                    _base_2736606 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2736626 = (19 : stdgo.GoInt);
                    _expChar_2736671 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2736748i32;
                    } else {
                        _gotoNext = 2736849i32;
                    };
                } else if (__value__ == (2736748i32)) {
                    _base_2736606 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2736626 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2736671 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2736849i32;
                } else if (__value__ == (2736849i32)) {
                    _sawdot_2736849 = false;
                    _sawdigits_2736866 = false;
                    _nd_2736886 = (0 : stdgo.GoInt);
                    _ndMant_2736895 = (0 : stdgo.GoInt);
                    _dp_2736908 = (0 : stdgo.GoInt);
                    _gotoNext = 2736916i32;
                } else if (__value__ == (2736916i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2736923i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2736945i32;
                    } else {
                        _gotoNext = 2737665i32;
                    };
                } else if (__value__ == (2736945i32)) {
                    _gotoNext = 2736949i32;
                } else if (__value__ == (2736949i32)) {
                    {
                        _c_2736956 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2736956 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2736976i32;
                            } else if (__value__ == (_c_2736956 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2737028i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2736956 : Bool) && (_c_2736956 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737121i32;
                            } else if (__value__ == (((_base_2736606 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2736956) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2736956) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737413i32;
                            } else {
                                _gotoNext = 2737655i32;
                            };
                        };
                    };
                } else if (__value__ == (2736976i32)) {
                    _underscores_2736447 = true;
                    _i++;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2737028i32)) {
                    if (_sawdot_2736849) {
                        _gotoNext = 2737056i32;
                    } else {
                        _gotoNext = 2737081i32;
                    };
                } else if (__value__ == (2737056i32)) {
                    _loopBreak = true;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2737081i32)) {
                    _sawdot_2736849 = true;
                    _dp_2736908 = _nd_2736886;
                    _i++;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2737121i32)) {
                    _sawdigits_2736866 = true;
                    if (((_c_2736956 == (48 : stdgo.GoUInt8)) && (_nd_2736886 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2737194i32;
                    } else {
                        _gotoNext = 2737250i32;
                    };
                } else if (__value__ == (2737194i32)) {
                    _dp_2736908--;
                    _i++;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2737250i32)) {
                    _nd_2736886++;
                    if ((_ndMant_2736895 < _maxMantDigits_2736626 : Bool)) {
                        _gotoNext = 2737284i32;
                    } else if (_c_2736956 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2737374i32;
                    } else {
                        _gotoNext = 2737401i32;
                    };
                } else if (__value__ == (2737284i32)) {
                    _mantissa = (_mantissa * (_base_2736606) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2736956 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2736895++;
                    _gotoNext = 2737401i32;
                } else if (__value__ == (2737374i32)) {
                    _trunc = true;
                    _gotoNext = 2737401i32;
                } else if (__value__ == (2737401i32)) {
                    _i++;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2737413i32)) {
                    _sawdigits_2736866 = true;
                    _nd_2736886++;
                    if ((_ndMant_2736895 < _maxMantDigits_2736626 : Bool)) {
                        _gotoNext = 2737525i32;
                    } else {
                        _gotoNext = 2737613i32;
                    };
                } else if (__value__ == (2737525i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2736956) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2736895++;
                    _gotoNext = 2737640i32;
                } else if (__value__ == (2737613i32)) {
                    _gotoNext = 2737613i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2737640i32;
                } else if (__value__ == (2737640i32)) {
                    _i++;
                    _gotoNext = 2736923i32;
                } else if (__value__ == (2737655i32)) {
                    _gotoNext = 2737665i32;
                } else if (__value__ == (2737665i32)) {
                    if (!_sawdigits_2736866) {
                        _gotoNext = 2737679i32;
                    } else {
                        _gotoNext = 2737694i32;
                    };
                } else if (__value__ == (2737679i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737694i32;
                } else if (__value__ == (2737694i32)) {
                    if (!_sawdot_2736849) {
                        _gotoNext = 2737705i32;
                    } else {
                        _gotoNext = 2737722i32;
                    };
                } else if (__value__ == (2737705i32)) {
                    _dp_2736908 = _nd_2736886;
                    _gotoNext = 2737722i32;
                } else if (__value__ == (2737722i32)) {
                    if (_base_2736606 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2737736i32;
                    } else {
                        _gotoNext = 2737981i32;
                    };
                } else if (__value__ == (2737736i32)) {
                    _dp_2736908 = (_dp_2736908 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2736895 = (_ndMant_2736895 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2737981i32;
                } else if (__value__ == (2737981i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2736671) : Bool)) {
                        _gotoNext = 2738021i32;
                    } else if (_base_2736606 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738454i32;
                    } else {
                        _gotoNext = 2738495i32;
                    };
                } else if (__value__ == (2738021i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2738046i32;
                    } else {
                        _gotoNext = 2738064i32;
                    };
                } else if (__value__ == (2738046i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738064i32;
                } else if (__value__ == (2738064i32)) {
                    _esign_2738064 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2738092i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2738125i32;
                    } else {
                        _gotoNext = 2738154i32;
                    };
                } else if (__value__ == (2738092i32)) {
                    _i++;
                    _gotoNext = 2738154i32;
                } else if (__value__ == (2738125i32)) {
                    _i++;
                    _esign_2738064 = (-1 : stdgo.GoInt);
                    _gotoNext = 2738154i32;
                } else if (__value__ == (2738154i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2738197i32;
                    } else {
                        _gotoNext = 2738215i32;
                    };
                } else if (__value__ == (2738197i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738215i32;
                } else if (__value__ == (2738215i32)) {
                    _e_2738215 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2738224i32;
                } else if (__value__ == (2738224i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2738293i32;
                    } else {
                        _gotoNext = 2738416i32;
                    };
                } else if (__value__ == (2738289i32)) {
                    _i++;
                    _gotoNext = 2738224i32;
                } else if (__value__ == (2738293i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2738313i32;
                    } else {
                        _gotoNext = 2738359i32;
                    };
                } else if (__value__ == (2738313i32)) {
                    _underscores_2736447 = true;
                    _i++;
                    _gotoNext = 2738224i32;
                } else if (__value__ == (2738359i32)) {
                    if ((_e_2738215 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2738372i32;
                    } else {
                        _gotoNext = 2738289i32;
                    };
                } else if (__value__ == (2738372i32)) {
                    _e_2738215 = (((_e_2738215 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2738289i32;
                } else if (__value__ == (2738416i32)) {
                    _dp_2736908 = (_dp_2736908 + ((_e_2738215 * _esign_2738064 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738495i32;
                } else if (__value__ == (2738454i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738495i32;
                } else if (__value__ == (2738495i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738512i32;
                    } else {
                        _gotoNext = 2738539i32;
                    };
                } else if (__value__ == (2738512i32)) {
                    _exp = (_dp_2736908 - _ndMant_2736895 : stdgo.GoInt);
                    _gotoNext = 2738539i32;
                } else if (__value__ == (2738539i32)) {
                    if ((_underscores_2736447 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2738578i32;
                    } else {
                        _gotoNext = 2738594i32;
                    };
                } else if (__value__ == (2738578i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738594i32;
                } else if (__value__ == (2738594i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
