package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _sawdot_4:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2676722i32;
                    } else {
                        _gotoNext = 2676737i32;
                    };
                } else if (__value__ == (2676722i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676737i32;
                } else if (__value__ == (2676737i32)) {
                    _gotoNext = 2676737i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2676747i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2676772i32;
                    } else {
                        _gotoNext = 2676825i32;
                    };
                } else if (__value__ == (2676747i32)) {
                    _i++;
                    _gotoNext = 2676825i32;
                } else if (__value__ == (2676772i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2676825i32;
                } else if (__value__ == (2676825i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2676967i32;
                    } else {
                        _gotoNext = 2677068i32;
                    };
                } else if (__value__ == (2676967i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2677068i32;
                } else if (__value__ == (2677068i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2677135i32;
                } else if (__value__ == (2677135i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677142i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2677164i32;
                    } else {
                        _gotoNext = 2677884i32;
                    };
                } else if (__value__ == (2677164i32)) {
                    _gotoNext = 2677168i32;
                } else if (__value__ == (2677168i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2677195i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2677247i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2677340i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2677632i32;
                            } else {
                                _gotoNext = 2677874i32;
                            };
                        };
                    };
                } else if (__value__ == (2677195i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677247i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2677275i32;
                    } else {
                        _gotoNext = 2677300i32;
                    };
                } else if (__value__ == (2677275i32)) {
                    _loopBreak = true;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677300i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677340i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2677413i32;
                    } else {
                        _gotoNext = 2677469i32;
                    };
                } else if (__value__ == (2677413i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677469i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2677503i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2677593i32;
                    } else {
                        _gotoNext = 2677620i32;
                    };
                } else if (__value__ == (2677503i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2677620i32;
                } else if (__value__ == (2677593i32)) {
                    _trunc = true;
                    _gotoNext = 2677620i32;
                } else if (__value__ == (2677620i32)) {
                    _i++;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677632i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2677744i32;
                    } else {
                        _gotoNext = 2677832i32;
                    };
                } else if (__value__ == (2677744i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2677859i32;
                } else if (__value__ == (2677832i32)) {
                    _gotoNext = 2677832i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2677859i32;
                } else if (__value__ == (2677859i32)) {
                    _i++;
                    _gotoNext = 2677142i32;
                } else if (__value__ == (2677874i32)) {
                    _gotoNext = 2677884i32;
                } else if (__value__ == (2677884i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2677898i32;
                    } else {
                        _gotoNext = 2677913i32;
                    };
                } else if (__value__ == (2677898i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677913i32;
                } else if (__value__ == (2677913i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2677924i32;
                    } else {
                        _gotoNext = 2677941i32;
                    };
                } else if (__value__ == (2677924i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2677941i32;
                } else if (__value__ == (2677941i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677955i32;
                    } else {
                        _gotoNext = 2678200i32;
                    };
                } else if (__value__ == (2677955i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2678200i32;
                } else if (__value__ == (2678200i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2678240i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2678673i32;
                    } else {
                        _gotoNext = 2678714i32;
                    };
                } else if (__value__ == (2678240i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2678265i32;
                    } else {
                        _gotoNext = 2678283i32;
                    };
                } else if (__value__ == (2678265i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678283i32;
                } else if (__value__ == (2678283i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2678311i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2678344i32;
                    } else {
                        _gotoNext = 2678373i32;
                    };
                } else if (__value__ == (2678311i32)) {
                    _i++;
                    _gotoNext = 2678373i32;
                } else if (__value__ == (2678344i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2678373i32;
                } else if (__value__ == (2678373i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2678416i32;
                    } else {
                        _gotoNext = 2678434i32;
                    };
                } else if (__value__ == (2678416i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678434i32;
                } else if (__value__ == (2678434i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2678443i32;
                } else if (__value__ == (2678443i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2678512i32;
                    } else {
                        _gotoNext = 2678635i32;
                    };
                } else if (__value__ == (2678508i32)) {
                    _i++;
                    _gotoNext = 2678443i32;
                } else if (__value__ == (2678512i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2678532i32;
                    } else {
                        _gotoNext = 2678578i32;
                    };
                } else if (__value__ == (2678532i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2678443i32;
                } else if (__value__ == (2678578i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2678591i32;
                    } else {
                        _gotoNext = 2678508i32;
                    };
                } else if (__value__ == (2678591i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2678508i32;
                } else if (__value__ == (2678635i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2678714i32;
                } else if (__value__ == (2678673i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678714i32;
                } else if (__value__ == (2678714i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2678731i32;
                    } else {
                        _gotoNext = 2678758i32;
                    };
                } else if (__value__ == (2678731i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2678758i32;
                } else if (__value__ == (2678758i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2678797i32;
                    } else {
                        _gotoNext = 2678813i32;
                    };
                } else if (__value__ == (2678797i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678813i32;
                } else if (__value__ == (2678813i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
