package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2896893:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2896734:Bool = false;
        var _c_2897243:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _expChar_2896958:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2896913:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2897182:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2897173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2897195:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2897153:Bool = false;
        var _sawdot_2897136:Bool = false;
        var _e_2898502:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2898351:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2896734 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2896790i32;
                    } else {
                        _gotoNext = 2896805i32;
                    };
                } else if (__value__ == (2896790i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2896805i32;
                } else if (__value__ == (2896805i32)) {
                    _gotoNext = 2896805i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2896815i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2896840i32;
                    } else {
                        _gotoNext = 2896893i32;
                    };
                } else if (__value__ == (2896815i32)) {
                    _i++;
                    _gotoNext = 2896893i32;
                } else if (__value__ == (2896840i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2896893i32;
                } else if (__value__ == (2896893i32)) {
                    _base_2896893 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2896913 = (19 : stdgo.GoInt);
                    _expChar_2896958 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2897035i32;
                    } else {
                        _gotoNext = 2897136i32;
                    };
                } else if (__value__ == (2897035i32)) {
                    _base_2896893 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2896913 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2896958 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2897136i32;
                } else if (__value__ == (2897136i32)) {
                    _sawdot_2897136 = false;
                    _sawdigits_2897153 = false;
                    _nd_2897173 = (0 : stdgo.GoInt);
                    _ndMant_2897182 = (0 : stdgo.GoInt);
                    _dp_2897195 = (0 : stdgo.GoInt);
                    _gotoNext = 2897203i32;
                } else if (__value__ == (2897203i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897210i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2897232i32;
                    } else {
                        _gotoNext = 2897952i32;
                    };
                } else if (__value__ == (2897232i32)) {
                    _gotoNext = 2897236i32;
                } else if (__value__ == (2897236i32)) {
                    {
                        _c_2897243 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2897243 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2897263i32;
                            } else if (__value__ == (_c_2897243 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2897315i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2897243 : Bool) && (_c_2897243 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2897408i32;
                            } else if (__value__ == (((_base_2896893 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2897243) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2897243) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2897700i32;
                            } else {
                                _gotoNext = 2897942i32;
                            };
                        };
                    };
                } else if (__value__ == (2897263i32)) {
                    _underscores_2896734 = true;
                    _i++;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897315i32)) {
                    if (_sawdot_2897136) {
                        _gotoNext = 2897343i32;
                    } else {
                        _gotoNext = 2897368i32;
                    };
                } else if (__value__ == (2897343i32)) {
                    _loopBreak = true;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897368i32)) {
                    _sawdot_2897136 = true;
                    _dp_2897195 = _nd_2897173;
                    _i++;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897408i32)) {
                    _sawdigits_2897153 = true;
                    if (((_c_2897243 == (48 : stdgo.GoUInt8)) && (_nd_2897173 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2897481i32;
                    } else {
                        _gotoNext = 2897537i32;
                    };
                } else if (__value__ == (2897481i32)) {
                    _dp_2897195--;
                    _i++;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897537i32)) {
                    _nd_2897173++;
                    if ((_ndMant_2897182 < _maxMantDigits_2896913 : Bool)) {
                        _gotoNext = 2897571i32;
                    } else if (_c_2897243 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2897661i32;
                    } else {
                        _gotoNext = 2897688i32;
                    };
                } else if (__value__ == (2897571i32)) {
                    _mantissa = (_mantissa * (_base_2896893) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2897243 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2897182++;
                    _gotoNext = 2897688i32;
                } else if (__value__ == (2897661i32)) {
                    _trunc = true;
                    _gotoNext = 2897688i32;
                } else if (__value__ == (2897688i32)) {
                    _i++;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897700i32)) {
                    _sawdigits_2897153 = true;
                    _nd_2897173++;
                    if ((_ndMant_2897182 < _maxMantDigits_2896913 : Bool)) {
                        _gotoNext = 2897812i32;
                    } else {
                        _gotoNext = 2897900i32;
                    };
                } else if (__value__ == (2897812i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2897243) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2897182++;
                    _gotoNext = 2897927i32;
                } else if (__value__ == (2897900i32)) {
                    _gotoNext = 2897900i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2897927i32;
                } else if (__value__ == (2897927i32)) {
                    _i++;
                    _gotoNext = 2897210i32;
                } else if (__value__ == (2897942i32)) {
                    _gotoNext = 2897952i32;
                } else if (__value__ == (2897952i32)) {
                    if (!_sawdigits_2897153) {
                        _gotoNext = 2897966i32;
                    } else {
                        _gotoNext = 2897981i32;
                    };
                } else if (__value__ == (2897966i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2897981i32;
                } else if (__value__ == (2897981i32)) {
                    if (!_sawdot_2897136) {
                        _gotoNext = 2897992i32;
                    } else {
                        _gotoNext = 2898009i32;
                    };
                } else if (__value__ == (2897992i32)) {
                    _dp_2897195 = _nd_2897173;
                    _gotoNext = 2898009i32;
                } else if (__value__ == (2898009i32)) {
                    if (_base_2896893 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2898023i32;
                    } else {
                        _gotoNext = 2898268i32;
                    };
                } else if (__value__ == (2898023i32)) {
                    _dp_2897195 = (_dp_2897195 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2897182 = (_ndMant_2897182 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2898268i32;
                } else if (__value__ == (2898268i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2896958) : Bool)) {
                        _gotoNext = 2898308i32;
                    } else if (_base_2896893 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2898741i32;
                    } else {
                        _gotoNext = 2898782i32;
                    };
                } else if (__value__ == (2898308i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2898333i32;
                    } else {
                        _gotoNext = 2898351i32;
                    };
                } else if (__value__ == (2898333i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2898351i32;
                } else if (__value__ == (2898351i32)) {
                    _esign_2898351 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2898379i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2898412i32;
                    } else {
                        _gotoNext = 2898441i32;
                    };
                } else if (__value__ == (2898379i32)) {
                    _i++;
                    _gotoNext = 2898441i32;
                } else if (__value__ == (2898412i32)) {
                    _i++;
                    _esign_2898351 = (-1 : stdgo.GoInt);
                    _gotoNext = 2898441i32;
                } else if (__value__ == (2898441i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2898484i32;
                    } else {
                        _gotoNext = 2898502i32;
                    };
                } else if (__value__ == (2898484i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2898502i32;
                } else if (__value__ == (2898502i32)) {
                    _e_2898502 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2898511i32;
                } else if (__value__ == (2898511i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2898580i32;
                    } else {
                        _gotoNext = 2898703i32;
                    };
                } else if (__value__ == (2898576i32)) {
                    _i++;
                    _gotoNext = 2898511i32;
                } else if (__value__ == (2898580i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2898600i32;
                    } else {
                        _gotoNext = 2898646i32;
                    };
                } else if (__value__ == (2898600i32)) {
                    _underscores_2896734 = true;
                    _i++;
                    _gotoNext = 2898511i32;
                } else if (__value__ == (2898646i32)) {
                    if ((_e_2898502 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2898659i32;
                    } else {
                        _gotoNext = 2898576i32;
                    };
                } else if (__value__ == (2898659i32)) {
                    _e_2898502 = (((_e_2898502 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2898576i32;
                } else if (__value__ == (2898703i32)) {
                    _dp_2897195 = (_dp_2897195 + ((_e_2898502 * _esign_2898351 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2898782i32;
                } else if (__value__ == (2898741i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2898782i32;
                } else if (__value__ == (2898782i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2898799i32;
                    } else {
                        _gotoNext = 2898826i32;
                    };
                } else if (__value__ == (2898799i32)) {
                    _exp = (_dp_2897195 - _ndMant_2897182 : stdgo.GoInt);
                    _gotoNext = 2898826i32;
                } else if (__value__ == (2898826i32)) {
                    if ((_underscores_2896734 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2898865i32;
                    } else {
                        _gotoNext = 2898881i32;
                    };
                } else if (__value__ == (2898865i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2898881i32;
                } else if (__value__ == (2898881i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
