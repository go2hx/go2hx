package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _sawdot_2697234:Bool = false;
        var _maxMantDigits_2697011:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2696832:Bool = false;
        var _c_2697341:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2698449:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2697251:Bool = false;
        var _expChar_2697056:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2698600:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2697293:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2697280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2697271:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2696991:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2696832 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2696888i32;
                    } else {
                        _gotoNext = 2696903i32;
                    };
                } else if (__value__ == (2696888i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2696903i32;
                } else if (__value__ == (2696903i32)) {
                    _gotoNext = 2696903i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2696913i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2696938i32;
                    } else {
                        _gotoNext = 2696991i32;
                    };
                } else if (__value__ == (2696913i32)) {
                    _i++;
                    _gotoNext = 2696991i32;
                } else if (__value__ == (2696938i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2696991i32;
                } else if (__value__ == (2696991i32)) {
                    _base_2696991 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2697011 = (19 : stdgo.GoInt);
                    _expChar_2697056 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2697133i32;
                    } else {
                        _gotoNext = 2697234i32;
                    };
                } else if (__value__ == (2697133i32)) {
                    _base_2696991 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2697011 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2697056 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2697234i32;
                } else if (__value__ == (2697234i32)) {
                    _sawdot_2697234 = false;
                    _sawdigits_2697251 = false;
                    _nd_2697271 = (0 : stdgo.GoInt);
                    _ndMant_2697280 = (0 : stdgo.GoInt);
                    _dp_2697293 = (0 : stdgo.GoInt);
                    _gotoNext = 2697301i32;
                } else if (__value__ == (2697301i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2697308i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2697330i32;
                    } else {
                        _gotoNext = 2698050i32;
                    };
                } else if (__value__ == (2697330i32)) {
                    _gotoNext = 2697334i32;
                } else if (__value__ == (2697334i32)) {
                    {
                        _c_2697341 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2697341 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2697361i32;
                            } else if (__value__ == (_c_2697341 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2697413i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2697341 : Bool) && (_c_2697341 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2697506i32;
                            } else if (__value__ == (((_base_2696991 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2697341) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2697341) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2697798i32;
                            } else {
                                _gotoNext = 2698040i32;
                            };
                        };
                    };
                } else if (__value__ == (2697361i32)) {
                    _underscores_2696832 = true;
                    _i++;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2697413i32)) {
                    if (_sawdot_2697234) {
                        _gotoNext = 2697441i32;
                    } else {
                        _gotoNext = 2697466i32;
                    };
                } else if (__value__ == (2697441i32)) {
                    _loopBreak = true;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2697466i32)) {
                    _sawdot_2697234 = true;
                    _dp_2697293 = _nd_2697271;
                    _i++;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2697506i32)) {
                    _sawdigits_2697251 = true;
                    if (((_c_2697341 == (48 : stdgo.GoUInt8)) && (_nd_2697271 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2697579i32;
                    } else {
                        _gotoNext = 2697635i32;
                    };
                } else if (__value__ == (2697579i32)) {
                    _dp_2697293--;
                    _i++;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2697635i32)) {
                    _nd_2697271++;
                    if ((_ndMant_2697280 < _maxMantDigits_2697011 : Bool)) {
                        _gotoNext = 2697669i32;
                    } else if (_c_2697341 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2697759i32;
                    } else {
                        _gotoNext = 2697786i32;
                    };
                } else if (__value__ == (2697669i32)) {
                    _mantissa = (_mantissa * (_base_2696991) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2697341 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2697280++;
                    _gotoNext = 2697786i32;
                } else if (__value__ == (2697759i32)) {
                    _trunc = true;
                    _gotoNext = 2697786i32;
                } else if (__value__ == (2697786i32)) {
                    _i++;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2697798i32)) {
                    _sawdigits_2697251 = true;
                    _nd_2697271++;
                    if ((_ndMant_2697280 < _maxMantDigits_2697011 : Bool)) {
                        _gotoNext = 2697910i32;
                    } else {
                        _gotoNext = 2697998i32;
                    };
                } else if (__value__ == (2697910i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2697341) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2697280++;
                    _gotoNext = 2698025i32;
                } else if (__value__ == (2697998i32)) {
                    _gotoNext = 2697998i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2698025i32;
                } else if (__value__ == (2698025i32)) {
                    _i++;
                    _gotoNext = 2697308i32;
                } else if (__value__ == (2698040i32)) {
                    _gotoNext = 2698050i32;
                } else if (__value__ == (2698050i32)) {
                    if (!_sawdigits_2697251) {
                        _gotoNext = 2698064i32;
                    } else {
                        _gotoNext = 2698079i32;
                    };
                } else if (__value__ == (2698064i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698079i32;
                } else if (__value__ == (2698079i32)) {
                    if (!_sawdot_2697234) {
                        _gotoNext = 2698090i32;
                    } else {
                        _gotoNext = 2698107i32;
                    };
                } else if (__value__ == (2698090i32)) {
                    _dp_2697293 = _nd_2697271;
                    _gotoNext = 2698107i32;
                } else if (__value__ == (2698107i32)) {
                    if (_base_2696991 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2698121i32;
                    } else {
                        _gotoNext = 2698366i32;
                    };
                } else if (__value__ == (2698121i32)) {
                    _dp_2697293 = (_dp_2697293 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2697280 = (_ndMant_2697280 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2698366i32;
                } else if (__value__ == (2698366i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2697056) : Bool)) {
                        _gotoNext = 2698406i32;
                    } else if (_base_2696991 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2698839i32;
                    } else {
                        _gotoNext = 2698880i32;
                    };
                } else if (__value__ == (2698406i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2698431i32;
                    } else {
                        _gotoNext = 2698449i32;
                    };
                } else if (__value__ == (2698431i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698449i32;
                } else if (__value__ == (2698449i32)) {
                    _esign_2698449 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2698477i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2698510i32;
                    } else {
                        _gotoNext = 2698539i32;
                    };
                } else if (__value__ == (2698477i32)) {
                    _i++;
                    _gotoNext = 2698539i32;
                } else if (__value__ == (2698510i32)) {
                    _i++;
                    _esign_2698449 = (-1 : stdgo.GoInt);
                    _gotoNext = 2698539i32;
                } else if (__value__ == (2698539i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2698582i32;
                    } else {
                        _gotoNext = 2698600i32;
                    };
                } else if (__value__ == (2698582i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698600i32;
                } else if (__value__ == (2698600i32)) {
                    _e_2698600 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2698609i32;
                } else if (__value__ == (2698609i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2698678i32;
                    } else {
                        _gotoNext = 2698801i32;
                    };
                } else if (__value__ == (2698674i32)) {
                    _i++;
                    _gotoNext = 2698609i32;
                } else if (__value__ == (2698678i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2698698i32;
                    } else {
                        _gotoNext = 2698744i32;
                    };
                } else if (__value__ == (2698698i32)) {
                    _underscores_2696832 = true;
                    _i++;
                    _gotoNext = 2698609i32;
                } else if (__value__ == (2698744i32)) {
                    if ((_e_2698600 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2698757i32;
                    } else {
                        _gotoNext = 2698674i32;
                    };
                } else if (__value__ == (2698757i32)) {
                    _e_2698600 = (((_e_2698600 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2698674i32;
                } else if (__value__ == (2698801i32)) {
                    _dp_2697293 = (_dp_2697293 + ((_e_2698600 * _esign_2698449 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2698880i32;
                } else if (__value__ == (2698839i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698880i32;
                } else if (__value__ == (2698880i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2698897i32;
                    } else {
                        _gotoNext = 2698924i32;
                    };
                } else if (__value__ == (2698897i32)) {
                    _exp = (_dp_2697293 - _ndMant_2697280 : stdgo.GoInt);
                    _gotoNext = 2698924i32;
                } else if (__value__ == (2698924i32)) {
                    if ((_underscores_2696832 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2698963i32;
                    } else {
                        _gotoNext = 2698979i32;
                    };
                } else if (__value__ == (2698963i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2698979i32;
                } else if (__value__ == (2698979i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
