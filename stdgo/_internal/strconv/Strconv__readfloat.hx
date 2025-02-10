package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2719989:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2718881:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2718833:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2718820:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2718372:Bool = false;
        var _loopBreak = false;
        var _expChar_2718596:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdot_2718774:Bool = false;
        var _maxMantDigits_2718551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2718531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2720140:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2718811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2718791:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2718372 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2718428i32;
                    } else {
                        _gotoNext = 2718443i32;
                    };
                } else if (__value__ == (2718428i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2718443i32;
                } else if (__value__ == (2718443i32)) {
                    _gotoNext = 2718443i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2718453i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2718478i32;
                    } else {
                        _gotoNext = 2718531i32;
                    };
                } else if (__value__ == (2718453i32)) {
                    _i++;
                    _gotoNext = 2718531i32;
                } else if (__value__ == (2718478i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2718531i32;
                } else if (__value__ == (2718531i32)) {
                    _base_2718531 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2718551 = (19 : stdgo.GoInt);
                    _expChar_2718596 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2718673i32;
                    } else {
                        _gotoNext = 2718774i32;
                    };
                } else if (__value__ == (2718673i32)) {
                    _base_2718531 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2718551 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2718596 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2718774i32;
                } else if (__value__ == (2718774i32)) {
                    _sawdot_2718774 = false;
                    _sawdigits_2718791 = false;
                    _nd_2718811 = (0 : stdgo.GoInt);
                    _ndMant_2718820 = (0 : stdgo.GoInt);
                    _dp_2718833 = (0 : stdgo.GoInt);
                    _gotoNext = 2718841i32;
                } else if (__value__ == (2718841i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2718848i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2718870i32;
                    } else {
                        _gotoNext = 2719590i32;
                    };
                } else if (__value__ == (2718870i32)) {
                    _gotoNext = 2718874i32;
                } else if (__value__ == (2718874i32)) {
                    {
                        _c_2718881 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2718881 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2718901i32;
                            } else if (__value__ == (_c_2718881 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2718953i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2718881 : Bool) && (_c_2718881 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2719046i32;
                            } else if (__value__ == (((_base_2718531 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2718881) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2718881) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2719338i32;
                            } else {
                                _gotoNext = 2719580i32;
                            };
                        };
                    };
                } else if (__value__ == (2718901i32)) {
                    _underscores_2718372 = true;
                    _i++;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2718953i32)) {
                    if (_sawdot_2718774) {
                        _gotoNext = 2718981i32;
                    } else {
                        _gotoNext = 2719006i32;
                    };
                } else if (__value__ == (2718981i32)) {
                    _loopBreak = true;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2719006i32)) {
                    _sawdot_2718774 = true;
                    _dp_2718833 = _nd_2718811;
                    _i++;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2719046i32)) {
                    _sawdigits_2718791 = true;
                    if (((_c_2718881 == (48 : stdgo.GoUInt8)) && (_nd_2718811 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2719119i32;
                    } else {
                        _gotoNext = 2719175i32;
                    };
                } else if (__value__ == (2719119i32)) {
                    _dp_2718833--;
                    _i++;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2719175i32)) {
                    _nd_2718811++;
                    if ((_ndMant_2718820 < _maxMantDigits_2718551 : Bool)) {
                        _gotoNext = 2719209i32;
                    } else if (_c_2718881 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2719299i32;
                    } else {
                        _gotoNext = 2719326i32;
                    };
                } else if (__value__ == (2719209i32)) {
                    _mantissa = (_mantissa * (_base_2718531) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2718881 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2718820++;
                    _gotoNext = 2719326i32;
                } else if (__value__ == (2719299i32)) {
                    _trunc = true;
                    _gotoNext = 2719326i32;
                } else if (__value__ == (2719326i32)) {
                    _i++;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2719338i32)) {
                    _sawdigits_2718791 = true;
                    _nd_2718811++;
                    if ((_ndMant_2718820 < _maxMantDigits_2718551 : Bool)) {
                        _gotoNext = 2719450i32;
                    } else {
                        _gotoNext = 2719538i32;
                    };
                } else if (__value__ == (2719450i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2718881) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2718820++;
                    _gotoNext = 2719565i32;
                } else if (__value__ == (2719538i32)) {
                    _gotoNext = 2719538i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2719565i32;
                } else if (__value__ == (2719565i32)) {
                    _i++;
                    _gotoNext = 2718848i32;
                } else if (__value__ == (2719580i32)) {
                    _gotoNext = 2719590i32;
                } else if (__value__ == (2719590i32)) {
                    if (!_sawdigits_2718791) {
                        _gotoNext = 2719604i32;
                    } else {
                        _gotoNext = 2719619i32;
                    };
                } else if (__value__ == (2719604i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2719619i32;
                } else if (__value__ == (2719619i32)) {
                    if (!_sawdot_2718774) {
                        _gotoNext = 2719630i32;
                    } else {
                        _gotoNext = 2719647i32;
                    };
                } else if (__value__ == (2719630i32)) {
                    _dp_2718833 = _nd_2718811;
                    _gotoNext = 2719647i32;
                } else if (__value__ == (2719647i32)) {
                    if (_base_2718531 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2719661i32;
                    } else {
                        _gotoNext = 2719906i32;
                    };
                } else if (__value__ == (2719661i32)) {
                    _dp_2718833 = (_dp_2718833 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2718820 = (_ndMant_2718820 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2719906i32;
                } else if (__value__ == (2719906i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2718596) : Bool)) {
                        _gotoNext = 2719946i32;
                    } else if (_base_2718531 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2720379i32;
                    } else {
                        _gotoNext = 2720420i32;
                    };
                } else if (__value__ == (2719946i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2719971i32;
                    } else {
                        _gotoNext = 2719989i32;
                    };
                } else if (__value__ == (2719971i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2719989i32;
                } else if (__value__ == (2719989i32)) {
                    _esign_2719989 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2720017i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2720050i32;
                    } else {
                        _gotoNext = 2720079i32;
                    };
                } else if (__value__ == (2720017i32)) {
                    _i++;
                    _gotoNext = 2720079i32;
                } else if (__value__ == (2720050i32)) {
                    _i++;
                    _esign_2719989 = (-1 : stdgo.GoInt);
                    _gotoNext = 2720079i32;
                } else if (__value__ == (2720079i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2720122i32;
                    } else {
                        _gotoNext = 2720140i32;
                    };
                } else if (__value__ == (2720122i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2720140i32;
                } else if (__value__ == (2720140i32)) {
                    _e_2720140 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2720149i32;
                } else if (__value__ == (2720149i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2720218i32;
                    } else {
                        _gotoNext = 2720341i32;
                    };
                } else if (__value__ == (2720214i32)) {
                    _i++;
                    _gotoNext = 2720149i32;
                } else if (__value__ == (2720218i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2720238i32;
                    } else {
                        _gotoNext = 2720284i32;
                    };
                } else if (__value__ == (2720238i32)) {
                    _underscores_2718372 = true;
                    _i++;
                    _gotoNext = 2720149i32;
                } else if (__value__ == (2720284i32)) {
                    if ((_e_2720140 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2720297i32;
                    } else {
                        _gotoNext = 2720214i32;
                    };
                } else if (__value__ == (2720297i32)) {
                    _e_2720140 = (((_e_2720140 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2720214i32;
                } else if (__value__ == (2720341i32)) {
                    _dp_2718833 = (_dp_2718833 + ((_e_2720140 * _esign_2719989 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2720420i32;
                } else if (__value__ == (2720379i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2720420i32;
                } else if (__value__ == (2720420i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2720437i32;
                    } else {
                        _gotoNext = 2720464i32;
                    };
                } else if (__value__ == (2720437i32)) {
                    _exp = (_dp_2718833 - _ndMant_2718820 : stdgo.GoInt);
                    _gotoNext = 2720464i32;
                } else if (__value__ == (2720464i32)) {
                    if ((_underscores_2718372 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2720503i32;
                    } else {
                        _gotoNext = 2720519i32;
                    };
                } else if (__value__ == (2720503i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2720519i32;
                } else if (__value__ == (2720519i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
