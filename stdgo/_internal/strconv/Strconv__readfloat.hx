package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_2738531:Bool = false;
        var _maxMantDigits_2738308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2738288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2738548:Bool = false;
        var _e_2739897:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2738568:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2738577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2738353:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2738129:Bool = false;
        var _esign_2739746:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2738590:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2738638:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2738129 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2738185i32;
                    } else {
                        _gotoNext = 2738200i32;
                    };
                } else if (__value__ == (2738185i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738200i32;
                } else if (__value__ == (2738200i32)) {
                    _gotoNext = 2738200i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2738210i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2738235i32;
                    } else {
                        _gotoNext = 2738288i32;
                    };
                } else if (__value__ == (2738210i32)) {
                    _i++;
                    _gotoNext = 2738288i32;
                } else if (__value__ == (2738235i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2738288i32;
                } else if (__value__ == (2738288i32)) {
                    _base_2738288 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2738308 = (19 : stdgo.GoInt);
                    _expChar_2738353 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2738430i32;
                    } else {
                        _gotoNext = 2738531i32;
                    };
                } else if (__value__ == (2738430i32)) {
                    _base_2738288 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2738308 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2738353 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2738531i32;
                } else if (__value__ == (2738531i32)) {
                    _sawdot_2738531 = false;
                    _sawdigits_2738548 = false;
                    _nd_2738568 = (0 : stdgo.GoInt);
                    _ndMant_2738577 = (0 : stdgo.GoInt);
                    _dp_2738590 = (0 : stdgo.GoInt);
                    _gotoNext = 2738598i32;
                } else if (__value__ == (2738598i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2738605i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2738627i32;
                    } else {
                        _gotoNext = 2739347i32;
                    };
                } else if (__value__ == (2738627i32)) {
                    _gotoNext = 2738631i32;
                } else if (__value__ == (2738631i32)) {
                    {
                        _c_2738638 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2738638 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2738658i32;
                            } else if (__value__ == (_c_2738638 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2738710i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2738638 : Bool) && (_c_2738638 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2738803i32;
                            } else if (__value__ == (((_base_2738288 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2738638) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2738638) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2739095i32;
                            } else {
                                _gotoNext = 2739337i32;
                            };
                        };
                    };
                } else if (__value__ == (2738658i32)) {
                    _underscores_2738129 = true;
                    _i++;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2738710i32)) {
                    if (_sawdot_2738531) {
                        _gotoNext = 2738738i32;
                    } else {
                        _gotoNext = 2738763i32;
                    };
                } else if (__value__ == (2738738i32)) {
                    _loopBreak = true;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2738763i32)) {
                    _sawdot_2738531 = true;
                    _dp_2738590 = _nd_2738568;
                    _i++;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2738803i32)) {
                    _sawdigits_2738548 = true;
                    if (((_c_2738638 == (48 : stdgo.GoUInt8)) && (_nd_2738568 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2738876i32;
                    } else {
                        _gotoNext = 2738932i32;
                    };
                } else if (__value__ == (2738876i32)) {
                    _dp_2738590--;
                    _i++;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2738932i32)) {
                    _nd_2738568++;
                    if ((_ndMant_2738577 < _maxMantDigits_2738308 : Bool)) {
                        _gotoNext = 2738966i32;
                    } else if (_c_2738638 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2739056i32;
                    } else {
                        _gotoNext = 2739083i32;
                    };
                } else if (__value__ == (2738966i32)) {
                    _mantissa = (_mantissa * (_base_2738288) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2738638 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2738577++;
                    _gotoNext = 2739083i32;
                } else if (__value__ == (2739056i32)) {
                    _trunc = true;
                    _gotoNext = 2739083i32;
                } else if (__value__ == (2739083i32)) {
                    _i++;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2739095i32)) {
                    _sawdigits_2738548 = true;
                    _nd_2738568++;
                    if ((_ndMant_2738577 < _maxMantDigits_2738308 : Bool)) {
                        _gotoNext = 2739207i32;
                    } else {
                        _gotoNext = 2739295i32;
                    };
                } else if (__value__ == (2739207i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2738638) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2738577++;
                    _gotoNext = 2739322i32;
                } else if (__value__ == (2739295i32)) {
                    _gotoNext = 2739295i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2739322i32;
                } else if (__value__ == (2739322i32)) {
                    _i++;
                    _gotoNext = 2738605i32;
                } else if (__value__ == (2739337i32)) {
                    _gotoNext = 2739347i32;
                } else if (__value__ == (2739347i32)) {
                    if (!_sawdigits_2738548) {
                        _gotoNext = 2739361i32;
                    } else {
                        _gotoNext = 2739376i32;
                    };
                } else if (__value__ == (2739361i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739376i32;
                } else if (__value__ == (2739376i32)) {
                    if (!_sawdot_2738531) {
                        _gotoNext = 2739387i32;
                    } else {
                        _gotoNext = 2739404i32;
                    };
                } else if (__value__ == (2739387i32)) {
                    _dp_2738590 = _nd_2738568;
                    _gotoNext = 2739404i32;
                } else if (__value__ == (2739404i32)) {
                    if (_base_2738288 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2739418i32;
                    } else {
                        _gotoNext = 2739663i32;
                    };
                } else if (__value__ == (2739418i32)) {
                    _dp_2738590 = (_dp_2738590 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2738577 = (_ndMant_2738577 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2739663i32;
                } else if (__value__ == (2739663i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2738353) : Bool)) {
                        _gotoNext = 2739703i32;
                    } else if (_base_2738288 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2740136i32;
                    } else {
                        _gotoNext = 2740177i32;
                    };
                } else if (__value__ == (2739703i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2739728i32;
                    } else {
                        _gotoNext = 2739746i32;
                    };
                } else if (__value__ == (2739728i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739746i32;
                } else if (__value__ == (2739746i32)) {
                    _esign_2739746 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2739774i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2739807i32;
                    } else {
                        _gotoNext = 2739836i32;
                    };
                } else if (__value__ == (2739774i32)) {
                    _i++;
                    _gotoNext = 2739836i32;
                } else if (__value__ == (2739807i32)) {
                    _i++;
                    _esign_2739746 = (-1 : stdgo.GoInt);
                    _gotoNext = 2739836i32;
                } else if (__value__ == (2739836i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2739879i32;
                    } else {
                        _gotoNext = 2739897i32;
                    };
                } else if (__value__ == (2739879i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739897i32;
                } else if (__value__ == (2739897i32)) {
                    _e_2739897 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2739906i32;
                } else if (__value__ == (2739906i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2739975i32;
                    } else {
                        _gotoNext = 2740098i32;
                    };
                } else if (__value__ == (2739971i32)) {
                    _i++;
                    _gotoNext = 2739906i32;
                } else if (__value__ == (2739975i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2739995i32;
                    } else {
                        _gotoNext = 2740041i32;
                    };
                } else if (__value__ == (2739995i32)) {
                    _underscores_2738129 = true;
                    _i++;
                    _gotoNext = 2739906i32;
                } else if (__value__ == (2740041i32)) {
                    if ((_e_2739897 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2740054i32;
                    } else {
                        _gotoNext = 2739971i32;
                    };
                } else if (__value__ == (2740054i32)) {
                    _e_2739897 = (((_e_2739897 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2739971i32;
                } else if (__value__ == (2740098i32)) {
                    _dp_2738590 = (_dp_2738590 + ((_e_2739897 * _esign_2739746 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2740177i32;
                } else if (__value__ == (2740136i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2740177i32;
                } else if (__value__ == (2740177i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2740194i32;
                    } else {
                        _gotoNext = 2740221i32;
                    };
                } else if (__value__ == (2740194i32)) {
                    _exp = (_dp_2738590 - _ndMant_2738577 : stdgo.GoInt);
                    _gotoNext = 2740221i32;
                } else if (__value__ == (2740221i32)) {
                    if ((_underscores_2738129 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2740260i32;
                    } else {
                        _gotoNext = 2740276i32;
                    };
                } else if (__value__ == (2740260i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2740276i32;
                } else if (__value__ == (2740276i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
