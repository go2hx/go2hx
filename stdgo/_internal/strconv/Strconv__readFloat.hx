package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2788112:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2788442:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _expChar_2788157:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2787933:Bool = false;
        var _ndMant_2788381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2788372:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2788394:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2789701:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2788092:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2789550:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2788352:Bool = false;
        var _sawdot_2788335:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2787933 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2787989i32;
                    } else {
                        _gotoNext = 2788004i32;
                    };
                } else if (__value__ == (2787989i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2788004i32;
                } else if (__value__ == (2788004i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2788004i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2788014i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2788039i32;
                    } else {
                        _gotoNext = 2788092i32;
                    };
                } else if (__value__ == (2788014i32)) {
                    _i++;
                    _gotoNext = 2788092i32;
                } else if (__value__ == (2788039i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2788092i32;
                } else if (__value__ == (2788092i32)) {
                    _base_2788092 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2788112 = (19 : stdgo.GoInt);
                    _expChar_2788157 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2788234i32;
                    } else {
                        _gotoNext = 2788335i32;
                    };
                } else if (__value__ == (2788234i32)) {
                    _base_2788092 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2788112 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2788157 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2788335i32;
                } else if (__value__ == (2788335i32)) {
                    _sawdot_2788335 = false;
                    _sawdigits_2788352 = false;
                    _nd_2788372 = (0 : stdgo.GoInt);
                    _ndMant_2788381 = (0 : stdgo.GoInt);
                    _dp_2788394 = (0 : stdgo.GoInt);
                    _gotoNext = 2788402i32;
                } else if (__value__ == (2788402i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2788409i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2788431i32;
                    } else {
                        _gotoNext = 2789151i32;
                    };
                } else if (__value__ == (2788431i32)) {
                    _c_2788442 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2788435i32;
                } else if (__value__ == (2788435i32)) {
                    {
                        _c_2788442 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2788442 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2788462i32;
                            } else if (__value__ == (_c_2788442 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2788514i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2788442 : Bool) && (_c_2788442 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2788607i32;
                            } else if (__value__ == (((_base_2788092 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2788442) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2788442) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2788899i32;
                            } else {
                                _gotoNext = 2789141i32;
                            };
                        };
                    };
                } else if (__value__ == (2788462i32)) {
                    _underscores_2787933 = true;
                    _i++;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2788514i32)) {
                    if (_sawdot_2788335) {
                        _gotoNext = 2788542i32;
                    } else {
                        _gotoNext = 2788567i32;
                    };
                } else if (__value__ == (2788542i32)) {
                    _loopBreak = true;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2788567i32)) {
                    _sawdot_2788335 = true;
                    _dp_2788394 = _nd_2788372;
                    _i++;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2788607i32)) {
                    _sawdigits_2788352 = true;
                    if (((_c_2788442 == (48 : stdgo.GoUInt8)) && (_nd_2788372 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2788680i32;
                    } else {
                        _gotoNext = 2788736i32;
                    };
                } else if (__value__ == (2788680i32)) {
                    _dp_2788394--;
                    _i++;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2788736i32)) {
                    _nd_2788372++;
                    if ((_ndMant_2788381 < _maxMantDigits_2788112 : Bool)) {
                        _gotoNext = 2788770i32;
                    } else if (_c_2788442 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2788860i32;
                    } else {
                        _gotoNext = 2788887i32;
                    };
                } else if (__value__ == (2788770i32)) {
                    _mantissa = (_mantissa * (_base_2788092) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2788442 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2788381++;
                    _gotoNext = 2788887i32;
                } else if (__value__ == (2788860i32)) {
                    _trunc = true;
                    _gotoNext = 2788887i32;
                } else if (__value__ == (2788887i32)) {
                    _i++;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2788899i32)) {
                    _sawdigits_2788352 = true;
                    _nd_2788372++;
                    if ((_ndMant_2788381 < _maxMantDigits_2788112 : Bool)) {
                        _gotoNext = 2789011i32;
                    } else {
                        _gotoNext = 2789099i32;
                    };
                } else if (__value__ == (2789011i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2788442) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2788381++;
                    _gotoNext = 2789126i32;
                } else if (__value__ == (2789099i32)) {
                    _gotoNext = 2789099i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2789126i32;
                } else if (__value__ == (2789126i32)) {
                    _i++;
                    _gotoNext = 2788409i32;
                } else if (__value__ == (2789141i32)) {
                    _gotoNext = 2789151i32;
                } else if (__value__ == (2789151i32)) {
                    if (!_sawdigits_2788352) {
                        _gotoNext = 2789165i32;
                    } else {
                        _gotoNext = 2789180i32;
                    };
                } else if (__value__ == (2789165i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2789180i32;
                } else if (__value__ == (2789180i32)) {
                    if (!_sawdot_2788335) {
                        _gotoNext = 2789191i32;
                    } else {
                        _gotoNext = 2789208i32;
                    };
                } else if (__value__ == (2789191i32)) {
                    _dp_2788394 = _nd_2788372;
                    _gotoNext = 2789208i32;
                } else if (__value__ == (2789208i32)) {
                    if (_base_2788092 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2789222i32;
                    } else {
                        _gotoNext = 2789467i32;
                    };
                } else if (__value__ == (2789222i32)) {
                    _dp_2788394 = (_dp_2788394 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2788381 = (_ndMant_2788381 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2789467i32;
                } else if (__value__ == (2789467i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2788157) : Bool)) {
                        _gotoNext = 2789507i32;
                    } else if (_base_2788092 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2789940i32;
                    } else {
                        _gotoNext = 2789981i32;
                    };
                } else if (__value__ == (2789507i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2789532i32;
                    } else {
                        _gotoNext = 2789550i32;
                    };
                } else if (__value__ == (2789532i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2789550i32;
                } else if (__value__ == (2789550i32)) {
                    _esign_2789550 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2789578i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2789611i32;
                    } else {
                        _gotoNext = 2789640i32;
                    };
                } else if (__value__ == (2789578i32)) {
                    _i++;
                    _gotoNext = 2789640i32;
                } else if (__value__ == (2789611i32)) {
                    _i++;
                    _esign_2789550 = (-1 : stdgo.GoInt);
                    _gotoNext = 2789640i32;
                } else if (__value__ == (2789640i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2789683i32;
                    } else {
                        _gotoNext = 2789701i32;
                    };
                } else if (__value__ == (2789683i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2789701i32;
                } else if (__value__ == (2789701i32)) {
                    _e_2789701 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2789710i32;
                } else if (__value__ == (2789710i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2789779i32;
                    } else {
                        _gotoNext = 2789902i32;
                    };
                } else if (__value__ == (2789775i32)) {
                    _i++;
                    _gotoNext = 2789710i32;
                } else if (__value__ == (2789779i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2789799i32;
                    } else {
                        _gotoNext = 2789845i32;
                    };
                } else if (__value__ == (2789799i32)) {
                    _underscores_2787933 = true;
                    _i++;
                    _gotoNext = 2789710i32;
                } else if (__value__ == (2789845i32)) {
                    if ((_e_2789701 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2789858i32;
                    } else {
                        _gotoNext = 2789775i32;
                    };
                } else if (__value__ == (2789858i32)) {
                    _e_2789701 = (((_e_2789701 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2789775i32;
                } else if (__value__ == (2789902i32)) {
                    _dp_2788394 = (_dp_2788394 + ((_e_2789701 * _esign_2789550 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2789981i32;
                } else if (__value__ == (2789940i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2789981i32;
                } else if (__value__ == (2789981i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2789998i32;
                    } else {
                        _gotoNext = 2790025i32;
                    };
                } else if (__value__ == (2789998i32)) {
                    _exp = (_dp_2788394 - _ndMant_2788381 : stdgo.GoInt);
                    _gotoNext = 2790025i32;
                } else if (__value__ == (2790025i32)) {
                    if ((_underscores_2787933 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2790064i32;
                    } else {
                        _gotoNext = 2790080i32;
                    };
                } else if (__value__ == (2790064i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2790080i32;
                } else if (__value__ == (2790080i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
