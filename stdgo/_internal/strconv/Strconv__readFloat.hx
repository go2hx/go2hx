package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2657906:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _expChar_2657621:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2657556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2659165:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2657858:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2657576:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2659014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2657845:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2657816:Bool = false;
        var _sawdot_2657799:Bool = false;
        var _underscores_2657397:Bool = false;
        var _loopBreak = false;
        var _nd_2657836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2657397 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2657453i32;
                    } else {
                        _gotoNext = 2657468i32;
                    };
                } else if (__value__ == (2657453i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657468i32;
                } else if (__value__ == (2657468i32)) {
                    _gotoNext = 2657468i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2657478i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2657503i32;
                    } else {
                        _gotoNext = 2657556i32;
                    };
                } else if (__value__ == (2657478i32)) {
                    _i++;
                    _gotoNext = 2657556i32;
                } else if (__value__ == (2657503i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2657556i32;
                } else if (__value__ == (2657556i32)) {
                    _base_2657556 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2657576 = (19 : stdgo.GoInt);
                    _expChar_2657621 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2657698i32;
                    } else {
                        _gotoNext = 2657799i32;
                    };
                } else if (__value__ == (2657698i32)) {
                    _base_2657556 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2657576 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2657621 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2657799i32;
                } else if (__value__ == (2657799i32)) {
                    _sawdot_2657799 = false;
                    _sawdigits_2657816 = false;
                    _nd_2657836 = (0 : stdgo.GoInt);
                    _ndMant_2657845 = (0 : stdgo.GoInt);
                    _dp_2657858 = (0 : stdgo.GoInt);
                    _gotoNext = 2657866i32;
                } else if (__value__ == (2657866i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2657873i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2657895i32;
                    } else {
                        _gotoNext = 2658615i32;
                    };
                } else if (__value__ == (2657895i32)) {
                    _gotoNext = 2657899i32;
                } else if (__value__ == (2657899i32)) {
                    {
                        _c_2657906 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2657906 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2657926i32;
                            } else if (__value__ == (_c_2657906 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2657978i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2657906 : Bool) && (_c_2657906 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2658071i32;
                            } else if (__value__ == (((_base_2657556 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2657906) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2657906) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2658363i32;
                            } else {
                                _gotoNext = 2658605i32;
                            };
                        };
                    };
                } else if (__value__ == (2657926i32)) {
                    _underscores_2657397 = true;
                    _i++;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2657978i32)) {
                    if (_sawdot_2657799) {
                        _gotoNext = 2658006i32;
                    } else {
                        _gotoNext = 2658031i32;
                    };
                } else if (__value__ == (2658006i32)) {
                    _loopBreak = true;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2658031i32)) {
                    _sawdot_2657799 = true;
                    _dp_2657858 = _nd_2657836;
                    _i++;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2658071i32)) {
                    _sawdigits_2657816 = true;
                    if (((_c_2657906 == (48 : stdgo.GoUInt8)) && (_nd_2657836 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2658144i32;
                    } else {
                        _gotoNext = 2658200i32;
                    };
                } else if (__value__ == (2658144i32)) {
                    _dp_2657858--;
                    _i++;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2658200i32)) {
                    _nd_2657836++;
                    if ((_ndMant_2657845 < _maxMantDigits_2657576 : Bool)) {
                        _gotoNext = 2658234i32;
                    } else if (_c_2657906 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2658324i32;
                    } else {
                        _gotoNext = 2658351i32;
                    };
                } else if (__value__ == (2658234i32)) {
                    _mantissa = (_mantissa * (_base_2657556) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2657906 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2657845++;
                    _gotoNext = 2658351i32;
                } else if (__value__ == (2658324i32)) {
                    _trunc = true;
                    _gotoNext = 2658351i32;
                } else if (__value__ == (2658351i32)) {
                    _i++;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2658363i32)) {
                    _sawdigits_2657816 = true;
                    _nd_2657836++;
                    if ((_ndMant_2657845 < _maxMantDigits_2657576 : Bool)) {
                        _gotoNext = 2658475i32;
                    } else {
                        _gotoNext = 2658563i32;
                    };
                } else if (__value__ == (2658475i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2657906) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2657845++;
                    _gotoNext = 2658590i32;
                } else if (__value__ == (2658563i32)) {
                    _gotoNext = 2658563i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2658590i32;
                } else if (__value__ == (2658590i32)) {
                    _i++;
                    _gotoNext = 2657873i32;
                } else if (__value__ == (2658605i32)) {
                    _gotoNext = 2658615i32;
                } else if (__value__ == (2658615i32)) {
                    if (!_sawdigits_2657816) {
                        _gotoNext = 2658629i32;
                    } else {
                        _gotoNext = 2658644i32;
                    };
                } else if (__value__ == (2658629i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658644i32;
                } else if (__value__ == (2658644i32)) {
                    if (!_sawdot_2657799) {
                        _gotoNext = 2658655i32;
                    } else {
                        _gotoNext = 2658672i32;
                    };
                } else if (__value__ == (2658655i32)) {
                    _dp_2657858 = _nd_2657836;
                    _gotoNext = 2658672i32;
                } else if (__value__ == (2658672i32)) {
                    if (_base_2657556 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2658686i32;
                    } else {
                        _gotoNext = 2658931i32;
                    };
                } else if (__value__ == (2658686i32)) {
                    _dp_2657858 = (_dp_2657858 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2657845 = (_ndMant_2657845 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2658931i32;
                } else if (__value__ == (2658931i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2657621) : Bool)) {
                        _gotoNext = 2658971i32;
                    } else if (_base_2657556 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2659404i32;
                    } else {
                        _gotoNext = 2659445i32;
                    };
                } else if (__value__ == (2658971i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2658996i32;
                    } else {
                        _gotoNext = 2659014i32;
                    };
                } else if (__value__ == (2658996i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659014i32;
                } else if (__value__ == (2659014i32)) {
                    _esign_2659014 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2659042i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2659075i32;
                    } else {
                        _gotoNext = 2659104i32;
                    };
                } else if (__value__ == (2659042i32)) {
                    _i++;
                    _gotoNext = 2659104i32;
                } else if (__value__ == (2659075i32)) {
                    _i++;
                    _esign_2659014 = (-1 : stdgo.GoInt);
                    _gotoNext = 2659104i32;
                } else if (__value__ == (2659104i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2659147i32;
                    } else {
                        _gotoNext = 2659165i32;
                    };
                } else if (__value__ == (2659147i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659165i32;
                } else if (__value__ == (2659165i32)) {
                    _e_2659165 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2659174i32;
                } else if (__value__ == (2659174i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2659243i32;
                    } else {
                        _gotoNext = 2659366i32;
                    };
                } else if (__value__ == (2659239i32)) {
                    _i++;
                    _gotoNext = 2659174i32;
                } else if (__value__ == (2659243i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2659263i32;
                    } else {
                        _gotoNext = 2659309i32;
                    };
                } else if (__value__ == (2659263i32)) {
                    _underscores_2657397 = true;
                    _i++;
                    _gotoNext = 2659174i32;
                } else if (__value__ == (2659309i32)) {
                    if ((_e_2659165 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2659322i32;
                    } else {
                        _gotoNext = 2659239i32;
                    };
                } else if (__value__ == (2659322i32)) {
                    _e_2659165 = (((_e_2659165 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2659239i32;
                } else if (__value__ == (2659366i32)) {
                    _dp_2657858 = (_dp_2657858 + ((_e_2659165 * _esign_2659014 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2659445i32;
                } else if (__value__ == (2659404i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659445i32;
                } else if (__value__ == (2659445i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2659462i32;
                    } else {
                        _gotoNext = 2659489i32;
                    };
                } else if (__value__ == (2659462i32)) {
                    _exp = (_dp_2657858 - _ndMant_2657845 : stdgo.GoInt);
                    _gotoNext = 2659489i32;
                } else if (__value__ == (2659489i32)) {
                    if ((_underscores_2657397 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2659528i32;
                    } else {
                        _gotoNext = 2659544i32;
                    };
                } else if (__value__ == (2659528i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659544i32;
                } else if (__value__ == (2659544i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
