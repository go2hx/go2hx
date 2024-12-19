package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2658789:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2658574:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2658769:Bool = false;
        var _maxMantDigits_2658529:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2660118:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2658859:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2658798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2658752:Bool = false;
        var _base_2658509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2659967:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2658811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2658350:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2658350 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2658406i32;
                    } else {
                        _gotoNext = 2658421i32;
                    };
                } else if (__value__ == (2658406i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658421i32;
                } else if (__value__ == (2658421i32)) {
                    _gotoNext = 2658421i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2658431i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2658456i32;
                    } else {
                        _gotoNext = 2658509i32;
                    };
                } else if (__value__ == (2658431i32)) {
                    _i++;
                    _gotoNext = 2658509i32;
                } else if (__value__ == (2658456i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2658509i32;
                } else if (__value__ == (2658509i32)) {
                    _base_2658509 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2658529 = (19 : stdgo.GoInt);
                    _expChar_2658574 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2658651i32;
                    } else {
                        _gotoNext = 2658752i32;
                    };
                } else if (__value__ == (2658651i32)) {
                    _base_2658509 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2658529 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2658574 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2658752i32;
                } else if (__value__ == (2658752i32)) {
                    _sawdot_2658752 = false;
                    _sawdigits_2658769 = false;
                    _nd_2658789 = (0 : stdgo.GoInt);
                    _ndMant_2658798 = (0 : stdgo.GoInt);
                    _dp_2658811 = (0 : stdgo.GoInt);
                    _gotoNext = 2658819i32;
                } else if (__value__ == (2658819i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2658826i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2658848i32;
                    } else {
                        _gotoNext = 2659568i32;
                    };
                } else if (__value__ == (2658848i32)) {
                    _gotoNext = 2658852i32;
                } else if (__value__ == (2658852i32)) {
                    {
                        _c_2658859 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2658859 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2658879i32;
                            } else if (__value__ == (_c_2658859 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2658931i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2658859 : Bool) && (_c_2658859 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659024i32;
                            } else if (__value__ == (((_base_2658509 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2658859) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2658859) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659316i32;
                            } else {
                                _gotoNext = 2659558i32;
                            };
                        };
                    };
                } else if (__value__ == (2658879i32)) {
                    _underscores_2658350 = true;
                    _i++;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2658931i32)) {
                    if (_sawdot_2658752) {
                        _gotoNext = 2658959i32;
                    } else {
                        _gotoNext = 2658984i32;
                    };
                } else if (__value__ == (2658959i32)) {
                    _loopBreak = true;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2658984i32)) {
                    _sawdot_2658752 = true;
                    _dp_2658811 = _nd_2658789;
                    _i++;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2659024i32)) {
                    _sawdigits_2658769 = true;
                    if (((_c_2658859 == (48 : stdgo.GoUInt8)) && (_nd_2658789 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2659097i32;
                    } else {
                        _gotoNext = 2659153i32;
                    };
                } else if (__value__ == (2659097i32)) {
                    _dp_2658811--;
                    _i++;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2659153i32)) {
                    _nd_2658789++;
                    if ((_ndMant_2658798 < _maxMantDigits_2658529 : Bool)) {
                        _gotoNext = 2659187i32;
                    } else if (_c_2658859 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2659277i32;
                    } else {
                        _gotoNext = 2659304i32;
                    };
                } else if (__value__ == (2659187i32)) {
                    _mantissa = (_mantissa * (_base_2658509) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2658859 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2658798++;
                    _gotoNext = 2659304i32;
                } else if (__value__ == (2659277i32)) {
                    _trunc = true;
                    _gotoNext = 2659304i32;
                } else if (__value__ == (2659304i32)) {
                    _i++;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2659316i32)) {
                    _sawdigits_2658769 = true;
                    _nd_2658789++;
                    if ((_ndMant_2658798 < _maxMantDigits_2658529 : Bool)) {
                        _gotoNext = 2659428i32;
                    } else {
                        _gotoNext = 2659516i32;
                    };
                } else if (__value__ == (2659428i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2658859) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2658798++;
                    _gotoNext = 2659543i32;
                } else if (__value__ == (2659516i32)) {
                    _gotoNext = 2659516i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2659543i32;
                } else if (__value__ == (2659543i32)) {
                    _i++;
                    _gotoNext = 2658826i32;
                } else if (__value__ == (2659558i32)) {
                    _gotoNext = 2659568i32;
                } else if (__value__ == (2659568i32)) {
                    if (!_sawdigits_2658769) {
                        _gotoNext = 2659582i32;
                    } else {
                        _gotoNext = 2659597i32;
                    };
                } else if (__value__ == (2659582i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659597i32;
                } else if (__value__ == (2659597i32)) {
                    if (!_sawdot_2658752) {
                        _gotoNext = 2659608i32;
                    } else {
                        _gotoNext = 2659625i32;
                    };
                } else if (__value__ == (2659608i32)) {
                    _dp_2658811 = _nd_2658789;
                    _gotoNext = 2659625i32;
                } else if (__value__ == (2659625i32)) {
                    if (_base_2658509 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2659639i32;
                    } else {
                        _gotoNext = 2659884i32;
                    };
                } else if (__value__ == (2659639i32)) {
                    _dp_2658811 = (_dp_2658811 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2658798 = (_ndMant_2658798 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2659884i32;
                } else if (__value__ == (2659884i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2658574) : Bool)) {
                        _gotoNext = 2659924i32;
                    } else if (_base_2658509 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660357i32;
                    } else {
                        _gotoNext = 2660398i32;
                    };
                } else if (__value__ == (2659924i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2659949i32;
                    } else {
                        _gotoNext = 2659967i32;
                    };
                } else if (__value__ == (2659949i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659967i32;
                } else if (__value__ == (2659967i32)) {
                    _esign_2659967 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2659995i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660028i32;
                    } else {
                        _gotoNext = 2660057i32;
                    };
                } else if (__value__ == (2659995i32)) {
                    _i++;
                    _gotoNext = 2660057i32;
                } else if (__value__ == (2660028i32)) {
                    _i++;
                    _esign_2659967 = (-1 : stdgo.GoInt);
                    _gotoNext = 2660057i32;
                } else if (__value__ == (2660057i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2660100i32;
                    } else {
                        _gotoNext = 2660118i32;
                    };
                } else if (__value__ == (2660100i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660118i32;
                } else if (__value__ == (2660118i32)) {
                    _e_2660118 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2660127i32;
                } else if (__value__ == (2660127i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2660196i32;
                    } else {
                        _gotoNext = 2660319i32;
                    };
                } else if (__value__ == (2660192i32)) {
                    _i++;
                    _gotoNext = 2660127i32;
                } else if (__value__ == (2660196i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2660216i32;
                    } else {
                        _gotoNext = 2660262i32;
                    };
                } else if (__value__ == (2660216i32)) {
                    _underscores_2658350 = true;
                    _i++;
                    _gotoNext = 2660127i32;
                } else if (__value__ == (2660262i32)) {
                    if ((_e_2660118 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2660275i32;
                    } else {
                        _gotoNext = 2660192i32;
                    };
                } else if (__value__ == (2660275i32)) {
                    _e_2660118 = (((_e_2660118 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2660192i32;
                } else if (__value__ == (2660319i32)) {
                    _dp_2658811 = (_dp_2658811 + ((_e_2660118 * _esign_2659967 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660398i32;
                } else if (__value__ == (2660357i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660398i32;
                } else if (__value__ == (2660398i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660415i32;
                    } else {
                        _gotoNext = 2660442i32;
                    };
                } else if (__value__ == (2660415i32)) {
                    _exp = (_dp_2658811 - _ndMant_2658798 : stdgo.GoInt);
                    _gotoNext = 2660442i32;
                } else if (__value__ == (2660442i32)) {
                    if ((_underscores_2658350 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2660481i32;
                    } else {
                        _gotoNext = 2660497i32;
                    };
                } else if (__value__ == (2660481i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660497i32;
                } else if (__value__ == (2660497i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
