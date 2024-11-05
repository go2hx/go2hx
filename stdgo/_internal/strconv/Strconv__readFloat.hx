package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2762703:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2763962:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2762655:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2762613:Bool = false;
        var _underscores_2762194:Bool = false;
        var _maxMantDigits_2762373:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2762353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2763811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2762642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2762633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2762596:Bool = false;
        var _expChar_2762418:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2762194 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2762250i32;
                    } else {
                        _gotoNext = 2762265i32;
                    };
                } else if (__value__ == (2762250i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2762265i32;
                } else if (__value__ == (2762265i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2762265i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2762275i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2762300i32;
                    } else {
                        _gotoNext = 2762353i32;
                    };
                } else if (__value__ == (2762275i32)) {
                    _i++;
                    _gotoNext = 2762353i32;
                } else if (__value__ == (2762300i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2762353i32;
                } else if (__value__ == (2762353i32)) {
                    _base_2762353 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2762373 = (19 : stdgo.GoInt);
                    _expChar_2762418 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2762495i32;
                    } else {
                        _gotoNext = 2762596i32;
                    };
                } else if (__value__ == (2762495i32)) {
                    _base_2762353 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2762373 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2762418 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2762596i32;
                } else if (__value__ == (2762596i32)) {
                    _sawdot_2762596 = false;
                    _sawdigits_2762613 = false;
                    _nd_2762633 = (0 : stdgo.GoInt);
                    _ndMant_2762642 = (0 : stdgo.GoInt);
                    _dp_2762655 = (0 : stdgo.GoInt);
                    _gotoNext = 2762663i32;
                } else if (__value__ == (2762663i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2762670i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2762692i32;
                    } else {
                        _gotoNext = 2763412i32;
                    };
                } else if (__value__ == (2762692i32)) {
                    _c_2762703 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2762696i32;
                } else if (__value__ == (2762696i32)) {
                    {
                        _c_2762703 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2762703 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2762723i32;
                            } else if (__value__ == (_c_2762703 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2762775i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2762703 : Bool) && (_c_2762703 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2762868i32;
                            } else if (__value__ == (((_base_2762353 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2762703) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2762703) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2763160i32;
                            } else {
                                _gotoNext = 2763402i32;
                            };
                        };
                    };
                } else if (__value__ == (2762723i32)) {
                    _underscores_2762194 = true;
                    _i++;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2762775i32)) {
                    if (_sawdot_2762596) {
                        _gotoNext = 2762803i32;
                    } else {
                        _gotoNext = 2762828i32;
                    };
                } else if (__value__ == (2762803i32)) {
                    _loopBreak = true;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2762828i32)) {
                    _sawdot_2762596 = true;
                    _dp_2762655 = _nd_2762633;
                    _i++;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2762868i32)) {
                    _sawdigits_2762613 = true;
                    if (((_c_2762703 == (48 : stdgo.GoUInt8)) && (_nd_2762633 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2762941i32;
                    } else {
                        _gotoNext = 2762997i32;
                    };
                } else if (__value__ == (2762941i32)) {
                    _dp_2762655--;
                    _i++;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2762997i32)) {
                    _nd_2762633++;
                    if ((_ndMant_2762642 < _maxMantDigits_2762373 : Bool)) {
                        _gotoNext = 2763031i32;
                    } else if (_c_2762703 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2763121i32;
                    } else {
                        _gotoNext = 2763148i32;
                    };
                } else if (__value__ == (2763031i32)) {
                    _mantissa = (_mantissa * (_base_2762353) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2762703 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2762642++;
                    _gotoNext = 2763148i32;
                } else if (__value__ == (2763121i32)) {
                    _trunc = true;
                    _gotoNext = 2763148i32;
                } else if (__value__ == (2763148i32)) {
                    _i++;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2763160i32)) {
                    _sawdigits_2762613 = true;
                    _nd_2762633++;
                    if ((_ndMant_2762642 < _maxMantDigits_2762373 : Bool)) {
                        _gotoNext = 2763272i32;
                    } else {
                        _gotoNext = 2763360i32;
                    };
                } else if (__value__ == (2763272i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2762703) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2762642++;
                    _gotoNext = 2763387i32;
                } else if (__value__ == (2763360i32)) {
                    _trunc = true;
                    _gotoNext = 2763387i32;
                } else if (__value__ == (2763387i32)) {
                    _i++;
                    _gotoNext = 2762670i32;
                } else if (__value__ == (2763402i32)) {
                    _gotoNext = 2763412i32;
                } else if (__value__ == (2763412i32)) {
                    if (!_sawdigits_2762613) {
                        _gotoNext = 2763426i32;
                    } else {
                        _gotoNext = 2763441i32;
                    };
                } else if (__value__ == (2763426i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2763441i32;
                } else if (__value__ == (2763441i32)) {
                    if (!_sawdot_2762596) {
                        _gotoNext = 2763452i32;
                    } else {
                        _gotoNext = 2763469i32;
                    };
                } else if (__value__ == (2763452i32)) {
                    _dp_2762655 = _nd_2762633;
                    _gotoNext = 2763469i32;
                } else if (__value__ == (2763469i32)) {
                    if (_base_2762353 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2763483i32;
                    } else {
                        _gotoNext = 2763728i32;
                    };
                } else if (__value__ == (2763483i32)) {
                    _dp_2762655 = (_dp_2762655 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2762642 = (_ndMant_2762642 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2763728i32;
                } else if (__value__ == (2763728i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2762418) : Bool)) {
                        _gotoNext = 2763768i32;
                    } else if (_base_2762353 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2764201i32;
                    } else {
                        _gotoNext = 2764242i32;
                    };
                } else if (__value__ == (2763768i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2763793i32;
                    } else {
                        _gotoNext = 2763811i32;
                    };
                } else if (__value__ == (2763793i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2763811i32;
                } else if (__value__ == (2763811i32)) {
                    _esign_2763811 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2763839i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2763872i32;
                    } else {
                        _gotoNext = 2763901i32;
                    };
                } else if (__value__ == (2763839i32)) {
                    _i++;
                    _gotoNext = 2763901i32;
                } else if (__value__ == (2763872i32)) {
                    _i++;
                    _esign_2763811 = (-1 : stdgo.GoInt);
                    _gotoNext = 2763901i32;
                } else if (__value__ == (2763901i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2763944i32;
                    } else {
                        _gotoNext = 2763962i32;
                    };
                } else if (__value__ == (2763944i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2763962i32;
                } else if (__value__ == (2763962i32)) {
                    _e_2763962 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2763971i32;
                } else if (__value__ == (2763971i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2764040i32;
                    } else {
                        _gotoNext = 2764163i32;
                    };
                } else if (__value__ == (2764036i32)) {
                    _i++;
                    _gotoNext = 2763971i32;
                } else if (__value__ == (2764040i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2764060i32;
                    } else {
                        _gotoNext = 2764106i32;
                    };
                } else if (__value__ == (2764060i32)) {
                    _underscores_2762194 = true;
                    _i++;
                    _gotoNext = 2763971i32;
                } else if (__value__ == (2764106i32)) {
                    if ((_e_2763962 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2764119i32;
                    } else {
                        _gotoNext = 2764036i32;
                    };
                } else if (__value__ == (2764119i32)) {
                    _e_2763962 = (((_e_2763962 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2764036i32;
                } else if (__value__ == (2764163i32)) {
                    _dp_2762655 = (_dp_2762655 + ((_e_2763962 * _esign_2763811 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2764242i32;
                } else if (__value__ == (2764201i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2764242i32;
                } else if (__value__ == (2764242i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2764259i32;
                    } else {
                        _gotoNext = 2764286i32;
                    };
                } else if (__value__ == (2764259i32)) {
                    _exp = (_dp_2762655 - _ndMant_2762642 : stdgo.GoInt);
                    _gotoNext = 2764286i32;
                } else if (__value__ == (2764286i32)) {
                    if ((_underscores_2762194 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2764325i32;
                    } else {
                        _gotoNext = 2764341i32;
                    };
                } else if (__value__ == (2764325i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2764341i32;
                } else if (__value__ == (2764341i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
