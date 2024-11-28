package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _dp_2716296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2717603:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2717452:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2716344:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2716274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2716059:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2716014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2715994:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ndMant_2716283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2715835:Bool = false;
        var _sawdigits_2716254:Bool = false;
        var _sawdot_2716237:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2715835 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2715891i32;
                    } else {
                        _gotoNext = 2715906i32;
                    };
                } else if (__value__ == (2715891i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2715906i32;
                } else if (__value__ == (2715906i32)) {
                    _gotoNext = 2715906i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2715916i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2715941i32;
                    } else {
                        _gotoNext = 2715994i32;
                    };
                } else if (__value__ == (2715916i32)) {
                    _i++;
                    _gotoNext = 2715994i32;
                } else if (__value__ == (2715941i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2715994i32;
                } else if (__value__ == (2715994i32)) {
                    _base_2715994 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2716014 = (19 : stdgo.GoInt);
                    _expChar_2716059 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2716136i32;
                    } else {
                        _gotoNext = 2716237i32;
                    };
                } else if (__value__ == (2716136i32)) {
                    _base_2715994 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2716014 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2716059 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2716237i32;
                } else if (__value__ == (2716237i32)) {
                    _sawdot_2716237 = false;
                    _sawdigits_2716254 = false;
                    _nd_2716274 = (0 : stdgo.GoInt);
                    _ndMant_2716283 = (0 : stdgo.GoInt);
                    _dp_2716296 = (0 : stdgo.GoInt);
                    _gotoNext = 2716304i32;
                } else if (__value__ == (2716304i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2716311i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2716333i32;
                    } else {
                        _gotoNext = 2717053i32;
                    };
                } else if (__value__ == (2716333i32)) {
                    _gotoNext = 2716337i32;
                } else if (__value__ == (2716337i32)) {
                    {
                        _c_2716344 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2716344 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2716364i32;
                            } else if (__value__ == (_c_2716344 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2716416i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2716344 : Bool) && (_c_2716344 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2716509i32;
                            } else if (__value__ == (((_base_2715994 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2716344) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2716344) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2716801i32;
                            } else {
                                _gotoNext = 2717043i32;
                            };
                        };
                    };
                } else if (__value__ == (2716364i32)) {
                    _underscores_2715835 = true;
                    _i++;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2716416i32)) {
                    if (_sawdot_2716237) {
                        _gotoNext = 2716444i32;
                    } else {
                        _gotoNext = 2716469i32;
                    };
                } else if (__value__ == (2716444i32)) {
                    _loopBreak = true;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2716469i32)) {
                    _sawdot_2716237 = true;
                    _dp_2716296 = _nd_2716274;
                    _i++;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2716509i32)) {
                    _sawdigits_2716254 = true;
                    if (((_c_2716344 == (48 : stdgo.GoUInt8)) && (_nd_2716274 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2716582i32;
                    } else {
                        _gotoNext = 2716638i32;
                    };
                } else if (__value__ == (2716582i32)) {
                    _dp_2716296--;
                    _i++;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2716638i32)) {
                    _nd_2716274++;
                    if ((_ndMant_2716283 < _maxMantDigits_2716014 : Bool)) {
                        _gotoNext = 2716672i32;
                    } else if (_c_2716344 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2716762i32;
                    } else {
                        _gotoNext = 2716789i32;
                    };
                } else if (__value__ == (2716672i32)) {
                    _mantissa = (_mantissa * (_base_2715994) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2716344 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2716283++;
                    _gotoNext = 2716789i32;
                } else if (__value__ == (2716762i32)) {
                    _trunc = true;
                    _gotoNext = 2716789i32;
                } else if (__value__ == (2716789i32)) {
                    _i++;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2716801i32)) {
                    _sawdigits_2716254 = true;
                    _nd_2716274++;
                    if ((_ndMant_2716283 < _maxMantDigits_2716014 : Bool)) {
                        _gotoNext = 2716913i32;
                    } else {
                        _gotoNext = 2717001i32;
                    };
                } else if (__value__ == (2716913i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2716344) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2716283++;
                    _gotoNext = 2717028i32;
                } else if (__value__ == (2717001i32)) {
                    _gotoNext = 2717001i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2717028i32;
                } else if (__value__ == (2717028i32)) {
                    _i++;
                    _gotoNext = 2716311i32;
                } else if (__value__ == (2717043i32)) {
                    _gotoNext = 2717053i32;
                } else if (__value__ == (2717053i32)) {
                    if (!_sawdigits_2716254) {
                        _gotoNext = 2717067i32;
                    } else {
                        _gotoNext = 2717082i32;
                    };
                } else if (__value__ == (2717067i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2717082i32;
                } else if (__value__ == (2717082i32)) {
                    if (!_sawdot_2716237) {
                        _gotoNext = 2717093i32;
                    } else {
                        _gotoNext = 2717110i32;
                    };
                } else if (__value__ == (2717093i32)) {
                    _dp_2716296 = _nd_2716274;
                    _gotoNext = 2717110i32;
                } else if (__value__ == (2717110i32)) {
                    if (_base_2715994 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2717124i32;
                    } else {
                        _gotoNext = 2717369i32;
                    };
                } else if (__value__ == (2717124i32)) {
                    _dp_2716296 = (_dp_2716296 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2716283 = (_ndMant_2716283 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2717369i32;
                } else if (__value__ == (2717369i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2716059) : Bool)) {
                        _gotoNext = 2717409i32;
                    } else if (_base_2715994 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2717842i32;
                    } else {
                        _gotoNext = 2717883i32;
                    };
                } else if (__value__ == (2717409i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2717434i32;
                    } else {
                        _gotoNext = 2717452i32;
                    };
                } else if (__value__ == (2717434i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2717452i32;
                } else if (__value__ == (2717452i32)) {
                    _esign_2717452 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2717480i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2717513i32;
                    } else {
                        _gotoNext = 2717542i32;
                    };
                } else if (__value__ == (2717480i32)) {
                    _i++;
                    _gotoNext = 2717542i32;
                } else if (__value__ == (2717513i32)) {
                    _i++;
                    _esign_2717452 = (-1 : stdgo.GoInt);
                    _gotoNext = 2717542i32;
                } else if (__value__ == (2717542i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2717585i32;
                    } else {
                        _gotoNext = 2717603i32;
                    };
                } else if (__value__ == (2717585i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2717603i32;
                } else if (__value__ == (2717603i32)) {
                    _e_2717603 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2717612i32;
                } else if (__value__ == (2717612i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2717681i32;
                    } else {
                        _gotoNext = 2717804i32;
                    };
                } else if (__value__ == (2717677i32)) {
                    _i++;
                    _gotoNext = 2717612i32;
                } else if (__value__ == (2717681i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2717701i32;
                    } else {
                        _gotoNext = 2717747i32;
                    };
                } else if (__value__ == (2717701i32)) {
                    _underscores_2715835 = true;
                    _i++;
                    _gotoNext = 2717612i32;
                } else if (__value__ == (2717747i32)) {
                    if ((_e_2717603 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2717760i32;
                    } else {
                        _gotoNext = 2717677i32;
                    };
                } else if (__value__ == (2717760i32)) {
                    _e_2717603 = (((_e_2717603 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2717677i32;
                } else if (__value__ == (2717804i32)) {
                    _dp_2716296 = (_dp_2716296 + ((_e_2717603 * _esign_2717452 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2717883i32;
                } else if (__value__ == (2717842i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2717883i32;
                } else if (__value__ == (2717883i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2717900i32;
                    } else {
                        _gotoNext = 2717927i32;
                    };
                } else if (__value__ == (2717900i32)) {
                    _exp = (_dp_2716296 - _ndMant_2716283 : stdgo.GoInt);
                    _gotoNext = 2717927i32;
                } else if (__value__ == (2717927i32)) {
                    if ((_underscores_2715835 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2717966i32;
                    } else {
                        _gotoNext = 2717982i32;
                    };
                } else if (__value__ == (2717966i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2717982i32;
                } else if (__value__ == (2717982i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
