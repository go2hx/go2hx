package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_2742030:Bool = false;
        var _e_2743396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2742137:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2741787:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _loopBreak = false;
        var _dp_2742089:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2741852:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2743245:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2742067:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2742047:Bool = false;
        var _underscores_2741628:Bool = false;
        var _ndMant_2742076:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2741807:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2741628 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2741684i32;
                    } else {
                        _gotoNext = 2741699i32;
                    };
                } else if (__value__ == (2741684i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2741699i32;
                } else if (__value__ == (2741699i32)) {
                    _gotoNext = 2741699i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2741709i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2741734i32;
                    } else {
                        _gotoNext = 2741787i32;
                    };
                } else if (__value__ == (2741709i32)) {
                    _i++;
                    _gotoNext = 2741787i32;
                } else if (__value__ == (2741734i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2741787i32;
                } else if (__value__ == (2741787i32)) {
                    _base_2741787 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2741807 = (19 : stdgo.GoInt);
                    _expChar_2741852 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2741929i32;
                    } else {
                        _gotoNext = 2742030i32;
                    };
                } else if (__value__ == (2741929i32)) {
                    _base_2741787 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2741807 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2741852 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2742030i32;
                } else if (__value__ == (2742030i32)) {
                    _sawdot_2742030 = false;
                    _sawdigits_2742047 = false;
                    _nd_2742067 = (0 : stdgo.GoInt);
                    _ndMant_2742076 = (0 : stdgo.GoInt);
                    _dp_2742089 = (0 : stdgo.GoInt);
                    _gotoNext = 2742097i32;
                } else if (__value__ == (2742097i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742104i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2742126i32;
                    } else {
                        _gotoNext = 2742846i32;
                    };
                } else if (__value__ == (2742126i32)) {
                    _gotoNext = 2742130i32;
                } else if (__value__ == (2742130i32)) {
                    {
                        _c_2742137 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2742137 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2742157i32;
                            } else if (__value__ == (_c_2742137 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2742209i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2742137 : Bool) && (_c_2742137 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2742302i32;
                            } else if (__value__ == (((_base_2741787 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2742137) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2742137) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2742594i32;
                            } else {
                                _gotoNext = 2742836i32;
                            };
                        };
                    };
                } else if (__value__ == (2742157i32)) {
                    _underscores_2741628 = true;
                    _i++;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742209i32)) {
                    if (_sawdot_2742030) {
                        _gotoNext = 2742237i32;
                    } else {
                        _gotoNext = 2742262i32;
                    };
                } else if (__value__ == (2742237i32)) {
                    _loopBreak = true;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742262i32)) {
                    _sawdot_2742030 = true;
                    _dp_2742089 = _nd_2742067;
                    _i++;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742302i32)) {
                    _sawdigits_2742047 = true;
                    if (((_c_2742137 == (48 : stdgo.GoUInt8)) && (_nd_2742067 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2742375i32;
                    } else {
                        _gotoNext = 2742431i32;
                    };
                } else if (__value__ == (2742375i32)) {
                    _dp_2742089--;
                    _i++;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742431i32)) {
                    _nd_2742067++;
                    if ((_ndMant_2742076 < _maxMantDigits_2741807 : Bool)) {
                        _gotoNext = 2742465i32;
                    } else if (_c_2742137 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2742555i32;
                    } else {
                        _gotoNext = 2742582i32;
                    };
                } else if (__value__ == (2742465i32)) {
                    _mantissa = (_mantissa * (_base_2741787) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2742137 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2742076++;
                    _gotoNext = 2742582i32;
                } else if (__value__ == (2742555i32)) {
                    _trunc = true;
                    _gotoNext = 2742582i32;
                } else if (__value__ == (2742582i32)) {
                    _i++;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742594i32)) {
                    _sawdigits_2742047 = true;
                    _nd_2742067++;
                    if ((_ndMant_2742076 < _maxMantDigits_2741807 : Bool)) {
                        _gotoNext = 2742706i32;
                    } else {
                        _gotoNext = 2742794i32;
                    };
                } else if (__value__ == (2742706i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2742137) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2742076++;
                    _gotoNext = 2742821i32;
                } else if (__value__ == (2742794i32)) {
                    _gotoNext = 2742794i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2742821i32;
                } else if (__value__ == (2742821i32)) {
                    _i++;
                    _gotoNext = 2742104i32;
                } else if (__value__ == (2742836i32)) {
                    _gotoNext = 2742846i32;
                } else if (__value__ == (2742846i32)) {
                    if (!_sawdigits_2742047) {
                        _gotoNext = 2742860i32;
                    } else {
                        _gotoNext = 2742875i32;
                    };
                } else if (__value__ == (2742860i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2742875i32;
                } else if (__value__ == (2742875i32)) {
                    if (!_sawdot_2742030) {
                        _gotoNext = 2742886i32;
                    } else {
                        _gotoNext = 2742903i32;
                    };
                } else if (__value__ == (2742886i32)) {
                    _dp_2742089 = _nd_2742067;
                    _gotoNext = 2742903i32;
                } else if (__value__ == (2742903i32)) {
                    if (_base_2741787 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2742917i32;
                    } else {
                        _gotoNext = 2743162i32;
                    };
                } else if (__value__ == (2742917i32)) {
                    _dp_2742089 = (_dp_2742089 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2742076 = (_ndMant_2742076 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2743162i32;
                } else if (__value__ == (2743162i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2741852) : Bool)) {
                        _gotoNext = 2743202i32;
                    } else if (_base_2741787 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2743635i32;
                    } else {
                        _gotoNext = 2743676i32;
                    };
                } else if (__value__ == (2743202i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2743227i32;
                    } else {
                        _gotoNext = 2743245i32;
                    };
                } else if (__value__ == (2743227i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2743245i32;
                } else if (__value__ == (2743245i32)) {
                    _esign_2743245 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2743273i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2743306i32;
                    } else {
                        _gotoNext = 2743335i32;
                    };
                } else if (__value__ == (2743273i32)) {
                    _i++;
                    _gotoNext = 2743335i32;
                } else if (__value__ == (2743306i32)) {
                    _i++;
                    _esign_2743245 = (-1 : stdgo.GoInt);
                    _gotoNext = 2743335i32;
                } else if (__value__ == (2743335i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2743378i32;
                    } else {
                        _gotoNext = 2743396i32;
                    };
                } else if (__value__ == (2743378i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2743396i32;
                } else if (__value__ == (2743396i32)) {
                    _e_2743396 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2743405i32;
                } else if (__value__ == (2743405i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2743474i32;
                    } else {
                        _gotoNext = 2743597i32;
                    };
                } else if (__value__ == (2743470i32)) {
                    _i++;
                    _gotoNext = 2743405i32;
                } else if (__value__ == (2743474i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2743494i32;
                    } else {
                        _gotoNext = 2743540i32;
                    };
                } else if (__value__ == (2743494i32)) {
                    _underscores_2741628 = true;
                    _i++;
                    _gotoNext = 2743405i32;
                } else if (__value__ == (2743540i32)) {
                    if ((_e_2743396 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2743553i32;
                    } else {
                        _gotoNext = 2743470i32;
                    };
                } else if (__value__ == (2743553i32)) {
                    _e_2743396 = (((_e_2743396 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2743470i32;
                } else if (__value__ == (2743597i32)) {
                    _dp_2742089 = (_dp_2742089 + ((_e_2743396 * _esign_2743245 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2743676i32;
                } else if (__value__ == (2743635i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2743676i32;
                } else if (__value__ == (2743676i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2743693i32;
                    } else {
                        _gotoNext = 2743720i32;
                    };
                } else if (__value__ == (2743693i32)) {
                    _exp = (_dp_2742089 - _ndMant_2742076 : stdgo.GoInt);
                    _gotoNext = 2743720i32;
                } else if (__value__ == (2743720i32)) {
                    if ((_underscores_2741628 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2743759i32;
                    } else {
                        _gotoNext = 2743775i32;
                    };
                } else if (__value__ == (2743759i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2743775i32;
                } else if (__value__ == (2743775i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
