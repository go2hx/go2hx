package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _expChar_2681245:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2681200:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2681021:Bool = false;
        var _e_2682789:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2682638:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2681180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2681530:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2681482:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2681469:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2681460:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2681440:Bool = false;
        var _sawdot_2681423:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2681021 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2681077i32;
                    } else {
                        _gotoNext = 2681092i32;
                    };
                } else if (__value__ == (2681077i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681092i32;
                } else if (__value__ == (2681092i32)) {
                    _gotoNext = 2681092i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2681102i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2681127i32;
                    } else {
                        _gotoNext = 2681180i32;
                    };
                } else if (__value__ == (2681102i32)) {
                    _i++;
                    _gotoNext = 2681180i32;
                } else if (__value__ == (2681127i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2681180i32;
                } else if (__value__ == (2681180i32)) {
                    _base_2681180 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2681200 = (19 : stdgo.GoInt);
                    _expChar_2681245 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2681322i32;
                    } else {
                        _gotoNext = 2681423i32;
                    };
                } else if (__value__ == (2681322i32)) {
                    _base_2681180 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2681200 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2681245 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2681423i32;
                } else if (__value__ == (2681423i32)) {
                    _sawdot_2681423 = false;
                    _sawdigits_2681440 = false;
                    _nd_2681460 = (0 : stdgo.GoInt);
                    _ndMant_2681469 = (0 : stdgo.GoInt);
                    _dp_2681482 = (0 : stdgo.GoInt);
                    _gotoNext = 2681490i32;
                } else if (__value__ == (2681490i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2681497i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2681519i32;
                    } else {
                        _gotoNext = 2682239i32;
                    };
                } else if (__value__ == (2681519i32)) {
                    _gotoNext = 2681523i32;
                } else if (__value__ == (2681523i32)) {
                    {
                        _c_2681530 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2681530 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2681550i32;
                            } else if (__value__ == (_c_2681530 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2681602i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2681530 : Bool) && (_c_2681530 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681695i32;
                            } else if (__value__ == (((_base_2681180 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2681530) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2681530) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681987i32;
                            } else {
                                _gotoNext = 2682229i32;
                            };
                        };
                    };
                } else if (__value__ == (2681550i32)) {
                    _underscores_2681021 = true;
                    _i++;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2681602i32)) {
                    if (_sawdot_2681423) {
                        _gotoNext = 2681630i32;
                    } else {
                        _gotoNext = 2681655i32;
                    };
                } else if (__value__ == (2681630i32)) {
                    _loopBreak = true;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2681655i32)) {
                    _sawdot_2681423 = true;
                    _dp_2681482 = _nd_2681460;
                    _i++;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2681695i32)) {
                    _sawdigits_2681440 = true;
                    if (((_c_2681530 == (48 : stdgo.GoUInt8)) && (_nd_2681460 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2681768i32;
                    } else {
                        _gotoNext = 2681824i32;
                    };
                } else if (__value__ == (2681768i32)) {
                    _dp_2681482--;
                    _i++;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2681824i32)) {
                    _nd_2681460++;
                    if ((_ndMant_2681469 < _maxMantDigits_2681200 : Bool)) {
                        _gotoNext = 2681858i32;
                    } else if (_c_2681530 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2681948i32;
                    } else {
                        _gotoNext = 2681975i32;
                    };
                } else if (__value__ == (2681858i32)) {
                    _mantissa = (_mantissa * (_base_2681180) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2681530 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2681469++;
                    _gotoNext = 2681975i32;
                } else if (__value__ == (2681948i32)) {
                    _trunc = true;
                    _gotoNext = 2681975i32;
                } else if (__value__ == (2681975i32)) {
                    _i++;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2681987i32)) {
                    _sawdigits_2681440 = true;
                    _nd_2681460++;
                    if ((_ndMant_2681469 < _maxMantDigits_2681200 : Bool)) {
                        _gotoNext = 2682099i32;
                    } else {
                        _gotoNext = 2682187i32;
                    };
                } else if (__value__ == (2682099i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2681530) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2681469++;
                    _gotoNext = 2682214i32;
                } else if (__value__ == (2682187i32)) {
                    _gotoNext = 2682187i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2682214i32;
                } else if (__value__ == (2682214i32)) {
                    _i++;
                    _gotoNext = 2681497i32;
                } else if (__value__ == (2682229i32)) {
                    _gotoNext = 2682239i32;
                } else if (__value__ == (2682239i32)) {
                    if (!_sawdigits_2681440) {
                        _gotoNext = 2682253i32;
                    } else {
                        _gotoNext = 2682268i32;
                    };
                } else if (__value__ == (2682253i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682268i32;
                } else if (__value__ == (2682268i32)) {
                    if (!_sawdot_2681423) {
                        _gotoNext = 2682279i32;
                    } else {
                        _gotoNext = 2682296i32;
                    };
                } else if (__value__ == (2682279i32)) {
                    _dp_2681482 = _nd_2681460;
                    _gotoNext = 2682296i32;
                } else if (__value__ == (2682296i32)) {
                    if (_base_2681180 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682310i32;
                    } else {
                        _gotoNext = 2682555i32;
                    };
                } else if (__value__ == (2682310i32)) {
                    _dp_2681482 = (_dp_2681482 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2681469 = (_ndMant_2681469 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682555i32;
                } else if (__value__ == (2682555i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2681245) : Bool)) {
                        _gotoNext = 2682595i32;
                    } else if (_base_2681180 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2683028i32;
                    } else {
                        _gotoNext = 2683069i32;
                    };
                } else if (__value__ == (2682595i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2682620i32;
                    } else {
                        _gotoNext = 2682638i32;
                    };
                } else if (__value__ == (2682620i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682638i32;
                } else if (__value__ == (2682638i32)) {
                    _esign_2682638 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2682666i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2682699i32;
                    } else {
                        _gotoNext = 2682728i32;
                    };
                } else if (__value__ == (2682666i32)) {
                    _i++;
                    _gotoNext = 2682728i32;
                } else if (__value__ == (2682699i32)) {
                    _i++;
                    _esign_2682638 = (-1 : stdgo.GoInt);
                    _gotoNext = 2682728i32;
                } else if (__value__ == (2682728i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2682771i32;
                    } else {
                        _gotoNext = 2682789i32;
                    };
                } else if (__value__ == (2682771i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682789i32;
                } else if (__value__ == (2682789i32)) {
                    _e_2682789 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2682798i32;
                } else if (__value__ == (2682798i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2682867i32;
                    } else {
                        _gotoNext = 2682990i32;
                    };
                } else if (__value__ == (2682863i32)) {
                    _i++;
                    _gotoNext = 2682798i32;
                } else if (__value__ == (2682867i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2682887i32;
                    } else {
                        _gotoNext = 2682933i32;
                    };
                } else if (__value__ == (2682887i32)) {
                    _underscores_2681021 = true;
                    _i++;
                    _gotoNext = 2682798i32;
                } else if (__value__ == (2682933i32)) {
                    if ((_e_2682789 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2682946i32;
                    } else {
                        _gotoNext = 2682863i32;
                    };
                } else if (__value__ == (2682946i32)) {
                    _e_2682789 = (((_e_2682789 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2682863i32;
                } else if (__value__ == (2682990i32)) {
                    _dp_2681482 = (_dp_2681482 + ((_e_2682789 * _esign_2682638 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2683069i32;
                } else if (__value__ == (2683028i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2683069i32;
                } else if (__value__ == (2683069i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2683086i32;
                    } else {
                        _gotoNext = 2683113i32;
                    };
                } else if (__value__ == (2683086i32)) {
                    _exp = (_dp_2681482 - _ndMant_2681469 : stdgo.GoInt);
                    _gotoNext = 2683113i32;
                } else if (__value__ == (2683113i32)) {
                    if ((_underscores_2681021 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2683152i32;
                    } else {
                        _gotoNext = 2683168i32;
                    };
                } else if (__value__ == (2683152i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2683168i32;
                } else if (__value__ == (2683168i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
