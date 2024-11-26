package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2648927:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2650536:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2649277:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _expChar_2648992:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2650385:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2649229:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2649207:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2649187:Bool = false;
        var _underscores_2648768:Bool = false;
        var _maxMantDigits_2648947:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2649170:Bool = false;
        var _loopBreak = false;
        var _ndMant_2649216:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2648768 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2648824i32;
                    } else {
                        _gotoNext = 2648839i32;
                    };
                } else if (__value__ == (2648824i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648839i32;
                } else if (__value__ == (2648839i32)) {
                    _gotoNext = 2648839i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2648849i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2648874i32;
                    } else {
                        _gotoNext = 2648927i32;
                    };
                } else if (__value__ == (2648849i32)) {
                    _i++;
                    _gotoNext = 2648927i32;
                } else if (__value__ == (2648874i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2648927i32;
                } else if (__value__ == (2648927i32)) {
                    _base_2648927 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2648947 = (19 : stdgo.GoInt);
                    _expChar_2648992 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2649069i32;
                    } else {
                        _gotoNext = 2649170i32;
                    };
                } else if (__value__ == (2649069i32)) {
                    _base_2648927 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2648947 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2648992 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2649170i32;
                } else if (__value__ == (2649170i32)) {
                    _sawdot_2649170 = false;
                    _sawdigits_2649187 = false;
                    _nd_2649207 = (0 : stdgo.GoInt);
                    _ndMant_2649216 = (0 : stdgo.GoInt);
                    _dp_2649229 = (0 : stdgo.GoInt);
                    _gotoNext = 2649237i32;
                } else if (__value__ == (2649237i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649244i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2649266i32;
                    } else {
                        _gotoNext = 2649986i32;
                    };
                } else if (__value__ == (2649266i32)) {
                    _gotoNext = 2649270i32;
                } else if (__value__ == (2649270i32)) {
                    {
                        _c_2649277 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2649277 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2649297i32;
                            } else if (__value__ == (_c_2649277 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2649349i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2649277 : Bool) && (_c_2649277 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2649442i32;
                            } else if (__value__ == (((_base_2648927 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2649277) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2649277) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2649734i32;
                            } else {
                                _gotoNext = 2649976i32;
                            };
                        };
                    };
                } else if (__value__ == (2649297i32)) {
                    _underscores_2648768 = true;
                    _i++;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649349i32)) {
                    if (_sawdot_2649170) {
                        _gotoNext = 2649377i32;
                    } else {
                        _gotoNext = 2649402i32;
                    };
                } else if (__value__ == (2649377i32)) {
                    _loopBreak = true;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649402i32)) {
                    _sawdot_2649170 = true;
                    _dp_2649229 = _nd_2649207;
                    _i++;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649442i32)) {
                    _sawdigits_2649187 = true;
                    if (((_c_2649277 == (48 : stdgo.GoUInt8)) && (_nd_2649207 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2649515i32;
                    } else {
                        _gotoNext = 2649571i32;
                    };
                } else if (__value__ == (2649515i32)) {
                    _dp_2649229--;
                    _i++;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649571i32)) {
                    _nd_2649207++;
                    if ((_ndMant_2649216 < _maxMantDigits_2648947 : Bool)) {
                        _gotoNext = 2649605i32;
                    } else if (_c_2649277 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2649695i32;
                    } else {
                        _gotoNext = 2649722i32;
                    };
                } else if (__value__ == (2649605i32)) {
                    _mantissa = (_mantissa * (_base_2648927) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2649277 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2649216++;
                    _gotoNext = 2649722i32;
                } else if (__value__ == (2649695i32)) {
                    _trunc = true;
                    _gotoNext = 2649722i32;
                } else if (__value__ == (2649722i32)) {
                    _i++;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649734i32)) {
                    _sawdigits_2649187 = true;
                    _nd_2649207++;
                    if ((_ndMant_2649216 < _maxMantDigits_2648947 : Bool)) {
                        _gotoNext = 2649846i32;
                    } else {
                        _gotoNext = 2649934i32;
                    };
                } else if (__value__ == (2649846i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2649277) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2649216++;
                    _gotoNext = 2649961i32;
                } else if (__value__ == (2649934i32)) {
                    _gotoNext = 2649934i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2649961i32;
                } else if (__value__ == (2649961i32)) {
                    _i++;
                    _gotoNext = 2649244i32;
                } else if (__value__ == (2649976i32)) {
                    _gotoNext = 2649986i32;
                } else if (__value__ == (2649986i32)) {
                    if (!_sawdigits_2649187) {
                        _gotoNext = 2650000i32;
                    } else {
                        _gotoNext = 2650015i32;
                    };
                } else if (__value__ == (2650000i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650015i32;
                } else if (__value__ == (2650015i32)) {
                    if (!_sawdot_2649170) {
                        _gotoNext = 2650026i32;
                    } else {
                        _gotoNext = 2650043i32;
                    };
                } else if (__value__ == (2650026i32)) {
                    _dp_2649229 = _nd_2649207;
                    _gotoNext = 2650043i32;
                } else if (__value__ == (2650043i32)) {
                    if (_base_2648927 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2650057i32;
                    } else {
                        _gotoNext = 2650302i32;
                    };
                } else if (__value__ == (2650057i32)) {
                    _dp_2649229 = (_dp_2649229 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2649216 = (_ndMant_2649216 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2650302i32;
                } else if (__value__ == (2650302i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2648992) : Bool)) {
                        _gotoNext = 2650342i32;
                    } else if (_base_2648927 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2650775i32;
                    } else {
                        _gotoNext = 2650816i32;
                    };
                } else if (__value__ == (2650342i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2650367i32;
                    } else {
                        _gotoNext = 2650385i32;
                    };
                } else if (__value__ == (2650367i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650385i32;
                } else if (__value__ == (2650385i32)) {
                    _esign_2650385 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2650413i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2650446i32;
                    } else {
                        _gotoNext = 2650475i32;
                    };
                } else if (__value__ == (2650413i32)) {
                    _i++;
                    _gotoNext = 2650475i32;
                } else if (__value__ == (2650446i32)) {
                    _i++;
                    _esign_2650385 = (-1 : stdgo.GoInt);
                    _gotoNext = 2650475i32;
                } else if (__value__ == (2650475i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2650518i32;
                    } else {
                        _gotoNext = 2650536i32;
                    };
                } else if (__value__ == (2650518i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650536i32;
                } else if (__value__ == (2650536i32)) {
                    _e_2650536 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2650545i32;
                } else if (__value__ == (2650545i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2650614i32;
                    } else {
                        _gotoNext = 2650737i32;
                    };
                } else if (__value__ == (2650610i32)) {
                    _i++;
                    _gotoNext = 2650545i32;
                } else if (__value__ == (2650614i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2650634i32;
                    } else {
                        _gotoNext = 2650680i32;
                    };
                } else if (__value__ == (2650634i32)) {
                    _underscores_2648768 = true;
                    _i++;
                    _gotoNext = 2650545i32;
                } else if (__value__ == (2650680i32)) {
                    if ((_e_2650536 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2650693i32;
                    } else {
                        _gotoNext = 2650610i32;
                    };
                } else if (__value__ == (2650693i32)) {
                    _e_2650536 = (((_e_2650536 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2650610i32;
                } else if (__value__ == (2650737i32)) {
                    _dp_2649229 = (_dp_2649229 + ((_e_2650536 * _esign_2650385 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2650816i32;
                } else if (__value__ == (2650775i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650816i32;
                } else if (__value__ == (2650816i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2650833i32;
                    } else {
                        _gotoNext = 2650860i32;
                    };
                } else if (__value__ == (2650833i32)) {
                    _exp = (_dp_2649229 - _ndMant_2649216 : stdgo.GoInt);
                    _gotoNext = 2650860i32;
                } else if (__value__ == (2650860i32)) {
                    if ((_underscores_2648768 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2650899i32;
                    } else {
                        _gotoNext = 2650915i32;
                    };
                } else if (__value__ == (2650899i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650915i32;
                } else if (__value__ == (2650915i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
