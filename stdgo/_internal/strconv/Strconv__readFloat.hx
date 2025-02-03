package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2689694:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2689633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2689624:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2690953:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2689646:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2689587:Bool = false;
        var _expChar_2689409:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2689364:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2690802:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2689344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2689185:Bool = false;
        var _sawdigits_2689604:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2689185 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2689241i32;
                    } else {
                        _gotoNext = 2689256i32;
                    };
                } else if (__value__ == (2689241i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689256i32;
                } else if (__value__ == (2689256i32)) {
                    _gotoNext = 2689256i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2689266i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2689291i32;
                    } else {
                        _gotoNext = 2689344i32;
                    };
                } else if (__value__ == (2689266i32)) {
                    _i++;
                    _gotoNext = 2689344i32;
                } else if (__value__ == (2689291i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2689344i32;
                } else if (__value__ == (2689344i32)) {
                    _base_2689344 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2689364 = (19 : stdgo.GoInt);
                    _expChar_2689409 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2689486i32;
                    } else {
                        _gotoNext = 2689587i32;
                    };
                } else if (__value__ == (2689486i32)) {
                    _base_2689344 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2689364 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2689409 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2689587i32;
                } else if (__value__ == (2689587i32)) {
                    _sawdot_2689587 = false;
                    _sawdigits_2689604 = false;
                    _nd_2689624 = (0 : stdgo.GoInt);
                    _ndMant_2689633 = (0 : stdgo.GoInt);
                    _dp_2689646 = (0 : stdgo.GoInt);
                    _gotoNext = 2689654i32;
                } else if (__value__ == (2689654i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2689661i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2689683i32;
                    } else {
                        _gotoNext = 2690403i32;
                    };
                } else if (__value__ == (2689683i32)) {
                    _gotoNext = 2689687i32;
                } else if (__value__ == (2689687i32)) {
                    {
                        _c_2689694 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2689694 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2689714i32;
                            } else if (__value__ == (_c_2689694 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2689766i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2689694 : Bool) && (_c_2689694 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2689859i32;
                            } else if (__value__ == (((_base_2689344 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2689694) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2689694) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2690151i32;
                            } else {
                                _gotoNext = 2690393i32;
                            };
                        };
                    };
                } else if (__value__ == (2689714i32)) {
                    _underscores_2689185 = true;
                    _i++;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2689766i32)) {
                    if (_sawdot_2689587) {
                        _gotoNext = 2689794i32;
                    } else {
                        _gotoNext = 2689819i32;
                    };
                } else if (__value__ == (2689794i32)) {
                    _loopBreak = true;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2689819i32)) {
                    _sawdot_2689587 = true;
                    _dp_2689646 = _nd_2689624;
                    _i++;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2689859i32)) {
                    _sawdigits_2689604 = true;
                    if (((_c_2689694 == (48 : stdgo.GoUInt8)) && (_nd_2689624 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2689932i32;
                    } else {
                        _gotoNext = 2689988i32;
                    };
                } else if (__value__ == (2689932i32)) {
                    _dp_2689646--;
                    _i++;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2689988i32)) {
                    _nd_2689624++;
                    if ((_ndMant_2689633 < _maxMantDigits_2689364 : Bool)) {
                        _gotoNext = 2690022i32;
                    } else if (_c_2689694 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2690112i32;
                    } else {
                        _gotoNext = 2690139i32;
                    };
                } else if (__value__ == (2690022i32)) {
                    _mantissa = (_mantissa * (_base_2689344) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2689694 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2689633++;
                    _gotoNext = 2690139i32;
                } else if (__value__ == (2690112i32)) {
                    _trunc = true;
                    _gotoNext = 2690139i32;
                } else if (__value__ == (2690139i32)) {
                    _i++;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2690151i32)) {
                    _sawdigits_2689604 = true;
                    _nd_2689624++;
                    if ((_ndMant_2689633 < _maxMantDigits_2689364 : Bool)) {
                        _gotoNext = 2690263i32;
                    } else {
                        _gotoNext = 2690351i32;
                    };
                } else if (__value__ == (2690263i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2689694) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2689633++;
                    _gotoNext = 2690378i32;
                } else if (__value__ == (2690351i32)) {
                    _gotoNext = 2690351i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2690378i32;
                } else if (__value__ == (2690378i32)) {
                    _i++;
                    _gotoNext = 2689661i32;
                } else if (__value__ == (2690393i32)) {
                    _gotoNext = 2690403i32;
                } else if (__value__ == (2690403i32)) {
                    if (!_sawdigits_2689604) {
                        _gotoNext = 2690417i32;
                    } else {
                        _gotoNext = 2690432i32;
                    };
                } else if (__value__ == (2690417i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2690432i32;
                } else if (__value__ == (2690432i32)) {
                    if (!_sawdot_2689587) {
                        _gotoNext = 2690443i32;
                    } else {
                        _gotoNext = 2690460i32;
                    };
                } else if (__value__ == (2690443i32)) {
                    _dp_2689646 = _nd_2689624;
                    _gotoNext = 2690460i32;
                } else if (__value__ == (2690460i32)) {
                    if (_base_2689344 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2690474i32;
                    } else {
                        _gotoNext = 2690719i32;
                    };
                } else if (__value__ == (2690474i32)) {
                    _dp_2689646 = (_dp_2689646 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2689633 = (_ndMant_2689633 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2690719i32;
                } else if (__value__ == (2690719i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2689409) : Bool)) {
                        _gotoNext = 2690759i32;
                    } else if (_base_2689344 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691192i32;
                    } else {
                        _gotoNext = 2691233i32;
                    };
                } else if (__value__ == (2690759i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2690784i32;
                    } else {
                        _gotoNext = 2690802i32;
                    };
                } else if (__value__ == (2690784i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2690802i32;
                } else if (__value__ == (2690802i32)) {
                    _esign_2690802 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2690830i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2690863i32;
                    } else {
                        _gotoNext = 2690892i32;
                    };
                } else if (__value__ == (2690830i32)) {
                    _i++;
                    _gotoNext = 2690892i32;
                } else if (__value__ == (2690863i32)) {
                    _i++;
                    _esign_2690802 = (-1 : stdgo.GoInt);
                    _gotoNext = 2690892i32;
                } else if (__value__ == (2690892i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2690935i32;
                    } else {
                        _gotoNext = 2690953i32;
                    };
                } else if (__value__ == (2690935i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2690953i32;
                } else if (__value__ == (2690953i32)) {
                    _e_2690953 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2690962i32;
                } else if (__value__ == (2690962i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2691031i32;
                    } else {
                        _gotoNext = 2691154i32;
                    };
                } else if (__value__ == (2691027i32)) {
                    _i++;
                    _gotoNext = 2690962i32;
                } else if (__value__ == (2691031i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2691051i32;
                    } else {
                        _gotoNext = 2691097i32;
                    };
                } else if (__value__ == (2691051i32)) {
                    _underscores_2689185 = true;
                    _i++;
                    _gotoNext = 2690962i32;
                } else if (__value__ == (2691097i32)) {
                    if ((_e_2690953 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2691110i32;
                    } else {
                        _gotoNext = 2691027i32;
                    };
                } else if (__value__ == (2691110i32)) {
                    _e_2690953 = (((_e_2690953 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2691027i32;
                } else if (__value__ == (2691154i32)) {
                    _dp_2689646 = (_dp_2689646 + ((_e_2690953 * _esign_2690802 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2691233i32;
                } else if (__value__ == (2691192i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691233i32;
                } else if (__value__ == (2691233i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691250i32;
                    } else {
                        _gotoNext = 2691277i32;
                    };
                } else if (__value__ == (2691250i32)) {
                    _exp = (_dp_2689646 - _ndMant_2689633 : stdgo.GoInt);
                    _gotoNext = 2691277i32;
                } else if (__value__ == (2691277i32)) {
                    if ((_underscores_2689185 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2691316i32;
                    } else {
                        _gotoNext = 2691332i32;
                    };
                } else if (__value__ == (2691316i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691332i32;
                } else if (__value__ == (2691332i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
