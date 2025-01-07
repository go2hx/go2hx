package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2631934:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2631888:Bool = false;
        var _maxMantDigits_2631665:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2631645:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2633103:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2631995:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2631905:Bool = false;
        var _nd_2631925:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2631710:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2631486:Bool = false;
        var _e_2633254:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2631947:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2631486 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2631542i32;
                    } else {
                        _gotoNext = 2631557i32;
                    };
                } else if (__value__ == (2631542i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631557i32;
                } else if (__value__ == (2631557i32)) {
                    _gotoNext = 2631557i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631567i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631592i32;
                    } else {
                        _gotoNext = 2631645i32;
                    };
                } else if (__value__ == (2631567i32)) {
                    _i++;
                    _gotoNext = 2631645i32;
                } else if (__value__ == (2631592i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2631645i32;
                } else if (__value__ == (2631645i32)) {
                    _base_2631645 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2631665 = (19 : stdgo.GoInt);
                    _expChar_2631710 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2631787i32;
                    } else {
                        _gotoNext = 2631888i32;
                    };
                } else if (__value__ == (2631787i32)) {
                    _base_2631645 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2631665 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2631710 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2631888i32;
                } else if (__value__ == (2631888i32)) {
                    _sawdot_2631888 = false;
                    _sawdigits_2631905 = false;
                    _nd_2631925 = (0 : stdgo.GoInt);
                    _ndMant_2631934 = (0 : stdgo.GoInt);
                    _dp_2631947 = (0 : stdgo.GoInt);
                    _gotoNext = 2631955i32;
                } else if (__value__ == (2631955i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2631962i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2631984i32;
                    } else {
                        _gotoNext = 2632704i32;
                    };
                } else if (__value__ == (2631984i32)) {
                    _gotoNext = 2631988i32;
                } else if (__value__ == (2631988i32)) {
                    {
                        _c_2631995 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2631995 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2632015i32;
                            } else if (__value__ == (_c_2631995 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2632067i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2631995 : Bool) && (_c_2631995 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2632160i32;
                            } else if (__value__ == (((_base_2631645 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2631995) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2631995) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2632452i32;
                            } else {
                                _gotoNext = 2632694i32;
                            };
                        };
                    };
                } else if (__value__ == (2632015i32)) {
                    _underscores_2631486 = true;
                    _i++;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2632067i32)) {
                    if (_sawdot_2631888) {
                        _gotoNext = 2632095i32;
                    } else {
                        _gotoNext = 2632120i32;
                    };
                } else if (__value__ == (2632095i32)) {
                    _loopBreak = true;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2632120i32)) {
                    _sawdot_2631888 = true;
                    _dp_2631947 = _nd_2631925;
                    _i++;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2632160i32)) {
                    _sawdigits_2631905 = true;
                    if (((_c_2631995 == (48 : stdgo.GoUInt8)) && (_nd_2631925 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2632233i32;
                    } else {
                        _gotoNext = 2632289i32;
                    };
                } else if (__value__ == (2632233i32)) {
                    _dp_2631947--;
                    _i++;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2632289i32)) {
                    _nd_2631925++;
                    if ((_ndMant_2631934 < _maxMantDigits_2631665 : Bool)) {
                        _gotoNext = 2632323i32;
                    } else if (_c_2631995 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2632413i32;
                    } else {
                        _gotoNext = 2632440i32;
                    };
                } else if (__value__ == (2632323i32)) {
                    _mantissa = (_mantissa * (_base_2631645) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2631995 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2631934++;
                    _gotoNext = 2632440i32;
                } else if (__value__ == (2632413i32)) {
                    _trunc = true;
                    _gotoNext = 2632440i32;
                } else if (__value__ == (2632440i32)) {
                    _i++;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2632452i32)) {
                    _sawdigits_2631905 = true;
                    _nd_2631925++;
                    if ((_ndMant_2631934 < _maxMantDigits_2631665 : Bool)) {
                        _gotoNext = 2632564i32;
                    } else {
                        _gotoNext = 2632652i32;
                    };
                } else if (__value__ == (2632564i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2631995) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2631934++;
                    _gotoNext = 2632679i32;
                } else if (__value__ == (2632652i32)) {
                    _gotoNext = 2632652i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2632679i32;
                } else if (__value__ == (2632679i32)) {
                    _i++;
                    _gotoNext = 2631962i32;
                } else if (__value__ == (2632694i32)) {
                    _gotoNext = 2632704i32;
                } else if (__value__ == (2632704i32)) {
                    if (!_sawdigits_2631905) {
                        _gotoNext = 2632718i32;
                    } else {
                        _gotoNext = 2632733i32;
                    };
                } else if (__value__ == (2632718i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632733i32;
                } else if (__value__ == (2632733i32)) {
                    if (!_sawdot_2631888) {
                        _gotoNext = 2632744i32;
                    } else {
                        _gotoNext = 2632761i32;
                    };
                } else if (__value__ == (2632744i32)) {
                    _dp_2631947 = _nd_2631925;
                    _gotoNext = 2632761i32;
                } else if (__value__ == (2632761i32)) {
                    if (_base_2631645 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2632775i32;
                    } else {
                        _gotoNext = 2633020i32;
                    };
                } else if (__value__ == (2632775i32)) {
                    _dp_2631947 = (_dp_2631947 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2631934 = (_ndMant_2631934 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2633020i32;
                } else if (__value__ == (2633020i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2631710) : Bool)) {
                        _gotoNext = 2633060i32;
                    } else if (_base_2631645 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2633493i32;
                    } else {
                        _gotoNext = 2633534i32;
                    };
                } else if (__value__ == (2633060i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2633085i32;
                    } else {
                        _gotoNext = 2633103i32;
                    };
                } else if (__value__ == (2633085i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633103i32;
                } else if (__value__ == (2633103i32)) {
                    _esign_2633103 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2633131i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2633164i32;
                    } else {
                        _gotoNext = 2633193i32;
                    };
                } else if (__value__ == (2633131i32)) {
                    _i++;
                    _gotoNext = 2633193i32;
                } else if (__value__ == (2633164i32)) {
                    _i++;
                    _esign_2633103 = (-1 : stdgo.GoInt);
                    _gotoNext = 2633193i32;
                } else if (__value__ == (2633193i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2633236i32;
                    } else {
                        _gotoNext = 2633254i32;
                    };
                } else if (__value__ == (2633236i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633254i32;
                } else if (__value__ == (2633254i32)) {
                    _e_2633254 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2633263i32;
                } else if (__value__ == (2633263i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2633332i32;
                    } else {
                        _gotoNext = 2633455i32;
                    };
                } else if (__value__ == (2633328i32)) {
                    _i++;
                    _gotoNext = 2633263i32;
                } else if (__value__ == (2633332i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2633352i32;
                    } else {
                        _gotoNext = 2633398i32;
                    };
                } else if (__value__ == (2633352i32)) {
                    _underscores_2631486 = true;
                    _i++;
                    _gotoNext = 2633263i32;
                } else if (__value__ == (2633398i32)) {
                    if ((_e_2633254 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2633411i32;
                    } else {
                        _gotoNext = 2633328i32;
                    };
                } else if (__value__ == (2633411i32)) {
                    _e_2633254 = (((_e_2633254 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2633328i32;
                } else if (__value__ == (2633455i32)) {
                    _dp_2631947 = (_dp_2631947 + ((_e_2633254 * _esign_2633103 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2633534i32;
                } else if (__value__ == (2633493i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633534i32;
                } else if (__value__ == (2633534i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2633551i32;
                    } else {
                        _gotoNext = 2633578i32;
                    };
                } else if (__value__ == (2633551i32)) {
                    _exp = (_dp_2631947 - _ndMant_2631934 : stdgo.GoInt);
                    _gotoNext = 2633578i32;
                } else if (__value__ == (2633578i32)) {
                    if ((_underscores_2631486 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2633617i32;
                    } else {
                        _gotoNext = 2633633i32;
                    };
                } else if (__value__ == (2633617i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633633i32;
                } else if (__value__ == (2633633i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
