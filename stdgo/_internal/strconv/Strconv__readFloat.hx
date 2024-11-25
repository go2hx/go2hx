package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2610226:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2608906:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2608897:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2608682:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2608877:Bool = false;
        var _loopBreak = false;
        var _dp_2608919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2608860:Bool = false;
        var _base_2608617:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2608458:Bool = false;
        var _esign_2610075:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2608967:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2608637:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2608458 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2608514i32;
                    } else {
                        _gotoNext = 2608529i32;
                    };
                } else if (__value__ == (2608514i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2608529i32;
                } else if (__value__ == (2608529i32)) {
                    _gotoNext = 2608529i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2608539i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2608564i32;
                    } else {
                        _gotoNext = 2608617i32;
                    };
                } else if (__value__ == (2608539i32)) {
                    _i++;
                    _gotoNext = 2608617i32;
                } else if (__value__ == (2608564i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2608617i32;
                } else if (__value__ == (2608617i32)) {
                    _base_2608617 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2608637 = (19 : stdgo.GoInt);
                    _expChar_2608682 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2608759i32;
                    } else {
                        _gotoNext = 2608860i32;
                    };
                } else if (__value__ == (2608759i32)) {
                    _base_2608617 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2608637 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2608682 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2608860i32;
                } else if (__value__ == (2608860i32)) {
                    _sawdot_2608860 = false;
                    _sawdigits_2608877 = false;
                    _nd_2608897 = (0 : stdgo.GoInt);
                    _ndMant_2608906 = (0 : stdgo.GoInt);
                    _dp_2608919 = (0 : stdgo.GoInt);
                    _gotoNext = 2608927i32;
                } else if (__value__ == (2608927i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2608934i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2608956i32;
                    } else {
                        _gotoNext = 2609676i32;
                    };
                } else if (__value__ == (2608956i32)) {
                    _gotoNext = 2608960i32;
                } else if (__value__ == (2608960i32)) {
                    {
                        _c_2608967 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2608967 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2608987i32;
                            } else if (__value__ == (_c_2608967 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2609039i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2608967 : Bool) && (_c_2608967 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2609132i32;
                            } else if (__value__ == (((_base_2608617 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2608967) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2608967) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2609424i32;
                            } else {
                                _gotoNext = 2609666i32;
                            };
                        };
                    };
                } else if (__value__ == (2608987i32)) {
                    _underscores_2608458 = true;
                    _i++;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2609039i32)) {
                    if (_sawdot_2608860) {
                        _gotoNext = 2609067i32;
                    } else {
                        _gotoNext = 2609092i32;
                    };
                } else if (__value__ == (2609067i32)) {
                    _loopBreak = true;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2609092i32)) {
                    _sawdot_2608860 = true;
                    _dp_2608919 = _nd_2608897;
                    _i++;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2609132i32)) {
                    _sawdigits_2608877 = true;
                    if (((_c_2608967 == (48 : stdgo.GoUInt8)) && (_nd_2608897 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2609205i32;
                    } else {
                        _gotoNext = 2609261i32;
                    };
                } else if (__value__ == (2609205i32)) {
                    _dp_2608919--;
                    _i++;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2609261i32)) {
                    _nd_2608897++;
                    if ((_ndMant_2608906 < _maxMantDigits_2608637 : Bool)) {
                        _gotoNext = 2609295i32;
                    } else if (_c_2608967 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2609385i32;
                    } else {
                        _gotoNext = 2609412i32;
                    };
                } else if (__value__ == (2609295i32)) {
                    _mantissa = (_mantissa * (_base_2608617) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2608967 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2608906++;
                    _gotoNext = 2609412i32;
                } else if (__value__ == (2609385i32)) {
                    _trunc = true;
                    _gotoNext = 2609412i32;
                } else if (__value__ == (2609412i32)) {
                    _i++;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2609424i32)) {
                    _sawdigits_2608877 = true;
                    _nd_2608897++;
                    if ((_ndMant_2608906 < _maxMantDigits_2608637 : Bool)) {
                        _gotoNext = 2609536i32;
                    } else {
                        _gotoNext = 2609624i32;
                    };
                } else if (__value__ == (2609536i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2608967) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2608906++;
                    _gotoNext = 2609651i32;
                } else if (__value__ == (2609624i32)) {
                    _gotoNext = 2609624i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2609651i32;
                } else if (__value__ == (2609651i32)) {
                    _i++;
                    _gotoNext = 2608934i32;
                } else if (__value__ == (2609666i32)) {
                    _gotoNext = 2609676i32;
                } else if (__value__ == (2609676i32)) {
                    if (!_sawdigits_2608877) {
                        _gotoNext = 2609690i32;
                    } else {
                        _gotoNext = 2609705i32;
                    };
                } else if (__value__ == (2609690i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2609705i32;
                } else if (__value__ == (2609705i32)) {
                    if (!_sawdot_2608860) {
                        _gotoNext = 2609716i32;
                    } else {
                        _gotoNext = 2609733i32;
                    };
                } else if (__value__ == (2609716i32)) {
                    _dp_2608919 = _nd_2608897;
                    _gotoNext = 2609733i32;
                } else if (__value__ == (2609733i32)) {
                    if (_base_2608617 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2609747i32;
                    } else {
                        _gotoNext = 2609992i32;
                    };
                } else if (__value__ == (2609747i32)) {
                    _dp_2608919 = (_dp_2608919 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2608906 = (_ndMant_2608906 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2609992i32;
                } else if (__value__ == (2609992i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2608682) : Bool)) {
                        _gotoNext = 2610032i32;
                    } else if (_base_2608617 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2610465i32;
                    } else {
                        _gotoNext = 2610506i32;
                    };
                } else if (__value__ == (2610032i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2610057i32;
                    } else {
                        _gotoNext = 2610075i32;
                    };
                } else if (__value__ == (2610057i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610075i32;
                } else if (__value__ == (2610075i32)) {
                    _esign_2610075 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2610103i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2610136i32;
                    } else {
                        _gotoNext = 2610165i32;
                    };
                } else if (__value__ == (2610103i32)) {
                    _i++;
                    _gotoNext = 2610165i32;
                } else if (__value__ == (2610136i32)) {
                    _i++;
                    _esign_2610075 = (-1 : stdgo.GoInt);
                    _gotoNext = 2610165i32;
                } else if (__value__ == (2610165i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2610208i32;
                    } else {
                        _gotoNext = 2610226i32;
                    };
                } else if (__value__ == (2610208i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610226i32;
                } else if (__value__ == (2610226i32)) {
                    _e_2610226 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2610235i32;
                } else if (__value__ == (2610235i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2610304i32;
                    } else {
                        _gotoNext = 2610427i32;
                    };
                } else if (__value__ == (2610300i32)) {
                    _i++;
                    _gotoNext = 2610235i32;
                } else if (__value__ == (2610304i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2610324i32;
                    } else {
                        _gotoNext = 2610370i32;
                    };
                } else if (__value__ == (2610324i32)) {
                    _underscores_2608458 = true;
                    _i++;
                    _gotoNext = 2610235i32;
                } else if (__value__ == (2610370i32)) {
                    if ((_e_2610226 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2610383i32;
                    } else {
                        _gotoNext = 2610300i32;
                    };
                } else if (__value__ == (2610383i32)) {
                    _e_2610226 = (((_e_2610226 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2610300i32;
                } else if (__value__ == (2610427i32)) {
                    _dp_2608919 = (_dp_2608919 + ((_e_2610226 * _esign_2610075 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2610506i32;
                } else if (__value__ == (2610465i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610506i32;
                } else if (__value__ == (2610506i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2610523i32;
                    } else {
                        _gotoNext = 2610550i32;
                    };
                } else if (__value__ == (2610523i32)) {
                    _exp = (_dp_2608919 - _ndMant_2608906 : stdgo.GoInt);
                    _gotoNext = 2610550i32;
                } else if (__value__ == (2610550i32)) {
                    if ((_underscores_2608458 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2610589i32;
                    } else {
                        _gotoNext = 2610605i32;
                    };
                } else if (__value__ == (2610589i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610605i32;
                } else if (__value__ == (2610605i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
