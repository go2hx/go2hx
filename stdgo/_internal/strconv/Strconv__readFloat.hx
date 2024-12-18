package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2642320:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2642169:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2641000:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2640971:Bool = false;
        var _c_2641061:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2640711:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nd_2640991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2640954:Bool = false;
        var _loopBreak = false;
        var _dp_2641013:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2640776:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2640731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2640552:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2640552 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2640608i32;
                    } else {
                        _gotoNext = 2640623i32;
                    };
                } else if (__value__ == (2640608i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640623i32;
                } else if (__value__ == (2640623i32)) {
                    _gotoNext = 2640623i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2640633i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2640658i32;
                    } else {
                        _gotoNext = 2640711i32;
                    };
                } else if (__value__ == (2640633i32)) {
                    _i++;
                    _gotoNext = 2640711i32;
                } else if (__value__ == (2640658i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2640711i32;
                } else if (__value__ == (2640711i32)) {
                    _base_2640711 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2640731 = (19 : stdgo.GoInt);
                    _expChar_2640776 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2640853i32;
                    } else {
                        _gotoNext = 2640954i32;
                    };
                } else if (__value__ == (2640853i32)) {
                    _base_2640711 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2640731 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2640776 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2640954i32;
                } else if (__value__ == (2640954i32)) {
                    _sawdot_2640954 = false;
                    _sawdigits_2640971 = false;
                    _nd_2640991 = (0 : stdgo.GoInt);
                    _ndMant_2641000 = (0 : stdgo.GoInt);
                    _dp_2641013 = (0 : stdgo.GoInt);
                    _gotoNext = 2641021i32;
                } else if (__value__ == (2641021i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641028i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2641050i32;
                    } else {
                        _gotoNext = 2641770i32;
                    };
                } else if (__value__ == (2641050i32)) {
                    _gotoNext = 2641054i32;
                } else if (__value__ == (2641054i32)) {
                    {
                        _c_2641061 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2641061 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2641081i32;
                            } else if (__value__ == (_c_2641061 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2641133i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2641061 : Bool) && (_c_2641061 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2641226i32;
                            } else if (__value__ == (((_base_2640711 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2641061) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2641061) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2641518i32;
                            } else {
                                _gotoNext = 2641760i32;
                            };
                        };
                    };
                } else if (__value__ == (2641081i32)) {
                    _underscores_2640552 = true;
                    _i++;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641133i32)) {
                    if (_sawdot_2640954) {
                        _gotoNext = 2641161i32;
                    } else {
                        _gotoNext = 2641186i32;
                    };
                } else if (__value__ == (2641161i32)) {
                    _loopBreak = true;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641186i32)) {
                    _sawdot_2640954 = true;
                    _dp_2641013 = _nd_2640991;
                    _i++;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641226i32)) {
                    _sawdigits_2640971 = true;
                    if (((_c_2641061 == (48 : stdgo.GoUInt8)) && (_nd_2640991 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2641299i32;
                    } else {
                        _gotoNext = 2641355i32;
                    };
                } else if (__value__ == (2641299i32)) {
                    _dp_2641013--;
                    _i++;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641355i32)) {
                    _nd_2640991++;
                    if ((_ndMant_2641000 < _maxMantDigits_2640731 : Bool)) {
                        _gotoNext = 2641389i32;
                    } else if (_c_2641061 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2641479i32;
                    } else {
                        _gotoNext = 2641506i32;
                    };
                } else if (__value__ == (2641389i32)) {
                    _mantissa = (_mantissa * (_base_2640711) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2641061 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2641000++;
                    _gotoNext = 2641506i32;
                } else if (__value__ == (2641479i32)) {
                    _trunc = true;
                    _gotoNext = 2641506i32;
                } else if (__value__ == (2641506i32)) {
                    _i++;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641518i32)) {
                    _sawdigits_2640971 = true;
                    _nd_2640991++;
                    if ((_ndMant_2641000 < _maxMantDigits_2640731 : Bool)) {
                        _gotoNext = 2641630i32;
                    } else {
                        _gotoNext = 2641718i32;
                    };
                } else if (__value__ == (2641630i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2641061) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2641000++;
                    _gotoNext = 2641745i32;
                } else if (__value__ == (2641718i32)) {
                    _gotoNext = 2641718i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2641745i32;
                } else if (__value__ == (2641745i32)) {
                    _i++;
                    _gotoNext = 2641028i32;
                } else if (__value__ == (2641760i32)) {
                    _gotoNext = 2641770i32;
                } else if (__value__ == (2641770i32)) {
                    if (!_sawdigits_2640971) {
                        _gotoNext = 2641784i32;
                    } else {
                        _gotoNext = 2641799i32;
                    };
                } else if (__value__ == (2641784i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641799i32;
                } else if (__value__ == (2641799i32)) {
                    if (!_sawdot_2640954) {
                        _gotoNext = 2641810i32;
                    } else {
                        _gotoNext = 2641827i32;
                    };
                } else if (__value__ == (2641810i32)) {
                    _dp_2641013 = _nd_2640991;
                    _gotoNext = 2641827i32;
                } else if (__value__ == (2641827i32)) {
                    if (_base_2640711 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641841i32;
                    } else {
                        _gotoNext = 2642086i32;
                    };
                } else if (__value__ == (2641841i32)) {
                    _dp_2641013 = (_dp_2641013 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2641000 = (_ndMant_2641000 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2642086i32;
                } else if (__value__ == (2642086i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2640776) : Bool)) {
                        _gotoNext = 2642126i32;
                    } else if (_base_2640711 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2642559i32;
                    } else {
                        _gotoNext = 2642600i32;
                    };
                } else if (__value__ == (2642126i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2642151i32;
                    } else {
                        _gotoNext = 2642169i32;
                    };
                } else if (__value__ == (2642151i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642169i32;
                } else if (__value__ == (2642169i32)) {
                    _esign_2642169 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2642197i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2642230i32;
                    } else {
                        _gotoNext = 2642259i32;
                    };
                } else if (__value__ == (2642197i32)) {
                    _i++;
                    _gotoNext = 2642259i32;
                } else if (__value__ == (2642230i32)) {
                    _i++;
                    _esign_2642169 = (-1 : stdgo.GoInt);
                    _gotoNext = 2642259i32;
                } else if (__value__ == (2642259i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2642302i32;
                    } else {
                        _gotoNext = 2642320i32;
                    };
                } else if (__value__ == (2642302i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642320i32;
                } else if (__value__ == (2642320i32)) {
                    _e_2642320 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2642329i32;
                } else if (__value__ == (2642329i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2642398i32;
                    } else {
                        _gotoNext = 2642521i32;
                    };
                } else if (__value__ == (2642394i32)) {
                    _i++;
                    _gotoNext = 2642329i32;
                } else if (__value__ == (2642398i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2642418i32;
                    } else {
                        _gotoNext = 2642464i32;
                    };
                } else if (__value__ == (2642418i32)) {
                    _underscores_2640552 = true;
                    _i++;
                    _gotoNext = 2642329i32;
                } else if (__value__ == (2642464i32)) {
                    if ((_e_2642320 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2642477i32;
                    } else {
                        _gotoNext = 2642394i32;
                    };
                } else if (__value__ == (2642477i32)) {
                    _e_2642320 = (((_e_2642320 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2642394i32;
                } else if (__value__ == (2642521i32)) {
                    _dp_2641013 = (_dp_2641013 + ((_e_2642320 * _esign_2642169 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2642600i32;
                } else if (__value__ == (2642559i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642600i32;
                } else if (__value__ == (2642600i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2642617i32;
                    } else {
                        _gotoNext = 2642644i32;
                    };
                } else if (__value__ == (2642617i32)) {
                    _exp = (_dp_2641013 - _ndMant_2641000 : stdgo.GoInt);
                    _gotoNext = 2642644i32;
                } else if (__value__ == (2642644i32)) {
                    if ((_underscores_2640552 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2642683i32;
                    } else {
                        _gotoNext = 2642699i32;
                    };
                } else if (__value__ == (2642683i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642699i32;
                } else if (__value__ == (2642699i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
