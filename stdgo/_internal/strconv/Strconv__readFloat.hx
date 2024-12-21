package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2803959:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2802630:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2802593:Bool = false;
        var _dp_2802652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2802639:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2802370:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2803808:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2802700:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2802350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2802191:Bool = false;
        var _sawdigits_2802610:Bool = false;
        var _expChar_2802415:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2802191 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2802247i32;
                    } else {
                        _gotoNext = 2802262i32;
                    };
                } else if (__value__ == (2802247i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2802262i32;
                } else if (__value__ == (2802262i32)) {
                    _gotoNext = 2802262i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2802272i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2802297i32;
                    } else {
                        _gotoNext = 2802350i32;
                    };
                } else if (__value__ == (2802272i32)) {
                    _i++;
                    _gotoNext = 2802350i32;
                } else if (__value__ == (2802297i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2802350i32;
                } else if (__value__ == (2802350i32)) {
                    _base_2802350 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2802370 = (19 : stdgo.GoInt);
                    _expChar_2802415 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2802492i32;
                    } else {
                        _gotoNext = 2802593i32;
                    };
                } else if (__value__ == (2802492i32)) {
                    _base_2802350 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2802370 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2802415 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2802593i32;
                } else if (__value__ == (2802593i32)) {
                    _sawdot_2802593 = false;
                    _sawdigits_2802610 = false;
                    _nd_2802630 = (0 : stdgo.GoInt);
                    _ndMant_2802639 = (0 : stdgo.GoInt);
                    _dp_2802652 = (0 : stdgo.GoInt);
                    _gotoNext = 2802660i32;
                } else if (__value__ == (2802660i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2802667i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2802689i32;
                    } else {
                        _gotoNext = 2803409i32;
                    };
                } else if (__value__ == (2802689i32)) {
                    _gotoNext = 2802693i32;
                } else if (__value__ == (2802693i32)) {
                    {
                        _c_2802700 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2802700 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2802720i32;
                            } else if (__value__ == (_c_2802700 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2802772i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2802700 : Bool) && (_c_2802700 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2802865i32;
                            } else if (__value__ == (((_base_2802350 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2802700) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2802700) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2803157i32;
                            } else {
                                _gotoNext = 2803399i32;
                            };
                        };
                    };
                } else if (__value__ == (2802720i32)) {
                    _underscores_2802191 = true;
                    _i++;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2802772i32)) {
                    if (_sawdot_2802593) {
                        _gotoNext = 2802800i32;
                    } else {
                        _gotoNext = 2802825i32;
                    };
                } else if (__value__ == (2802800i32)) {
                    _loopBreak = true;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2802825i32)) {
                    _sawdot_2802593 = true;
                    _dp_2802652 = _nd_2802630;
                    _i++;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2802865i32)) {
                    _sawdigits_2802610 = true;
                    if (((_c_2802700 == (48 : stdgo.GoUInt8)) && (_nd_2802630 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2802938i32;
                    } else {
                        _gotoNext = 2802994i32;
                    };
                } else if (__value__ == (2802938i32)) {
                    _dp_2802652--;
                    _i++;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2802994i32)) {
                    _nd_2802630++;
                    if ((_ndMant_2802639 < _maxMantDigits_2802370 : Bool)) {
                        _gotoNext = 2803028i32;
                    } else if (_c_2802700 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2803118i32;
                    } else {
                        _gotoNext = 2803145i32;
                    };
                } else if (__value__ == (2803028i32)) {
                    _mantissa = (_mantissa * (_base_2802350) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2802700 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2802639++;
                    _gotoNext = 2803145i32;
                } else if (__value__ == (2803118i32)) {
                    _trunc = true;
                    _gotoNext = 2803145i32;
                } else if (__value__ == (2803145i32)) {
                    _i++;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2803157i32)) {
                    _sawdigits_2802610 = true;
                    _nd_2802630++;
                    if ((_ndMant_2802639 < _maxMantDigits_2802370 : Bool)) {
                        _gotoNext = 2803269i32;
                    } else {
                        _gotoNext = 2803357i32;
                    };
                } else if (__value__ == (2803269i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2802700) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2802639++;
                    _gotoNext = 2803384i32;
                } else if (__value__ == (2803357i32)) {
                    _gotoNext = 2803357i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2803384i32;
                } else if (__value__ == (2803384i32)) {
                    _i++;
                    _gotoNext = 2802667i32;
                } else if (__value__ == (2803399i32)) {
                    _gotoNext = 2803409i32;
                } else if (__value__ == (2803409i32)) {
                    if (!_sawdigits_2802610) {
                        _gotoNext = 2803423i32;
                    } else {
                        _gotoNext = 2803438i32;
                    };
                } else if (__value__ == (2803423i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803438i32;
                } else if (__value__ == (2803438i32)) {
                    if (!_sawdot_2802593) {
                        _gotoNext = 2803449i32;
                    } else {
                        _gotoNext = 2803466i32;
                    };
                } else if (__value__ == (2803449i32)) {
                    _dp_2802652 = _nd_2802630;
                    _gotoNext = 2803466i32;
                } else if (__value__ == (2803466i32)) {
                    if (_base_2802350 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2803480i32;
                    } else {
                        _gotoNext = 2803725i32;
                    };
                } else if (__value__ == (2803480i32)) {
                    _dp_2802652 = (_dp_2802652 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2802639 = (_ndMant_2802639 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2803725i32;
                } else if (__value__ == (2803725i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2802415) : Bool)) {
                        _gotoNext = 2803765i32;
                    } else if (_base_2802350 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2804198i32;
                    } else {
                        _gotoNext = 2804239i32;
                    };
                } else if (__value__ == (2803765i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2803790i32;
                    } else {
                        _gotoNext = 2803808i32;
                    };
                } else if (__value__ == (2803790i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803808i32;
                } else if (__value__ == (2803808i32)) {
                    _esign_2803808 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2803836i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2803869i32;
                    } else {
                        _gotoNext = 2803898i32;
                    };
                } else if (__value__ == (2803836i32)) {
                    _i++;
                    _gotoNext = 2803898i32;
                } else if (__value__ == (2803869i32)) {
                    _i++;
                    _esign_2803808 = (-1 : stdgo.GoInt);
                    _gotoNext = 2803898i32;
                } else if (__value__ == (2803898i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2803941i32;
                    } else {
                        _gotoNext = 2803959i32;
                    };
                } else if (__value__ == (2803941i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2803959i32;
                } else if (__value__ == (2803959i32)) {
                    _e_2803959 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2803968i32;
                } else if (__value__ == (2803968i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2804037i32;
                    } else {
                        _gotoNext = 2804160i32;
                    };
                } else if (__value__ == (2804033i32)) {
                    _i++;
                    _gotoNext = 2803968i32;
                } else if (__value__ == (2804037i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2804057i32;
                    } else {
                        _gotoNext = 2804103i32;
                    };
                } else if (__value__ == (2804057i32)) {
                    _underscores_2802191 = true;
                    _i++;
                    _gotoNext = 2803968i32;
                } else if (__value__ == (2804103i32)) {
                    if ((_e_2803959 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2804116i32;
                    } else {
                        _gotoNext = 2804033i32;
                    };
                } else if (__value__ == (2804116i32)) {
                    _e_2803959 = (((_e_2803959 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2804033i32;
                } else if (__value__ == (2804160i32)) {
                    _dp_2802652 = (_dp_2802652 + ((_e_2803959 * _esign_2803808 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2804239i32;
                } else if (__value__ == (2804198i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2804239i32;
                } else if (__value__ == (2804239i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2804256i32;
                    } else {
                        _gotoNext = 2804283i32;
                    };
                } else if (__value__ == (2804256i32)) {
                    _exp = (_dp_2802652 - _ndMant_2802639 : stdgo.GoInt);
                    _gotoNext = 2804283i32;
                } else if (__value__ == (2804283i32)) {
                    if ((_underscores_2802191 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2804322i32;
                    } else {
                        _gotoNext = 2804338i32;
                    };
                } else if (__value__ == (2804322i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2804338i32;
                } else if (__value__ == (2804338i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
