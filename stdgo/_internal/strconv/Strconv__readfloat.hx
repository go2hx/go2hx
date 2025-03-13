package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_0:Bool = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_5:Bool = false;
        var _sawdot_4:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2697049i32;
                    } else {
                        _gotoNext = 2697064i32;
                    };
                } else if (__value__ == (2697049i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2697064i32;
                } else if (__value__ == (2697064i32)) {
                    _gotoNext = 2697064i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2697074i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2697099i32;
                    } else {
                        _gotoNext = 2697152i32;
                    };
                } else if (__value__ == (2697074i32)) {
                    _i++;
                    _gotoNext = 2697152i32;
                } else if (__value__ == (2697099i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2697152i32;
                } else if (__value__ == (2697152i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2697294i32;
                    } else {
                        _gotoNext = 2697395i32;
                    };
                } else if (__value__ == (2697294i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2697395i32;
                } else if (__value__ == (2697395i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2697462i32;
                } else if (__value__ == (2697462i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2697469i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2697491i32;
                    } else {
                        _gotoNext = 2698211i32;
                    };
                } else if (__value__ == (2697491i32)) {
                    _gotoNext = 2697495i32;
                } else if (__value__ == (2697495i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2697522i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2697574i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2697667i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2697959i32;
                            } else {
                                _gotoNext = 2698201i32;
                            };
                        };
                    };
                } else if (__value__ == (2697522i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2697574i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2697602i32;
                    } else {
                        _gotoNext = 2697627i32;
                    };
                } else if (__value__ == (2697602i32)) {
                    _loopBreak = true;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2697627i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2697667i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2697740i32;
                    } else {
                        _gotoNext = 2697796i32;
                    };
                } else if (__value__ == (2697740i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2697796i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2697830i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2697920i32;
                    } else {
                        _gotoNext = 2697947i32;
                    };
                } else if (__value__ == (2697830i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2697947i32;
                } else if (__value__ == (2697920i32)) {
                    _trunc = true;
                    _gotoNext = 2697947i32;
                } else if (__value__ == (2697947i32)) {
                    _i++;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2697959i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2698071i32;
                    } else {
                        _gotoNext = 2698159i32;
                    };
                } else if (__value__ == (2698071i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2698186i32;
                } else if (__value__ == (2698159i32)) {
                    _gotoNext = 2698159i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2698186i32;
                } else if (__value__ == (2698186i32)) {
                    _i++;
                    _gotoNext = 2697469i32;
                } else if (__value__ == (2698201i32)) {
                    _gotoNext = 2698211i32;
                } else if (__value__ == (2698211i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2698225i32;
                    } else {
                        _gotoNext = 2698240i32;
                    };
                } else if (__value__ == (2698225i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698240i32;
                } else if (__value__ == (2698240i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2698251i32;
                    } else {
                        _gotoNext = 2698268i32;
                    };
                } else if (__value__ == (2698251i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2698268i32;
                } else if (__value__ == (2698268i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2698282i32;
                    } else {
                        _gotoNext = 2698527i32;
                    };
                } else if (__value__ == (2698282i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2698527i32;
                } else if (__value__ == (2698527i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2698567i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2699000i32;
                    } else {
                        _gotoNext = 2699041i32;
                    };
                } else if (__value__ == (2698567i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2698592i32;
                    } else {
                        _gotoNext = 2698610i32;
                    };
                } else if (__value__ == (2698592i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698610i32;
                } else if (__value__ == (2698610i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2698638i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2698671i32;
                    } else {
                        _gotoNext = 2698700i32;
                    };
                } else if (__value__ == (2698638i32)) {
                    _i++;
                    _gotoNext = 2698700i32;
                } else if (__value__ == (2698671i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2698700i32;
                } else if (__value__ == (2698700i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2698743i32;
                    } else {
                        _gotoNext = 2698761i32;
                    };
                } else if (__value__ == (2698743i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698761i32;
                } else if (__value__ == (2698761i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2698770i32;
                } else if (__value__ == (2698770i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2698839i32;
                    } else {
                        _gotoNext = 2698962i32;
                    };
                } else if (__value__ == (2698835i32)) {
                    _i++;
                    _gotoNext = 2698770i32;
                } else if (__value__ == (2698839i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2698859i32;
                    } else {
                        _gotoNext = 2698905i32;
                    };
                } else if (__value__ == (2698859i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2698770i32;
                } else if (__value__ == (2698905i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2698918i32;
                    } else {
                        _gotoNext = 2698835i32;
                    };
                } else if (__value__ == (2698918i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2698835i32;
                } else if (__value__ == (2698962i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2699041i32;
                } else if (__value__ == (2699000i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699041i32;
                } else if (__value__ == (2699041i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2699058i32;
                    } else {
                        _gotoNext = 2699085i32;
                    };
                } else if (__value__ == (2699058i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2699085i32;
                } else if (__value__ == (2699085i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2699124i32;
                    } else {
                        _gotoNext = 2699140i32;
                    };
                } else if (__value__ == (2699124i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699140i32;
                } else if (__value__ == (2699140i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
