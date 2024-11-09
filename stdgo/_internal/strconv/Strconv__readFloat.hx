package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2726782:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2728041:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdot_2726675:Bool = false;
        var _base_2726432:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2727890:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2726734:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2726712:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2726692:Bool = false;
        var _expChar_2726497:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2726452:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2726273:Bool = false;
        var _ndMant_2726721:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2726273 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2726329i32;
                    } else {
                        _gotoNext = 2726344i32;
                    };
                } else if (__value__ == (2726329i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2726344i32;
                } else if (__value__ == (2726344i32)) {
                    _gotoNext = 2726344i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2726354i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2726379i32;
                    } else {
                        _gotoNext = 2726432i32;
                    };
                } else if (__value__ == (2726354i32)) {
                    _i++;
                    _gotoNext = 2726432i32;
                } else if (__value__ == (2726379i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2726432i32;
                } else if (__value__ == (2726432i32)) {
                    _base_2726432 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2726452 = (19 : stdgo.GoInt);
                    _expChar_2726497 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2726574i32;
                    } else {
                        _gotoNext = 2726675i32;
                    };
                } else if (__value__ == (2726574i32)) {
                    _base_2726432 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2726452 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2726497 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2726675i32;
                } else if (__value__ == (2726675i32)) {
                    _sawdot_2726675 = false;
                    _sawdigits_2726692 = false;
                    _nd_2726712 = (0 : stdgo.GoInt);
                    _ndMant_2726721 = (0 : stdgo.GoInt);
                    _dp_2726734 = (0 : stdgo.GoInt);
                    _gotoNext = 2726742i32;
                } else if (__value__ == (2726742i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2726749i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2726771i32;
                    } else {
                        _gotoNext = 2727491i32;
                    };
                } else if (__value__ == (2726771i32)) {
                    _gotoNext = 2726775i32;
                } else if (__value__ == (2726775i32)) {
                    {
                        _c_2726782 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2726782 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2726802i32;
                            } else if (__value__ == (_c_2726782 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2726854i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2726782 : Bool) && (_c_2726782 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2726947i32;
                            } else if (__value__ == (((_base_2726432 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2726782) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2726782) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2727239i32;
                            } else {
                                _gotoNext = 2727481i32;
                            };
                        };
                    };
                } else if (__value__ == (2726802i32)) {
                    _underscores_2726273 = true;
                    _i++;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2726854i32)) {
                    if (_sawdot_2726675) {
                        _gotoNext = 2726882i32;
                    } else {
                        _gotoNext = 2726907i32;
                    };
                } else if (__value__ == (2726882i32)) {
                    _loopBreak = true;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2726907i32)) {
                    _sawdot_2726675 = true;
                    _dp_2726734 = _nd_2726712;
                    _i++;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2726947i32)) {
                    _sawdigits_2726692 = true;
                    if (((_c_2726782 == (48 : stdgo.GoUInt8)) && (_nd_2726712 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2727020i32;
                    } else {
                        _gotoNext = 2727076i32;
                    };
                } else if (__value__ == (2727020i32)) {
                    _dp_2726734--;
                    _i++;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2727076i32)) {
                    _nd_2726712++;
                    if ((_ndMant_2726721 < _maxMantDigits_2726452 : Bool)) {
                        _gotoNext = 2727110i32;
                    } else if (_c_2726782 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2727200i32;
                    } else {
                        _gotoNext = 2727227i32;
                    };
                } else if (__value__ == (2727110i32)) {
                    _mantissa = (_mantissa * (_base_2726432) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2726782 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2726721++;
                    _gotoNext = 2727227i32;
                } else if (__value__ == (2727200i32)) {
                    _trunc = true;
                    _gotoNext = 2727227i32;
                } else if (__value__ == (2727227i32)) {
                    _i++;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2727239i32)) {
                    _sawdigits_2726692 = true;
                    _nd_2726712++;
                    if ((_ndMant_2726721 < _maxMantDigits_2726452 : Bool)) {
                        _gotoNext = 2727351i32;
                    } else {
                        _gotoNext = 2727439i32;
                    };
                } else if (__value__ == (2727351i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2726782) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2726721++;
                    _gotoNext = 2727466i32;
                } else if (__value__ == (2727439i32)) {
                    _gotoNext = 2727439i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2727466i32;
                } else if (__value__ == (2727466i32)) {
                    _i++;
                    _gotoNext = 2726749i32;
                } else if (__value__ == (2727481i32)) {
                    _gotoNext = 2727491i32;
                } else if (__value__ == (2727491i32)) {
                    if (!_sawdigits_2726692) {
                        _gotoNext = 2727505i32;
                    } else {
                        _gotoNext = 2727520i32;
                    };
                } else if (__value__ == (2727505i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2727520i32;
                } else if (__value__ == (2727520i32)) {
                    if (!_sawdot_2726675) {
                        _gotoNext = 2727531i32;
                    } else {
                        _gotoNext = 2727548i32;
                    };
                } else if (__value__ == (2727531i32)) {
                    _dp_2726734 = _nd_2726712;
                    _gotoNext = 2727548i32;
                } else if (__value__ == (2727548i32)) {
                    if (_base_2726432 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2727562i32;
                    } else {
                        _gotoNext = 2727807i32;
                    };
                } else if (__value__ == (2727562i32)) {
                    _dp_2726734 = (_dp_2726734 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2726721 = (_ndMant_2726721 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2727807i32;
                } else if (__value__ == (2727807i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2726497) : Bool)) {
                        _gotoNext = 2727847i32;
                    } else if (_base_2726432 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2728280i32;
                    } else {
                        _gotoNext = 2728321i32;
                    };
                } else if (__value__ == (2727847i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2727872i32;
                    } else {
                        _gotoNext = 2727890i32;
                    };
                } else if (__value__ == (2727872i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2727890i32;
                } else if (__value__ == (2727890i32)) {
                    _esign_2727890 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2727918i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2727951i32;
                    } else {
                        _gotoNext = 2727980i32;
                    };
                } else if (__value__ == (2727918i32)) {
                    _i++;
                    _gotoNext = 2727980i32;
                } else if (__value__ == (2727951i32)) {
                    _i++;
                    _esign_2727890 = (-1 : stdgo.GoInt);
                    _gotoNext = 2727980i32;
                } else if (__value__ == (2727980i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2728023i32;
                    } else {
                        _gotoNext = 2728041i32;
                    };
                } else if (__value__ == (2728023i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728041i32;
                } else if (__value__ == (2728041i32)) {
                    _e_2728041 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2728050i32;
                } else if (__value__ == (2728050i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2728119i32;
                    } else {
                        _gotoNext = 2728242i32;
                    };
                } else if (__value__ == (2728115i32)) {
                    _i++;
                    _gotoNext = 2728050i32;
                } else if (__value__ == (2728119i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2728139i32;
                    } else {
                        _gotoNext = 2728185i32;
                    };
                } else if (__value__ == (2728139i32)) {
                    _underscores_2726273 = true;
                    _i++;
                    _gotoNext = 2728050i32;
                } else if (__value__ == (2728185i32)) {
                    if ((_e_2728041 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2728198i32;
                    } else {
                        _gotoNext = 2728115i32;
                    };
                } else if (__value__ == (2728198i32)) {
                    _e_2728041 = (((_e_2728041 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2728115i32;
                } else if (__value__ == (2728242i32)) {
                    _dp_2726734 = (_dp_2726734 + ((_e_2728041 * _esign_2727890 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2728321i32;
                } else if (__value__ == (2728280i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728321i32;
                } else if (__value__ == (2728321i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2728338i32;
                    } else {
                        _gotoNext = 2728365i32;
                    };
                } else if (__value__ == (2728338i32)) {
                    _exp = (_dp_2726734 - _ndMant_2726721 : stdgo.GoInt);
                    _gotoNext = 2728365i32;
                } else if (__value__ == (2728365i32)) {
                    if ((_underscores_2726273 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2728404i32;
                    } else {
                        _gotoNext = 2728420i32;
                    };
                } else if (__value__ == (2728404i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2728420i32;
                } else if (__value__ == (2728420i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
