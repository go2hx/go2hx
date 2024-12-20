package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_2703443:Bool = false;
        var _maxMantDigits_2703220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2704658:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2703550:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _expChar_2703265:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2704809:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2703460:Bool = false;
        var _base_2703200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2703041:Bool = false;
        var _dp_2703502:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2703489:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2703480:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2703041 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2703097i32;
                    } else {
                        _gotoNext = 2703112i32;
                    };
                } else if (__value__ == (2703097i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2703112i32;
                } else if (__value__ == (2703112i32)) {
                    _gotoNext = 2703112i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2703122i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2703147i32;
                    } else {
                        _gotoNext = 2703200i32;
                    };
                } else if (__value__ == (2703122i32)) {
                    _i++;
                    _gotoNext = 2703200i32;
                } else if (__value__ == (2703147i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2703200i32;
                } else if (__value__ == (2703200i32)) {
                    _base_2703200 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2703220 = (19 : stdgo.GoInt);
                    _expChar_2703265 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2703342i32;
                    } else {
                        _gotoNext = 2703443i32;
                    };
                } else if (__value__ == (2703342i32)) {
                    _base_2703200 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2703220 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2703265 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2703443i32;
                } else if (__value__ == (2703443i32)) {
                    _sawdot_2703443 = false;
                    _sawdigits_2703460 = false;
                    _nd_2703480 = (0 : stdgo.GoInt);
                    _ndMant_2703489 = (0 : stdgo.GoInt);
                    _dp_2703502 = (0 : stdgo.GoInt);
                    _gotoNext = 2703510i32;
                } else if (__value__ == (2703510i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2703517i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2703539i32;
                    } else {
                        _gotoNext = 2704259i32;
                    };
                } else if (__value__ == (2703539i32)) {
                    _gotoNext = 2703543i32;
                } else if (__value__ == (2703543i32)) {
                    {
                        _c_2703550 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2703550 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2703570i32;
                            } else if (__value__ == (_c_2703550 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2703622i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2703550 : Bool) && (_c_2703550 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2703715i32;
                            } else if (__value__ == (((_base_2703200 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2703550) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2703550) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2704007i32;
                            } else {
                                _gotoNext = 2704249i32;
                            };
                        };
                    };
                } else if (__value__ == (2703570i32)) {
                    _underscores_2703041 = true;
                    _i++;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2703622i32)) {
                    if (_sawdot_2703443) {
                        _gotoNext = 2703650i32;
                    } else {
                        _gotoNext = 2703675i32;
                    };
                } else if (__value__ == (2703650i32)) {
                    _loopBreak = true;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2703675i32)) {
                    _sawdot_2703443 = true;
                    _dp_2703502 = _nd_2703480;
                    _i++;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2703715i32)) {
                    _sawdigits_2703460 = true;
                    if (((_c_2703550 == (48 : stdgo.GoUInt8)) && (_nd_2703480 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2703788i32;
                    } else {
                        _gotoNext = 2703844i32;
                    };
                } else if (__value__ == (2703788i32)) {
                    _dp_2703502--;
                    _i++;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2703844i32)) {
                    _nd_2703480++;
                    if ((_ndMant_2703489 < _maxMantDigits_2703220 : Bool)) {
                        _gotoNext = 2703878i32;
                    } else if (_c_2703550 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2703968i32;
                    } else {
                        _gotoNext = 2703995i32;
                    };
                } else if (__value__ == (2703878i32)) {
                    _mantissa = (_mantissa * (_base_2703200) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2703550 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2703489++;
                    _gotoNext = 2703995i32;
                } else if (__value__ == (2703968i32)) {
                    _trunc = true;
                    _gotoNext = 2703995i32;
                } else if (__value__ == (2703995i32)) {
                    _i++;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2704007i32)) {
                    _sawdigits_2703460 = true;
                    _nd_2703480++;
                    if ((_ndMant_2703489 < _maxMantDigits_2703220 : Bool)) {
                        _gotoNext = 2704119i32;
                    } else {
                        _gotoNext = 2704207i32;
                    };
                } else if (__value__ == (2704119i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2703550) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2703489++;
                    _gotoNext = 2704234i32;
                } else if (__value__ == (2704207i32)) {
                    _gotoNext = 2704207i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2704234i32;
                } else if (__value__ == (2704234i32)) {
                    _i++;
                    _gotoNext = 2703517i32;
                } else if (__value__ == (2704249i32)) {
                    _gotoNext = 2704259i32;
                } else if (__value__ == (2704259i32)) {
                    if (!_sawdigits_2703460) {
                        _gotoNext = 2704273i32;
                    } else {
                        _gotoNext = 2704288i32;
                    };
                } else if (__value__ == (2704273i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2704288i32;
                } else if (__value__ == (2704288i32)) {
                    if (!_sawdot_2703443) {
                        _gotoNext = 2704299i32;
                    } else {
                        _gotoNext = 2704316i32;
                    };
                } else if (__value__ == (2704299i32)) {
                    _dp_2703502 = _nd_2703480;
                    _gotoNext = 2704316i32;
                } else if (__value__ == (2704316i32)) {
                    if (_base_2703200 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2704330i32;
                    } else {
                        _gotoNext = 2704575i32;
                    };
                } else if (__value__ == (2704330i32)) {
                    _dp_2703502 = (_dp_2703502 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2703489 = (_ndMant_2703489 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2704575i32;
                } else if (__value__ == (2704575i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2703265) : Bool)) {
                        _gotoNext = 2704615i32;
                    } else if (_base_2703200 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2705048i32;
                    } else {
                        _gotoNext = 2705089i32;
                    };
                } else if (__value__ == (2704615i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2704640i32;
                    } else {
                        _gotoNext = 2704658i32;
                    };
                } else if (__value__ == (2704640i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2704658i32;
                } else if (__value__ == (2704658i32)) {
                    _esign_2704658 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2704686i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2704719i32;
                    } else {
                        _gotoNext = 2704748i32;
                    };
                } else if (__value__ == (2704686i32)) {
                    _i++;
                    _gotoNext = 2704748i32;
                } else if (__value__ == (2704719i32)) {
                    _i++;
                    _esign_2704658 = (-1 : stdgo.GoInt);
                    _gotoNext = 2704748i32;
                } else if (__value__ == (2704748i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2704791i32;
                    } else {
                        _gotoNext = 2704809i32;
                    };
                } else if (__value__ == (2704791i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2704809i32;
                } else if (__value__ == (2704809i32)) {
                    _e_2704809 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2704818i32;
                } else if (__value__ == (2704818i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2704887i32;
                    } else {
                        _gotoNext = 2705010i32;
                    };
                } else if (__value__ == (2704883i32)) {
                    _i++;
                    _gotoNext = 2704818i32;
                } else if (__value__ == (2704887i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2704907i32;
                    } else {
                        _gotoNext = 2704953i32;
                    };
                } else if (__value__ == (2704907i32)) {
                    _underscores_2703041 = true;
                    _i++;
                    _gotoNext = 2704818i32;
                } else if (__value__ == (2704953i32)) {
                    if ((_e_2704809 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2704966i32;
                    } else {
                        _gotoNext = 2704883i32;
                    };
                } else if (__value__ == (2704966i32)) {
                    _e_2704809 = (((_e_2704809 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2704883i32;
                } else if (__value__ == (2705010i32)) {
                    _dp_2703502 = (_dp_2703502 + ((_e_2704809 * _esign_2704658 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2705089i32;
                } else if (__value__ == (2705048i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2705089i32;
                } else if (__value__ == (2705089i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2705106i32;
                    } else {
                        _gotoNext = 2705133i32;
                    };
                } else if (__value__ == (2705106i32)) {
                    _exp = (_dp_2703502 - _ndMant_2703489 : stdgo.GoInt);
                    _gotoNext = 2705133i32;
                } else if (__value__ == (2705133i32)) {
                    if ((_underscores_2703041 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2705172i32;
                    } else {
                        _gotoNext = 2705188i32;
                    };
                } else if (__value__ == (2705172i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2705188i32;
                } else if (__value__ == (2705188i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
