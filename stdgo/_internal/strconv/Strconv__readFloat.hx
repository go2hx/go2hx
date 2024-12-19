package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _expChar_2677534:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2679078:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2678927:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2677489:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2677469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2677310:Bool = false;
        var _c_2677819:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2677771:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2677758:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2677749:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2677729:Bool = false;
        var _sawdot_2677712:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2677310 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2677366i32;
                    } else {
                        _gotoNext = 2677381i32;
                    };
                } else if (__value__ == (2677366i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677381i32;
                } else if (__value__ == (2677381i32)) {
                    _gotoNext = 2677381i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2677391i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2677416i32;
                    } else {
                        _gotoNext = 2677469i32;
                    };
                } else if (__value__ == (2677391i32)) {
                    _i++;
                    _gotoNext = 2677469i32;
                } else if (__value__ == (2677416i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2677469i32;
                } else if (__value__ == (2677469i32)) {
                    _base_2677469 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2677489 = (19 : stdgo.GoInt);
                    _expChar_2677534 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2677611i32;
                    } else {
                        _gotoNext = 2677712i32;
                    };
                } else if (__value__ == (2677611i32)) {
                    _base_2677469 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2677489 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2677534 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2677712i32;
                } else if (__value__ == (2677712i32)) {
                    _sawdot_2677712 = false;
                    _sawdigits_2677729 = false;
                    _nd_2677749 = (0 : stdgo.GoInt);
                    _ndMant_2677758 = (0 : stdgo.GoInt);
                    _dp_2677771 = (0 : stdgo.GoInt);
                    _gotoNext = 2677779i32;
                } else if (__value__ == (2677779i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2677786i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2677808i32;
                    } else {
                        _gotoNext = 2678528i32;
                    };
                } else if (__value__ == (2677808i32)) {
                    _gotoNext = 2677812i32;
                } else if (__value__ == (2677812i32)) {
                    {
                        _c_2677819 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2677819 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2677839i32;
                            } else if (__value__ == (_c_2677819 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2677891i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2677819 : Bool) && (_c_2677819 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2677984i32;
                            } else if (__value__ == (((_base_2677469 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2677819) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2677819) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2678276i32;
                            } else {
                                _gotoNext = 2678518i32;
                            };
                        };
                    };
                } else if (__value__ == (2677839i32)) {
                    _underscores_2677310 = true;
                    _i++;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2677891i32)) {
                    if (_sawdot_2677712) {
                        _gotoNext = 2677919i32;
                    } else {
                        _gotoNext = 2677944i32;
                    };
                } else if (__value__ == (2677919i32)) {
                    _loopBreak = true;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2677944i32)) {
                    _sawdot_2677712 = true;
                    _dp_2677771 = _nd_2677749;
                    _i++;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2677984i32)) {
                    _sawdigits_2677729 = true;
                    if (((_c_2677819 == (48 : stdgo.GoUInt8)) && (_nd_2677749 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2678057i32;
                    } else {
                        _gotoNext = 2678113i32;
                    };
                } else if (__value__ == (2678057i32)) {
                    _dp_2677771--;
                    _i++;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2678113i32)) {
                    _nd_2677749++;
                    if ((_ndMant_2677758 < _maxMantDigits_2677489 : Bool)) {
                        _gotoNext = 2678147i32;
                    } else if (_c_2677819 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2678237i32;
                    } else {
                        _gotoNext = 2678264i32;
                    };
                } else if (__value__ == (2678147i32)) {
                    _mantissa = (_mantissa * (_base_2677469) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2677819 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2677758++;
                    _gotoNext = 2678264i32;
                } else if (__value__ == (2678237i32)) {
                    _trunc = true;
                    _gotoNext = 2678264i32;
                } else if (__value__ == (2678264i32)) {
                    _i++;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2678276i32)) {
                    _sawdigits_2677729 = true;
                    _nd_2677749++;
                    if ((_ndMant_2677758 < _maxMantDigits_2677489 : Bool)) {
                        _gotoNext = 2678388i32;
                    } else {
                        _gotoNext = 2678476i32;
                    };
                } else if (__value__ == (2678388i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2677819) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2677758++;
                    _gotoNext = 2678503i32;
                } else if (__value__ == (2678476i32)) {
                    _gotoNext = 2678476i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2678503i32;
                } else if (__value__ == (2678503i32)) {
                    _i++;
                    _gotoNext = 2677786i32;
                } else if (__value__ == (2678518i32)) {
                    _gotoNext = 2678528i32;
                } else if (__value__ == (2678528i32)) {
                    if (!_sawdigits_2677729) {
                        _gotoNext = 2678542i32;
                    } else {
                        _gotoNext = 2678557i32;
                    };
                } else if (__value__ == (2678542i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678557i32;
                } else if (__value__ == (2678557i32)) {
                    if (!_sawdot_2677712) {
                        _gotoNext = 2678568i32;
                    } else {
                        _gotoNext = 2678585i32;
                    };
                } else if (__value__ == (2678568i32)) {
                    _dp_2677771 = _nd_2677749;
                    _gotoNext = 2678585i32;
                } else if (__value__ == (2678585i32)) {
                    if (_base_2677469 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2678599i32;
                    } else {
                        _gotoNext = 2678844i32;
                    };
                } else if (__value__ == (2678599i32)) {
                    _dp_2677771 = (_dp_2677771 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2677758 = (_ndMant_2677758 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2678844i32;
                } else if (__value__ == (2678844i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2677534) : Bool)) {
                        _gotoNext = 2678884i32;
                    } else if (_base_2677469 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2679317i32;
                    } else {
                        _gotoNext = 2679358i32;
                    };
                } else if (__value__ == (2678884i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2678909i32;
                    } else {
                        _gotoNext = 2678927i32;
                    };
                } else if (__value__ == (2678909i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678927i32;
                } else if (__value__ == (2678927i32)) {
                    _esign_2678927 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2678955i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2678988i32;
                    } else {
                        _gotoNext = 2679017i32;
                    };
                } else if (__value__ == (2678955i32)) {
                    _i++;
                    _gotoNext = 2679017i32;
                } else if (__value__ == (2678988i32)) {
                    _i++;
                    _esign_2678927 = (-1 : stdgo.GoInt);
                    _gotoNext = 2679017i32;
                } else if (__value__ == (2679017i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2679060i32;
                    } else {
                        _gotoNext = 2679078i32;
                    };
                } else if (__value__ == (2679060i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2679078i32;
                } else if (__value__ == (2679078i32)) {
                    _e_2679078 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2679087i32;
                } else if (__value__ == (2679087i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2679156i32;
                    } else {
                        _gotoNext = 2679279i32;
                    };
                } else if (__value__ == (2679152i32)) {
                    _i++;
                    _gotoNext = 2679087i32;
                } else if (__value__ == (2679156i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2679176i32;
                    } else {
                        _gotoNext = 2679222i32;
                    };
                } else if (__value__ == (2679176i32)) {
                    _underscores_2677310 = true;
                    _i++;
                    _gotoNext = 2679087i32;
                } else if (__value__ == (2679222i32)) {
                    if ((_e_2679078 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2679235i32;
                    } else {
                        _gotoNext = 2679152i32;
                    };
                } else if (__value__ == (2679235i32)) {
                    _e_2679078 = (((_e_2679078 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2679152i32;
                } else if (__value__ == (2679279i32)) {
                    _dp_2677771 = (_dp_2677771 + ((_e_2679078 * _esign_2678927 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2679358i32;
                } else if (__value__ == (2679317i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2679358i32;
                } else if (__value__ == (2679358i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2679375i32;
                    } else {
                        _gotoNext = 2679402i32;
                    };
                } else if (__value__ == (2679375i32)) {
                    _exp = (_dp_2677771 - _ndMant_2677758 : stdgo.GoInt);
                    _gotoNext = 2679402i32;
                } else if (__value__ == (2679402i32)) {
                    if ((_underscores_2677310 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2679441i32;
                    } else {
                        _gotoNext = 2679457i32;
                    };
                } else if (__value__ == (2679441i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2679457i32;
                } else if (__value__ == (2679457i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
