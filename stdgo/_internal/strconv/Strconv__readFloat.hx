package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2701487:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2701465:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2701445:Bool = false;
        var _loopBreak = false;
        var _ndMant_2701474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2701250:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2701205:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2702794:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2702643:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2701535:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdot_2701428:Bool = false;
        var _base_2701185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2701026:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2701026 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2701082i32;
                    } else {
                        _gotoNext = 2701097i32;
                    };
                } else if (__value__ == (2701082i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2701097i32;
                } else if (__value__ == (2701097i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2701097i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2701107i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2701132i32;
                    } else {
                        _gotoNext = 2701185i32;
                    };
                } else if (__value__ == (2701107i32)) {
                    _i++;
                    _gotoNext = 2701185i32;
                } else if (__value__ == (2701132i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2701185i32;
                } else if (__value__ == (2701185i32)) {
                    _base_2701185 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2701205 = (19 : stdgo.GoInt);
                    _expChar_2701250 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2701327i32;
                    } else {
                        _gotoNext = 2701428i32;
                    };
                } else if (__value__ == (2701327i32)) {
                    _base_2701185 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2701205 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2701250 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2701428i32;
                } else if (__value__ == (2701428i32)) {
                    _sawdot_2701428 = false;
                    _sawdigits_2701445 = false;
                    _nd_2701465 = (0 : stdgo.GoInt);
                    _ndMant_2701474 = (0 : stdgo.GoInt);
                    _dp_2701487 = (0 : stdgo.GoInt);
                    _gotoNext = 2701495i32;
                } else if (__value__ == (2701495i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2701502i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2701524i32;
                    } else {
                        _gotoNext = 2702244i32;
                    };
                } else if (__value__ == (2701524i32)) {
                    _c_2701535 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2701528i32;
                } else if (__value__ == (2701528i32)) {
                    {
                        _c_2701535 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2701535 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2701555i32;
                            } else if (__value__ == (_c_2701535 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2701607i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2701535 : Bool) && (_c_2701535 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2701700i32;
                            } else if (__value__ == (((_base_2701185 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2701535) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2701535) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2701992i32;
                            } else {
                                _gotoNext = 2702234i32;
                            };
                        };
                    };
                } else if (__value__ == (2701555i32)) {
                    _underscores_2701026 = true;
                    _i++;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2701607i32)) {
                    if (_sawdot_2701428) {
                        _gotoNext = 2701635i32;
                    } else {
                        _gotoNext = 2701660i32;
                    };
                } else if (__value__ == (2701635i32)) {
                    _loopBreak = true;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2701660i32)) {
                    _sawdot_2701428 = true;
                    _dp_2701487 = _nd_2701465;
                    _i++;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2701700i32)) {
                    _sawdigits_2701445 = true;
                    if (((_c_2701535 == (48 : stdgo.GoUInt8)) && (_nd_2701465 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2701773i32;
                    } else {
                        _gotoNext = 2701829i32;
                    };
                } else if (__value__ == (2701773i32)) {
                    _dp_2701487--;
                    _i++;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2701829i32)) {
                    _nd_2701465++;
                    if ((_ndMant_2701474 < _maxMantDigits_2701205 : Bool)) {
                        _gotoNext = 2701863i32;
                    } else if (_c_2701535 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2701953i32;
                    } else {
                        _gotoNext = 2701980i32;
                    };
                } else if (__value__ == (2701863i32)) {
                    _mantissa = (_mantissa * (_base_2701185) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2701535 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2701474++;
                    _gotoNext = 2701980i32;
                } else if (__value__ == (2701953i32)) {
                    _trunc = true;
                    _gotoNext = 2701980i32;
                } else if (__value__ == (2701980i32)) {
                    _i++;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2701992i32)) {
                    _sawdigits_2701445 = true;
                    _nd_2701465++;
                    if ((_ndMant_2701474 < _maxMantDigits_2701205 : Bool)) {
                        _gotoNext = 2702104i32;
                    } else {
                        _gotoNext = 2702192i32;
                    };
                } else if (__value__ == (2702104i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2701535) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2701474++;
                    _gotoNext = 2702219i32;
                } else if (__value__ == (2702192i32)) {
                    _gotoNext = 2702192i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2702219i32;
                } else if (__value__ == (2702219i32)) {
                    _i++;
                    _gotoNext = 2701502i32;
                } else if (__value__ == (2702234i32)) {
                    _gotoNext = 2702244i32;
                } else if (__value__ == (2702244i32)) {
                    if (!_sawdigits_2701445) {
                        _gotoNext = 2702258i32;
                    } else {
                        _gotoNext = 2702273i32;
                    };
                } else if (__value__ == (2702258i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2702273i32;
                } else if (__value__ == (2702273i32)) {
                    if (!_sawdot_2701428) {
                        _gotoNext = 2702284i32;
                    } else {
                        _gotoNext = 2702301i32;
                    };
                } else if (__value__ == (2702284i32)) {
                    _dp_2701487 = _nd_2701465;
                    _gotoNext = 2702301i32;
                } else if (__value__ == (2702301i32)) {
                    if (_base_2701185 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2702315i32;
                    } else {
                        _gotoNext = 2702560i32;
                    };
                } else if (__value__ == (2702315i32)) {
                    _dp_2701487 = (_dp_2701487 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2701474 = (_ndMant_2701474 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2702560i32;
                } else if (__value__ == (2702560i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2701250) : Bool)) {
                        _gotoNext = 2702600i32;
                    } else if (_base_2701185 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2703033i32;
                    } else {
                        _gotoNext = 2703074i32;
                    };
                } else if (__value__ == (2702600i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2702625i32;
                    } else {
                        _gotoNext = 2702643i32;
                    };
                } else if (__value__ == (2702625i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2702643i32;
                } else if (__value__ == (2702643i32)) {
                    _esign_2702643 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2702671i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2702704i32;
                    } else {
                        _gotoNext = 2702733i32;
                    };
                } else if (__value__ == (2702671i32)) {
                    _i++;
                    _gotoNext = 2702733i32;
                } else if (__value__ == (2702704i32)) {
                    _i++;
                    _esign_2702643 = (-1 : stdgo.GoInt);
                    _gotoNext = 2702733i32;
                } else if (__value__ == (2702733i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2702776i32;
                    } else {
                        _gotoNext = 2702794i32;
                    };
                } else if (__value__ == (2702776i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2702794i32;
                } else if (__value__ == (2702794i32)) {
                    _e_2702794 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2702803i32;
                } else if (__value__ == (2702803i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2702872i32;
                    } else {
                        _gotoNext = 2702995i32;
                    };
                } else if (__value__ == (2702868i32)) {
                    _i++;
                    _gotoNext = 2702803i32;
                } else if (__value__ == (2702872i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2702892i32;
                    } else {
                        _gotoNext = 2702938i32;
                    };
                } else if (__value__ == (2702892i32)) {
                    _underscores_2701026 = true;
                    _i++;
                    _gotoNext = 2702803i32;
                } else if (__value__ == (2702938i32)) {
                    if ((_e_2702794 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2702951i32;
                    } else {
                        _gotoNext = 2702868i32;
                    };
                } else if (__value__ == (2702951i32)) {
                    _e_2702794 = (((_e_2702794 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2702868i32;
                } else if (__value__ == (2702995i32)) {
                    _dp_2701487 = (_dp_2701487 + ((_e_2702794 * _esign_2702643 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2703074i32;
                } else if (__value__ == (2703033i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2703074i32;
                } else if (__value__ == (2703074i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2703091i32;
                    } else {
                        _gotoNext = 2703118i32;
                    };
                } else if (__value__ == (2703091i32)) {
                    _exp = (_dp_2701487 - _ndMant_2701474 : stdgo.GoInt);
                    _gotoNext = 2703118i32;
                } else if (__value__ == (2703118i32)) {
                    if ((_underscores_2701026 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2703157i32;
                    } else {
                        _gotoNext = 2703173i32;
                    };
                } else if (__value__ == (2703157i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2703173i32;
                } else if (__value__ == (2703173i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
