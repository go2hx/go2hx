package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_2659474:Bool = false;
        var _base_2659231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _loopBreak = false;
        var _nd_2659511:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2659296:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2660840:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2660689:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2659581:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2659072:Bool = false;
        var _sawdigits_2659491:Bool = false;
        var _maxMantDigits_2659251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2659533:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2659520:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2659072 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2659128i32;
                    } else {
                        _gotoNext = 2659143i32;
                    };
                } else if (__value__ == (2659128i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659143i32;
                } else if (__value__ == (2659143i32)) {
                    _gotoNext = 2659143i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2659153i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2659178i32;
                    } else {
                        _gotoNext = 2659231i32;
                    };
                } else if (__value__ == (2659153i32)) {
                    _i++;
                    _gotoNext = 2659231i32;
                } else if (__value__ == (2659178i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2659231i32;
                } else if (__value__ == (2659231i32)) {
                    _base_2659231 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2659251 = (19 : stdgo.GoInt);
                    _expChar_2659296 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2659373i32;
                    } else {
                        _gotoNext = 2659474i32;
                    };
                } else if (__value__ == (2659373i32)) {
                    _base_2659231 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2659251 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2659296 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2659474i32;
                } else if (__value__ == (2659474i32)) {
                    _sawdot_2659474 = false;
                    _sawdigits_2659491 = false;
                    _nd_2659511 = (0 : stdgo.GoInt);
                    _ndMant_2659520 = (0 : stdgo.GoInt);
                    _dp_2659533 = (0 : stdgo.GoInt);
                    _gotoNext = 2659541i32;
                } else if (__value__ == (2659541i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2659548i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2659570i32;
                    } else {
                        _gotoNext = 2660290i32;
                    };
                } else if (__value__ == (2659570i32)) {
                    _gotoNext = 2659574i32;
                } else if (__value__ == (2659574i32)) {
                    {
                        _c_2659581 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2659581 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2659601i32;
                            } else if (__value__ == (_c_2659581 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2659653i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2659581 : Bool) && (_c_2659581 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659746i32;
                            } else if (__value__ == (((_base_2659231 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2659581) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2659581) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2660038i32;
                            } else {
                                _gotoNext = 2660280i32;
                            };
                        };
                    };
                } else if (__value__ == (2659601i32)) {
                    _underscores_2659072 = true;
                    _i++;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2659653i32)) {
                    if (_sawdot_2659474) {
                        _gotoNext = 2659681i32;
                    } else {
                        _gotoNext = 2659706i32;
                    };
                } else if (__value__ == (2659681i32)) {
                    _loopBreak = true;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2659706i32)) {
                    _sawdot_2659474 = true;
                    _dp_2659533 = _nd_2659511;
                    _i++;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2659746i32)) {
                    _sawdigits_2659491 = true;
                    if (((_c_2659581 == (48 : stdgo.GoUInt8)) && (_nd_2659511 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2659819i32;
                    } else {
                        _gotoNext = 2659875i32;
                    };
                } else if (__value__ == (2659819i32)) {
                    _dp_2659533--;
                    _i++;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2659875i32)) {
                    _nd_2659511++;
                    if ((_ndMant_2659520 < _maxMantDigits_2659251 : Bool)) {
                        _gotoNext = 2659909i32;
                    } else if (_c_2659581 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2659999i32;
                    } else {
                        _gotoNext = 2660026i32;
                    };
                } else if (__value__ == (2659909i32)) {
                    _mantissa = (_mantissa * (_base_2659231) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2659581 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2659520++;
                    _gotoNext = 2660026i32;
                } else if (__value__ == (2659999i32)) {
                    _trunc = true;
                    _gotoNext = 2660026i32;
                } else if (__value__ == (2660026i32)) {
                    _i++;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2660038i32)) {
                    _sawdigits_2659491 = true;
                    _nd_2659511++;
                    if ((_ndMant_2659520 < _maxMantDigits_2659251 : Bool)) {
                        _gotoNext = 2660150i32;
                    } else {
                        _gotoNext = 2660238i32;
                    };
                } else if (__value__ == (2660150i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2659581) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2659520++;
                    _gotoNext = 2660265i32;
                } else if (__value__ == (2660238i32)) {
                    _gotoNext = 2660238i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2660265i32;
                } else if (__value__ == (2660265i32)) {
                    _i++;
                    _gotoNext = 2659548i32;
                } else if (__value__ == (2660280i32)) {
                    _gotoNext = 2660290i32;
                } else if (__value__ == (2660290i32)) {
                    if (!_sawdigits_2659491) {
                        _gotoNext = 2660304i32;
                    } else {
                        _gotoNext = 2660319i32;
                    };
                } else if (__value__ == (2660304i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660319i32;
                } else if (__value__ == (2660319i32)) {
                    if (!_sawdot_2659474) {
                        _gotoNext = 2660330i32;
                    } else {
                        _gotoNext = 2660347i32;
                    };
                } else if (__value__ == (2660330i32)) {
                    _dp_2659533 = _nd_2659511;
                    _gotoNext = 2660347i32;
                } else if (__value__ == (2660347i32)) {
                    if (_base_2659231 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660361i32;
                    } else {
                        _gotoNext = 2660606i32;
                    };
                } else if (__value__ == (2660361i32)) {
                    _dp_2659533 = (_dp_2659533 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2659520 = (_ndMant_2659520 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660606i32;
                } else if (__value__ == (2660606i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2659296) : Bool)) {
                        _gotoNext = 2660646i32;
                    } else if (_base_2659231 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2661079i32;
                    } else {
                        _gotoNext = 2661120i32;
                    };
                } else if (__value__ == (2660646i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660671i32;
                    } else {
                        _gotoNext = 2660689i32;
                    };
                } else if (__value__ == (2660671i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660689i32;
                } else if (__value__ == (2660689i32)) {
                    _esign_2660689 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660717i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660750i32;
                    } else {
                        _gotoNext = 2660779i32;
                    };
                } else if (__value__ == (2660717i32)) {
                    _i++;
                    _gotoNext = 2660779i32;
                } else if (__value__ == (2660750i32)) {
                    _i++;
                    _esign_2660689 = (-1 : stdgo.GoInt);
                    _gotoNext = 2660779i32;
                } else if (__value__ == (2660779i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2660822i32;
                    } else {
                        _gotoNext = 2660840i32;
                    };
                } else if (__value__ == (2660822i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660840i32;
                } else if (__value__ == (2660840i32)) {
                    _e_2660840 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2660849i32;
                } else if (__value__ == (2660849i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2660918i32;
                    } else {
                        _gotoNext = 2661041i32;
                    };
                } else if (__value__ == (2660914i32)) {
                    _i++;
                    _gotoNext = 2660849i32;
                } else if (__value__ == (2660918i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2660938i32;
                    } else {
                        _gotoNext = 2660984i32;
                    };
                } else if (__value__ == (2660938i32)) {
                    _underscores_2659072 = true;
                    _i++;
                    _gotoNext = 2660849i32;
                } else if (__value__ == (2660984i32)) {
                    if ((_e_2660840 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2660997i32;
                    } else {
                        _gotoNext = 2660914i32;
                    };
                } else if (__value__ == (2660997i32)) {
                    _e_2660840 = (((_e_2660840 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2660914i32;
                } else if (__value__ == (2661041i32)) {
                    _dp_2659533 = (_dp_2659533 + ((_e_2660840 * _esign_2660689 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2661120i32;
                } else if (__value__ == (2661079i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661120i32;
                } else if (__value__ == (2661120i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2661137i32;
                    } else {
                        _gotoNext = 2661164i32;
                    };
                } else if (__value__ == (2661137i32)) {
                    _exp = (_dp_2659533 - _ndMant_2659520 : stdgo.GoInt);
                    _gotoNext = 2661164i32;
                } else if (__value__ == (2661164i32)) {
                    if ((_underscores_2659072 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2661203i32;
                    } else {
                        _gotoNext = 2661219i32;
                    };
                } else if (__value__ == (2661203i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661219i32;
                } else if (__value__ == (2661219i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
