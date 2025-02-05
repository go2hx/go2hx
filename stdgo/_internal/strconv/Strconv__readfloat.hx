package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2680396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2680181:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2681725:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2680418:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2680405:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2680116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2680376:Bool = false;
        var _sawdot_2680359:Bool = false;
        var _esign_2681574:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2680466:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _maxMantDigits_2680136:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2679957:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2679957 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2680013i32;
                    } else {
                        _gotoNext = 2680028i32;
                    };
                } else if (__value__ == (2680013i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680028i32;
                } else if (__value__ == (2680028i32)) {
                    _gotoNext = 2680028i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2680038i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2680063i32;
                    } else {
                        _gotoNext = 2680116i32;
                    };
                } else if (__value__ == (2680038i32)) {
                    _i++;
                    _gotoNext = 2680116i32;
                } else if (__value__ == (2680063i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2680116i32;
                } else if (__value__ == (2680116i32)) {
                    _base_2680116 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2680136 = (19 : stdgo.GoInt);
                    _expChar_2680181 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2680258i32;
                    } else {
                        _gotoNext = 2680359i32;
                    };
                } else if (__value__ == (2680258i32)) {
                    _base_2680116 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2680136 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2680181 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2680359i32;
                } else if (__value__ == (2680359i32)) {
                    _sawdot_2680359 = false;
                    _sawdigits_2680376 = false;
                    _nd_2680396 = (0 : stdgo.GoInt);
                    _ndMant_2680405 = (0 : stdgo.GoInt);
                    _dp_2680418 = (0 : stdgo.GoInt);
                    _gotoNext = 2680426i32;
                } else if (__value__ == (2680426i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2680433i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2680455i32;
                    } else {
                        _gotoNext = 2681175i32;
                    };
                } else if (__value__ == (2680455i32)) {
                    _gotoNext = 2680459i32;
                } else if (__value__ == (2680459i32)) {
                    {
                        _c_2680466 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2680466 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2680486i32;
                            } else if (__value__ == (_c_2680466 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2680538i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2680466 : Bool) && (_c_2680466 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2680631i32;
                            } else if (__value__ == (((_base_2680116 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2680466) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2680466) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2680923i32;
                            } else {
                                _gotoNext = 2681165i32;
                            };
                        };
                    };
                } else if (__value__ == (2680486i32)) {
                    _underscores_2679957 = true;
                    _i++;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2680538i32)) {
                    if (_sawdot_2680359) {
                        _gotoNext = 2680566i32;
                    } else {
                        _gotoNext = 2680591i32;
                    };
                } else if (__value__ == (2680566i32)) {
                    _loopBreak = true;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2680591i32)) {
                    _sawdot_2680359 = true;
                    _dp_2680418 = _nd_2680396;
                    _i++;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2680631i32)) {
                    _sawdigits_2680376 = true;
                    if (((_c_2680466 == (48 : stdgo.GoUInt8)) && (_nd_2680396 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2680704i32;
                    } else {
                        _gotoNext = 2680760i32;
                    };
                } else if (__value__ == (2680704i32)) {
                    _dp_2680418--;
                    _i++;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2680760i32)) {
                    _nd_2680396++;
                    if ((_ndMant_2680405 < _maxMantDigits_2680136 : Bool)) {
                        _gotoNext = 2680794i32;
                    } else if (_c_2680466 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2680884i32;
                    } else {
                        _gotoNext = 2680911i32;
                    };
                } else if (__value__ == (2680794i32)) {
                    _mantissa = (_mantissa * (_base_2680116) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2680466 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2680405++;
                    _gotoNext = 2680911i32;
                } else if (__value__ == (2680884i32)) {
                    _trunc = true;
                    _gotoNext = 2680911i32;
                } else if (__value__ == (2680911i32)) {
                    _i++;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2680923i32)) {
                    _sawdigits_2680376 = true;
                    _nd_2680396++;
                    if ((_ndMant_2680405 < _maxMantDigits_2680136 : Bool)) {
                        _gotoNext = 2681035i32;
                    } else {
                        _gotoNext = 2681123i32;
                    };
                } else if (__value__ == (2681035i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2680466) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2680405++;
                    _gotoNext = 2681150i32;
                } else if (__value__ == (2681123i32)) {
                    _gotoNext = 2681123i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2681150i32;
                } else if (__value__ == (2681150i32)) {
                    _i++;
                    _gotoNext = 2680433i32;
                } else if (__value__ == (2681165i32)) {
                    _gotoNext = 2681175i32;
                } else if (__value__ == (2681175i32)) {
                    if (!_sawdigits_2680376) {
                        _gotoNext = 2681189i32;
                    } else {
                        _gotoNext = 2681204i32;
                    };
                } else if (__value__ == (2681189i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681204i32;
                } else if (__value__ == (2681204i32)) {
                    if (!_sawdot_2680359) {
                        _gotoNext = 2681215i32;
                    } else {
                        _gotoNext = 2681232i32;
                    };
                } else if (__value__ == (2681215i32)) {
                    _dp_2680418 = _nd_2680396;
                    _gotoNext = 2681232i32;
                } else if (__value__ == (2681232i32)) {
                    if (_base_2680116 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2681246i32;
                    } else {
                        _gotoNext = 2681491i32;
                    };
                } else if (__value__ == (2681246i32)) {
                    _dp_2680418 = (_dp_2680418 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2680405 = (_ndMant_2680405 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2681491i32;
                } else if (__value__ == (2681491i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2680181) : Bool)) {
                        _gotoNext = 2681531i32;
                    } else if (_base_2680116 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2681964i32;
                    } else {
                        _gotoNext = 2682005i32;
                    };
                } else if (__value__ == (2681531i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2681556i32;
                    } else {
                        _gotoNext = 2681574i32;
                    };
                } else if (__value__ == (2681556i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681574i32;
                } else if (__value__ == (2681574i32)) {
                    _esign_2681574 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2681602i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2681635i32;
                    } else {
                        _gotoNext = 2681664i32;
                    };
                } else if (__value__ == (2681602i32)) {
                    _i++;
                    _gotoNext = 2681664i32;
                } else if (__value__ == (2681635i32)) {
                    _i++;
                    _esign_2681574 = (-1 : stdgo.GoInt);
                    _gotoNext = 2681664i32;
                } else if (__value__ == (2681664i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2681707i32;
                    } else {
                        _gotoNext = 2681725i32;
                    };
                } else if (__value__ == (2681707i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681725i32;
                } else if (__value__ == (2681725i32)) {
                    _e_2681725 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2681734i32;
                } else if (__value__ == (2681734i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2681803i32;
                    } else {
                        _gotoNext = 2681926i32;
                    };
                } else if (__value__ == (2681799i32)) {
                    _i++;
                    _gotoNext = 2681734i32;
                } else if (__value__ == (2681803i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2681823i32;
                    } else {
                        _gotoNext = 2681869i32;
                    };
                } else if (__value__ == (2681823i32)) {
                    _underscores_2679957 = true;
                    _i++;
                    _gotoNext = 2681734i32;
                } else if (__value__ == (2681869i32)) {
                    if ((_e_2681725 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2681882i32;
                    } else {
                        _gotoNext = 2681799i32;
                    };
                } else if (__value__ == (2681882i32)) {
                    _e_2681725 = (((_e_2681725 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2681799i32;
                } else if (__value__ == (2681926i32)) {
                    _dp_2680418 = (_dp_2680418 + ((_e_2681725 * _esign_2681574 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682005i32;
                } else if (__value__ == (2681964i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682005i32;
                } else if (__value__ == (2682005i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682022i32;
                    } else {
                        _gotoNext = 2682049i32;
                    };
                } else if (__value__ == (2682022i32)) {
                    _exp = (_dp_2680418 - _ndMant_2680405 : stdgo.GoInt);
                    _gotoNext = 2682049i32;
                } else if (__value__ == (2682049i32)) {
                    if ((_underscores_2679957 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2682088i32;
                    } else {
                        _gotoNext = 2682104i32;
                    };
                } else if (__value__ == (2682088i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682104i32;
                } else if (__value__ == (2682104i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
