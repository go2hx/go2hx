package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2690291:Bool = false;
        var _base_2690031:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_2690333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2690381:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _expChar_2690096:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2689872:Bool = false;
        var _e_2691640:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2691489:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2690320:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2690274:Bool = false;
        var _maxMantDigits_2690051:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2690311:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2689872 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2689928i32;
                    } else {
                        _gotoNext = 2689943i32;
                    };
                } else if (__value__ == (2689928i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689943i32;
                } else if (__value__ == (2689943i32)) {
                    _gotoNext = 2689943i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2689953i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2689978i32;
                    } else {
                        _gotoNext = 2690031i32;
                    };
                } else if (__value__ == (2689953i32)) {
                    _i++;
                    _gotoNext = 2690031i32;
                } else if (__value__ == (2689978i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2690031i32;
                } else if (__value__ == (2690031i32)) {
                    _base_2690031 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2690051 = (19 : stdgo.GoInt);
                    _expChar_2690096 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2690173i32;
                    } else {
                        _gotoNext = 2690274i32;
                    };
                } else if (__value__ == (2690173i32)) {
                    _base_2690031 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2690051 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2690096 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2690274i32;
                } else if (__value__ == (2690274i32)) {
                    _sawdot_2690274 = false;
                    _sawdigits_2690291 = false;
                    _nd_2690311 = (0 : stdgo.GoInt);
                    _ndMant_2690320 = (0 : stdgo.GoInt);
                    _dp_2690333 = (0 : stdgo.GoInt);
                    _gotoNext = 2690341i32;
                } else if (__value__ == (2690341i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2690348i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2690370i32;
                    } else {
                        _gotoNext = 2691090i32;
                    };
                } else if (__value__ == (2690370i32)) {
                    _gotoNext = 2690374i32;
                } else if (__value__ == (2690374i32)) {
                    {
                        _c_2690381 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2690381 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2690401i32;
                            } else if (__value__ == (_c_2690381 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2690453i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2690381 : Bool) && (_c_2690381 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2690546i32;
                            } else if (__value__ == (((_base_2690031 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2690381) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2690381) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2690838i32;
                            } else {
                                _gotoNext = 2691080i32;
                            };
                        };
                    };
                } else if (__value__ == (2690401i32)) {
                    _underscores_2689872 = true;
                    _i++;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2690453i32)) {
                    if (_sawdot_2690274) {
                        _gotoNext = 2690481i32;
                    } else {
                        _gotoNext = 2690506i32;
                    };
                } else if (__value__ == (2690481i32)) {
                    _loopBreak = true;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2690506i32)) {
                    _sawdot_2690274 = true;
                    _dp_2690333 = _nd_2690311;
                    _i++;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2690546i32)) {
                    _sawdigits_2690291 = true;
                    if (((_c_2690381 == (48 : stdgo.GoUInt8)) && (_nd_2690311 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2690619i32;
                    } else {
                        _gotoNext = 2690675i32;
                    };
                } else if (__value__ == (2690619i32)) {
                    _dp_2690333--;
                    _i++;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2690675i32)) {
                    _nd_2690311++;
                    if ((_ndMant_2690320 < _maxMantDigits_2690051 : Bool)) {
                        _gotoNext = 2690709i32;
                    } else if (_c_2690381 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2690799i32;
                    } else {
                        _gotoNext = 2690826i32;
                    };
                } else if (__value__ == (2690709i32)) {
                    _mantissa = (_mantissa * (_base_2690031) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2690381 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2690320++;
                    _gotoNext = 2690826i32;
                } else if (__value__ == (2690799i32)) {
                    _trunc = true;
                    _gotoNext = 2690826i32;
                } else if (__value__ == (2690826i32)) {
                    _i++;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2690838i32)) {
                    _sawdigits_2690291 = true;
                    _nd_2690311++;
                    if ((_ndMant_2690320 < _maxMantDigits_2690051 : Bool)) {
                        _gotoNext = 2690950i32;
                    } else {
                        _gotoNext = 2691038i32;
                    };
                } else if (__value__ == (2690950i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2690381) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2690320++;
                    _gotoNext = 2691065i32;
                } else if (__value__ == (2691038i32)) {
                    _gotoNext = 2691038i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2691065i32;
                } else if (__value__ == (2691065i32)) {
                    _i++;
                    _gotoNext = 2690348i32;
                } else if (__value__ == (2691080i32)) {
                    _gotoNext = 2691090i32;
                } else if (__value__ == (2691090i32)) {
                    if (!_sawdigits_2690291) {
                        _gotoNext = 2691104i32;
                    } else {
                        _gotoNext = 2691119i32;
                    };
                } else if (__value__ == (2691104i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691119i32;
                } else if (__value__ == (2691119i32)) {
                    if (!_sawdot_2690274) {
                        _gotoNext = 2691130i32;
                    } else {
                        _gotoNext = 2691147i32;
                    };
                } else if (__value__ == (2691130i32)) {
                    _dp_2690333 = _nd_2690311;
                    _gotoNext = 2691147i32;
                } else if (__value__ == (2691147i32)) {
                    if (_base_2690031 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691161i32;
                    } else {
                        _gotoNext = 2691406i32;
                    };
                } else if (__value__ == (2691161i32)) {
                    _dp_2690333 = (_dp_2690333 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2690320 = (_ndMant_2690320 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2691406i32;
                } else if (__value__ == (2691406i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2690096) : Bool)) {
                        _gotoNext = 2691446i32;
                    } else if (_base_2690031 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691879i32;
                    } else {
                        _gotoNext = 2691920i32;
                    };
                } else if (__value__ == (2691446i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2691471i32;
                    } else {
                        _gotoNext = 2691489i32;
                    };
                } else if (__value__ == (2691471i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691489i32;
                } else if (__value__ == (2691489i32)) {
                    _esign_2691489 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2691517i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2691550i32;
                    } else {
                        _gotoNext = 2691579i32;
                    };
                } else if (__value__ == (2691517i32)) {
                    _i++;
                    _gotoNext = 2691579i32;
                } else if (__value__ == (2691550i32)) {
                    _i++;
                    _esign_2691489 = (-1 : stdgo.GoInt);
                    _gotoNext = 2691579i32;
                } else if (__value__ == (2691579i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2691622i32;
                    } else {
                        _gotoNext = 2691640i32;
                    };
                } else if (__value__ == (2691622i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691640i32;
                } else if (__value__ == (2691640i32)) {
                    _e_2691640 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2691649i32;
                } else if (__value__ == (2691649i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2691718i32;
                    } else {
                        _gotoNext = 2691841i32;
                    };
                } else if (__value__ == (2691714i32)) {
                    _i++;
                    _gotoNext = 2691649i32;
                } else if (__value__ == (2691718i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2691738i32;
                    } else {
                        _gotoNext = 2691784i32;
                    };
                } else if (__value__ == (2691738i32)) {
                    _underscores_2689872 = true;
                    _i++;
                    _gotoNext = 2691649i32;
                } else if (__value__ == (2691784i32)) {
                    if ((_e_2691640 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2691797i32;
                    } else {
                        _gotoNext = 2691714i32;
                    };
                } else if (__value__ == (2691797i32)) {
                    _e_2691640 = (((_e_2691640 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2691714i32;
                } else if (__value__ == (2691841i32)) {
                    _dp_2690333 = (_dp_2690333 + ((_e_2691640 * _esign_2691489 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2691920i32;
                } else if (__value__ == (2691879i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691920i32;
                } else if (__value__ == (2691920i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691937i32;
                    } else {
                        _gotoNext = 2691964i32;
                    };
                } else if (__value__ == (2691937i32)) {
                    _exp = (_dp_2690333 - _ndMant_2690320 : stdgo.GoInt);
                    _gotoNext = 2691964i32;
                } else if (__value__ == (2691964i32)) {
                    if ((_underscores_2689872 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2692003i32;
                    } else {
                        _gotoNext = 2692019i32;
                    };
                } else if (__value__ == (2692003i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2692019i32;
                } else if (__value__ == (2692019i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
