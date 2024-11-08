package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2605907:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2605894:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2605848:Bool = false;
        var _base_2605605:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2605446:Bool = false;
        var _e_2607214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2607063:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2605955:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2605885:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2605865:Bool = false;
        var _expChar_2605670:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2605625:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2605446 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2605502i32;
                    } else {
                        _gotoNext = 2605517i32;
                    };
                } else if (__value__ == (2605502i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2605517i32;
                } else if (__value__ == (2605517i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2605517i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2605527i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2605552i32;
                    } else {
                        _gotoNext = 2605605i32;
                    };
                } else if (__value__ == (2605527i32)) {
                    _i++;
                    _gotoNext = 2605605i32;
                } else if (__value__ == (2605552i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2605605i32;
                } else if (__value__ == (2605605i32)) {
                    _base_2605605 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2605625 = (19 : stdgo.GoInt);
                    _expChar_2605670 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2605747i32;
                    } else {
                        _gotoNext = 2605848i32;
                    };
                } else if (__value__ == (2605747i32)) {
                    _base_2605605 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2605625 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2605670 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2605848i32;
                } else if (__value__ == (2605848i32)) {
                    _sawdot_2605848 = false;
                    _sawdigits_2605865 = false;
                    _nd_2605885 = (0 : stdgo.GoInt);
                    _ndMant_2605894 = (0 : stdgo.GoInt);
                    _dp_2605907 = (0 : stdgo.GoInt);
                    _gotoNext = 2605915i32;
                } else if (__value__ == (2605915i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2605922i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2605944i32;
                    } else {
                        _gotoNext = 2606664i32;
                    };
                } else if (__value__ == (2605944i32)) {
                    _c_2605955 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2605948i32;
                } else if (__value__ == (2605948i32)) {
                    {
                        _c_2605955 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2605955 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2605975i32;
                            } else if (__value__ == (_c_2605955 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2606027i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2605955 : Bool) && (_c_2605955 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2606120i32;
                            } else if (__value__ == (((_base_2605605 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2605955) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2605955) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2606412i32;
                            } else {
                                _gotoNext = 2606654i32;
                            };
                        };
                    };
                } else if (__value__ == (2605975i32)) {
                    _underscores_2605446 = true;
                    _i++;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2606027i32)) {
                    if (_sawdot_2605848) {
                        _gotoNext = 2606055i32;
                    } else {
                        _gotoNext = 2606080i32;
                    };
                } else if (__value__ == (2606055i32)) {
                    _loopBreak = true;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2606080i32)) {
                    _sawdot_2605848 = true;
                    _dp_2605907 = _nd_2605885;
                    _i++;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2606120i32)) {
                    _sawdigits_2605865 = true;
                    if (((_c_2605955 == (48 : stdgo.GoUInt8)) && (_nd_2605885 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2606193i32;
                    } else {
                        _gotoNext = 2606249i32;
                    };
                } else if (__value__ == (2606193i32)) {
                    _dp_2605907--;
                    _i++;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2606249i32)) {
                    _nd_2605885++;
                    if ((_ndMant_2605894 < _maxMantDigits_2605625 : Bool)) {
                        _gotoNext = 2606283i32;
                    } else if (_c_2605955 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2606373i32;
                    } else {
                        _gotoNext = 2606400i32;
                    };
                } else if (__value__ == (2606283i32)) {
                    _mantissa = (_mantissa * (_base_2605605) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2605955 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2605894++;
                    _gotoNext = 2606400i32;
                } else if (__value__ == (2606373i32)) {
                    _trunc = true;
                    _gotoNext = 2606400i32;
                } else if (__value__ == (2606400i32)) {
                    _i++;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2606412i32)) {
                    _sawdigits_2605865 = true;
                    _nd_2605885++;
                    if ((_ndMant_2605894 < _maxMantDigits_2605625 : Bool)) {
                        _gotoNext = 2606524i32;
                    } else {
                        _gotoNext = 2606612i32;
                    };
                } else if (__value__ == (2606524i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2605955) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2605894++;
                    _gotoNext = 2606639i32;
                } else if (__value__ == (2606612i32)) {
                    _gotoNext = 2606612i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2606639i32;
                } else if (__value__ == (2606639i32)) {
                    _i++;
                    _gotoNext = 2605922i32;
                } else if (__value__ == (2606654i32)) {
                    _gotoNext = 2606664i32;
                } else if (__value__ == (2606664i32)) {
                    if (!_sawdigits_2605865) {
                        _gotoNext = 2606678i32;
                    } else {
                        _gotoNext = 2606693i32;
                    };
                } else if (__value__ == (2606678i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2606693i32;
                } else if (__value__ == (2606693i32)) {
                    if (!_sawdot_2605848) {
                        _gotoNext = 2606704i32;
                    } else {
                        _gotoNext = 2606721i32;
                    };
                } else if (__value__ == (2606704i32)) {
                    _dp_2605907 = _nd_2605885;
                    _gotoNext = 2606721i32;
                } else if (__value__ == (2606721i32)) {
                    if (_base_2605605 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2606735i32;
                    } else {
                        _gotoNext = 2606980i32;
                    };
                } else if (__value__ == (2606735i32)) {
                    _dp_2605907 = (_dp_2605907 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2605894 = (_ndMant_2605894 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2606980i32;
                } else if (__value__ == (2606980i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2605670) : Bool)) {
                        _gotoNext = 2607020i32;
                    } else if (_base_2605605 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2607453i32;
                    } else {
                        _gotoNext = 2607494i32;
                    };
                } else if (__value__ == (2607020i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2607045i32;
                    } else {
                        _gotoNext = 2607063i32;
                    };
                } else if (__value__ == (2607045i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2607063i32;
                } else if (__value__ == (2607063i32)) {
                    _esign_2607063 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2607091i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2607124i32;
                    } else {
                        _gotoNext = 2607153i32;
                    };
                } else if (__value__ == (2607091i32)) {
                    _i++;
                    _gotoNext = 2607153i32;
                } else if (__value__ == (2607124i32)) {
                    _i++;
                    _esign_2607063 = (-1 : stdgo.GoInt);
                    _gotoNext = 2607153i32;
                } else if (__value__ == (2607153i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2607196i32;
                    } else {
                        _gotoNext = 2607214i32;
                    };
                } else if (__value__ == (2607196i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2607214i32;
                } else if (__value__ == (2607214i32)) {
                    _e_2607214 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2607223i32;
                } else if (__value__ == (2607223i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2607292i32;
                    } else {
                        _gotoNext = 2607415i32;
                    };
                } else if (__value__ == (2607288i32)) {
                    _i++;
                    _gotoNext = 2607223i32;
                } else if (__value__ == (2607292i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2607312i32;
                    } else {
                        _gotoNext = 2607358i32;
                    };
                } else if (__value__ == (2607312i32)) {
                    _underscores_2605446 = true;
                    _i++;
                    _gotoNext = 2607223i32;
                } else if (__value__ == (2607358i32)) {
                    if ((_e_2607214 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2607371i32;
                    } else {
                        _gotoNext = 2607288i32;
                    };
                } else if (__value__ == (2607371i32)) {
                    _e_2607214 = (((_e_2607214 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2607288i32;
                } else if (__value__ == (2607415i32)) {
                    _dp_2605907 = (_dp_2605907 + ((_e_2607214 * _esign_2607063 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2607494i32;
                } else if (__value__ == (2607453i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2607494i32;
                } else if (__value__ == (2607494i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2607511i32;
                    } else {
                        _gotoNext = 2607538i32;
                    };
                } else if (__value__ == (2607511i32)) {
                    _exp = (_dp_2605907 - _ndMant_2605894 : stdgo.GoInt);
                    _gotoNext = 2607538i32;
                } else if (__value__ == (2607538i32)) {
                    if ((_underscores_2605446 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2607577i32;
                    } else {
                        _gotoNext = 2607593i32;
                    };
                } else if (__value__ == (2607577i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2607593i32;
                } else if (__value__ == (2607593i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
