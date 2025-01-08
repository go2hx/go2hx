package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2634394:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2634179:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2634134:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2635572:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdigits_2634374:Bool = false;
        var _e_2635723:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2634403:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2634114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_2634416:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2634357:Bool = false;
        var _underscores_2633955:Bool = false;
        var _c_2634464:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2633955 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2634011i32;
                    } else {
                        _gotoNext = 2634026i32;
                    };
                } else if (__value__ == (2634011i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2634026i32;
                } else if (__value__ == (2634026i32)) {
                    _gotoNext = 2634026i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2634036i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2634061i32;
                    } else {
                        _gotoNext = 2634114i32;
                    };
                } else if (__value__ == (2634036i32)) {
                    _i++;
                    _gotoNext = 2634114i32;
                } else if (__value__ == (2634061i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2634114i32;
                } else if (__value__ == (2634114i32)) {
                    _base_2634114 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2634134 = (19 : stdgo.GoInt);
                    _expChar_2634179 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2634256i32;
                    } else {
                        _gotoNext = 2634357i32;
                    };
                } else if (__value__ == (2634256i32)) {
                    _base_2634114 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2634134 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2634179 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2634357i32;
                } else if (__value__ == (2634357i32)) {
                    _sawdot_2634357 = false;
                    _sawdigits_2634374 = false;
                    _nd_2634394 = (0 : stdgo.GoInt);
                    _ndMant_2634403 = (0 : stdgo.GoInt);
                    _dp_2634416 = (0 : stdgo.GoInt);
                    _gotoNext = 2634424i32;
                } else if (__value__ == (2634424i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2634431i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2634453i32;
                    } else {
                        _gotoNext = 2635173i32;
                    };
                } else if (__value__ == (2634453i32)) {
                    _gotoNext = 2634457i32;
                } else if (__value__ == (2634457i32)) {
                    {
                        _c_2634464 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2634464 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2634484i32;
                            } else if (__value__ == (_c_2634464 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2634536i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2634464 : Bool) && (_c_2634464 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2634629i32;
                            } else if (__value__ == (((_base_2634114 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2634464) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2634464) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2634921i32;
                            } else {
                                _gotoNext = 2635163i32;
                            };
                        };
                    };
                } else if (__value__ == (2634484i32)) {
                    _underscores_2633955 = true;
                    _i++;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2634536i32)) {
                    if (_sawdot_2634357) {
                        _gotoNext = 2634564i32;
                    } else {
                        _gotoNext = 2634589i32;
                    };
                } else if (__value__ == (2634564i32)) {
                    _loopBreak = true;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2634589i32)) {
                    _sawdot_2634357 = true;
                    _dp_2634416 = _nd_2634394;
                    _i++;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2634629i32)) {
                    _sawdigits_2634374 = true;
                    if (((_c_2634464 == (48 : stdgo.GoUInt8)) && (_nd_2634394 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2634702i32;
                    } else {
                        _gotoNext = 2634758i32;
                    };
                } else if (__value__ == (2634702i32)) {
                    _dp_2634416--;
                    _i++;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2634758i32)) {
                    _nd_2634394++;
                    if ((_ndMant_2634403 < _maxMantDigits_2634134 : Bool)) {
                        _gotoNext = 2634792i32;
                    } else if (_c_2634464 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2634882i32;
                    } else {
                        _gotoNext = 2634909i32;
                    };
                } else if (__value__ == (2634792i32)) {
                    _mantissa = (_mantissa * (_base_2634114) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2634464 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2634403++;
                    _gotoNext = 2634909i32;
                } else if (__value__ == (2634882i32)) {
                    _trunc = true;
                    _gotoNext = 2634909i32;
                } else if (__value__ == (2634909i32)) {
                    _i++;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2634921i32)) {
                    _sawdigits_2634374 = true;
                    _nd_2634394++;
                    if ((_ndMant_2634403 < _maxMantDigits_2634134 : Bool)) {
                        _gotoNext = 2635033i32;
                    } else {
                        _gotoNext = 2635121i32;
                    };
                } else if (__value__ == (2635033i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2634464) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2634403++;
                    _gotoNext = 2635148i32;
                } else if (__value__ == (2635121i32)) {
                    _gotoNext = 2635121i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2635148i32;
                } else if (__value__ == (2635148i32)) {
                    _i++;
                    _gotoNext = 2634431i32;
                } else if (__value__ == (2635163i32)) {
                    _gotoNext = 2635173i32;
                } else if (__value__ == (2635173i32)) {
                    if (!_sawdigits_2634374) {
                        _gotoNext = 2635187i32;
                    } else {
                        _gotoNext = 2635202i32;
                    };
                } else if (__value__ == (2635187i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2635202i32;
                } else if (__value__ == (2635202i32)) {
                    if (!_sawdot_2634357) {
                        _gotoNext = 2635213i32;
                    } else {
                        _gotoNext = 2635230i32;
                    };
                } else if (__value__ == (2635213i32)) {
                    _dp_2634416 = _nd_2634394;
                    _gotoNext = 2635230i32;
                } else if (__value__ == (2635230i32)) {
                    if (_base_2634114 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2635244i32;
                    } else {
                        _gotoNext = 2635489i32;
                    };
                } else if (__value__ == (2635244i32)) {
                    _dp_2634416 = (_dp_2634416 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2634403 = (_ndMant_2634403 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2635489i32;
                } else if (__value__ == (2635489i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2634179) : Bool)) {
                        _gotoNext = 2635529i32;
                    } else if (_base_2634114 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2635962i32;
                    } else {
                        _gotoNext = 2636003i32;
                    };
                } else if (__value__ == (2635529i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2635554i32;
                    } else {
                        _gotoNext = 2635572i32;
                    };
                } else if (__value__ == (2635554i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2635572i32;
                } else if (__value__ == (2635572i32)) {
                    _esign_2635572 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2635600i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2635633i32;
                    } else {
                        _gotoNext = 2635662i32;
                    };
                } else if (__value__ == (2635600i32)) {
                    _i++;
                    _gotoNext = 2635662i32;
                } else if (__value__ == (2635633i32)) {
                    _i++;
                    _esign_2635572 = (-1 : stdgo.GoInt);
                    _gotoNext = 2635662i32;
                } else if (__value__ == (2635662i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2635705i32;
                    } else {
                        _gotoNext = 2635723i32;
                    };
                } else if (__value__ == (2635705i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2635723i32;
                } else if (__value__ == (2635723i32)) {
                    _e_2635723 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2635732i32;
                } else if (__value__ == (2635732i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2635801i32;
                    } else {
                        _gotoNext = 2635924i32;
                    };
                } else if (__value__ == (2635797i32)) {
                    _i++;
                    _gotoNext = 2635732i32;
                } else if (__value__ == (2635801i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2635821i32;
                    } else {
                        _gotoNext = 2635867i32;
                    };
                } else if (__value__ == (2635821i32)) {
                    _underscores_2633955 = true;
                    _i++;
                    _gotoNext = 2635732i32;
                } else if (__value__ == (2635867i32)) {
                    if ((_e_2635723 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2635880i32;
                    } else {
                        _gotoNext = 2635797i32;
                    };
                } else if (__value__ == (2635880i32)) {
                    _e_2635723 = (((_e_2635723 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2635797i32;
                } else if (__value__ == (2635924i32)) {
                    _dp_2634416 = (_dp_2634416 + ((_e_2635723 * _esign_2635572 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2636003i32;
                } else if (__value__ == (2635962i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2636003i32;
                } else if (__value__ == (2636003i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2636020i32;
                    } else {
                        _gotoNext = 2636047i32;
                    };
                } else if (__value__ == (2636020i32)) {
                    _exp = (_dp_2634416 - _ndMant_2634403 : stdgo.GoInt);
                    _gotoNext = 2636047i32;
                } else if (__value__ == (2636047i32)) {
                    if ((_underscores_2633955 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2636086i32;
                    } else {
                        _gotoNext = 2636102i32;
                    };
                } else if (__value__ == (2636086i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2636102i32;
                } else if (__value__ == (2636102i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
