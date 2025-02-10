package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2637428:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2637406:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2638584:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2637386:Bool = false;
        var _sawdot_2637369:Bool = false;
        var _e_2638735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2636967:Bool = false;
        var _c_2637476:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2637415:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2637191:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2637146:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2637126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2636967 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2637023i32;
                    } else {
                        _gotoNext = 2637038i32;
                    };
                } else if (__value__ == (2637023i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2637038i32;
                } else if (__value__ == (2637038i32)) {
                    _gotoNext = 2637038i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2637048i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2637073i32;
                    } else {
                        _gotoNext = 2637126i32;
                    };
                } else if (__value__ == (2637048i32)) {
                    _i++;
                    _gotoNext = 2637126i32;
                } else if (__value__ == (2637073i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2637126i32;
                } else if (__value__ == (2637126i32)) {
                    _base_2637126 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2637146 = (19 : stdgo.GoInt);
                    _expChar_2637191 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2637268i32;
                    } else {
                        _gotoNext = 2637369i32;
                    };
                } else if (__value__ == (2637268i32)) {
                    _base_2637126 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2637146 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2637191 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2637369i32;
                } else if (__value__ == (2637369i32)) {
                    _sawdot_2637369 = false;
                    _sawdigits_2637386 = false;
                    _nd_2637406 = (0 : stdgo.GoInt);
                    _ndMant_2637415 = (0 : stdgo.GoInt);
                    _dp_2637428 = (0 : stdgo.GoInt);
                    _gotoNext = 2637436i32;
                } else if (__value__ == (2637436i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2637443i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2637465i32;
                    } else {
                        _gotoNext = 2638185i32;
                    };
                } else if (__value__ == (2637465i32)) {
                    _gotoNext = 2637469i32;
                } else if (__value__ == (2637469i32)) {
                    {
                        _c_2637476 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2637476 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2637496i32;
                            } else if (__value__ == (_c_2637476 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2637548i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2637476 : Bool) && (_c_2637476 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2637641i32;
                            } else if (__value__ == (((_base_2637126 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2637476) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2637476) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2637933i32;
                            } else {
                                _gotoNext = 2638175i32;
                            };
                        };
                    };
                } else if (__value__ == (2637496i32)) {
                    _underscores_2636967 = true;
                    _i++;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2637548i32)) {
                    if (_sawdot_2637369) {
                        _gotoNext = 2637576i32;
                    } else {
                        _gotoNext = 2637601i32;
                    };
                } else if (__value__ == (2637576i32)) {
                    _loopBreak = true;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2637601i32)) {
                    _sawdot_2637369 = true;
                    _dp_2637428 = _nd_2637406;
                    _i++;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2637641i32)) {
                    _sawdigits_2637386 = true;
                    if (((_c_2637476 == (48 : stdgo.GoUInt8)) && (_nd_2637406 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2637714i32;
                    } else {
                        _gotoNext = 2637770i32;
                    };
                } else if (__value__ == (2637714i32)) {
                    _dp_2637428--;
                    _i++;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2637770i32)) {
                    _nd_2637406++;
                    if ((_ndMant_2637415 < _maxMantDigits_2637146 : Bool)) {
                        _gotoNext = 2637804i32;
                    } else if (_c_2637476 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2637894i32;
                    } else {
                        _gotoNext = 2637921i32;
                    };
                } else if (__value__ == (2637804i32)) {
                    _mantissa = (_mantissa * (_base_2637126) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2637476 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2637415++;
                    _gotoNext = 2637921i32;
                } else if (__value__ == (2637894i32)) {
                    _trunc = true;
                    _gotoNext = 2637921i32;
                } else if (__value__ == (2637921i32)) {
                    _i++;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2637933i32)) {
                    _sawdigits_2637386 = true;
                    _nd_2637406++;
                    if ((_ndMant_2637415 < _maxMantDigits_2637146 : Bool)) {
                        _gotoNext = 2638045i32;
                    } else {
                        _gotoNext = 2638133i32;
                    };
                } else if (__value__ == (2638045i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2637476) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2637415++;
                    _gotoNext = 2638160i32;
                } else if (__value__ == (2638133i32)) {
                    _gotoNext = 2638133i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2638160i32;
                } else if (__value__ == (2638160i32)) {
                    _i++;
                    _gotoNext = 2637443i32;
                } else if (__value__ == (2638175i32)) {
                    _gotoNext = 2638185i32;
                } else if (__value__ == (2638185i32)) {
                    if (!_sawdigits_2637386) {
                        _gotoNext = 2638199i32;
                    } else {
                        _gotoNext = 2638214i32;
                    };
                } else if (__value__ == (2638199i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2638214i32;
                } else if (__value__ == (2638214i32)) {
                    if (!_sawdot_2637369) {
                        _gotoNext = 2638225i32;
                    } else {
                        _gotoNext = 2638242i32;
                    };
                } else if (__value__ == (2638225i32)) {
                    _dp_2637428 = _nd_2637406;
                    _gotoNext = 2638242i32;
                } else if (__value__ == (2638242i32)) {
                    if (_base_2637126 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2638256i32;
                    } else {
                        _gotoNext = 2638501i32;
                    };
                } else if (__value__ == (2638256i32)) {
                    _dp_2637428 = (_dp_2637428 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2637415 = (_ndMant_2637415 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2638501i32;
                } else if (__value__ == (2638501i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2637191) : Bool)) {
                        _gotoNext = 2638541i32;
                    } else if (_base_2637126 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2638974i32;
                    } else {
                        _gotoNext = 2639015i32;
                    };
                } else if (__value__ == (2638541i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2638566i32;
                    } else {
                        _gotoNext = 2638584i32;
                    };
                } else if (__value__ == (2638566i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2638584i32;
                } else if (__value__ == (2638584i32)) {
                    _esign_2638584 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2638612i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2638645i32;
                    } else {
                        _gotoNext = 2638674i32;
                    };
                } else if (__value__ == (2638612i32)) {
                    _i++;
                    _gotoNext = 2638674i32;
                } else if (__value__ == (2638645i32)) {
                    _i++;
                    _esign_2638584 = (-1 : stdgo.GoInt);
                    _gotoNext = 2638674i32;
                } else if (__value__ == (2638674i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2638717i32;
                    } else {
                        _gotoNext = 2638735i32;
                    };
                } else if (__value__ == (2638717i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2638735i32;
                } else if (__value__ == (2638735i32)) {
                    _e_2638735 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2638744i32;
                } else if (__value__ == (2638744i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2638813i32;
                    } else {
                        _gotoNext = 2638936i32;
                    };
                } else if (__value__ == (2638809i32)) {
                    _i++;
                    _gotoNext = 2638744i32;
                } else if (__value__ == (2638813i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2638833i32;
                    } else {
                        _gotoNext = 2638879i32;
                    };
                } else if (__value__ == (2638833i32)) {
                    _underscores_2636967 = true;
                    _i++;
                    _gotoNext = 2638744i32;
                } else if (__value__ == (2638879i32)) {
                    if ((_e_2638735 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2638892i32;
                    } else {
                        _gotoNext = 2638809i32;
                    };
                } else if (__value__ == (2638892i32)) {
                    _e_2638735 = (((_e_2638735 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2638809i32;
                } else if (__value__ == (2638936i32)) {
                    _dp_2637428 = (_dp_2637428 + ((_e_2638735 * _esign_2638584 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2639015i32;
                } else if (__value__ == (2638974i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639015i32;
                } else if (__value__ == (2639015i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2639032i32;
                    } else {
                        _gotoNext = 2639059i32;
                    };
                } else if (__value__ == (2639032i32)) {
                    _exp = (_dp_2637428 - _ndMant_2637415 : stdgo.GoInt);
                    _gotoNext = 2639059i32;
                } else if (__value__ == (2639059i32)) {
                    if ((_underscores_2636967 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2639098i32;
                    } else {
                        _gotoNext = 2639114i32;
                    };
                } else if (__value__ == (2639098i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639114i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
