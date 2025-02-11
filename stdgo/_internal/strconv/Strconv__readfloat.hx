package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2662977:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2661209:Bool = false;
        var _loopBreak = false;
        var _ndMant_2661657:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2661648:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2661368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2662826:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2661718:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2661628:Bool = false;
        var _dp_2661670:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2661611:Bool = false;
        var _expChar_2661433:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2661388:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2661209 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2661265i32;
                    } else {
                        _gotoNext = 2661280i32;
                    };
                } else if (__value__ == (2661265i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661280i32;
                } else if (__value__ == (2661280i32)) {
                    _gotoNext = 2661280i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2661290i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2661315i32;
                    } else {
                        _gotoNext = 2661368i32;
                    };
                } else if (__value__ == (2661290i32)) {
                    _i++;
                    _gotoNext = 2661368i32;
                } else if (__value__ == (2661315i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2661368i32;
                } else if (__value__ == (2661368i32)) {
                    _base_2661368 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2661388 = (19 : stdgo.GoInt);
                    _expChar_2661433 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2661510i32;
                    } else {
                        _gotoNext = 2661611i32;
                    };
                } else if (__value__ == (2661510i32)) {
                    _base_2661368 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2661388 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2661433 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2661611i32;
                } else if (__value__ == (2661611i32)) {
                    _sawdot_2661611 = false;
                    _sawdigits_2661628 = false;
                    _nd_2661648 = (0 : stdgo.GoInt);
                    _ndMant_2661657 = (0 : stdgo.GoInt);
                    _dp_2661670 = (0 : stdgo.GoInt);
                    _gotoNext = 2661678i32;
                } else if (__value__ == (2661678i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2661685i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2661707i32;
                    } else {
                        _gotoNext = 2662427i32;
                    };
                } else if (__value__ == (2661707i32)) {
                    _gotoNext = 2661711i32;
                } else if (__value__ == (2661711i32)) {
                    {
                        _c_2661718 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2661718 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2661738i32;
                            } else if (__value__ == (_c_2661718 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2661790i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2661718 : Bool) && (_c_2661718 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2661883i32;
                            } else if (__value__ == (((_base_2661368 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2661718) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2661718) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2662175i32;
                            } else {
                                _gotoNext = 2662417i32;
                            };
                        };
                    };
                } else if (__value__ == (2661738i32)) {
                    _underscores_2661209 = true;
                    _i++;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2661790i32)) {
                    if (_sawdot_2661611) {
                        _gotoNext = 2661818i32;
                    } else {
                        _gotoNext = 2661843i32;
                    };
                } else if (__value__ == (2661818i32)) {
                    _loopBreak = true;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2661843i32)) {
                    _sawdot_2661611 = true;
                    _dp_2661670 = _nd_2661648;
                    _i++;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2661883i32)) {
                    _sawdigits_2661628 = true;
                    if (((_c_2661718 == (48 : stdgo.GoUInt8)) && (_nd_2661648 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2661956i32;
                    } else {
                        _gotoNext = 2662012i32;
                    };
                } else if (__value__ == (2661956i32)) {
                    _dp_2661670--;
                    _i++;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2662012i32)) {
                    _nd_2661648++;
                    if ((_ndMant_2661657 < _maxMantDigits_2661388 : Bool)) {
                        _gotoNext = 2662046i32;
                    } else if (_c_2661718 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2662136i32;
                    } else {
                        _gotoNext = 2662163i32;
                    };
                } else if (__value__ == (2662046i32)) {
                    _mantissa = (_mantissa * (_base_2661368) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2661718 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2661657++;
                    _gotoNext = 2662163i32;
                } else if (__value__ == (2662136i32)) {
                    _trunc = true;
                    _gotoNext = 2662163i32;
                } else if (__value__ == (2662163i32)) {
                    _i++;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2662175i32)) {
                    _sawdigits_2661628 = true;
                    _nd_2661648++;
                    if ((_ndMant_2661657 < _maxMantDigits_2661388 : Bool)) {
                        _gotoNext = 2662287i32;
                    } else {
                        _gotoNext = 2662375i32;
                    };
                } else if (__value__ == (2662287i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2661718) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2661657++;
                    _gotoNext = 2662402i32;
                } else if (__value__ == (2662375i32)) {
                    _gotoNext = 2662375i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2662402i32;
                } else if (__value__ == (2662402i32)) {
                    _i++;
                    _gotoNext = 2661685i32;
                } else if (__value__ == (2662417i32)) {
                    _gotoNext = 2662427i32;
                } else if (__value__ == (2662427i32)) {
                    if (!_sawdigits_2661628) {
                        _gotoNext = 2662441i32;
                    } else {
                        _gotoNext = 2662456i32;
                    };
                } else if (__value__ == (2662441i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662456i32;
                } else if (__value__ == (2662456i32)) {
                    if (!_sawdot_2661611) {
                        _gotoNext = 2662467i32;
                    } else {
                        _gotoNext = 2662484i32;
                    };
                } else if (__value__ == (2662467i32)) {
                    _dp_2661670 = _nd_2661648;
                    _gotoNext = 2662484i32;
                } else if (__value__ == (2662484i32)) {
                    if (_base_2661368 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662498i32;
                    } else {
                        _gotoNext = 2662743i32;
                    };
                } else if (__value__ == (2662498i32)) {
                    _dp_2661670 = (_dp_2661670 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2661657 = (_ndMant_2661657 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2662743i32;
                } else if (__value__ == (2662743i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2661433) : Bool)) {
                        _gotoNext = 2662783i32;
                    } else if (_base_2661368 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2663216i32;
                    } else {
                        _gotoNext = 2663257i32;
                    };
                } else if (__value__ == (2662783i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2662808i32;
                    } else {
                        _gotoNext = 2662826i32;
                    };
                } else if (__value__ == (2662808i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662826i32;
                } else if (__value__ == (2662826i32)) {
                    _esign_2662826 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2662854i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2662887i32;
                    } else {
                        _gotoNext = 2662916i32;
                    };
                } else if (__value__ == (2662854i32)) {
                    _i++;
                    _gotoNext = 2662916i32;
                } else if (__value__ == (2662887i32)) {
                    _i++;
                    _esign_2662826 = (-1 : stdgo.GoInt);
                    _gotoNext = 2662916i32;
                } else if (__value__ == (2662916i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2662959i32;
                    } else {
                        _gotoNext = 2662977i32;
                    };
                } else if (__value__ == (2662959i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662977i32;
                } else if (__value__ == (2662977i32)) {
                    _e_2662977 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2662986i32;
                } else if (__value__ == (2662986i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2663055i32;
                    } else {
                        _gotoNext = 2663178i32;
                    };
                } else if (__value__ == (2663051i32)) {
                    _i++;
                    _gotoNext = 2662986i32;
                } else if (__value__ == (2663055i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2663075i32;
                    } else {
                        _gotoNext = 2663121i32;
                    };
                } else if (__value__ == (2663075i32)) {
                    _underscores_2661209 = true;
                    _i++;
                    _gotoNext = 2662986i32;
                } else if (__value__ == (2663121i32)) {
                    if ((_e_2662977 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2663134i32;
                    } else {
                        _gotoNext = 2663051i32;
                    };
                } else if (__value__ == (2663134i32)) {
                    _e_2662977 = (((_e_2662977 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2663051i32;
                } else if (__value__ == (2663178i32)) {
                    _dp_2661670 = (_dp_2661670 + ((_e_2662977 * _esign_2662826 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2663257i32;
                } else if (__value__ == (2663216i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2663257i32;
                } else if (__value__ == (2663257i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2663274i32;
                    } else {
                        _gotoNext = 2663301i32;
                    };
                } else if (__value__ == (2663274i32)) {
                    _exp = (_dp_2661670 - _ndMant_2661657 : stdgo.GoInt);
                    _gotoNext = 2663301i32;
                } else if (__value__ == (2663301i32)) {
                    if ((_underscores_2661209 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2663340i32;
                    } else {
                        _gotoNext = 2663356i32;
                    };
                } else if (__value__ == (2663340i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2663356i32;
                } else if (__value__ == (2663356i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
