package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2697735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2699324:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2697995:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2697715:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_2698017:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2697780:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2699173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2698065:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2698004:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2697556:Bool = false;
        var _loopBreak = false;
        var _sawdigits_2697975:Bool = false;
        var _sawdot_2697958:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2697556 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2697612i32;
                    } else {
                        _gotoNext = 2697627i32;
                    };
                } else if (__value__ == (2697612i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2697627i32;
                } else if (__value__ == (2697627i32)) {
                    _gotoNext = 2697627i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2697637i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2697662i32;
                    } else {
                        _gotoNext = 2697715i32;
                    };
                } else if (__value__ == (2697637i32)) {
                    _i++;
                    _gotoNext = 2697715i32;
                } else if (__value__ == (2697662i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2697715i32;
                } else if (__value__ == (2697715i32)) {
                    _base_2697715 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2697735 = (19 : stdgo.GoInt);
                    _expChar_2697780 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2697857i32;
                    } else {
                        _gotoNext = 2697958i32;
                    };
                } else if (__value__ == (2697857i32)) {
                    _base_2697715 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2697735 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2697780 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2697958i32;
                } else if (__value__ == (2697958i32)) {
                    _sawdot_2697958 = false;
                    _sawdigits_2697975 = false;
                    _nd_2697995 = (0 : stdgo.GoInt);
                    _ndMant_2698004 = (0 : stdgo.GoInt);
                    _dp_2698017 = (0 : stdgo.GoInt);
                    _gotoNext = 2698025i32;
                } else if (__value__ == (2698025i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698032i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2698054i32;
                    } else {
                        _gotoNext = 2698774i32;
                    };
                } else if (__value__ == (2698054i32)) {
                    _gotoNext = 2698058i32;
                } else if (__value__ == (2698058i32)) {
                    {
                        _c_2698065 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2698065 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2698085i32;
                            } else if (__value__ == (_c_2698065 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2698137i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2698065 : Bool) && (_c_2698065 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2698230i32;
                            } else if (__value__ == (((_base_2697715 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2698065) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2698065) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2698522i32;
                            } else {
                                _gotoNext = 2698764i32;
                            };
                        };
                    };
                } else if (__value__ == (2698085i32)) {
                    _underscores_2697556 = true;
                    _i++;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698137i32)) {
                    if (_sawdot_2697958) {
                        _gotoNext = 2698165i32;
                    } else {
                        _gotoNext = 2698190i32;
                    };
                } else if (__value__ == (2698165i32)) {
                    _loopBreak = true;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698190i32)) {
                    _sawdot_2697958 = true;
                    _dp_2698017 = _nd_2697995;
                    _i++;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698230i32)) {
                    _sawdigits_2697975 = true;
                    if (((_c_2698065 == (48 : stdgo.GoUInt8)) && (_nd_2697995 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2698303i32;
                    } else {
                        _gotoNext = 2698359i32;
                    };
                } else if (__value__ == (2698303i32)) {
                    _dp_2698017--;
                    _i++;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698359i32)) {
                    _nd_2697995++;
                    if ((_ndMant_2698004 < _maxMantDigits_2697735 : Bool)) {
                        _gotoNext = 2698393i32;
                    } else if (_c_2698065 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2698483i32;
                    } else {
                        _gotoNext = 2698510i32;
                    };
                } else if (__value__ == (2698393i32)) {
                    _mantissa = (_mantissa * (_base_2697715) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2698065 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2698004++;
                    _gotoNext = 2698510i32;
                } else if (__value__ == (2698483i32)) {
                    _trunc = true;
                    _gotoNext = 2698510i32;
                } else if (__value__ == (2698510i32)) {
                    _i++;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698522i32)) {
                    _sawdigits_2697975 = true;
                    _nd_2697995++;
                    if ((_ndMant_2698004 < _maxMantDigits_2697735 : Bool)) {
                        _gotoNext = 2698634i32;
                    } else {
                        _gotoNext = 2698722i32;
                    };
                } else if (__value__ == (2698634i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2698065) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2698004++;
                    _gotoNext = 2698749i32;
                } else if (__value__ == (2698722i32)) {
                    _gotoNext = 2698722i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2698749i32;
                } else if (__value__ == (2698749i32)) {
                    _i++;
                    _gotoNext = 2698032i32;
                } else if (__value__ == (2698764i32)) {
                    _gotoNext = 2698774i32;
                } else if (__value__ == (2698774i32)) {
                    if (!_sawdigits_2697975) {
                        _gotoNext = 2698788i32;
                    } else {
                        _gotoNext = 2698803i32;
                    };
                } else if (__value__ == (2698788i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698803i32;
                } else if (__value__ == (2698803i32)) {
                    if (!_sawdot_2697958) {
                        _gotoNext = 2698814i32;
                    } else {
                        _gotoNext = 2698831i32;
                    };
                } else if (__value__ == (2698814i32)) {
                    _dp_2698017 = _nd_2697995;
                    _gotoNext = 2698831i32;
                } else if (__value__ == (2698831i32)) {
                    if (_base_2697715 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2698845i32;
                    } else {
                        _gotoNext = 2699090i32;
                    };
                } else if (__value__ == (2698845i32)) {
                    _dp_2698017 = (_dp_2698017 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2698004 = (_ndMant_2698004 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2699090i32;
                } else if (__value__ == (2699090i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2697780) : Bool)) {
                        _gotoNext = 2699130i32;
                    } else if (_base_2697715 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2699563i32;
                    } else {
                        _gotoNext = 2699604i32;
                    };
                } else if (__value__ == (2699130i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2699155i32;
                    } else {
                        _gotoNext = 2699173i32;
                    };
                } else if (__value__ == (2699155i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699173i32;
                } else if (__value__ == (2699173i32)) {
                    _esign_2699173 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2699201i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2699234i32;
                    } else {
                        _gotoNext = 2699263i32;
                    };
                } else if (__value__ == (2699201i32)) {
                    _i++;
                    _gotoNext = 2699263i32;
                } else if (__value__ == (2699234i32)) {
                    _i++;
                    _esign_2699173 = (-1 : stdgo.GoInt);
                    _gotoNext = 2699263i32;
                } else if (__value__ == (2699263i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2699306i32;
                    } else {
                        _gotoNext = 2699324i32;
                    };
                } else if (__value__ == (2699306i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699324i32;
                } else if (__value__ == (2699324i32)) {
                    _e_2699324 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2699333i32;
                } else if (__value__ == (2699333i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2699402i32;
                    } else {
                        _gotoNext = 2699525i32;
                    };
                } else if (__value__ == (2699398i32)) {
                    _i++;
                    _gotoNext = 2699333i32;
                } else if (__value__ == (2699402i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2699422i32;
                    } else {
                        _gotoNext = 2699468i32;
                    };
                } else if (__value__ == (2699422i32)) {
                    _underscores_2697556 = true;
                    _i++;
                    _gotoNext = 2699333i32;
                } else if (__value__ == (2699468i32)) {
                    if ((_e_2699324 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2699481i32;
                    } else {
                        _gotoNext = 2699398i32;
                    };
                } else if (__value__ == (2699481i32)) {
                    _e_2699324 = (((_e_2699324 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2699398i32;
                } else if (__value__ == (2699525i32)) {
                    _dp_2698017 = (_dp_2698017 + ((_e_2699324 * _esign_2699173 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2699604i32;
                } else if (__value__ == (2699563i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699604i32;
                } else if (__value__ == (2699604i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2699621i32;
                    } else {
                        _gotoNext = 2699648i32;
                    };
                } else if (__value__ == (2699621i32)) {
                    _exp = (_dp_2698017 - _ndMant_2698004 : stdgo.GoInt);
                    _gotoNext = 2699648i32;
                } else if (__value__ == (2699648i32)) {
                    if ((_underscores_2697556 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2699687i32;
                    } else {
                        _gotoNext = 2699703i32;
                    };
                } else if (__value__ == (2699687i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699703i32;
                } else if (__value__ == (2699703i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
