package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _nd_2645633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2645418:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2646962:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2645703:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2645642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2645613:Bool = false;
        var _maxMantDigits_2645373:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2645353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2646811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2645194:Bool = false;
        var _dp_2645655:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2645596:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2645194 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2645250i32;
                    } else {
                        _gotoNext = 2645265i32;
                    };
                } else if (__value__ == (2645250i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645265i32;
                } else if (__value__ == (2645265i32)) {
                    _gotoNext = 2645265i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2645275i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2645300i32;
                    } else {
                        _gotoNext = 2645353i32;
                    };
                } else if (__value__ == (2645275i32)) {
                    _i++;
                    _gotoNext = 2645353i32;
                } else if (__value__ == (2645300i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2645353i32;
                } else if (__value__ == (2645353i32)) {
                    _base_2645353 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2645373 = (19 : stdgo.GoInt);
                    _expChar_2645418 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2645495i32;
                    } else {
                        _gotoNext = 2645596i32;
                    };
                } else if (__value__ == (2645495i32)) {
                    _base_2645353 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2645373 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2645418 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2645596i32;
                } else if (__value__ == (2645596i32)) {
                    _sawdot_2645596 = false;
                    _sawdigits_2645613 = false;
                    _nd_2645633 = (0 : stdgo.GoInt);
                    _ndMant_2645642 = (0 : stdgo.GoInt);
                    _dp_2645655 = (0 : stdgo.GoInt);
                    _gotoNext = 2645663i32;
                } else if (__value__ == (2645663i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2645670i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2645692i32;
                    } else {
                        _gotoNext = 2646412i32;
                    };
                } else if (__value__ == (2645692i32)) {
                    _gotoNext = 2645696i32;
                } else if (__value__ == (2645696i32)) {
                    {
                        _c_2645703 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2645703 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2645723i32;
                            } else if (__value__ == (_c_2645703 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2645775i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2645703 : Bool) && (_c_2645703 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2645868i32;
                            } else if (__value__ == (((_base_2645353 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2645703) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2645703) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2646160i32;
                            } else {
                                _gotoNext = 2646402i32;
                            };
                        };
                    };
                } else if (__value__ == (2645723i32)) {
                    _underscores_2645194 = true;
                    _i++;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2645775i32)) {
                    if (_sawdot_2645596) {
                        _gotoNext = 2645803i32;
                    } else {
                        _gotoNext = 2645828i32;
                    };
                } else if (__value__ == (2645803i32)) {
                    _loopBreak = true;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2645828i32)) {
                    _sawdot_2645596 = true;
                    _dp_2645655 = _nd_2645633;
                    _i++;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2645868i32)) {
                    _sawdigits_2645613 = true;
                    if (((_c_2645703 == (48 : stdgo.GoUInt8)) && (_nd_2645633 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2645941i32;
                    } else {
                        _gotoNext = 2645997i32;
                    };
                } else if (__value__ == (2645941i32)) {
                    _dp_2645655--;
                    _i++;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2645997i32)) {
                    _nd_2645633++;
                    if ((_ndMant_2645642 < _maxMantDigits_2645373 : Bool)) {
                        _gotoNext = 2646031i32;
                    } else if (_c_2645703 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2646121i32;
                    } else {
                        _gotoNext = 2646148i32;
                    };
                } else if (__value__ == (2646031i32)) {
                    _mantissa = (_mantissa * (_base_2645353) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2645703 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2645642++;
                    _gotoNext = 2646148i32;
                } else if (__value__ == (2646121i32)) {
                    _trunc = true;
                    _gotoNext = 2646148i32;
                } else if (__value__ == (2646148i32)) {
                    _i++;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2646160i32)) {
                    _sawdigits_2645613 = true;
                    _nd_2645633++;
                    if ((_ndMant_2645642 < _maxMantDigits_2645373 : Bool)) {
                        _gotoNext = 2646272i32;
                    } else {
                        _gotoNext = 2646360i32;
                    };
                } else if (__value__ == (2646272i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2645703) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2645642++;
                    _gotoNext = 2646387i32;
                } else if (__value__ == (2646360i32)) {
                    _gotoNext = 2646360i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2646387i32;
                } else if (__value__ == (2646387i32)) {
                    _i++;
                    _gotoNext = 2645670i32;
                } else if (__value__ == (2646402i32)) {
                    _gotoNext = 2646412i32;
                } else if (__value__ == (2646412i32)) {
                    if (!_sawdigits_2645613) {
                        _gotoNext = 2646426i32;
                    } else {
                        _gotoNext = 2646441i32;
                    };
                } else if (__value__ == (2646426i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2646441i32;
                } else if (__value__ == (2646441i32)) {
                    if (!_sawdot_2645596) {
                        _gotoNext = 2646452i32;
                    } else {
                        _gotoNext = 2646469i32;
                    };
                } else if (__value__ == (2646452i32)) {
                    _dp_2645655 = _nd_2645633;
                    _gotoNext = 2646469i32;
                } else if (__value__ == (2646469i32)) {
                    if (_base_2645353 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2646483i32;
                    } else {
                        _gotoNext = 2646728i32;
                    };
                } else if (__value__ == (2646483i32)) {
                    _dp_2645655 = (_dp_2645655 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2645642 = (_ndMant_2645642 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2646728i32;
                } else if (__value__ == (2646728i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2645418) : Bool)) {
                        _gotoNext = 2646768i32;
                    } else if (_base_2645353 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2647201i32;
                    } else {
                        _gotoNext = 2647242i32;
                    };
                } else if (__value__ == (2646768i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2646793i32;
                    } else {
                        _gotoNext = 2646811i32;
                    };
                } else if (__value__ == (2646793i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2646811i32;
                } else if (__value__ == (2646811i32)) {
                    _esign_2646811 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2646839i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2646872i32;
                    } else {
                        _gotoNext = 2646901i32;
                    };
                } else if (__value__ == (2646839i32)) {
                    _i++;
                    _gotoNext = 2646901i32;
                } else if (__value__ == (2646872i32)) {
                    _i++;
                    _esign_2646811 = (-1 : stdgo.GoInt);
                    _gotoNext = 2646901i32;
                } else if (__value__ == (2646901i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2646944i32;
                    } else {
                        _gotoNext = 2646962i32;
                    };
                } else if (__value__ == (2646944i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2646962i32;
                } else if (__value__ == (2646962i32)) {
                    _e_2646962 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2646971i32;
                } else if (__value__ == (2646971i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2647040i32;
                    } else {
                        _gotoNext = 2647163i32;
                    };
                } else if (__value__ == (2647036i32)) {
                    _i++;
                    _gotoNext = 2646971i32;
                } else if (__value__ == (2647040i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2647060i32;
                    } else {
                        _gotoNext = 2647106i32;
                    };
                } else if (__value__ == (2647060i32)) {
                    _underscores_2645194 = true;
                    _i++;
                    _gotoNext = 2646971i32;
                } else if (__value__ == (2647106i32)) {
                    if ((_e_2646962 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2647119i32;
                    } else {
                        _gotoNext = 2647036i32;
                    };
                } else if (__value__ == (2647119i32)) {
                    _e_2646962 = (((_e_2646962 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2647036i32;
                } else if (__value__ == (2647163i32)) {
                    _dp_2645655 = (_dp_2645655 + ((_e_2646962 * _esign_2646811 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2647242i32;
                } else if (__value__ == (2647201i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647242i32;
                } else if (__value__ == (2647242i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2647259i32;
                    } else {
                        _gotoNext = 2647286i32;
                    };
                } else if (__value__ == (2647259i32)) {
                    _exp = (_dp_2645655 - _ndMant_2645642 : stdgo.GoInt);
                    _gotoNext = 2647286i32;
                } else if (__value__ == (2647286i32)) {
                    if ((_underscores_2645194 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2647325i32;
                    } else {
                        _gotoNext = 2647341i32;
                    };
                } else if (__value__ == (2647325i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647341i32;
                } else if (__value__ == (2647341i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
