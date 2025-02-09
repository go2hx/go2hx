package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2571404:Bool = false;
        var _maxMantDigits_2571164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2570985:Bool = false;
        var _loopBreak = false;
        var _dp_2571446:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2571494:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2571424:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2571433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2571387:Bool = false;
        var _base_2571144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2572753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2572602:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2571209:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2570985 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2571041i32;
                    } else {
                        _gotoNext = 2571056i32;
                    };
                } else if (__value__ == (2571041i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2571056i32;
                } else if (__value__ == (2571056i32)) {
                    _gotoNext = 2571056i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2571066i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2571091i32;
                    } else {
                        _gotoNext = 2571144i32;
                    };
                } else if (__value__ == (2571066i32)) {
                    _i++;
                    _gotoNext = 2571144i32;
                } else if (__value__ == (2571091i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2571144i32;
                } else if (__value__ == (2571144i32)) {
                    _base_2571144 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2571164 = (19 : stdgo.GoInt);
                    _expChar_2571209 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2571286i32;
                    } else {
                        _gotoNext = 2571387i32;
                    };
                } else if (__value__ == (2571286i32)) {
                    _base_2571144 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2571164 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2571209 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2571387i32;
                } else if (__value__ == (2571387i32)) {
                    _sawdot_2571387 = false;
                    _sawdigits_2571404 = false;
                    _nd_2571424 = (0 : stdgo.GoInt);
                    _ndMant_2571433 = (0 : stdgo.GoInt);
                    _dp_2571446 = (0 : stdgo.GoInt);
                    _gotoNext = 2571454i32;
                } else if (__value__ == (2571454i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2571461i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2571483i32;
                    } else {
                        _gotoNext = 2572203i32;
                    };
                } else if (__value__ == (2571483i32)) {
                    _gotoNext = 2571487i32;
                } else if (__value__ == (2571487i32)) {
                    {
                        _c_2571494 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2571494 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2571514i32;
                            } else if (__value__ == (_c_2571494 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2571566i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2571494 : Bool) && (_c_2571494 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2571659i32;
                            } else if (__value__ == (((_base_2571144 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2571494) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2571494) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2571951i32;
                            } else {
                                _gotoNext = 2572193i32;
                            };
                        };
                    };
                } else if (__value__ == (2571514i32)) {
                    _underscores_2570985 = true;
                    _i++;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2571566i32)) {
                    if (_sawdot_2571387) {
                        _gotoNext = 2571594i32;
                    } else {
                        _gotoNext = 2571619i32;
                    };
                } else if (__value__ == (2571594i32)) {
                    _loopBreak = true;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2571619i32)) {
                    _sawdot_2571387 = true;
                    _dp_2571446 = _nd_2571424;
                    _i++;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2571659i32)) {
                    _sawdigits_2571404 = true;
                    if (((_c_2571494 == (48 : stdgo.GoUInt8)) && (_nd_2571424 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2571732i32;
                    } else {
                        _gotoNext = 2571788i32;
                    };
                } else if (__value__ == (2571732i32)) {
                    _dp_2571446--;
                    _i++;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2571788i32)) {
                    _nd_2571424++;
                    if ((_ndMant_2571433 < _maxMantDigits_2571164 : Bool)) {
                        _gotoNext = 2571822i32;
                    } else if (_c_2571494 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2571912i32;
                    } else {
                        _gotoNext = 2571939i32;
                    };
                } else if (__value__ == (2571822i32)) {
                    _mantissa = (_mantissa * (_base_2571144) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2571494 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2571433++;
                    _gotoNext = 2571939i32;
                } else if (__value__ == (2571912i32)) {
                    _trunc = true;
                    _gotoNext = 2571939i32;
                } else if (__value__ == (2571939i32)) {
                    _i++;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2571951i32)) {
                    _sawdigits_2571404 = true;
                    _nd_2571424++;
                    if ((_ndMant_2571433 < _maxMantDigits_2571164 : Bool)) {
                        _gotoNext = 2572063i32;
                    } else {
                        _gotoNext = 2572151i32;
                    };
                } else if (__value__ == (2572063i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2571494) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2571433++;
                    _gotoNext = 2572178i32;
                } else if (__value__ == (2572151i32)) {
                    _gotoNext = 2572151i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2572178i32;
                } else if (__value__ == (2572178i32)) {
                    _i++;
                    _gotoNext = 2571461i32;
                } else if (__value__ == (2572193i32)) {
                    _gotoNext = 2572203i32;
                } else if (__value__ == (2572203i32)) {
                    if (!_sawdigits_2571404) {
                        _gotoNext = 2572217i32;
                    } else {
                        _gotoNext = 2572232i32;
                    };
                } else if (__value__ == (2572217i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2572232i32;
                } else if (__value__ == (2572232i32)) {
                    if (!_sawdot_2571387) {
                        _gotoNext = 2572243i32;
                    } else {
                        _gotoNext = 2572260i32;
                    };
                } else if (__value__ == (2572243i32)) {
                    _dp_2571446 = _nd_2571424;
                    _gotoNext = 2572260i32;
                } else if (__value__ == (2572260i32)) {
                    if (_base_2571144 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2572274i32;
                    } else {
                        _gotoNext = 2572519i32;
                    };
                } else if (__value__ == (2572274i32)) {
                    _dp_2571446 = (_dp_2571446 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2571433 = (_ndMant_2571433 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2572519i32;
                } else if (__value__ == (2572519i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2571209) : Bool)) {
                        _gotoNext = 2572559i32;
                    } else if (_base_2571144 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2572992i32;
                    } else {
                        _gotoNext = 2573033i32;
                    };
                } else if (__value__ == (2572559i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2572584i32;
                    } else {
                        _gotoNext = 2572602i32;
                    };
                } else if (__value__ == (2572584i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2572602i32;
                } else if (__value__ == (2572602i32)) {
                    _esign_2572602 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2572630i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2572663i32;
                    } else {
                        _gotoNext = 2572692i32;
                    };
                } else if (__value__ == (2572630i32)) {
                    _i++;
                    _gotoNext = 2572692i32;
                } else if (__value__ == (2572663i32)) {
                    _i++;
                    _esign_2572602 = (-1 : stdgo.GoInt);
                    _gotoNext = 2572692i32;
                } else if (__value__ == (2572692i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2572735i32;
                    } else {
                        _gotoNext = 2572753i32;
                    };
                } else if (__value__ == (2572735i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2572753i32;
                } else if (__value__ == (2572753i32)) {
                    _e_2572753 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2572762i32;
                } else if (__value__ == (2572762i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2572831i32;
                    } else {
                        _gotoNext = 2572954i32;
                    };
                } else if (__value__ == (2572827i32)) {
                    _i++;
                    _gotoNext = 2572762i32;
                } else if (__value__ == (2572831i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2572851i32;
                    } else {
                        _gotoNext = 2572897i32;
                    };
                } else if (__value__ == (2572851i32)) {
                    _underscores_2570985 = true;
                    _i++;
                    _gotoNext = 2572762i32;
                } else if (__value__ == (2572897i32)) {
                    if ((_e_2572753 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2572910i32;
                    } else {
                        _gotoNext = 2572827i32;
                    };
                } else if (__value__ == (2572910i32)) {
                    _e_2572753 = (((_e_2572753 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2572827i32;
                } else if (__value__ == (2572954i32)) {
                    _dp_2571446 = (_dp_2571446 + ((_e_2572753 * _esign_2572602 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2573033i32;
                } else if (__value__ == (2572992i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2573033i32;
                } else if (__value__ == (2573033i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2573050i32;
                    } else {
                        _gotoNext = 2573077i32;
                    };
                } else if (__value__ == (2573050i32)) {
                    _exp = (_dp_2571446 - _ndMant_2571433 : stdgo.GoInt);
                    _gotoNext = 2573077i32;
                } else if (__value__ == (2573077i32)) {
                    if ((_underscores_2570985 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2573116i32;
                    } else {
                        _gotoNext = 2573132i32;
                    };
                } else if (__value__ == (2573116i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2573132i32;
                } else if (__value__ == (2573132i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
