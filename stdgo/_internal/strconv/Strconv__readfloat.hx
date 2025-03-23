package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_0:Bool = false;
        var _sawdigits_5:Bool = false;
        var _sawdot_4:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2612481i32;
                    } else {
                        _gotoNext = 2612496i32;
                    };
                } else if (__value__ == (2612481i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2612496i32;
                } else if (__value__ == (2612496i32)) {
                    _gotoNext = 2612496i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2612506i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2612531i32;
                    } else {
                        _gotoNext = 2612584i32;
                    };
                } else if (__value__ == (2612506i32)) {
                    _i++;
                    _gotoNext = 2612584i32;
                } else if (__value__ == (2612531i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2612584i32;
                } else if (__value__ == (2612584i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2612726i32;
                    } else {
                        _gotoNext = 2612827i32;
                    };
                } else if (__value__ == (2612726i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2612827i32;
                } else if (__value__ == (2612827i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2612894i32;
                } else if (__value__ == (2612894i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2612901i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2612923i32;
                    } else {
                        _gotoNext = 2613643i32;
                    };
                } else if (__value__ == (2612923i32)) {
                    _gotoNext = 2612927i32;
                } else if (__value__ == (2612927i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2612954i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2613006i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2613099i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2613391i32;
                            } else {
                                _gotoNext = 2613633i32;
                            };
                        };
                    };
                } else if (__value__ == (2612954i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2613006i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2613034i32;
                    } else {
                        _gotoNext = 2613059i32;
                    };
                } else if (__value__ == (2613034i32)) {
                    _loopBreak = true;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2613059i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2613099i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2613172i32;
                    } else {
                        _gotoNext = 2613228i32;
                    };
                } else if (__value__ == (2613172i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2613228i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2613262i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2613352i32;
                    } else {
                        _gotoNext = 2613379i32;
                    };
                } else if (__value__ == (2613262i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2613379i32;
                } else if (__value__ == (2613352i32)) {
                    _trunc = true;
                    _gotoNext = 2613379i32;
                } else if (__value__ == (2613379i32)) {
                    _i++;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2613391i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2613503i32;
                    } else {
                        _gotoNext = 2613591i32;
                    };
                } else if (__value__ == (2613503i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2613618i32;
                } else if (__value__ == (2613591i32)) {
                    _gotoNext = 2613591i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2613618i32;
                } else if (__value__ == (2613618i32)) {
                    _i++;
                    _gotoNext = 2612901i32;
                } else if (__value__ == (2613633i32)) {
                    _gotoNext = 2613643i32;
                } else if (__value__ == (2613643i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2613657i32;
                    } else {
                        _gotoNext = 2613672i32;
                    };
                } else if (__value__ == (2613657i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2613672i32;
                } else if (__value__ == (2613672i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2613683i32;
                    } else {
                        _gotoNext = 2613700i32;
                    };
                } else if (__value__ == (2613683i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2613700i32;
                } else if (__value__ == (2613700i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2613714i32;
                    } else {
                        _gotoNext = 2613959i32;
                    };
                } else if (__value__ == (2613714i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2613959i32;
                } else if (__value__ == (2613959i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2613999i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2614432i32;
                    } else {
                        _gotoNext = 2614473i32;
                    };
                } else if (__value__ == (2613999i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2614024i32;
                    } else {
                        _gotoNext = 2614042i32;
                    };
                } else if (__value__ == (2614024i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614042i32;
                } else if (__value__ == (2614042i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2614070i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2614103i32;
                    } else {
                        _gotoNext = 2614132i32;
                    };
                } else if (__value__ == (2614070i32)) {
                    _i++;
                    _gotoNext = 2614132i32;
                } else if (__value__ == (2614103i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2614132i32;
                } else if (__value__ == (2614132i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2614175i32;
                    } else {
                        _gotoNext = 2614193i32;
                    };
                } else if (__value__ == (2614175i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614193i32;
                } else if (__value__ == (2614193i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2614202i32;
                } else if (__value__ == (2614202i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2614271i32;
                    } else {
                        _gotoNext = 2614394i32;
                    };
                } else if (__value__ == (2614267i32)) {
                    _i++;
                    _gotoNext = 2614202i32;
                } else if (__value__ == (2614271i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2614291i32;
                    } else {
                        _gotoNext = 2614337i32;
                    };
                } else if (__value__ == (2614291i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2614202i32;
                } else if (__value__ == (2614337i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2614350i32;
                    } else {
                        _gotoNext = 2614267i32;
                    };
                } else if (__value__ == (2614350i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2614267i32;
                } else if (__value__ == (2614394i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2614473i32;
                } else if (__value__ == (2614432i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614473i32;
                } else if (__value__ == (2614473i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2614490i32;
                    } else {
                        _gotoNext = 2614517i32;
                    };
                } else if (__value__ == (2614490i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2614517i32;
                } else if (__value__ == (2614517i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2614556i32;
                    } else {
                        _gotoNext = 2614572i32;
                    };
                } else if (__value__ == (2614556i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2614572i32;
                } else if (__value__ == (2614572i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
