package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _base_2651220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nd_2651500:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2651463:Bool = false;
        var _underscores_2651061:Bool = false;
        var _e_2652829:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2652678:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2651570:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2651522:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2651509:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2651285:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2651480:Bool = false;
        var _maxMantDigits_2651240:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2651061 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2651117i32;
                    } else {
                        _gotoNext = 2651132i32;
                    };
                } else if (__value__ == (2651117i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2651132i32;
                } else if (__value__ == (2651132i32)) {
                    _gotoNext = 2651132i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2651142i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2651167i32;
                    } else {
                        _gotoNext = 2651220i32;
                    };
                } else if (__value__ == (2651142i32)) {
                    _i++;
                    _gotoNext = 2651220i32;
                } else if (__value__ == (2651167i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2651220i32;
                } else if (__value__ == (2651220i32)) {
                    _base_2651220 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2651240 = (19 : stdgo.GoInt);
                    _expChar_2651285 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2651362i32;
                    } else {
                        _gotoNext = 2651463i32;
                    };
                } else if (__value__ == (2651362i32)) {
                    _base_2651220 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2651240 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2651285 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2651463i32;
                } else if (__value__ == (2651463i32)) {
                    _sawdot_2651463 = false;
                    _sawdigits_2651480 = false;
                    _nd_2651500 = (0 : stdgo.GoInt);
                    _ndMant_2651509 = (0 : stdgo.GoInt);
                    _dp_2651522 = (0 : stdgo.GoInt);
                    _gotoNext = 2651530i32;
                } else if (__value__ == (2651530i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2651537i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2651559i32;
                    } else {
                        _gotoNext = 2652279i32;
                    };
                } else if (__value__ == (2651559i32)) {
                    _gotoNext = 2651563i32;
                } else if (__value__ == (2651563i32)) {
                    {
                        _c_2651570 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2651570 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2651590i32;
                            } else if (__value__ == (_c_2651570 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2651642i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2651570 : Bool) && (_c_2651570 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2651735i32;
                            } else if (__value__ == (((_base_2651220 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2651570) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2651570) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2652027i32;
                            } else {
                                _gotoNext = 2652269i32;
                            };
                        };
                    };
                } else if (__value__ == (2651590i32)) {
                    _underscores_2651061 = true;
                    _i++;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2651642i32)) {
                    if (_sawdot_2651463) {
                        _gotoNext = 2651670i32;
                    } else {
                        _gotoNext = 2651695i32;
                    };
                } else if (__value__ == (2651670i32)) {
                    _loopBreak = true;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2651695i32)) {
                    _sawdot_2651463 = true;
                    _dp_2651522 = _nd_2651500;
                    _i++;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2651735i32)) {
                    _sawdigits_2651480 = true;
                    if (((_c_2651570 == (48 : stdgo.GoUInt8)) && (_nd_2651500 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2651808i32;
                    } else {
                        _gotoNext = 2651864i32;
                    };
                } else if (__value__ == (2651808i32)) {
                    _dp_2651522--;
                    _i++;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2651864i32)) {
                    _nd_2651500++;
                    if ((_ndMant_2651509 < _maxMantDigits_2651240 : Bool)) {
                        _gotoNext = 2651898i32;
                    } else if (_c_2651570 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2651988i32;
                    } else {
                        _gotoNext = 2652015i32;
                    };
                } else if (__value__ == (2651898i32)) {
                    _mantissa = (_mantissa * (_base_2651220) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2651570 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2651509++;
                    _gotoNext = 2652015i32;
                } else if (__value__ == (2651988i32)) {
                    _trunc = true;
                    _gotoNext = 2652015i32;
                } else if (__value__ == (2652015i32)) {
                    _i++;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2652027i32)) {
                    _sawdigits_2651480 = true;
                    _nd_2651500++;
                    if ((_ndMant_2651509 < _maxMantDigits_2651240 : Bool)) {
                        _gotoNext = 2652139i32;
                    } else {
                        _gotoNext = 2652227i32;
                    };
                } else if (__value__ == (2652139i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2651570) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2651509++;
                    _gotoNext = 2652254i32;
                } else if (__value__ == (2652227i32)) {
                    _gotoNext = 2652227i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2652254i32;
                } else if (__value__ == (2652254i32)) {
                    _i++;
                    _gotoNext = 2651537i32;
                } else if (__value__ == (2652269i32)) {
                    _gotoNext = 2652279i32;
                } else if (__value__ == (2652279i32)) {
                    if (!_sawdigits_2651480) {
                        _gotoNext = 2652293i32;
                    } else {
                        _gotoNext = 2652308i32;
                    };
                } else if (__value__ == (2652293i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2652308i32;
                } else if (__value__ == (2652308i32)) {
                    if (!_sawdot_2651463) {
                        _gotoNext = 2652319i32;
                    } else {
                        _gotoNext = 2652336i32;
                    };
                } else if (__value__ == (2652319i32)) {
                    _dp_2651522 = _nd_2651500;
                    _gotoNext = 2652336i32;
                } else if (__value__ == (2652336i32)) {
                    if (_base_2651220 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2652350i32;
                    } else {
                        _gotoNext = 2652595i32;
                    };
                } else if (__value__ == (2652350i32)) {
                    _dp_2651522 = (_dp_2651522 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2651509 = (_ndMant_2651509 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2652595i32;
                } else if (__value__ == (2652595i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2651285) : Bool)) {
                        _gotoNext = 2652635i32;
                    } else if (_base_2651220 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2653068i32;
                    } else {
                        _gotoNext = 2653109i32;
                    };
                } else if (__value__ == (2652635i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2652660i32;
                    } else {
                        _gotoNext = 2652678i32;
                    };
                } else if (__value__ == (2652660i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2652678i32;
                } else if (__value__ == (2652678i32)) {
                    _esign_2652678 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2652706i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2652739i32;
                    } else {
                        _gotoNext = 2652768i32;
                    };
                } else if (__value__ == (2652706i32)) {
                    _i++;
                    _gotoNext = 2652768i32;
                } else if (__value__ == (2652739i32)) {
                    _i++;
                    _esign_2652678 = (-1 : stdgo.GoInt);
                    _gotoNext = 2652768i32;
                } else if (__value__ == (2652768i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2652811i32;
                    } else {
                        _gotoNext = 2652829i32;
                    };
                } else if (__value__ == (2652811i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2652829i32;
                } else if (__value__ == (2652829i32)) {
                    _e_2652829 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2652838i32;
                } else if (__value__ == (2652838i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2652907i32;
                    } else {
                        _gotoNext = 2653030i32;
                    };
                } else if (__value__ == (2652903i32)) {
                    _i++;
                    _gotoNext = 2652838i32;
                } else if (__value__ == (2652907i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2652927i32;
                    } else {
                        _gotoNext = 2652973i32;
                    };
                } else if (__value__ == (2652927i32)) {
                    _underscores_2651061 = true;
                    _i++;
                    _gotoNext = 2652838i32;
                } else if (__value__ == (2652973i32)) {
                    if ((_e_2652829 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2652986i32;
                    } else {
                        _gotoNext = 2652903i32;
                    };
                } else if (__value__ == (2652986i32)) {
                    _e_2652829 = (((_e_2652829 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2652903i32;
                } else if (__value__ == (2653030i32)) {
                    _dp_2651522 = (_dp_2651522 + ((_e_2652829 * _esign_2652678 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2653109i32;
                } else if (__value__ == (2653068i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2653109i32;
                } else if (__value__ == (2653109i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2653126i32;
                    } else {
                        _gotoNext = 2653153i32;
                    };
                } else if (__value__ == (2653126i32)) {
                    _exp = (_dp_2651522 - _ndMant_2651509 : stdgo.GoInt);
                    _gotoNext = 2653153i32;
                } else if (__value__ == (2653153i32)) {
                    if ((_underscores_2651061 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2653192i32;
                    } else {
                        _gotoNext = 2653208i32;
                    };
                } else if (__value__ == (2653192i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2653208i32;
                } else if (__value__ == (2653208i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
