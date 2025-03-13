package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _sawdigits_5:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2610979i32;
                    } else {
                        _gotoNext = 2610994i32;
                    };
                } else if (__value__ == (2610979i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610994i32;
                } else if (__value__ == (2610994i32)) {
                    _gotoNext = 2610994i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2611004i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2611029i32;
                    } else {
                        _gotoNext = 2611082i32;
                    };
                } else if (__value__ == (2611004i32)) {
                    _i++;
                    _gotoNext = 2611082i32;
                } else if (__value__ == (2611029i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2611082i32;
                } else if (__value__ == (2611082i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2611224i32;
                    } else {
                        _gotoNext = 2611325i32;
                    };
                } else if (__value__ == (2611224i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2611325i32;
                } else if (__value__ == (2611325i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2611392i32;
                } else if (__value__ == (2611392i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2611399i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2611421i32;
                    } else {
                        _gotoNext = 2612141i32;
                    };
                } else if (__value__ == (2611421i32)) {
                    _gotoNext = 2611425i32;
                } else if (__value__ == (2611425i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2611452i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2611504i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2611597i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2611889i32;
                            } else {
                                _gotoNext = 2612131i32;
                            };
                        };
                    };
                } else if (__value__ == (2611452i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2611504i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2611532i32;
                    } else {
                        _gotoNext = 2611557i32;
                    };
                } else if (__value__ == (2611532i32)) {
                    _loopBreak = true;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2611557i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2611597i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2611670i32;
                    } else {
                        _gotoNext = 2611726i32;
                    };
                } else if (__value__ == (2611670i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2611726i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2611760i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2611850i32;
                    } else {
                        _gotoNext = 2611877i32;
                    };
                } else if (__value__ == (2611760i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2611877i32;
                } else if (__value__ == (2611850i32)) {
                    _trunc = true;
                    _gotoNext = 2611877i32;
                } else if (__value__ == (2611877i32)) {
                    _i++;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2611889i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2612001i32;
                    } else {
                        _gotoNext = 2612089i32;
                    };
                } else if (__value__ == (2612001i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2612116i32;
                } else if (__value__ == (2612089i32)) {
                    _gotoNext = 2612089i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2612116i32;
                } else if (__value__ == (2612116i32)) {
                    _i++;
                    _gotoNext = 2611399i32;
                } else if (__value__ == (2612131i32)) {
                    _gotoNext = 2612141i32;
                } else if (__value__ == (2612141i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2612155i32;
                    } else {
                        _gotoNext = 2612170i32;
                    };
                } else if (__value__ == (2612155i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2612170i32;
                } else if (__value__ == (2612170i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2612181i32;
                    } else {
                        _gotoNext = 2612198i32;
                    };
                } else if (__value__ == (2612181i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2612198i32;
                } else if (__value__ == (2612198i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2612212i32;
                    } else {
                        _gotoNext = 2612457i32;
                    };
                } else if (__value__ == (2612212i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2612457i32;
                } else if (__value__ == (2612457i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2612497i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2612930i32;
                    } else {
                        _gotoNext = 2612971i32;
                    };
                } else if (__value__ == (2612497i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2612522i32;
                    } else {
                        _gotoNext = 2612540i32;
                    };
                } else if (__value__ == (2612522i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2612540i32;
                } else if (__value__ == (2612540i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2612568i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2612601i32;
                    } else {
                        _gotoNext = 2612630i32;
                    };
                } else if (__value__ == (2612568i32)) {
                    _i++;
                    _gotoNext = 2612630i32;
                } else if (__value__ == (2612601i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2612630i32;
                } else if (__value__ == (2612630i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2612673i32;
                    } else {
                        _gotoNext = 2612691i32;
                    };
                } else if (__value__ == (2612673i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2612691i32;
                } else if (__value__ == (2612691i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2612700i32;
                } else if (__value__ == (2612700i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2612769i32;
                    } else {
                        _gotoNext = 2612892i32;
                    };
                } else if (__value__ == (2612765i32)) {
                    _i++;
                    _gotoNext = 2612700i32;
                } else if (__value__ == (2612769i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2612789i32;
                    } else {
                        _gotoNext = 2612835i32;
                    };
                } else if (__value__ == (2612789i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2612700i32;
                } else if (__value__ == (2612835i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2612848i32;
                    } else {
                        _gotoNext = 2612765i32;
                    };
                } else if (__value__ == (2612848i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2612765i32;
                } else if (__value__ == (2612892i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2612971i32;
                } else if (__value__ == (2612930i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2612971i32;
                } else if (__value__ == (2612971i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2612988i32;
                    } else {
                        _gotoNext = 2613015i32;
                    };
                } else if (__value__ == (2612988i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2613015i32;
                } else if (__value__ == (2613015i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2613054i32;
                    } else {
                        _gotoNext = 2613070i32;
                    };
                } else if (__value__ == (2613054i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613070i32;
                } else if (__value__ == (2613070i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
