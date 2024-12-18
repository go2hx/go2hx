package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2630073:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2629858:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2629813:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2630095:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2630053:Bool = false;
        var _ndMant_2630082:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2629793:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2629634:Bool = false;
        var _esign_2631251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2630143:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2631402:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdot_2630036:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2629634 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2629690i32;
                    } else {
                        _gotoNext = 2629705i32;
                    };
                } else if (__value__ == (2629690i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629705i32;
                } else if (__value__ == (2629705i32)) {
                    _gotoNext = 2629705i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2629715i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2629740i32;
                    } else {
                        _gotoNext = 2629793i32;
                    };
                } else if (__value__ == (2629715i32)) {
                    _i++;
                    _gotoNext = 2629793i32;
                } else if (__value__ == (2629740i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2629793i32;
                } else if (__value__ == (2629793i32)) {
                    _base_2629793 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629813 = (19 : stdgo.GoInt);
                    _expChar_2629858 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2629935i32;
                    } else {
                        _gotoNext = 2630036i32;
                    };
                } else if (__value__ == (2629935i32)) {
                    _base_2629793 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629813 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2629858 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2630036i32;
                } else if (__value__ == (2630036i32)) {
                    _sawdot_2630036 = false;
                    _sawdigits_2630053 = false;
                    _nd_2630073 = (0 : stdgo.GoInt);
                    _ndMant_2630082 = (0 : stdgo.GoInt);
                    _dp_2630095 = (0 : stdgo.GoInt);
                    _gotoNext = 2630103i32;
                } else if (__value__ == (2630103i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630110i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2630132i32;
                    } else {
                        _gotoNext = 2630852i32;
                    };
                } else if (__value__ == (2630132i32)) {
                    _gotoNext = 2630136i32;
                } else if (__value__ == (2630136i32)) {
                    {
                        _c_2630143 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2630143 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2630163i32;
                            } else if (__value__ == (_c_2630143 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2630215i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2630143 : Bool) && (_c_2630143 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630308i32;
                            } else if (__value__ == (((_base_2629793 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2630143) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2630143) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630600i32;
                            } else {
                                _gotoNext = 2630842i32;
                            };
                        };
                    };
                } else if (__value__ == (2630163i32)) {
                    _underscores_2629634 = true;
                    _i++;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630215i32)) {
                    if (_sawdot_2630036) {
                        _gotoNext = 2630243i32;
                    } else {
                        _gotoNext = 2630268i32;
                    };
                } else if (__value__ == (2630243i32)) {
                    _loopBreak = true;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630268i32)) {
                    _sawdot_2630036 = true;
                    _dp_2630095 = _nd_2630073;
                    _i++;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630308i32)) {
                    _sawdigits_2630053 = true;
                    if (((_c_2630143 == (48 : stdgo.GoUInt8)) && (_nd_2630073 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2630381i32;
                    } else {
                        _gotoNext = 2630437i32;
                    };
                } else if (__value__ == (2630381i32)) {
                    _dp_2630095--;
                    _i++;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630437i32)) {
                    _nd_2630073++;
                    if ((_ndMant_2630082 < _maxMantDigits_2629813 : Bool)) {
                        _gotoNext = 2630471i32;
                    } else if (_c_2630143 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2630561i32;
                    } else {
                        _gotoNext = 2630588i32;
                    };
                } else if (__value__ == (2630471i32)) {
                    _mantissa = (_mantissa * (_base_2629793) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2630143 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2630082++;
                    _gotoNext = 2630588i32;
                } else if (__value__ == (2630561i32)) {
                    _trunc = true;
                    _gotoNext = 2630588i32;
                } else if (__value__ == (2630588i32)) {
                    _i++;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630600i32)) {
                    _sawdigits_2630053 = true;
                    _nd_2630073++;
                    if ((_ndMant_2630082 < _maxMantDigits_2629813 : Bool)) {
                        _gotoNext = 2630712i32;
                    } else {
                        _gotoNext = 2630800i32;
                    };
                } else if (__value__ == (2630712i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2630143) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2630082++;
                    _gotoNext = 2630827i32;
                } else if (__value__ == (2630800i32)) {
                    _gotoNext = 2630800i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2630827i32;
                } else if (__value__ == (2630827i32)) {
                    _i++;
                    _gotoNext = 2630110i32;
                } else if (__value__ == (2630842i32)) {
                    _gotoNext = 2630852i32;
                } else if (__value__ == (2630852i32)) {
                    if (!_sawdigits_2630053) {
                        _gotoNext = 2630866i32;
                    } else {
                        _gotoNext = 2630881i32;
                    };
                } else if (__value__ == (2630866i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630881i32;
                } else if (__value__ == (2630881i32)) {
                    if (!_sawdot_2630036) {
                        _gotoNext = 2630892i32;
                    } else {
                        _gotoNext = 2630909i32;
                    };
                } else if (__value__ == (2630892i32)) {
                    _dp_2630095 = _nd_2630073;
                    _gotoNext = 2630909i32;
                } else if (__value__ == (2630909i32)) {
                    if (_base_2629793 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630923i32;
                    } else {
                        _gotoNext = 2631168i32;
                    };
                } else if (__value__ == (2630923i32)) {
                    _dp_2630095 = (_dp_2630095 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2630082 = (_ndMant_2630082 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631168i32;
                } else if (__value__ == (2631168i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2629858) : Bool)) {
                        _gotoNext = 2631208i32;
                    } else if (_base_2629793 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631641i32;
                    } else {
                        _gotoNext = 2631682i32;
                    };
                } else if (__value__ == (2631208i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2631233i32;
                    } else {
                        _gotoNext = 2631251i32;
                    };
                } else if (__value__ == (2631233i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631251i32;
                } else if (__value__ == (2631251i32)) {
                    _esign_2631251 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631279i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631312i32;
                    } else {
                        _gotoNext = 2631341i32;
                    };
                } else if (__value__ == (2631279i32)) {
                    _i++;
                    _gotoNext = 2631341i32;
                } else if (__value__ == (2631312i32)) {
                    _i++;
                    _esign_2631251 = (-1 : stdgo.GoInt);
                    _gotoNext = 2631341i32;
                } else if (__value__ == (2631341i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2631384i32;
                    } else {
                        _gotoNext = 2631402i32;
                    };
                } else if (__value__ == (2631384i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631402i32;
                } else if (__value__ == (2631402i32)) {
                    _e_2631402 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2631411i32;
                } else if (__value__ == (2631411i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2631480i32;
                    } else {
                        _gotoNext = 2631603i32;
                    };
                } else if (__value__ == (2631476i32)) {
                    _i++;
                    _gotoNext = 2631411i32;
                } else if (__value__ == (2631480i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2631500i32;
                    } else {
                        _gotoNext = 2631546i32;
                    };
                } else if (__value__ == (2631500i32)) {
                    _underscores_2629634 = true;
                    _i++;
                    _gotoNext = 2631411i32;
                } else if (__value__ == (2631546i32)) {
                    if ((_e_2631402 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2631559i32;
                    } else {
                        _gotoNext = 2631476i32;
                    };
                } else if (__value__ == (2631559i32)) {
                    _e_2631402 = (((_e_2631402 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2631476i32;
                } else if (__value__ == (2631603i32)) {
                    _dp_2630095 = (_dp_2630095 + ((_e_2631402 * _esign_2631251 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631682i32;
                } else if (__value__ == (2631641i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631682i32;
                } else if (__value__ == (2631682i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631699i32;
                    } else {
                        _gotoNext = 2631726i32;
                    };
                } else if (__value__ == (2631699i32)) {
                    _exp = (_dp_2630095 - _ndMant_2630082 : stdgo.GoInt);
                    _gotoNext = 2631726i32;
                } else if (__value__ == (2631726i32)) {
                    if ((_underscores_2629634 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2631765i32;
                    } else {
                        _gotoNext = 2631781i32;
                    };
                } else if (__value__ == (2631765i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631781i32;
                } else if (__value__ == (2631781i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
