package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2582919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2582873:Bool = false;
        var _c_2582980:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2582932:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2582890:Bool = false;
        var _base_2582630:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2584088:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2582910:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2582695:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2582650:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2584239:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _underscores_2582471:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2582471 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2582527i32;
                    } else {
                        _gotoNext = 2582542i32;
                    };
                } else if (__value__ == (2582527i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2582542i32;
                } else if (__value__ == (2582542i32)) {
                    _gotoNext = 2582542i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2582552i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2582577i32;
                    } else {
                        _gotoNext = 2582630i32;
                    };
                } else if (__value__ == (2582552i32)) {
                    _i++;
                    _gotoNext = 2582630i32;
                } else if (__value__ == (2582577i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2582630i32;
                } else if (__value__ == (2582630i32)) {
                    _base_2582630 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2582650 = (19 : stdgo.GoInt);
                    _expChar_2582695 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2582772i32;
                    } else {
                        _gotoNext = 2582873i32;
                    };
                } else if (__value__ == (2582772i32)) {
                    _base_2582630 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2582650 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2582695 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2582873i32;
                } else if (__value__ == (2582873i32)) {
                    _sawdot_2582873 = false;
                    _sawdigits_2582890 = false;
                    _nd_2582910 = (0 : stdgo.GoInt);
                    _ndMant_2582919 = (0 : stdgo.GoInt);
                    _dp_2582932 = (0 : stdgo.GoInt);
                    _gotoNext = 2582940i32;
                } else if (__value__ == (2582940i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2582947i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2582969i32;
                    } else {
                        _gotoNext = 2583689i32;
                    };
                } else if (__value__ == (2582969i32)) {
                    _gotoNext = 2582973i32;
                } else if (__value__ == (2582973i32)) {
                    {
                        _c_2582980 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2582980 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2583000i32;
                            } else if (__value__ == (_c_2582980 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2583052i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2582980 : Bool) && (_c_2582980 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2583145i32;
                            } else if (__value__ == (((_base_2582630 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2582980) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2582980) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2583437i32;
                            } else {
                                _gotoNext = 2583679i32;
                            };
                        };
                    };
                } else if (__value__ == (2583000i32)) {
                    _underscores_2582471 = true;
                    _i++;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2583052i32)) {
                    if (_sawdot_2582873) {
                        _gotoNext = 2583080i32;
                    } else {
                        _gotoNext = 2583105i32;
                    };
                } else if (__value__ == (2583080i32)) {
                    _loopBreak = true;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2583105i32)) {
                    _sawdot_2582873 = true;
                    _dp_2582932 = _nd_2582910;
                    _i++;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2583145i32)) {
                    _sawdigits_2582890 = true;
                    if (((_c_2582980 == (48 : stdgo.GoUInt8)) && (_nd_2582910 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2583218i32;
                    } else {
                        _gotoNext = 2583274i32;
                    };
                } else if (__value__ == (2583218i32)) {
                    _dp_2582932--;
                    _i++;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2583274i32)) {
                    _nd_2582910++;
                    if ((_ndMant_2582919 < _maxMantDigits_2582650 : Bool)) {
                        _gotoNext = 2583308i32;
                    } else if (_c_2582980 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2583398i32;
                    } else {
                        _gotoNext = 2583425i32;
                    };
                } else if (__value__ == (2583308i32)) {
                    _mantissa = (_mantissa * (_base_2582630) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2582980 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2582919++;
                    _gotoNext = 2583425i32;
                } else if (__value__ == (2583398i32)) {
                    _trunc = true;
                    _gotoNext = 2583425i32;
                } else if (__value__ == (2583425i32)) {
                    _i++;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2583437i32)) {
                    _sawdigits_2582890 = true;
                    _nd_2582910++;
                    if ((_ndMant_2582919 < _maxMantDigits_2582650 : Bool)) {
                        _gotoNext = 2583549i32;
                    } else {
                        _gotoNext = 2583637i32;
                    };
                } else if (__value__ == (2583549i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2582980) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2582919++;
                    _gotoNext = 2583664i32;
                } else if (__value__ == (2583637i32)) {
                    _gotoNext = 2583637i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2583664i32;
                } else if (__value__ == (2583664i32)) {
                    _i++;
                    _gotoNext = 2582947i32;
                } else if (__value__ == (2583679i32)) {
                    _gotoNext = 2583689i32;
                } else if (__value__ == (2583689i32)) {
                    if (!_sawdigits_2582890) {
                        _gotoNext = 2583703i32;
                    } else {
                        _gotoNext = 2583718i32;
                    };
                } else if (__value__ == (2583703i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2583718i32;
                } else if (__value__ == (2583718i32)) {
                    if (!_sawdot_2582873) {
                        _gotoNext = 2583729i32;
                    } else {
                        _gotoNext = 2583746i32;
                    };
                } else if (__value__ == (2583729i32)) {
                    _dp_2582932 = _nd_2582910;
                    _gotoNext = 2583746i32;
                } else if (__value__ == (2583746i32)) {
                    if (_base_2582630 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2583760i32;
                    } else {
                        _gotoNext = 2584005i32;
                    };
                } else if (__value__ == (2583760i32)) {
                    _dp_2582932 = (_dp_2582932 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2582919 = (_ndMant_2582919 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2584005i32;
                } else if (__value__ == (2584005i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2582695) : Bool)) {
                        _gotoNext = 2584045i32;
                    } else if (_base_2582630 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2584478i32;
                    } else {
                        _gotoNext = 2584519i32;
                    };
                } else if (__value__ == (2584045i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2584070i32;
                    } else {
                        _gotoNext = 2584088i32;
                    };
                } else if (__value__ == (2584070i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2584088i32;
                } else if (__value__ == (2584088i32)) {
                    _esign_2584088 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2584116i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2584149i32;
                    } else {
                        _gotoNext = 2584178i32;
                    };
                } else if (__value__ == (2584116i32)) {
                    _i++;
                    _gotoNext = 2584178i32;
                } else if (__value__ == (2584149i32)) {
                    _i++;
                    _esign_2584088 = (-1 : stdgo.GoInt);
                    _gotoNext = 2584178i32;
                } else if (__value__ == (2584178i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2584221i32;
                    } else {
                        _gotoNext = 2584239i32;
                    };
                } else if (__value__ == (2584221i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2584239i32;
                } else if (__value__ == (2584239i32)) {
                    _e_2584239 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2584248i32;
                } else if (__value__ == (2584248i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2584317i32;
                    } else {
                        _gotoNext = 2584440i32;
                    };
                } else if (__value__ == (2584313i32)) {
                    _i++;
                    _gotoNext = 2584248i32;
                } else if (__value__ == (2584317i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2584337i32;
                    } else {
                        _gotoNext = 2584383i32;
                    };
                } else if (__value__ == (2584337i32)) {
                    _underscores_2582471 = true;
                    _i++;
                    _gotoNext = 2584248i32;
                } else if (__value__ == (2584383i32)) {
                    if ((_e_2584239 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2584396i32;
                    } else {
                        _gotoNext = 2584313i32;
                    };
                } else if (__value__ == (2584396i32)) {
                    _e_2584239 = (((_e_2584239 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2584313i32;
                } else if (__value__ == (2584440i32)) {
                    _dp_2582932 = (_dp_2582932 + ((_e_2584239 * _esign_2584088 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2584519i32;
                } else if (__value__ == (2584478i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2584519i32;
                } else if (__value__ == (2584519i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2584536i32;
                    } else {
                        _gotoNext = 2584563i32;
                    };
                } else if (__value__ == (2584536i32)) {
                    _exp = (_dp_2582932 - _ndMant_2582919 : stdgo.GoInt);
                    _gotoNext = 2584563i32;
                } else if (__value__ == (2584563i32)) {
                    if ((_underscores_2582471 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2584602i32;
                    } else {
                        _gotoNext = 2584618i32;
                    };
                } else if (__value__ == (2584602i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2584618i32;
                } else if (__value__ == (2584618i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
