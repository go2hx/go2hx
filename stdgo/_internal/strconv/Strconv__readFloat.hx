package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _underscores_2730507:Bool = false;
        var _dp_2730968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2730955:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2730926:Bool = false;
        var _sawdot_2730909:Bool = false;
        var _expChar_2730731:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2732275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2730946:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2730686:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2730666:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2732124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2731016:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2730507 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2730563i32;
                    } else {
                        _gotoNext = 2730578i32;
                    };
                } else if (__value__ == (2730563i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2730578i32;
                } else if (__value__ == (2730578i32)) {
                    _gotoNext = 2730578i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2730588i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2730613i32;
                    } else {
                        _gotoNext = 2730666i32;
                    };
                } else if (__value__ == (2730588i32)) {
                    _i++;
                    _gotoNext = 2730666i32;
                } else if (__value__ == (2730613i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2730666i32;
                } else if (__value__ == (2730666i32)) {
                    _base_2730666 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2730686 = (19 : stdgo.GoInt);
                    _expChar_2730731 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2730808i32;
                    } else {
                        _gotoNext = 2730909i32;
                    };
                } else if (__value__ == (2730808i32)) {
                    _base_2730666 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2730686 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2730731 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2730909i32;
                } else if (__value__ == (2730909i32)) {
                    _sawdot_2730909 = false;
                    _sawdigits_2730926 = false;
                    _nd_2730946 = (0 : stdgo.GoInt);
                    _ndMant_2730955 = (0 : stdgo.GoInt);
                    _dp_2730968 = (0 : stdgo.GoInt);
                    _gotoNext = 2730976i32;
                } else if (__value__ == (2730976i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2730983i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2731005i32;
                    } else {
                        _gotoNext = 2731725i32;
                    };
                } else if (__value__ == (2731005i32)) {
                    _gotoNext = 2731009i32;
                } else if (__value__ == (2731009i32)) {
                    {
                        _c_2731016 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2731016 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2731036i32;
                            } else if (__value__ == (_c_2731016 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2731088i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2731016 : Bool) && (_c_2731016 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2731181i32;
                            } else if (__value__ == (((_base_2730666 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2731016) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2731016) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2731473i32;
                            } else {
                                _gotoNext = 2731715i32;
                            };
                        };
                    };
                } else if (__value__ == (2731036i32)) {
                    _underscores_2730507 = true;
                    _i++;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2731088i32)) {
                    if (_sawdot_2730909) {
                        _gotoNext = 2731116i32;
                    } else {
                        _gotoNext = 2731141i32;
                    };
                } else if (__value__ == (2731116i32)) {
                    _loopBreak = true;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2731141i32)) {
                    _sawdot_2730909 = true;
                    _dp_2730968 = _nd_2730946;
                    _i++;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2731181i32)) {
                    _sawdigits_2730926 = true;
                    if (((_c_2731016 == (48 : stdgo.GoUInt8)) && (_nd_2730946 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2731254i32;
                    } else {
                        _gotoNext = 2731310i32;
                    };
                } else if (__value__ == (2731254i32)) {
                    _dp_2730968--;
                    _i++;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2731310i32)) {
                    _nd_2730946++;
                    if ((_ndMant_2730955 < _maxMantDigits_2730686 : Bool)) {
                        _gotoNext = 2731344i32;
                    } else if (_c_2731016 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2731434i32;
                    } else {
                        _gotoNext = 2731461i32;
                    };
                } else if (__value__ == (2731344i32)) {
                    _mantissa = (_mantissa * (_base_2730666) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2731016 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2730955++;
                    _gotoNext = 2731461i32;
                } else if (__value__ == (2731434i32)) {
                    _trunc = true;
                    _gotoNext = 2731461i32;
                } else if (__value__ == (2731461i32)) {
                    _i++;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2731473i32)) {
                    _sawdigits_2730926 = true;
                    _nd_2730946++;
                    if ((_ndMant_2730955 < _maxMantDigits_2730686 : Bool)) {
                        _gotoNext = 2731585i32;
                    } else {
                        _gotoNext = 2731673i32;
                    };
                } else if (__value__ == (2731585i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2731016) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2730955++;
                    _gotoNext = 2731700i32;
                } else if (__value__ == (2731673i32)) {
                    _gotoNext = 2731673i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2731700i32;
                } else if (__value__ == (2731700i32)) {
                    _i++;
                    _gotoNext = 2730983i32;
                } else if (__value__ == (2731715i32)) {
                    _gotoNext = 2731725i32;
                } else if (__value__ == (2731725i32)) {
                    if (!_sawdigits_2730926) {
                        _gotoNext = 2731739i32;
                    } else {
                        _gotoNext = 2731754i32;
                    };
                } else if (__value__ == (2731739i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2731754i32;
                } else if (__value__ == (2731754i32)) {
                    if (!_sawdot_2730909) {
                        _gotoNext = 2731765i32;
                    } else {
                        _gotoNext = 2731782i32;
                    };
                } else if (__value__ == (2731765i32)) {
                    _dp_2730968 = _nd_2730946;
                    _gotoNext = 2731782i32;
                } else if (__value__ == (2731782i32)) {
                    if (_base_2730666 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2731796i32;
                    } else {
                        _gotoNext = 2732041i32;
                    };
                } else if (__value__ == (2731796i32)) {
                    _dp_2730968 = (_dp_2730968 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2730955 = (_ndMant_2730955 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2732041i32;
                } else if (__value__ == (2732041i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2730731) : Bool)) {
                        _gotoNext = 2732081i32;
                    } else if (_base_2730666 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2732514i32;
                    } else {
                        _gotoNext = 2732555i32;
                    };
                } else if (__value__ == (2732081i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2732106i32;
                    } else {
                        _gotoNext = 2732124i32;
                    };
                } else if (__value__ == (2732106i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2732124i32;
                } else if (__value__ == (2732124i32)) {
                    _esign_2732124 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2732152i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2732185i32;
                    } else {
                        _gotoNext = 2732214i32;
                    };
                } else if (__value__ == (2732152i32)) {
                    _i++;
                    _gotoNext = 2732214i32;
                } else if (__value__ == (2732185i32)) {
                    _i++;
                    _esign_2732124 = (-1 : stdgo.GoInt);
                    _gotoNext = 2732214i32;
                } else if (__value__ == (2732214i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2732257i32;
                    } else {
                        _gotoNext = 2732275i32;
                    };
                } else if (__value__ == (2732257i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2732275i32;
                } else if (__value__ == (2732275i32)) {
                    _e_2732275 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2732284i32;
                } else if (__value__ == (2732284i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2732353i32;
                    } else {
                        _gotoNext = 2732476i32;
                    };
                } else if (__value__ == (2732349i32)) {
                    _i++;
                    _gotoNext = 2732284i32;
                } else if (__value__ == (2732353i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2732373i32;
                    } else {
                        _gotoNext = 2732419i32;
                    };
                } else if (__value__ == (2732373i32)) {
                    _underscores_2730507 = true;
                    _i++;
                    _gotoNext = 2732284i32;
                } else if (__value__ == (2732419i32)) {
                    if ((_e_2732275 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2732432i32;
                    } else {
                        _gotoNext = 2732349i32;
                    };
                } else if (__value__ == (2732432i32)) {
                    _e_2732275 = (((_e_2732275 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2732349i32;
                } else if (__value__ == (2732476i32)) {
                    _dp_2730968 = (_dp_2730968 + ((_e_2732275 * _esign_2732124 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2732555i32;
                } else if (__value__ == (2732514i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2732555i32;
                } else if (__value__ == (2732555i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2732572i32;
                    } else {
                        _gotoNext = 2732599i32;
                    };
                } else if (__value__ == (2732572i32)) {
                    _exp = (_dp_2730968 - _ndMant_2730955 : stdgo.GoInt);
                    _gotoNext = 2732599i32;
                } else if (__value__ == (2732599i32)) {
                    if ((_underscores_2730507 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2732638i32;
                    } else {
                        _gotoNext = 2732654i32;
                    };
                } else if (__value__ == (2732638i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2732654i32;
                } else if (__value__ == (2732654i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
