package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _underscores_2684779:Bool = false;
        var _esign_2686396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdigits_2685198:Bool = false;
        var _c_2685288:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2684938:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_2685240:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2685227:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2685181:Bool = false;
        var _expChar_2685003:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2684958:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2686547:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2685218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2684779 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2684835i32;
                    } else {
                        _gotoNext = 2684850i32;
                    };
                } else if (__value__ == (2684835i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2684850i32;
                } else if (__value__ == (2684850i32)) {
                    _gotoNext = 2684850i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2684860i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2684885i32;
                    } else {
                        _gotoNext = 2684938i32;
                    };
                } else if (__value__ == (2684860i32)) {
                    _i++;
                    _gotoNext = 2684938i32;
                } else if (__value__ == (2684885i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2684938i32;
                } else if (__value__ == (2684938i32)) {
                    _base_2684938 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2684958 = (19 : stdgo.GoInt);
                    _expChar_2685003 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2685080i32;
                    } else {
                        _gotoNext = 2685181i32;
                    };
                } else if (__value__ == (2685080i32)) {
                    _base_2684938 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2684958 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2685003 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2685181i32;
                } else if (__value__ == (2685181i32)) {
                    _sawdot_2685181 = false;
                    _sawdigits_2685198 = false;
                    _nd_2685218 = (0 : stdgo.GoInt);
                    _ndMant_2685227 = (0 : stdgo.GoInt);
                    _dp_2685240 = (0 : stdgo.GoInt);
                    _gotoNext = 2685248i32;
                } else if (__value__ == (2685248i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685255i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2685277i32;
                    } else {
                        _gotoNext = 2685997i32;
                    };
                } else if (__value__ == (2685277i32)) {
                    _gotoNext = 2685281i32;
                } else if (__value__ == (2685281i32)) {
                    {
                        _c_2685288 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2685288 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2685308i32;
                            } else if (__value__ == (_c_2685288 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2685360i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2685288 : Bool) && (_c_2685288 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2685453i32;
                            } else if (__value__ == (((_base_2684938 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2685288) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2685288) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2685745i32;
                            } else {
                                _gotoNext = 2685987i32;
                            };
                        };
                    };
                } else if (__value__ == (2685308i32)) {
                    _underscores_2684779 = true;
                    _i++;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685360i32)) {
                    if (_sawdot_2685181) {
                        _gotoNext = 2685388i32;
                    } else {
                        _gotoNext = 2685413i32;
                    };
                } else if (__value__ == (2685388i32)) {
                    _loopBreak = true;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685413i32)) {
                    _sawdot_2685181 = true;
                    _dp_2685240 = _nd_2685218;
                    _i++;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685453i32)) {
                    _sawdigits_2685198 = true;
                    if (((_c_2685288 == (48 : stdgo.GoUInt8)) && (_nd_2685218 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2685526i32;
                    } else {
                        _gotoNext = 2685582i32;
                    };
                } else if (__value__ == (2685526i32)) {
                    _dp_2685240--;
                    _i++;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685582i32)) {
                    _nd_2685218++;
                    if ((_ndMant_2685227 < _maxMantDigits_2684958 : Bool)) {
                        _gotoNext = 2685616i32;
                    } else if (_c_2685288 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2685706i32;
                    } else {
                        _gotoNext = 2685733i32;
                    };
                } else if (__value__ == (2685616i32)) {
                    _mantissa = (_mantissa * (_base_2684938) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2685288 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2685227++;
                    _gotoNext = 2685733i32;
                } else if (__value__ == (2685706i32)) {
                    _trunc = true;
                    _gotoNext = 2685733i32;
                } else if (__value__ == (2685733i32)) {
                    _i++;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685745i32)) {
                    _sawdigits_2685198 = true;
                    _nd_2685218++;
                    if ((_ndMant_2685227 < _maxMantDigits_2684958 : Bool)) {
                        _gotoNext = 2685857i32;
                    } else {
                        _gotoNext = 2685945i32;
                    };
                } else if (__value__ == (2685857i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2685288) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2685227++;
                    _gotoNext = 2685972i32;
                } else if (__value__ == (2685945i32)) {
                    _gotoNext = 2685945i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2685972i32;
                } else if (__value__ == (2685972i32)) {
                    _i++;
                    _gotoNext = 2685255i32;
                } else if (__value__ == (2685987i32)) {
                    _gotoNext = 2685997i32;
                } else if (__value__ == (2685997i32)) {
                    if (!_sawdigits_2685198) {
                        _gotoNext = 2686011i32;
                    } else {
                        _gotoNext = 2686026i32;
                    };
                } else if (__value__ == (2686011i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686026i32;
                } else if (__value__ == (2686026i32)) {
                    if (!_sawdot_2685181) {
                        _gotoNext = 2686037i32;
                    } else {
                        _gotoNext = 2686054i32;
                    };
                } else if (__value__ == (2686037i32)) {
                    _dp_2685240 = _nd_2685218;
                    _gotoNext = 2686054i32;
                } else if (__value__ == (2686054i32)) {
                    if (_base_2684938 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2686068i32;
                    } else {
                        _gotoNext = 2686313i32;
                    };
                } else if (__value__ == (2686068i32)) {
                    _dp_2685240 = (_dp_2685240 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2685227 = (_ndMant_2685227 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2686313i32;
                } else if (__value__ == (2686313i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2685003) : Bool)) {
                        _gotoNext = 2686353i32;
                    } else if (_base_2684938 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2686786i32;
                    } else {
                        _gotoNext = 2686827i32;
                    };
                } else if (__value__ == (2686353i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2686378i32;
                    } else {
                        _gotoNext = 2686396i32;
                    };
                } else if (__value__ == (2686378i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686396i32;
                } else if (__value__ == (2686396i32)) {
                    _esign_2686396 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2686424i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2686457i32;
                    } else {
                        _gotoNext = 2686486i32;
                    };
                } else if (__value__ == (2686424i32)) {
                    _i++;
                    _gotoNext = 2686486i32;
                } else if (__value__ == (2686457i32)) {
                    _i++;
                    _esign_2686396 = (-1 : stdgo.GoInt);
                    _gotoNext = 2686486i32;
                } else if (__value__ == (2686486i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2686529i32;
                    } else {
                        _gotoNext = 2686547i32;
                    };
                } else if (__value__ == (2686529i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686547i32;
                } else if (__value__ == (2686547i32)) {
                    _e_2686547 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2686556i32;
                } else if (__value__ == (2686556i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2686625i32;
                    } else {
                        _gotoNext = 2686748i32;
                    };
                } else if (__value__ == (2686621i32)) {
                    _i++;
                    _gotoNext = 2686556i32;
                } else if (__value__ == (2686625i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2686645i32;
                    } else {
                        _gotoNext = 2686691i32;
                    };
                } else if (__value__ == (2686645i32)) {
                    _underscores_2684779 = true;
                    _i++;
                    _gotoNext = 2686556i32;
                } else if (__value__ == (2686691i32)) {
                    if ((_e_2686547 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2686704i32;
                    } else {
                        _gotoNext = 2686621i32;
                    };
                } else if (__value__ == (2686704i32)) {
                    _e_2686547 = (((_e_2686547 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2686621i32;
                } else if (__value__ == (2686748i32)) {
                    _dp_2685240 = (_dp_2685240 + ((_e_2686547 * _esign_2686396 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2686827i32;
                } else if (__value__ == (2686786i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686827i32;
                } else if (__value__ == (2686827i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2686844i32;
                    } else {
                        _gotoNext = 2686871i32;
                    };
                } else if (__value__ == (2686844i32)) {
                    _exp = (_dp_2685240 - _ndMant_2685227 : stdgo.GoInt);
                    _gotoNext = 2686871i32;
                } else if (__value__ == (2686871i32)) {
                    if ((_underscores_2684779 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2686910i32;
                    } else {
                        _gotoNext = 2686926i32;
                    };
                } else if (__value__ == (2686910i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686926i32;
                } else if (__value__ == (2686926i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
