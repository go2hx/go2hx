package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2793017:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2792838:Bool = false;
        var _esign_2794455:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2793347:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2793257:Bool = false;
        var _expChar_2793062:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2792997:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_2793299:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2793286:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2793277:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2793240:Bool = false;
        var _e_2794606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2792838 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2792894i32;
                    } else {
                        _gotoNext = 2792909i32;
                    };
                } else if (__value__ == (2792894i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2792909i32;
                } else if (__value__ == (2792909i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2792909i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2792919i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2792944i32;
                    } else {
                        _gotoNext = 2792997i32;
                    };
                } else if (__value__ == (2792919i32)) {
                    _i++;
                    _gotoNext = 2792997i32;
                } else if (__value__ == (2792944i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2792997i32;
                } else if (__value__ == (2792997i32)) {
                    _base_2792997 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2793017 = (19 : stdgo.GoInt);
                    _expChar_2793062 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2793139i32;
                    } else {
                        _gotoNext = 2793240i32;
                    };
                } else if (__value__ == (2793139i32)) {
                    _base_2792997 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2793017 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2793062 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2793240i32;
                } else if (__value__ == (2793240i32)) {
                    _sawdot_2793240 = false;
                    _sawdigits_2793257 = false;
                    _nd_2793277 = (0 : stdgo.GoInt);
                    _ndMant_2793286 = (0 : stdgo.GoInt);
                    _dp_2793299 = (0 : stdgo.GoInt);
                    _gotoNext = 2793307i32;
                } else if (__value__ == (2793307i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2793314i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2793336i32;
                    } else {
                        _gotoNext = 2794056i32;
                    };
                } else if (__value__ == (2793336i32)) {
                    _c_2793347 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2793340i32;
                } else if (__value__ == (2793340i32)) {
                    {
                        _c_2793347 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2793347 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2793367i32;
                            } else if (__value__ == (_c_2793347 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2793419i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2793347 : Bool) && (_c_2793347 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2793512i32;
                            } else if (__value__ == (((_base_2792997 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2793347) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2793347) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2793804i32;
                            } else {
                                _gotoNext = 2794046i32;
                            };
                        };
                    };
                } else if (__value__ == (2793367i32)) {
                    _underscores_2792838 = true;
                    _i++;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2793419i32)) {
                    if (_sawdot_2793240) {
                        _gotoNext = 2793447i32;
                    } else {
                        _gotoNext = 2793472i32;
                    };
                } else if (__value__ == (2793447i32)) {
                    _loopBreak = true;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2793472i32)) {
                    _sawdot_2793240 = true;
                    _dp_2793299 = _nd_2793277;
                    _i++;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2793512i32)) {
                    _sawdigits_2793257 = true;
                    if (((_c_2793347 == (48 : stdgo.GoUInt8)) && (_nd_2793277 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2793585i32;
                    } else {
                        _gotoNext = 2793641i32;
                    };
                } else if (__value__ == (2793585i32)) {
                    _dp_2793299--;
                    _i++;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2793641i32)) {
                    _nd_2793277++;
                    if ((_ndMant_2793286 < _maxMantDigits_2793017 : Bool)) {
                        _gotoNext = 2793675i32;
                    } else if (_c_2793347 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2793765i32;
                    } else {
                        _gotoNext = 2793792i32;
                    };
                } else if (__value__ == (2793675i32)) {
                    _mantissa = (_mantissa * (_base_2792997) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2793347 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2793286++;
                    _gotoNext = 2793792i32;
                } else if (__value__ == (2793765i32)) {
                    _trunc = true;
                    _gotoNext = 2793792i32;
                } else if (__value__ == (2793792i32)) {
                    _i++;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2793804i32)) {
                    _sawdigits_2793257 = true;
                    _nd_2793277++;
                    if ((_ndMant_2793286 < _maxMantDigits_2793017 : Bool)) {
                        _gotoNext = 2793916i32;
                    } else {
                        _gotoNext = 2794004i32;
                    };
                } else if (__value__ == (2793916i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2793347) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2793286++;
                    _gotoNext = 2794031i32;
                } else if (__value__ == (2794004i32)) {
                    _gotoNext = 2794004i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2794031i32;
                } else if (__value__ == (2794031i32)) {
                    _i++;
                    _gotoNext = 2793314i32;
                } else if (__value__ == (2794046i32)) {
                    _gotoNext = 2794056i32;
                } else if (__value__ == (2794056i32)) {
                    if (!_sawdigits_2793257) {
                        _gotoNext = 2794070i32;
                    } else {
                        _gotoNext = 2794085i32;
                    };
                } else if (__value__ == (2794070i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2794085i32;
                } else if (__value__ == (2794085i32)) {
                    if (!_sawdot_2793240) {
                        _gotoNext = 2794096i32;
                    } else {
                        _gotoNext = 2794113i32;
                    };
                } else if (__value__ == (2794096i32)) {
                    _dp_2793299 = _nd_2793277;
                    _gotoNext = 2794113i32;
                } else if (__value__ == (2794113i32)) {
                    if (_base_2792997 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2794127i32;
                    } else {
                        _gotoNext = 2794372i32;
                    };
                } else if (__value__ == (2794127i32)) {
                    _dp_2793299 = (_dp_2793299 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2793286 = (_ndMant_2793286 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2794372i32;
                } else if (__value__ == (2794372i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2793062) : Bool)) {
                        _gotoNext = 2794412i32;
                    } else if (_base_2792997 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2794845i32;
                    } else {
                        _gotoNext = 2794886i32;
                    };
                } else if (__value__ == (2794412i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2794437i32;
                    } else {
                        _gotoNext = 2794455i32;
                    };
                } else if (__value__ == (2794437i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2794455i32;
                } else if (__value__ == (2794455i32)) {
                    _esign_2794455 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2794483i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2794516i32;
                    } else {
                        _gotoNext = 2794545i32;
                    };
                } else if (__value__ == (2794483i32)) {
                    _i++;
                    _gotoNext = 2794545i32;
                } else if (__value__ == (2794516i32)) {
                    _i++;
                    _esign_2794455 = (-1 : stdgo.GoInt);
                    _gotoNext = 2794545i32;
                } else if (__value__ == (2794545i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2794588i32;
                    } else {
                        _gotoNext = 2794606i32;
                    };
                } else if (__value__ == (2794588i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2794606i32;
                } else if (__value__ == (2794606i32)) {
                    _e_2794606 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2794615i32;
                } else if (__value__ == (2794615i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2794684i32;
                    } else {
                        _gotoNext = 2794807i32;
                    };
                } else if (__value__ == (2794680i32)) {
                    _i++;
                    _gotoNext = 2794615i32;
                } else if (__value__ == (2794684i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2794704i32;
                    } else {
                        _gotoNext = 2794750i32;
                    };
                } else if (__value__ == (2794704i32)) {
                    _underscores_2792838 = true;
                    _i++;
                    _gotoNext = 2794615i32;
                } else if (__value__ == (2794750i32)) {
                    if ((_e_2794606 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2794763i32;
                    } else {
                        _gotoNext = 2794680i32;
                    };
                } else if (__value__ == (2794763i32)) {
                    _e_2794606 = (((_e_2794606 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2794680i32;
                } else if (__value__ == (2794807i32)) {
                    _dp_2793299 = (_dp_2793299 + ((_e_2794606 * _esign_2794455 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2794886i32;
                } else if (__value__ == (2794845i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2794886i32;
                } else if (__value__ == (2794886i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2794903i32;
                    } else {
                        _gotoNext = 2794930i32;
                    };
                } else if (__value__ == (2794903i32)) {
                    _exp = (_dp_2793299 - _ndMant_2793286 : stdgo.GoInt);
                    _gotoNext = 2794930i32;
                } else if (__value__ == (2794930i32)) {
                    if ((_underscores_2792838 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2794969i32;
                    } else {
                        _gotoNext = 2794985i32;
                    };
                } else if (__value__ == (2794969i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2794985i32;
                } else if (__value__ == (2794985i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
