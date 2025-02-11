package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _expChar_2630921:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_2631206:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2631158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2631145:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2631116:Bool = false;
        var _base_2630856:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2630697:Bool = false;
        var _sawdot_2631099:Bool = false;
        var _e_2632465:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2632314:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2631136:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2630876:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2630697 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2630753i32;
                    } else {
                        _gotoNext = 2630768i32;
                    };
                } else if (__value__ == (2630753i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630768i32;
                } else if (__value__ == (2630768i32)) {
                    _gotoNext = 2630768i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2630778i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2630803i32;
                    } else {
                        _gotoNext = 2630856i32;
                    };
                } else if (__value__ == (2630778i32)) {
                    _i++;
                    _gotoNext = 2630856i32;
                } else if (__value__ == (2630803i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2630856i32;
                } else if (__value__ == (2630856i32)) {
                    _base_2630856 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2630876 = (19 : stdgo.GoInt);
                    _expChar_2630921 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2630998i32;
                    } else {
                        _gotoNext = 2631099i32;
                    };
                } else if (__value__ == (2630998i32)) {
                    _base_2630856 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2630876 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2630921 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2631099i32;
                } else if (__value__ == (2631099i32)) {
                    _sawdot_2631099 = false;
                    _sawdigits_2631116 = false;
                    _nd_2631136 = (0 : stdgo.GoInt);
                    _ndMant_2631145 = (0 : stdgo.GoInt);
                    _dp_2631158 = (0 : stdgo.GoInt);
                    _gotoNext = 2631166i32;
                } else if (__value__ == (2631166i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631173i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2631195i32;
                    } else {
                        _gotoNext = 2631915i32;
                    };
                } else if (__value__ == (2631195i32)) {
                    _gotoNext = 2631199i32;
                } else if (__value__ == (2631199i32)) {
                    {
                        _c_2631206 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2631206 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2631226i32;
                            } else if (__value__ == (_c_2631206 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2631278i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2631206 : Bool) && (_c_2631206 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2631371i32;
                            } else if (__value__ == (((_base_2630856 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2631206) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2631206) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2631663i32;
                            } else {
                                _gotoNext = 2631905i32;
                            };
                        };
                    };
                } else if (__value__ == (2631226i32)) {
                    _underscores_2630697 = true;
                    _i++;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631278i32)) {
                    if (_sawdot_2631099) {
                        _gotoNext = 2631306i32;
                    } else {
                        _gotoNext = 2631331i32;
                    };
                } else if (__value__ == (2631306i32)) {
                    _loopBreak = true;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631331i32)) {
                    _sawdot_2631099 = true;
                    _dp_2631158 = _nd_2631136;
                    _i++;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631371i32)) {
                    _sawdigits_2631116 = true;
                    if (((_c_2631206 == (48 : stdgo.GoUInt8)) && (_nd_2631136 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2631444i32;
                    } else {
                        _gotoNext = 2631500i32;
                    };
                } else if (__value__ == (2631444i32)) {
                    _dp_2631158--;
                    _i++;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631500i32)) {
                    _nd_2631136++;
                    if ((_ndMant_2631145 < _maxMantDigits_2630876 : Bool)) {
                        _gotoNext = 2631534i32;
                    } else if (_c_2631206 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2631624i32;
                    } else {
                        _gotoNext = 2631651i32;
                    };
                } else if (__value__ == (2631534i32)) {
                    _mantissa = (_mantissa * (_base_2630856) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2631206 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2631145++;
                    _gotoNext = 2631651i32;
                } else if (__value__ == (2631624i32)) {
                    _trunc = true;
                    _gotoNext = 2631651i32;
                } else if (__value__ == (2631651i32)) {
                    _i++;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631663i32)) {
                    _sawdigits_2631116 = true;
                    _nd_2631136++;
                    if ((_ndMant_2631145 < _maxMantDigits_2630876 : Bool)) {
                        _gotoNext = 2631775i32;
                    } else {
                        _gotoNext = 2631863i32;
                    };
                } else if (__value__ == (2631775i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2631206) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2631145++;
                    _gotoNext = 2631890i32;
                } else if (__value__ == (2631863i32)) {
                    _gotoNext = 2631863i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2631890i32;
                } else if (__value__ == (2631890i32)) {
                    _i++;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631905i32)) {
                    _gotoNext = 2631915i32;
                } else if (__value__ == (2631915i32)) {
                    if (!_sawdigits_2631116) {
                        _gotoNext = 2631929i32;
                    } else {
                        _gotoNext = 2631944i32;
                    };
                } else if (__value__ == (2631929i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631944i32;
                } else if (__value__ == (2631944i32)) {
                    if (!_sawdot_2631099) {
                        _gotoNext = 2631955i32;
                    } else {
                        _gotoNext = 2631972i32;
                    };
                } else if (__value__ == (2631955i32)) {
                    _dp_2631158 = _nd_2631136;
                    _gotoNext = 2631972i32;
                } else if (__value__ == (2631972i32)) {
                    if (_base_2630856 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631986i32;
                    } else {
                        _gotoNext = 2632231i32;
                    };
                } else if (__value__ == (2631986i32)) {
                    _dp_2631158 = (_dp_2631158 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2631145 = (_ndMant_2631145 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2632231i32;
                } else if (__value__ == (2632231i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2630921) : Bool)) {
                        _gotoNext = 2632271i32;
                    } else if (_base_2630856 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2632704i32;
                    } else {
                        _gotoNext = 2632745i32;
                    };
                } else if (__value__ == (2632271i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2632296i32;
                    } else {
                        _gotoNext = 2632314i32;
                    };
                } else if (__value__ == (2632296i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632314i32;
                } else if (__value__ == (2632314i32)) {
                    _esign_2632314 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2632342i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2632375i32;
                    } else {
                        _gotoNext = 2632404i32;
                    };
                } else if (__value__ == (2632342i32)) {
                    _i++;
                    _gotoNext = 2632404i32;
                } else if (__value__ == (2632375i32)) {
                    _i++;
                    _esign_2632314 = (-1 : stdgo.GoInt);
                    _gotoNext = 2632404i32;
                } else if (__value__ == (2632404i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2632447i32;
                    } else {
                        _gotoNext = 2632465i32;
                    };
                } else if (__value__ == (2632447i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632465i32;
                } else if (__value__ == (2632465i32)) {
                    _e_2632465 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2632474i32;
                } else if (__value__ == (2632474i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2632543i32;
                    } else {
                        _gotoNext = 2632666i32;
                    };
                } else if (__value__ == (2632539i32)) {
                    _i++;
                    _gotoNext = 2632474i32;
                } else if (__value__ == (2632543i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2632563i32;
                    } else {
                        _gotoNext = 2632609i32;
                    };
                } else if (__value__ == (2632563i32)) {
                    _underscores_2630697 = true;
                    _i++;
                    _gotoNext = 2632474i32;
                } else if (__value__ == (2632609i32)) {
                    if ((_e_2632465 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2632622i32;
                    } else {
                        _gotoNext = 2632539i32;
                    };
                } else if (__value__ == (2632622i32)) {
                    _e_2632465 = (((_e_2632465 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2632539i32;
                } else if (__value__ == (2632666i32)) {
                    _dp_2631158 = (_dp_2631158 + ((_e_2632465 * _esign_2632314 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2632745i32;
                } else if (__value__ == (2632704i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632745i32;
                } else if (__value__ == (2632745i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2632762i32;
                    } else {
                        _gotoNext = 2632789i32;
                    };
                } else if (__value__ == (2632762i32)) {
                    _exp = (_dp_2631158 - _ndMant_2631145 : stdgo.GoInt);
                    _gotoNext = 2632789i32;
                } else if (__value__ == (2632789i32)) {
                    if ((_underscores_2630697 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2632828i32;
                    } else {
                        _gotoNext = 2632844i32;
                    };
                } else if (__value__ == (2632828i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632844i32;
                } else if (__value__ == (2632844i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
