package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2626765:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2625550:Bool = false;
        var _e_2626916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2625657:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _dp_2625609:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2625587:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2625567:Bool = false;
        var _expChar_2625372:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2625327:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2625307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ndMant_2625596:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2625148:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2625148 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2625204i32;
                    } else {
                        _gotoNext = 2625219i32;
                    };
                } else if (__value__ == (2625204i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2625219i32;
                } else if (__value__ == (2625219i32)) {
                    _gotoNext = 2625219i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2625229i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2625254i32;
                    } else {
                        _gotoNext = 2625307i32;
                    };
                } else if (__value__ == (2625229i32)) {
                    _i++;
                    _gotoNext = 2625307i32;
                } else if (__value__ == (2625254i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2625307i32;
                } else if (__value__ == (2625307i32)) {
                    _base_2625307 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2625327 = (19 : stdgo.GoInt);
                    _expChar_2625372 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2625449i32;
                    } else {
                        _gotoNext = 2625550i32;
                    };
                } else if (__value__ == (2625449i32)) {
                    _base_2625307 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2625327 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2625372 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2625550i32;
                } else if (__value__ == (2625550i32)) {
                    _sawdot_2625550 = false;
                    _sawdigits_2625567 = false;
                    _nd_2625587 = (0 : stdgo.GoInt);
                    _ndMant_2625596 = (0 : stdgo.GoInt);
                    _dp_2625609 = (0 : stdgo.GoInt);
                    _gotoNext = 2625617i32;
                } else if (__value__ == (2625617i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2625624i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2625646i32;
                    } else {
                        _gotoNext = 2626366i32;
                    };
                } else if (__value__ == (2625646i32)) {
                    _gotoNext = 2625650i32;
                } else if (__value__ == (2625650i32)) {
                    {
                        _c_2625657 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2625657 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2625677i32;
                            } else if (__value__ == (_c_2625657 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2625729i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2625657 : Bool) && (_c_2625657 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2625822i32;
                            } else if (__value__ == (((_base_2625307 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2625657) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2625657) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2626114i32;
                            } else {
                                _gotoNext = 2626356i32;
                            };
                        };
                    };
                } else if (__value__ == (2625677i32)) {
                    _underscores_2625148 = true;
                    _i++;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2625729i32)) {
                    if (_sawdot_2625550) {
                        _gotoNext = 2625757i32;
                    } else {
                        _gotoNext = 2625782i32;
                    };
                } else if (__value__ == (2625757i32)) {
                    _loopBreak = true;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2625782i32)) {
                    _sawdot_2625550 = true;
                    _dp_2625609 = _nd_2625587;
                    _i++;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2625822i32)) {
                    _sawdigits_2625567 = true;
                    if (((_c_2625657 == (48 : stdgo.GoUInt8)) && (_nd_2625587 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2625895i32;
                    } else {
                        _gotoNext = 2625951i32;
                    };
                } else if (__value__ == (2625895i32)) {
                    _dp_2625609--;
                    _i++;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2625951i32)) {
                    _nd_2625587++;
                    if ((_ndMant_2625596 < _maxMantDigits_2625327 : Bool)) {
                        _gotoNext = 2625985i32;
                    } else if (_c_2625657 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2626075i32;
                    } else {
                        _gotoNext = 2626102i32;
                    };
                } else if (__value__ == (2625985i32)) {
                    _mantissa = (_mantissa * (_base_2625307) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2625657 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2625596++;
                    _gotoNext = 2626102i32;
                } else if (__value__ == (2626075i32)) {
                    _trunc = true;
                    _gotoNext = 2626102i32;
                } else if (__value__ == (2626102i32)) {
                    _i++;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2626114i32)) {
                    _sawdigits_2625567 = true;
                    _nd_2625587++;
                    if ((_ndMant_2625596 < _maxMantDigits_2625327 : Bool)) {
                        _gotoNext = 2626226i32;
                    } else {
                        _gotoNext = 2626314i32;
                    };
                } else if (__value__ == (2626226i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2625657) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2625596++;
                    _gotoNext = 2626341i32;
                } else if (__value__ == (2626314i32)) {
                    _gotoNext = 2626314i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2626341i32;
                } else if (__value__ == (2626341i32)) {
                    _i++;
                    _gotoNext = 2625624i32;
                } else if (__value__ == (2626356i32)) {
                    _gotoNext = 2626366i32;
                } else if (__value__ == (2626366i32)) {
                    if (!_sawdigits_2625567) {
                        _gotoNext = 2626380i32;
                    } else {
                        _gotoNext = 2626395i32;
                    };
                } else if (__value__ == (2626380i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2626395i32;
                } else if (__value__ == (2626395i32)) {
                    if (!_sawdot_2625550) {
                        _gotoNext = 2626406i32;
                    } else {
                        _gotoNext = 2626423i32;
                    };
                } else if (__value__ == (2626406i32)) {
                    _dp_2625609 = _nd_2625587;
                    _gotoNext = 2626423i32;
                } else if (__value__ == (2626423i32)) {
                    if (_base_2625307 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2626437i32;
                    } else {
                        _gotoNext = 2626682i32;
                    };
                } else if (__value__ == (2626437i32)) {
                    _dp_2625609 = (_dp_2625609 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2625596 = (_ndMant_2625596 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2626682i32;
                } else if (__value__ == (2626682i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2625372) : Bool)) {
                        _gotoNext = 2626722i32;
                    } else if (_base_2625307 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2627155i32;
                    } else {
                        _gotoNext = 2627196i32;
                    };
                } else if (__value__ == (2626722i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2626747i32;
                    } else {
                        _gotoNext = 2626765i32;
                    };
                } else if (__value__ == (2626747i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2626765i32;
                } else if (__value__ == (2626765i32)) {
                    _esign_2626765 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2626793i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2626826i32;
                    } else {
                        _gotoNext = 2626855i32;
                    };
                } else if (__value__ == (2626793i32)) {
                    _i++;
                    _gotoNext = 2626855i32;
                } else if (__value__ == (2626826i32)) {
                    _i++;
                    _esign_2626765 = (-1 : stdgo.GoInt);
                    _gotoNext = 2626855i32;
                } else if (__value__ == (2626855i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2626898i32;
                    } else {
                        _gotoNext = 2626916i32;
                    };
                } else if (__value__ == (2626898i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2626916i32;
                } else if (__value__ == (2626916i32)) {
                    _e_2626916 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2626925i32;
                } else if (__value__ == (2626925i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2626994i32;
                    } else {
                        _gotoNext = 2627117i32;
                    };
                } else if (__value__ == (2626990i32)) {
                    _i++;
                    _gotoNext = 2626925i32;
                } else if (__value__ == (2626994i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2627014i32;
                    } else {
                        _gotoNext = 2627060i32;
                    };
                } else if (__value__ == (2627014i32)) {
                    _underscores_2625148 = true;
                    _i++;
                    _gotoNext = 2626925i32;
                } else if (__value__ == (2627060i32)) {
                    if ((_e_2626916 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2627073i32;
                    } else {
                        _gotoNext = 2626990i32;
                    };
                } else if (__value__ == (2627073i32)) {
                    _e_2626916 = (((_e_2626916 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2626990i32;
                } else if (__value__ == (2627117i32)) {
                    _dp_2625609 = (_dp_2625609 + ((_e_2626916 * _esign_2626765 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2627196i32;
                } else if (__value__ == (2627155i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2627196i32;
                } else if (__value__ == (2627196i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2627213i32;
                    } else {
                        _gotoNext = 2627240i32;
                    };
                } else if (__value__ == (2627213i32)) {
                    _exp = (_dp_2625609 - _ndMant_2625596 : stdgo.GoInt);
                    _gotoNext = 2627240i32;
                } else if (__value__ == (2627240i32)) {
                    if ((_underscores_2625148 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2627279i32;
                    } else {
                        _gotoNext = 2627295i32;
                    };
                } else if (__value__ == (2627279i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2627295i32;
                } else if (__value__ == (2627295i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
