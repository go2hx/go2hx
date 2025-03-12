package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_4:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2603954i32;
                    } else {
                        _gotoNext = 2603969i32;
                    };
                } else if (__value__ == (2603954i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2603969i32;
                } else if (__value__ == (2603969i32)) {
                    _gotoNext = 2603969i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2603979i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2604004i32;
                    } else {
                        _gotoNext = 2604057i32;
                    };
                } else if (__value__ == (2603979i32)) {
                    _i++;
                    _gotoNext = 2604057i32;
                } else if (__value__ == (2604004i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2604057i32;
                } else if (__value__ == (2604057i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2604199i32;
                    } else {
                        _gotoNext = 2604300i32;
                    };
                } else if (__value__ == (2604199i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2604300i32;
                } else if (__value__ == (2604300i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2604367i32;
                } else if (__value__ == (2604367i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2604374i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2604396i32;
                    } else {
                        _gotoNext = 2605116i32;
                    };
                } else if (__value__ == (2604396i32)) {
                    _gotoNext = 2604400i32;
                } else if (__value__ == (2604400i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2604427i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2604479i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2604572i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2604864i32;
                            } else {
                                _gotoNext = 2605106i32;
                            };
                        };
                    };
                } else if (__value__ == (2604427i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2604479i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2604507i32;
                    } else {
                        _gotoNext = 2604532i32;
                    };
                } else if (__value__ == (2604507i32)) {
                    _loopBreak = true;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2604532i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2604572i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2604645i32;
                    } else {
                        _gotoNext = 2604701i32;
                    };
                } else if (__value__ == (2604645i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2604701i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2604735i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2604825i32;
                    } else {
                        _gotoNext = 2604852i32;
                    };
                } else if (__value__ == (2604735i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2604852i32;
                } else if (__value__ == (2604825i32)) {
                    _trunc = true;
                    _gotoNext = 2604852i32;
                } else if (__value__ == (2604852i32)) {
                    _i++;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2604864i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2604976i32;
                    } else {
                        _gotoNext = 2605064i32;
                    };
                } else if (__value__ == (2604976i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2605091i32;
                } else if (__value__ == (2605064i32)) {
                    _gotoNext = 2605064i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2605091i32;
                } else if (__value__ == (2605091i32)) {
                    _i++;
                    _gotoNext = 2604374i32;
                } else if (__value__ == (2605106i32)) {
                    _gotoNext = 2605116i32;
                } else if (__value__ == (2605116i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2605130i32;
                    } else {
                        _gotoNext = 2605145i32;
                    };
                } else if (__value__ == (2605130i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2605145i32;
                } else if (__value__ == (2605145i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2605156i32;
                    } else {
                        _gotoNext = 2605173i32;
                    };
                } else if (__value__ == (2605156i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2605173i32;
                } else if (__value__ == (2605173i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2605187i32;
                    } else {
                        _gotoNext = 2605432i32;
                    };
                } else if (__value__ == (2605187i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2605432i32;
                } else if (__value__ == (2605432i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2605472i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2605905i32;
                    } else {
                        _gotoNext = 2605946i32;
                    };
                } else if (__value__ == (2605472i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2605497i32;
                    } else {
                        _gotoNext = 2605515i32;
                    };
                } else if (__value__ == (2605497i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2605515i32;
                } else if (__value__ == (2605515i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2605543i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2605576i32;
                    } else {
                        _gotoNext = 2605605i32;
                    };
                } else if (__value__ == (2605543i32)) {
                    _i++;
                    _gotoNext = 2605605i32;
                } else if (__value__ == (2605576i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2605605i32;
                } else if (__value__ == (2605605i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2605648i32;
                    } else {
                        _gotoNext = 2605666i32;
                    };
                } else if (__value__ == (2605648i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2605666i32;
                } else if (__value__ == (2605666i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2605675i32;
                } else if (__value__ == (2605675i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2605744i32;
                    } else {
                        _gotoNext = 2605867i32;
                    };
                } else if (__value__ == (2605740i32)) {
                    _i++;
                    _gotoNext = 2605675i32;
                } else if (__value__ == (2605744i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2605764i32;
                    } else {
                        _gotoNext = 2605810i32;
                    };
                } else if (__value__ == (2605764i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2605675i32;
                } else if (__value__ == (2605810i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2605823i32;
                    } else {
                        _gotoNext = 2605740i32;
                    };
                } else if (__value__ == (2605823i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2605740i32;
                } else if (__value__ == (2605867i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2605946i32;
                } else if (__value__ == (2605905i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2605946i32;
                } else if (__value__ == (2605946i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2605963i32;
                    } else {
                        _gotoNext = 2605990i32;
                    };
                } else if (__value__ == (2605963i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2605990i32;
                } else if (__value__ == (2605990i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2606029i32;
                    } else {
                        _gotoNext = 2606045i32;
                    };
                } else if (__value__ == (2606029i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2606045i32;
                } else if (__value__ == (2606045i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
