package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_5:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2736072i32;
                    } else {
                        _gotoNext = 2736087i32;
                    };
                } else if (__value__ == (2736072i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2736087i32;
                } else if (__value__ == (2736087i32)) {
                    _gotoNext = 2736087i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2736097i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2736122i32;
                    } else {
                        _gotoNext = 2736175i32;
                    };
                } else if (__value__ == (2736097i32)) {
                    _i++;
                    _gotoNext = 2736175i32;
                } else if (__value__ == (2736122i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2736175i32;
                } else if (__value__ == (2736175i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2736317i32;
                    } else {
                        _gotoNext = 2736418i32;
                    };
                } else if (__value__ == (2736317i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2736418i32;
                } else if (__value__ == (2736418i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2736485i32;
                } else if (__value__ == (2736485i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2736492i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2736514i32;
                    } else {
                        _gotoNext = 2737234i32;
                    };
                } else if (__value__ == (2736514i32)) {
                    _gotoNext = 2736518i32;
                } else if (__value__ == (2736518i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2736545i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2736597i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2736690i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2736982i32;
                            } else {
                                _gotoNext = 2737224i32;
                            };
                        };
                    };
                } else if (__value__ == (2736545i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2736597i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2736625i32;
                    } else {
                        _gotoNext = 2736650i32;
                    };
                } else if (__value__ == (2736625i32)) {
                    _loopBreak = true;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2736650i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2736690i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2736763i32;
                    } else {
                        _gotoNext = 2736819i32;
                    };
                } else if (__value__ == (2736763i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2736819i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2736853i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2736943i32;
                    } else {
                        _gotoNext = 2736970i32;
                    };
                } else if (__value__ == (2736853i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2736970i32;
                } else if (__value__ == (2736943i32)) {
                    _trunc = true;
                    _gotoNext = 2736970i32;
                } else if (__value__ == (2736970i32)) {
                    _i++;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2736982i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2737094i32;
                    } else {
                        _gotoNext = 2737182i32;
                    };
                } else if (__value__ == (2737094i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2737209i32;
                } else if (__value__ == (2737182i32)) {
                    _gotoNext = 2737182i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2737209i32;
                } else if (__value__ == (2737209i32)) {
                    _i++;
                    _gotoNext = 2736492i32;
                } else if (__value__ == (2737224i32)) {
                    _gotoNext = 2737234i32;
                } else if (__value__ == (2737234i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2737248i32;
                    } else {
                        _gotoNext = 2737263i32;
                    };
                } else if (__value__ == (2737248i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737263i32;
                } else if (__value__ == (2737263i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2737274i32;
                    } else {
                        _gotoNext = 2737291i32;
                    };
                } else if (__value__ == (2737274i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2737291i32;
                } else if (__value__ == (2737291i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2737305i32;
                    } else {
                        _gotoNext = 2737550i32;
                    };
                } else if (__value__ == (2737305i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2737550i32;
                } else if (__value__ == (2737550i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2737590i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738023i32;
                    } else {
                        _gotoNext = 2738064i32;
                    };
                } else if (__value__ == (2737590i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2737615i32;
                    } else {
                        _gotoNext = 2737633i32;
                    };
                } else if (__value__ == (2737615i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737633i32;
                } else if (__value__ == (2737633i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2737661i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2737694i32;
                    } else {
                        _gotoNext = 2737723i32;
                    };
                } else if (__value__ == (2737661i32)) {
                    _i++;
                    _gotoNext = 2737723i32;
                } else if (__value__ == (2737694i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2737723i32;
                } else if (__value__ == (2737723i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2737766i32;
                    } else {
                        _gotoNext = 2737784i32;
                    };
                } else if (__value__ == (2737766i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737784i32;
                } else if (__value__ == (2737784i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2737793i32;
                } else if (__value__ == (2737793i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2737862i32;
                    } else {
                        _gotoNext = 2737985i32;
                    };
                } else if (__value__ == (2737858i32)) {
                    _i++;
                    _gotoNext = 2737793i32;
                } else if (__value__ == (2737862i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2737882i32;
                    } else {
                        _gotoNext = 2737928i32;
                    };
                } else if (__value__ == (2737882i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2737793i32;
                } else if (__value__ == (2737928i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2737941i32;
                    } else {
                        _gotoNext = 2737858i32;
                    };
                } else if (__value__ == (2737941i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2737858i32;
                } else if (__value__ == (2737985i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738064i32;
                } else if (__value__ == (2738023i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738064i32;
                } else if (__value__ == (2738064i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738081i32;
                    } else {
                        _gotoNext = 2738108i32;
                    };
                } else if (__value__ == (2738081i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2738108i32;
                } else if (__value__ == (2738108i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2738147i32;
                    } else {
                        _gotoNext = 2738163i32;
                    };
                } else if (__value__ == (2738147i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738163i32;
                } else if (__value__ == (2738163i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
