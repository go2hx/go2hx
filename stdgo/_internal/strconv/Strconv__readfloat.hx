package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2695616i32;
                    } else {
                        _gotoNext = 2695631i32;
                    };
                } else if (__value__ == (2695616i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2695631i32;
                } else if (__value__ == (2695631i32)) {
                    _gotoNext = 2695631i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2695641i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2695666i32;
                    } else {
                        _gotoNext = 2695719i32;
                    };
                } else if (__value__ == (2695641i32)) {
                    _i++;
                    _gotoNext = 2695719i32;
                } else if (__value__ == (2695666i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2695719i32;
                } else if (__value__ == (2695719i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2695861i32;
                    } else {
                        _gotoNext = 2695962i32;
                    };
                } else if (__value__ == (2695861i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2695962i32;
                } else if (__value__ == (2695962i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2696029i32;
                } else if (__value__ == (2696029i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696036i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2696058i32;
                    } else {
                        _gotoNext = 2696778i32;
                    };
                } else if (__value__ == (2696058i32)) {
                    _gotoNext = 2696062i32;
                } else if (__value__ == (2696062i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2696089i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2696141i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2696234i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2696526i32;
                            } else {
                                _gotoNext = 2696768i32;
                            };
                        };
                    };
                } else if (__value__ == (2696089i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696141i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2696169i32;
                    } else {
                        _gotoNext = 2696194i32;
                    };
                } else if (__value__ == (2696169i32)) {
                    _loopBreak = true;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696194i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696234i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2696307i32;
                    } else {
                        _gotoNext = 2696363i32;
                    };
                } else if (__value__ == (2696307i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696363i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2696397i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2696487i32;
                    } else {
                        _gotoNext = 2696514i32;
                    };
                } else if (__value__ == (2696397i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2696514i32;
                } else if (__value__ == (2696487i32)) {
                    _trunc = true;
                    _gotoNext = 2696514i32;
                } else if (__value__ == (2696514i32)) {
                    _i++;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696526i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2696638i32;
                    } else {
                        _gotoNext = 2696726i32;
                    };
                } else if (__value__ == (2696638i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2696753i32;
                } else if (__value__ == (2696726i32)) {
                    _gotoNext = 2696726i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2696753i32;
                } else if (__value__ == (2696753i32)) {
                    _i++;
                    _gotoNext = 2696036i32;
                } else if (__value__ == (2696768i32)) {
                    _gotoNext = 2696778i32;
                } else if (__value__ == (2696778i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2696792i32;
                    } else {
                        _gotoNext = 2696807i32;
                    };
                } else if (__value__ == (2696792i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2696807i32;
                } else if (__value__ == (2696807i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2696818i32;
                    } else {
                        _gotoNext = 2696835i32;
                    };
                } else if (__value__ == (2696818i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2696835i32;
                } else if (__value__ == (2696835i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2696849i32;
                    } else {
                        _gotoNext = 2697094i32;
                    };
                } else if (__value__ == (2696849i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2697094i32;
                } else if (__value__ == (2697094i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2697134i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2697567i32;
                    } else {
                        _gotoNext = 2697608i32;
                    };
                } else if (__value__ == (2697134i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2697159i32;
                    } else {
                        _gotoNext = 2697177i32;
                    };
                } else if (__value__ == (2697159i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2697177i32;
                } else if (__value__ == (2697177i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2697205i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2697238i32;
                    } else {
                        _gotoNext = 2697267i32;
                    };
                } else if (__value__ == (2697205i32)) {
                    _i++;
                    _gotoNext = 2697267i32;
                } else if (__value__ == (2697238i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2697267i32;
                } else if (__value__ == (2697267i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2697310i32;
                    } else {
                        _gotoNext = 2697328i32;
                    };
                } else if (__value__ == (2697310i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2697328i32;
                } else if (__value__ == (2697328i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2697337i32;
                } else if (__value__ == (2697337i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2697406i32;
                    } else {
                        _gotoNext = 2697529i32;
                    };
                } else if (__value__ == (2697402i32)) {
                    _i++;
                    _gotoNext = 2697337i32;
                } else if (__value__ == (2697406i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2697426i32;
                    } else {
                        _gotoNext = 2697472i32;
                    };
                } else if (__value__ == (2697426i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2697337i32;
                } else if (__value__ == (2697472i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2697485i32;
                    } else {
                        _gotoNext = 2697402i32;
                    };
                } else if (__value__ == (2697485i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2697402i32;
                } else if (__value__ == (2697529i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2697608i32;
                } else if (__value__ == (2697567i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2697608i32;
                } else if (__value__ == (2697608i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2697625i32;
                    } else {
                        _gotoNext = 2697652i32;
                    };
                } else if (__value__ == (2697625i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2697652i32;
                } else if (__value__ == (2697652i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2697691i32;
                    } else {
                        _gotoNext = 2697707i32;
                    };
                } else if (__value__ == (2697691i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2697707i32;
                } else if (__value__ == (2697707i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
