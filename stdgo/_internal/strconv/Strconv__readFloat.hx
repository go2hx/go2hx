package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2712062:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2712053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2712016:Bool = false;
        var _e_2713382:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2712075:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2711838:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_2712123:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2712033:Bool = false;
        var _maxMantDigits_2711793:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2711614:Bool = false;
        var _esign_2713231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2711773:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2711614 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2711670i32;
                    } else {
                        _gotoNext = 2711685i32;
                    };
                } else if (__value__ == (2711670i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2711685i32;
                } else if (__value__ == (2711685i32)) {
                    _gotoNext = 2711685i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2711695i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2711720i32;
                    } else {
                        _gotoNext = 2711773i32;
                    };
                } else if (__value__ == (2711695i32)) {
                    _i++;
                    _gotoNext = 2711773i32;
                } else if (__value__ == (2711720i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2711773i32;
                } else if (__value__ == (2711773i32)) {
                    _base_2711773 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2711793 = (19 : stdgo.GoInt);
                    _expChar_2711838 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2711915i32;
                    } else {
                        _gotoNext = 2712016i32;
                    };
                } else if (__value__ == (2711915i32)) {
                    _base_2711773 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2711793 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2711838 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2712016i32;
                } else if (__value__ == (2712016i32)) {
                    _sawdot_2712016 = false;
                    _sawdigits_2712033 = false;
                    _nd_2712053 = (0 : stdgo.GoInt);
                    _ndMant_2712062 = (0 : stdgo.GoInt);
                    _dp_2712075 = (0 : stdgo.GoInt);
                    _gotoNext = 2712083i32;
                } else if (__value__ == (2712083i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712090i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2712112i32;
                    } else {
                        _gotoNext = 2712832i32;
                    };
                } else if (__value__ == (2712112i32)) {
                    _gotoNext = 2712116i32;
                } else if (__value__ == (2712116i32)) {
                    {
                        _c_2712123 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2712123 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2712143i32;
                            } else if (__value__ == (_c_2712123 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2712195i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2712123 : Bool) && (_c_2712123 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2712288i32;
                            } else if (__value__ == (((_base_2711773 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2712123) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2712123) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2712580i32;
                            } else {
                                _gotoNext = 2712822i32;
                            };
                        };
                    };
                } else if (__value__ == (2712143i32)) {
                    _underscores_2711614 = true;
                    _i++;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712195i32)) {
                    if (_sawdot_2712016) {
                        _gotoNext = 2712223i32;
                    } else {
                        _gotoNext = 2712248i32;
                    };
                } else if (__value__ == (2712223i32)) {
                    _loopBreak = true;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712248i32)) {
                    _sawdot_2712016 = true;
                    _dp_2712075 = _nd_2712053;
                    _i++;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712288i32)) {
                    _sawdigits_2712033 = true;
                    if (((_c_2712123 == (48 : stdgo.GoUInt8)) && (_nd_2712053 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2712361i32;
                    } else {
                        _gotoNext = 2712417i32;
                    };
                } else if (__value__ == (2712361i32)) {
                    _dp_2712075--;
                    _i++;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712417i32)) {
                    _nd_2712053++;
                    if ((_ndMant_2712062 < _maxMantDigits_2711793 : Bool)) {
                        _gotoNext = 2712451i32;
                    } else if (_c_2712123 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2712541i32;
                    } else {
                        _gotoNext = 2712568i32;
                    };
                } else if (__value__ == (2712451i32)) {
                    _mantissa = (_mantissa * (_base_2711773) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2712123 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2712062++;
                    _gotoNext = 2712568i32;
                } else if (__value__ == (2712541i32)) {
                    _trunc = true;
                    _gotoNext = 2712568i32;
                } else if (__value__ == (2712568i32)) {
                    _i++;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712580i32)) {
                    _sawdigits_2712033 = true;
                    _nd_2712053++;
                    if ((_ndMant_2712062 < _maxMantDigits_2711793 : Bool)) {
                        _gotoNext = 2712692i32;
                    } else {
                        _gotoNext = 2712780i32;
                    };
                } else if (__value__ == (2712692i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2712123) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2712062++;
                    _gotoNext = 2712807i32;
                } else if (__value__ == (2712780i32)) {
                    _gotoNext = 2712780i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2712807i32;
                } else if (__value__ == (2712807i32)) {
                    _i++;
                    _gotoNext = 2712090i32;
                } else if (__value__ == (2712822i32)) {
                    _gotoNext = 2712832i32;
                } else if (__value__ == (2712832i32)) {
                    if (!_sawdigits_2712033) {
                        _gotoNext = 2712846i32;
                    } else {
                        _gotoNext = 2712861i32;
                    };
                } else if (__value__ == (2712846i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2712861i32;
                } else if (__value__ == (2712861i32)) {
                    if (!_sawdot_2712016) {
                        _gotoNext = 2712872i32;
                    } else {
                        _gotoNext = 2712889i32;
                    };
                } else if (__value__ == (2712872i32)) {
                    _dp_2712075 = _nd_2712053;
                    _gotoNext = 2712889i32;
                } else if (__value__ == (2712889i32)) {
                    if (_base_2711773 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2712903i32;
                    } else {
                        _gotoNext = 2713148i32;
                    };
                } else if (__value__ == (2712903i32)) {
                    _dp_2712075 = (_dp_2712075 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2712062 = (_ndMant_2712062 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2713148i32;
                } else if (__value__ == (2713148i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2711838) : Bool)) {
                        _gotoNext = 2713188i32;
                    } else if (_base_2711773 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2713621i32;
                    } else {
                        _gotoNext = 2713662i32;
                    };
                } else if (__value__ == (2713188i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2713213i32;
                    } else {
                        _gotoNext = 2713231i32;
                    };
                } else if (__value__ == (2713213i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2713231i32;
                } else if (__value__ == (2713231i32)) {
                    _esign_2713231 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2713259i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2713292i32;
                    } else {
                        _gotoNext = 2713321i32;
                    };
                } else if (__value__ == (2713259i32)) {
                    _i++;
                    _gotoNext = 2713321i32;
                } else if (__value__ == (2713292i32)) {
                    _i++;
                    _esign_2713231 = (-1 : stdgo.GoInt);
                    _gotoNext = 2713321i32;
                } else if (__value__ == (2713321i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2713364i32;
                    } else {
                        _gotoNext = 2713382i32;
                    };
                } else if (__value__ == (2713364i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2713382i32;
                } else if (__value__ == (2713382i32)) {
                    _e_2713382 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2713391i32;
                } else if (__value__ == (2713391i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2713460i32;
                    } else {
                        _gotoNext = 2713583i32;
                    };
                } else if (__value__ == (2713456i32)) {
                    _i++;
                    _gotoNext = 2713391i32;
                } else if (__value__ == (2713460i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2713480i32;
                    } else {
                        _gotoNext = 2713526i32;
                    };
                } else if (__value__ == (2713480i32)) {
                    _underscores_2711614 = true;
                    _i++;
                    _gotoNext = 2713391i32;
                } else if (__value__ == (2713526i32)) {
                    if ((_e_2713382 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2713539i32;
                    } else {
                        _gotoNext = 2713456i32;
                    };
                } else if (__value__ == (2713539i32)) {
                    _e_2713382 = (((_e_2713382 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2713456i32;
                } else if (__value__ == (2713583i32)) {
                    _dp_2712075 = (_dp_2712075 + ((_e_2713382 * _esign_2713231 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2713662i32;
                } else if (__value__ == (2713621i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2713662i32;
                } else if (__value__ == (2713662i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2713679i32;
                    } else {
                        _gotoNext = 2713706i32;
                    };
                } else if (__value__ == (2713679i32)) {
                    _exp = (_dp_2712075 - _ndMant_2712062 : stdgo.GoInt);
                    _gotoNext = 2713706i32;
                } else if (__value__ == (2713706i32)) {
                    if ((_underscores_2711614 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2713745i32;
                    } else {
                        _gotoNext = 2713761i32;
                    };
                } else if (__value__ == (2713745i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2713761i32;
                } else if (__value__ == (2713761i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
