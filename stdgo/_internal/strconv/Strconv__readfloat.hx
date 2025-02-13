package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2630221:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2629113:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2628783:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2629065:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2629043:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2629006:Bool = false;
        var _base_2628763:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _expChar_2628828:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2630372:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2629052:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2629023:Bool = false;
        var _underscores_2628604:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2628604 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2628660i32;
                    } else {
                        _gotoNext = 2628675i32;
                    };
                } else if (__value__ == (2628660i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2628675i32;
                } else if (__value__ == (2628675i32)) {
                    _gotoNext = 2628675i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2628685i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2628710i32;
                    } else {
                        _gotoNext = 2628763i32;
                    };
                } else if (__value__ == (2628685i32)) {
                    _i++;
                    _gotoNext = 2628763i32;
                } else if (__value__ == (2628710i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2628763i32;
                } else if (__value__ == (2628763i32)) {
                    _base_2628763 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2628783 = (19 : stdgo.GoInt);
                    _expChar_2628828 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2628905i32;
                    } else {
                        _gotoNext = 2629006i32;
                    };
                } else if (__value__ == (2628905i32)) {
                    _base_2628763 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2628783 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2628828 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2629006i32;
                } else if (__value__ == (2629006i32)) {
                    _sawdot_2629006 = false;
                    _sawdigits_2629023 = false;
                    _nd_2629043 = (0 : stdgo.GoInt);
                    _ndMant_2629052 = (0 : stdgo.GoInt);
                    _dp_2629065 = (0 : stdgo.GoInt);
                    _gotoNext = 2629073i32;
                } else if (__value__ == (2629073i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629080i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2629102i32;
                    } else {
                        _gotoNext = 2629822i32;
                    };
                } else if (__value__ == (2629102i32)) {
                    _gotoNext = 2629106i32;
                } else if (__value__ == (2629106i32)) {
                    {
                        _c_2629113 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2629113 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2629133i32;
                            } else if (__value__ == (_c_2629113 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2629185i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2629113 : Bool) && (_c_2629113 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2629278i32;
                            } else if (__value__ == (((_base_2628763 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2629113) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2629113) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2629570i32;
                            } else {
                                _gotoNext = 2629812i32;
                            };
                        };
                    };
                } else if (__value__ == (2629133i32)) {
                    _underscores_2628604 = true;
                    _i++;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629185i32)) {
                    if (_sawdot_2629006) {
                        _gotoNext = 2629213i32;
                    } else {
                        _gotoNext = 2629238i32;
                    };
                } else if (__value__ == (2629213i32)) {
                    _loopBreak = true;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629238i32)) {
                    _sawdot_2629006 = true;
                    _dp_2629065 = _nd_2629043;
                    _i++;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629278i32)) {
                    _sawdigits_2629023 = true;
                    if (((_c_2629113 == (48 : stdgo.GoUInt8)) && (_nd_2629043 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2629351i32;
                    } else {
                        _gotoNext = 2629407i32;
                    };
                } else if (__value__ == (2629351i32)) {
                    _dp_2629065--;
                    _i++;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629407i32)) {
                    _nd_2629043++;
                    if ((_ndMant_2629052 < _maxMantDigits_2628783 : Bool)) {
                        _gotoNext = 2629441i32;
                    } else if (_c_2629113 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2629531i32;
                    } else {
                        _gotoNext = 2629558i32;
                    };
                } else if (__value__ == (2629441i32)) {
                    _mantissa = (_mantissa * (_base_2628763) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2629113 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629052++;
                    _gotoNext = 2629558i32;
                } else if (__value__ == (2629531i32)) {
                    _trunc = true;
                    _gotoNext = 2629558i32;
                } else if (__value__ == (2629558i32)) {
                    _i++;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629570i32)) {
                    _sawdigits_2629023 = true;
                    _nd_2629043++;
                    if ((_ndMant_2629052 < _maxMantDigits_2628783 : Bool)) {
                        _gotoNext = 2629682i32;
                    } else {
                        _gotoNext = 2629770i32;
                    };
                } else if (__value__ == (2629682i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2629113) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629052++;
                    _gotoNext = 2629797i32;
                } else if (__value__ == (2629770i32)) {
                    _gotoNext = 2629770i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2629797i32;
                } else if (__value__ == (2629797i32)) {
                    _i++;
                    _gotoNext = 2629080i32;
                } else if (__value__ == (2629812i32)) {
                    _gotoNext = 2629822i32;
                } else if (__value__ == (2629822i32)) {
                    if (!_sawdigits_2629023) {
                        _gotoNext = 2629836i32;
                    } else {
                        _gotoNext = 2629851i32;
                    };
                } else if (__value__ == (2629836i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629851i32;
                } else if (__value__ == (2629851i32)) {
                    if (!_sawdot_2629006) {
                        _gotoNext = 2629862i32;
                    } else {
                        _gotoNext = 2629879i32;
                    };
                } else if (__value__ == (2629862i32)) {
                    _dp_2629065 = _nd_2629043;
                    _gotoNext = 2629879i32;
                } else if (__value__ == (2629879i32)) {
                    if (_base_2628763 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2629893i32;
                    } else {
                        _gotoNext = 2630138i32;
                    };
                } else if (__value__ == (2629893i32)) {
                    _dp_2629065 = (_dp_2629065 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2629052 = (_ndMant_2629052 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2630138i32;
                } else if (__value__ == (2630138i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2628828) : Bool)) {
                        _gotoNext = 2630178i32;
                    } else if (_base_2628763 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630611i32;
                    } else {
                        _gotoNext = 2630652i32;
                    };
                } else if (__value__ == (2630178i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2630203i32;
                    } else {
                        _gotoNext = 2630221i32;
                    };
                } else if (__value__ == (2630203i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630221i32;
                } else if (__value__ == (2630221i32)) {
                    _esign_2630221 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2630249i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2630282i32;
                    } else {
                        _gotoNext = 2630311i32;
                    };
                } else if (__value__ == (2630249i32)) {
                    _i++;
                    _gotoNext = 2630311i32;
                } else if (__value__ == (2630282i32)) {
                    _i++;
                    _esign_2630221 = (-1 : stdgo.GoInt);
                    _gotoNext = 2630311i32;
                } else if (__value__ == (2630311i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2630354i32;
                    } else {
                        _gotoNext = 2630372i32;
                    };
                } else if (__value__ == (2630354i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630372i32;
                } else if (__value__ == (2630372i32)) {
                    _e_2630372 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2630381i32;
                } else if (__value__ == (2630381i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2630450i32;
                    } else {
                        _gotoNext = 2630573i32;
                    };
                } else if (__value__ == (2630446i32)) {
                    _i++;
                    _gotoNext = 2630381i32;
                } else if (__value__ == (2630450i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2630470i32;
                    } else {
                        _gotoNext = 2630516i32;
                    };
                } else if (__value__ == (2630470i32)) {
                    _underscores_2628604 = true;
                    _i++;
                    _gotoNext = 2630381i32;
                } else if (__value__ == (2630516i32)) {
                    if ((_e_2630372 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2630529i32;
                    } else {
                        _gotoNext = 2630446i32;
                    };
                } else if (__value__ == (2630529i32)) {
                    _e_2630372 = (((_e_2630372 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2630446i32;
                } else if (__value__ == (2630573i32)) {
                    _dp_2629065 = (_dp_2629065 + ((_e_2630372 * _esign_2630221 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2630652i32;
                } else if (__value__ == (2630611i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630652i32;
                } else if (__value__ == (2630652i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630669i32;
                    } else {
                        _gotoNext = 2630696i32;
                    };
                } else if (__value__ == (2630669i32)) {
                    _exp = (_dp_2629065 - _ndMant_2629052 : stdgo.GoInt);
                    _gotoNext = 2630696i32;
                } else if (__value__ == (2630696i32)) {
                    if ((_underscores_2628604 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2630735i32;
                    } else {
                        _gotoNext = 2630751i32;
                    };
                } else if (__value__ == (2630735i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630751i32;
                } else if (__value__ == (2630751i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
