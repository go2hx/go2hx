package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2710845:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2712283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2710666:Bool = false;
        var _e_2712434:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2711175:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2711085:Bool = false;
        var _sawdot_2711068:Bool = false;
        var _expChar_2710890:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2711127:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2711114:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2711105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2710825:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2710666 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2710722i32;
                    } else {
                        _gotoNext = 2710737i32;
                    };
                } else if (__value__ == (2710722i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2710737i32;
                } else if (__value__ == (2710737i32)) {
                    _gotoNext = 2710737i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2710747i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2710772i32;
                    } else {
                        _gotoNext = 2710825i32;
                    };
                } else if (__value__ == (2710747i32)) {
                    _i++;
                    _gotoNext = 2710825i32;
                } else if (__value__ == (2710772i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2710825i32;
                } else if (__value__ == (2710825i32)) {
                    _base_2710825 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2710845 = (19 : stdgo.GoInt);
                    _expChar_2710890 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2710967i32;
                    } else {
                        _gotoNext = 2711068i32;
                    };
                } else if (__value__ == (2710967i32)) {
                    _base_2710825 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2710845 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2710890 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2711068i32;
                } else if (__value__ == (2711068i32)) {
                    _sawdot_2711068 = false;
                    _sawdigits_2711085 = false;
                    _nd_2711105 = (0 : stdgo.GoInt);
                    _ndMant_2711114 = (0 : stdgo.GoInt);
                    _dp_2711127 = (0 : stdgo.GoInt);
                    _gotoNext = 2711135i32;
                } else if (__value__ == (2711135i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711142i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2711164i32;
                    } else {
                        _gotoNext = 2711884i32;
                    };
                } else if (__value__ == (2711164i32)) {
                    _gotoNext = 2711168i32;
                } else if (__value__ == (2711168i32)) {
                    {
                        _c_2711175 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2711175 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2711195i32;
                            } else if (__value__ == (_c_2711175 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2711247i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2711175 : Bool) && (_c_2711175 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2711340i32;
                            } else if (__value__ == (((_base_2710825 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2711175) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2711175) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2711632i32;
                            } else {
                                _gotoNext = 2711874i32;
                            };
                        };
                    };
                } else if (__value__ == (2711195i32)) {
                    _underscores_2710666 = true;
                    _i++;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711247i32)) {
                    if (_sawdot_2711068) {
                        _gotoNext = 2711275i32;
                    } else {
                        _gotoNext = 2711300i32;
                    };
                } else if (__value__ == (2711275i32)) {
                    _loopBreak = true;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711300i32)) {
                    _sawdot_2711068 = true;
                    _dp_2711127 = _nd_2711105;
                    _i++;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711340i32)) {
                    _sawdigits_2711085 = true;
                    if (((_c_2711175 == (48 : stdgo.GoUInt8)) && (_nd_2711105 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2711413i32;
                    } else {
                        _gotoNext = 2711469i32;
                    };
                } else if (__value__ == (2711413i32)) {
                    _dp_2711127--;
                    _i++;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711469i32)) {
                    _nd_2711105++;
                    if ((_ndMant_2711114 < _maxMantDigits_2710845 : Bool)) {
                        _gotoNext = 2711503i32;
                    } else if (_c_2711175 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2711593i32;
                    } else {
                        _gotoNext = 2711620i32;
                    };
                } else if (__value__ == (2711503i32)) {
                    _mantissa = (_mantissa * (_base_2710825) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2711175 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2711114++;
                    _gotoNext = 2711620i32;
                } else if (__value__ == (2711593i32)) {
                    _trunc = true;
                    _gotoNext = 2711620i32;
                } else if (__value__ == (2711620i32)) {
                    _i++;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711632i32)) {
                    _sawdigits_2711085 = true;
                    _nd_2711105++;
                    if ((_ndMant_2711114 < _maxMantDigits_2710845 : Bool)) {
                        _gotoNext = 2711744i32;
                    } else {
                        _gotoNext = 2711832i32;
                    };
                } else if (__value__ == (2711744i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2711175) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2711114++;
                    _gotoNext = 2711859i32;
                } else if (__value__ == (2711832i32)) {
                    _gotoNext = 2711832i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2711859i32;
                } else if (__value__ == (2711859i32)) {
                    _i++;
                    _gotoNext = 2711142i32;
                } else if (__value__ == (2711874i32)) {
                    _gotoNext = 2711884i32;
                } else if (__value__ == (2711884i32)) {
                    if (!_sawdigits_2711085) {
                        _gotoNext = 2711898i32;
                    } else {
                        _gotoNext = 2711913i32;
                    };
                } else if (__value__ == (2711898i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2711913i32;
                } else if (__value__ == (2711913i32)) {
                    if (!_sawdot_2711068) {
                        _gotoNext = 2711924i32;
                    } else {
                        _gotoNext = 2711941i32;
                    };
                } else if (__value__ == (2711924i32)) {
                    _dp_2711127 = _nd_2711105;
                    _gotoNext = 2711941i32;
                } else if (__value__ == (2711941i32)) {
                    if (_base_2710825 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2711955i32;
                    } else {
                        _gotoNext = 2712200i32;
                    };
                } else if (__value__ == (2711955i32)) {
                    _dp_2711127 = (_dp_2711127 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2711114 = (_ndMant_2711114 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2712200i32;
                } else if (__value__ == (2712200i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2710890) : Bool)) {
                        _gotoNext = 2712240i32;
                    } else if (_base_2710825 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2712673i32;
                    } else {
                        _gotoNext = 2712714i32;
                    };
                } else if (__value__ == (2712240i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2712265i32;
                    } else {
                        _gotoNext = 2712283i32;
                    };
                } else if (__value__ == (2712265i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2712283i32;
                } else if (__value__ == (2712283i32)) {
                    _esign_2712283 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2712311i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2712344i32;
                    } else {
                        _gotoNext = 2712373i32;
                    };
                } else if (__value__ == (2712311i32)) {
                    _i++;
                    _gotoNext = 2712373i32;
                } else if (__value__ == (2712344i32)) {
                    _i++;
                    _esign_2712283 = (-1 : stdgo.GoInt);
                    _gotoNext = 2712373i32;
                } else if (__value__ == (2712373i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2712416i32;
                    } else {
                        _gotoNext = 2712434i32;
                    };
                } else if (__value__ == (2712416i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2712434i32;
                } else if (__value__ == (2712434i32)) {
                    _e_2712434 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2712443i32;
                } else if (__value__ == (2712443i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2712512i32;
                    } else {
                        _gotoNext = 2712635i32;
                    };
                } else if (__value__ == (2712508i32)) {
                    _i++;
                    _gotoNext = 2712443i32;
                } else if (__value__ == (2712512i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2712532i32;
                    } else {
                        _gotoNext = 2712578i32;
                    };
                } else if (__value__ == (2712532i32)) {
                    _underscores_2710666 = true;
                    _i++;
                    _gotoNext = 2712443i32;
                } else if (__value__ == (2712578i32)) {
                    if ((_e_2712434 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2712591i32;
                    } else {
                        _gotoNext = 2712508i32;
                    };
                } else if (__value__ == (2712591i32)) {
                    _e_2712434 = (((_e_2712434 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2712508i32;
                } else if (__value__ == (2712635i32)) {
                    _dp_2711127 = (_dp_2711127 + ((_e_2712434 * _esign_2712283 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2712714i32;
                } else if (__value__ == (2712673i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2712714i32;
                } else if (__value__ == (2712714i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2712731i32;
                    } else {
                        _gotoNext = 2712758i32;
                    };
                } else if (__value__ == (2712731i32)) {
                    _exp = (_dp_2711127 - _ndMant_2711114 : stdgo.GoInt);
                    _gotoNext = 2712758i32;
                } else if (__value__ == (2712758i32)) {
                    if ((_underscores_2710666 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2712797i32;
                    } else {
                        _gotoNext = 2712813i32;
                    };
                } else if (__value__ == (2712797i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2712813i32;
                } else if (__value__ == (2712813i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
