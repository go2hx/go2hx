package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _underscores_0:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2657369i32;
                    } else {
                        _gotoNext = 2657384i32;
                    };
                } else if (__value__ == (2657369i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657384i32;
                } else if (__value__ == (2657384i32)) {
                    _gotoNext = 2657384i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2657394i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2657419i32;
                    } else {
                        _gotoNext = 2657472i32;
                    };
                } else if (__value__ == (2657394i32)) {
                    _i++;
                    _gotoNext = 2657472i32;
                } else if (__value__ == (2657419i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2657472i32;
                } else if (__value__ == (2657472i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2657614i32;
                    } else {
                        _gotoNext = 2657715i32;
                    };
                } else if (__value__ == (2657614i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2657715i32;
                } else if (__value__ == (2657715i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2657782i32;
                } else if (__value__ == (2657782i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2657789i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2657811i32;
                    } else {
                        _gotoNext = 2658531i32;
                    };
                } else if (__value__ == (2657811i32)) {
                    _gotoNext = 2657815i32;
                } else if (__value__ == (2657815i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2657842i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2657894i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2657987i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2658279i32;
                            } else {
                                _gotoNext = 2658521i32;
                            };
                        };
                    };
                } else if (__value__ == (2657842i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2657894i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2657922i32;
                    } else {
                        _gotoNext = 2657947i32;
                    };
                } else if (__value__ == (2657922i32)) {
                    _loopBreak = true;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2657947i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2657987i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2658060i32;
                    } else {
                        _gotoNext = 2658116i32;
                    };
                } else if (__value__ == (2658060i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2658116i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2658150i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2658240i32;
                    } else {
                        _gotoNext = 2658267i32;
                    };
                } else if (__value__ == (2658150i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2658267i32;
                } else if (__value__ == (2658240i32)) {
                    _trunc = true;
                    _gotoNext = 2658267i32;
                } else if (__value__ == (2658267i32)) {
                    _i++;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2658279i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2658391i32;
                    } else {
                        _gotoNext = 2658479i32;
                    };
                } else if (__value__ == (2658391i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2658506i32;
                } else if (__value__ == (2658479i32)) {
                    _gotoNext = 2658479i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2658506i32;
                } else if (__value__ == (2658506i32)) {
                    _i++;
                    _gotoNext = 2657789i32;
                } else if (__value__ == (2658521i32)) {
                    _gotoNext = 2658531i32;
                } else if (__value__ == (2658531i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2658545i32;
                    } else {
                        _gotoNext = 2658560i32;
                    };
                } else if (__value__ == (2658545i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658560i32;
                } else if (__value__ == (2658560i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2658571i32;
                    } else {
                        _gotoNext = 2658588i32;
                    };
                } else if (__value__ == (2658571i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2658588i32;
                } else if (__value__ == (2658588i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2658602i32;
                    } else {
                        _gotoNext = 2658847i32;
                    };
                } else if (__value__ == (2658602i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2658847i32;
                } else if (__value__ == (2658847i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2658887i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2659320i32;
                    } else {
                        _gotoNext = 2659361i32;
                    };
                } else if (__value__ == (2658887i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2658912i32;
                    } else {
                        _gotoNext = 2658930i32;
                    };
                } else if (__value__ == (2658912i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658930i32;
                } else if (__value__ == (2658930i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2658958i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2658991i32;
                    } else {
                        _gotoNext = 2659020i32;
                    };
                } else if (__value__ == (2658958i32)) {
                    _i++;
                    _gotoNext = 2659020i32;
                } else if (__value__ == (2658991i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2659020i32;
                } else if (__value__ == (2659020i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2659063i32;
                    } else {
                        _gotoNext = 2659081i32;
                    };
                } else if (__value__ == (2659063i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659081i32;
                } else if (__value__ == (2659081i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2659090i32;
                } else if (__value__ == (2659090i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2659159i32;
                    } else {
                        _gotoNext = 2659282i32;
                    };
                } else if (__value__ == (2659155i32)) {
                    _i++;
                    _gotoNext = 2659090i32;
                } else if (__value__ == (2659159i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2659179i32;
                    } else {
                        _gotoNext = 2659225i32;
                    };
                } else if (__value__ == (2659179i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2659090i32;
                } else if (__value__ == (2659225i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2659238i32;
                    } else {
                        _gotoNext = 2659155i32;
                    };
                } else if (__value__ == (2659238i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2659155i32;
                } else if (__value__ == (2659282i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2659361i32;
                } else if (__value__ == (2659320i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659361i32;
                } else if (__value__ == (2659361i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2659378i32;
                    } else {
                        _gotoNext = 2659405i32;
                    };
                } else if (__value__ == (2659378i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2659405i32;
                } else if (__value__ == (2659405i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2659444i32;
                    } else {
                        _gotoNext = 2659460i32;
                    };
                } else if (__value__ == (2659444i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659460i32;
                } else if (__value__ == (2659460i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
