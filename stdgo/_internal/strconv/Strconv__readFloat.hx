package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2660100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2658992:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2660251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2658931:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2658642:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2658483:Bool = false;
        var _sawdot_2658885:Bool = false;
        var _maxMantDigits_2658662:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2658944:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2658922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2658902:Bool = false;
        var _expChar_2658707:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2658483 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2658539i32;
                    } else {
                        _gotoNext = 2658554i32;
                    };
                } else if (__value__ == (2658539i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658554i32;
                } else if (__value__ == (2658554i32)) {
                    _gotoNext = 2658554i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2658564i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2658589i32;
                    } else {
                        _gotoNext = 2658642i32;
                    };
                } else if (__value__ == (2658564i32)) {
                    _i++;
                    _gotoNext = 2658642i32;
                } else if (__value__ == (2658589i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2658642i32;
                } else if (__value__ == (2658642i32)) {
                    _base_2658642 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2658662 = (19 : stdgo.GoInt);
                    _expChar_2658707 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2658784i32;
                    } else {
                        _gotoNext = 2658885i32;
                    };
                } else if (__value__ == (2658784i32)) {
                    _base_2658642 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2658662 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2658707 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2658885i32;
                } else if (__value__ == (2658885i32)) {
                    _sawdot_2658885 = false;
                    _sawdigits_2658902 = false;
                    _nd_2658922 = (0 : stdgo.GoInt);
                    _ndMant_2658931 = (0 : stdgo.GoInt);
                    _dp_2658944 = (0 : stdgo.GoInt);
                    _gotoNext = 2658952i32;
                } else if (__value__ == (2658952i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2658959i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2658981i32;
                    } else {
                        _gotoNext = 2659701i32;
                    };
                } else if (__value__ == (2658981i32)) {
                    _gotoNext = 2658985i32;
                } else if (__value__ == (2658985i32)) {
                    {
                        _c_2658992 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2658992 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2659012i32;
                            } else if (__value__ == (_c_2658992 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2659064i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2658992 : Bool) && (_c_2658992 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659157i32;
                            } else if (__value__ == (((_base_2658642 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2658992) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2658992) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659449i32;
                            } else {
                                _gotoNext = 2659691i32;
                            };
                        };
                    };
                } else if (__value__ == (2659012i32)) {
                    _underscores_2658483 = true;
                    _i++;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2659064i32)) {
                    if (_sawdot_2658885) {
                        _gotoNext = 2659092i32;
                    } else {
                        _gotoNext = 2659117i32;
                    };
                } else if (__value__ == (2659092i32)) {
                    _loopBreak = true;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2659117i32)) {
                    _sawdot_2658885 = true;
                    _dp_2658944 = _nd_2658922;
                    _i++;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2659157i32)) {
                    _sawdigits_2658902 = true;
                    if (((_c_2658992 == (48 : stdgo.GoUInt8)) && (_nd_2658922 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2659230i32;
                    } else {
                        _gotoNext = 2659286i32;
                    };
                } else if (__value__ == (2659230i32)) {
                    _dp_2658944--;
                    _i++;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2659286i32)) {
                    _nd_2658922++;
                    if ((_ndMant_2658931 < _maxMantDigits_2658662 : Bool)) {
                        _gotoNext = 2659320i32;
                    } else if (_c_2658992 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2659410i32;
                    } else {
                        _gotoNext = 2659437i32;
                    };
                } else if (__value__ == (2659320i32)) {
                    _mantissa = (_mantissa * (_base_2658642) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2658992 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2658931++;
                    _gotoNext = 2659437i32;
                } else if (__value__ == (2659410i32)) {
                    _trunc = true;
                    _gotoNext = 2659437i32;
                } else if (__value__ == (2659437i32)) {
                    _i++;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2659449i32)) {
                    _sawdigits_2658902 = true;
                    _nd_2658922++;
                    if ((_ndMant_2658931 < _maxMantDigits_2658662 : Bool)) {
                        _gotoNext = 2659561i32;
                    } else {
                        _gotoNext = 2659649i32;
                    };
                } else if (__value__ == (2659561i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2658992) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2658931++;
                    _gotoNext = 2659676i32;
                } else if (__value__ == (2659649i32)) {
                    _gotoNext = 2659649i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2659676i32;
                } else if (__value__ == (2659676i32)) {
                    _i++;
                    _gotoNext = 2658959i32;
                } else if (__value__ == (2659691i32)) {
                    _gotoNext = 2659701i32;
                } else if (__value__ == (2659701i32)) {
                    if (!_sawdigits_2658902) {
                        _gotoNext = 2659715i32;
                    } else {
                        _gotoNext = 2659730i32;
                    };
                } else if (__value__ == (2659715i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659730i32;
                } else if (__value__ == (2659730i32)) {
                    if (!_sawdot_2658885) {
                        _gotoNext = 2659741i32;
                    } else {
                        _gotoNext = 2659758i32;
                    };
                } else if (__value__ == (2659741i32)) {
                    _dp_2658944 = _nd_2658922;
                    _gotoNext = 2659758i32;
                } else if (__value__ == (2659758i32)) {
                    if (_base_2658642 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2659772i32;
                    } else {
                        _gotoNext = 2660017i32;
                    };
                } else if (__value__ == (2659772i32)) {
                    _dp_2658944 = (_dp_2658944 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2658931 = (_ndMant_2658931 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660017i32;
                } else if (__value__ == (2660017i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2658707) : Bool)) {
                        _gotoNext = 2660057i32;
                    } else if (_base_2658642 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660490i32;
                    } else {
                        _gotoNext = 2660531i32;
                    };
                } else if (__value__ == (2660057i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660082i32;
                    } else {
                        _gotoNext = 2660100i32;
                    };
                } else if (__value__ == (2660082i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660100i32;
                } else if (__value__ == (2660100i32)) {
                    _esign_2660100 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660128i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660161i32;
                    } else {
                        _gotoNext = 2660190i32;
                    };
                } else if (__value__ == (2660128i32)) {
                    _i++;
                    _gotoNext = 2660190i32;
                } else if (__value__ == (2660161i32)) {
                    _i++;
                    _esign_2660100 = (-1 : stdgo.GoInt);
                    _gotoNext = 2660190i32;
                } else if (__value__ == (2660190i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2660233i32;
                    } else {
                        _gotoNext = 2660251i32;
                    };
                } else if (__value__ == (2660233i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660251i32;
                } else if (__value__ == (2660251i32)) {
                    _e_2660251 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2660260i32;
                } else if (__value__ == (2660260i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2660329i32;
                    } else {
                        _gotoNext = 2660452i32;
                    };
                } else if (__value__ == (2660325i32)) {
                    _i++;
                    _gotoNext = 2660260i32;
                } else if (__value__ == (2660329i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2660349i32;
                    } else {
                        _gotoNext = 2660395i32;
                    };
                } else if (__value__ == (2660349i32)) {
                    _underscores_2658483 = true;
                    _i++;
                    _gotoNext = 2660260i32;
                } else if (__value__ == (2660395i32)) {
                    if ((_e_2660251 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2660408i32;
                    } else {
                        _gotoNext = 2660325i32;
                    };
                } else if (__value__ == (2660408i32)) {
                    _e_2660251 = (((_e_2660251 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2660325i32;
                } else if (__value__ == (2660452i32)) {
                    _dp_2658944 = (_dp_2658944 + ((_e_2660251 * _esign_2660100 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660531i32;
                } else if (__value__ == (2660490i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660531i32;
                } else if (__value__ == (2660531i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660548i32;
                    } else {
                        _gotoNext = 2660575i32;
                    };
                } else if (__value__ == (2660548i32)) {
                    _exp = (_dp_2658944 - _ndMant_2658931 : stdgo.GoInt);
                    _gotoNext = 2660575i32;
                } else if (__value__ == (2660575i32)) {
                    if ((_underscores_2658483 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2660614i32;
                    } else {
                        _gotoNext = 2660630i32;
                    };
                } else if (__value__ == (2660614i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660630i32;
                } else if (__value__ == (2660630i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
