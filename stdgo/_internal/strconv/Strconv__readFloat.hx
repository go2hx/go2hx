package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_2646215:Bool = false;
        var _expChar_2646037:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2645972:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2647430:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2646322:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2646261:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2646252:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2646232:Bool = false;
        var _maxMantDigits_2645992:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2645813:Bool = false;
        var _e_2647581:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2646274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2645813 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2645869i32;
                    } else {
                        _gotoNext = 2645884i32;
                    };
                } else if (__value__ == (2645869i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2645884i32;
                } else if (__value__ == (2645884i32)) {
                    _gotoNext = 2645884i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2645894i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2645919i32;
                    } else {
                        _gotoNext = 2645972i32;
                    };
                } else if (__value__ == (2645894i32)) {
                    _i++;
                    _gotoNext = 2645972i32;
                } else if (__value__ == (2645919i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2645972i32;
                } else if (__value__ == (2645972i32)) {
                    _base_2645972 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2645992 = (19 : stdgo.GoInt);
                    _expChar_2646037 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2646114i32;
                    } else {
                        _gotoNext = 2646215i32;
                    };
                } else if (__value__ == (2646114i32)) {
                    _base_2645972 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2645992 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2646037 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2646215i32;
                } else if (__value__ == (2646215i32)) {
                    _sawdot_2646215 = false;
                    _sawdigits_2646232 = false;
                    _nd_2646252 = (0 : stdgo.GoInt);
                    _ndMant_2646261 = (0 : stdgo.GoInt);
                    _dp_2646274 = (0 : stdgo.GoInt);
                    _gotoNext = 2646282i32;
                } else if (__value__ == (2646282i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2646289i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2646311i32;
                    } else {
                        _gotoNext = 2647031i32;
                    };
                } else if (__value__ == (2646311i32)) {
                    _gotoNext = 2646315i32;
                } else if (__value__ == (2646315i32)) {
                    {
                        _c_2646322 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2646322 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2646342i32;
                            } else if (__value__ == (_c_2646322 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2646394i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2646322 : Bool) && (_c_2646322 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2646487i32;
                            } else if (__value__ == (((_base_2645972 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2646322) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2646322) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2646779i32;
                            } else {
                                _gotoNext = 2647021i32;
                            };
                        };
                    };
                } else if (__value__ == (2646342i32)) {
                    _underscores_2645813 = true;
                    _i++;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2646394i32)) {
                    if (_sawdot_2646215) {
                        _gotoNext = 2646422i32;
                    } else {
                        _gotoNext = 2646447i32;
                    };
                } else if (__value__ == (2646422i32)) {
                    _loopBreak = true;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2646447i32)) {
                    _sawdot_2646215 = true;
                    _dp_2646274 = _nd_2646252;
                    _i++;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2646487i32)) {
                    _sawdigits_2646232 = true;
                    if (((_c_2646322 == (48 : stdgo.GoUInt8)) && (_nd_2646252 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2646560i32;
                    } else {
                        _gotoNext = 2646616i32;
                    };
                } else if (__value__ == (2646560i32)) {
                    _dp_2646274--;
                    _i++;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2646616i32)) {
                    _nd_2646252++;
                    if ((_ndMant_2646261 < _maxMantDigits_2645992 : Bool)) {
                        _gotoNext = 2646650i32;
                    } else if (_c_2646322 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2646740i32;
                    } else {
                        _gotoNext = 2646767i32;
                    };
                } else if (__value__ == (2646650i32)) {
                    _mantissa = (_mantissa * (_base_2645972) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2646322 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2646261++;
                    _gotoNext = 2646767i32;
                } else if (__value__ == (2646740i32)) {
                    _trunc = true;
                    _gotoNext = 2646767i32;
                } else if (__value__ == (2646767i32)) {
                    _i++;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2646779i32)) {
                    _sawdigits_2646232 = true;
                    _nd_2646252++;
                    if ((_ndMant_2646261 < _maxMantDigits_2645992 : Bool)) {
                        _gotoNext = 2646891i32;
                    } else {
                        _gotoNext = 2646979i32;
                    };
                } else if (__value__ == (2646891i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2646322) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2646261++;
                    _gotoNext = 2647006i32;
                } else if (__value__ == (2646979i32)) {
                    _gotoNext = 2646979i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2647006i32;
                } else if (__value__ == (2647006i32)) {
                    _i++;
                    _gotoNext = 2646289i32;
                } else if (__value__ == (2647021i32)) {
                    _gotoNext = 2647031i32;
                } else if (__value__ == (2647031i32)) {
                    if (!_sawdigits_2646232) {
                        _gotoNext = 2647045i32;
                    } else {
                        _gotoNext = 2647060i32;
                    };
                } else if (__value__ == (2647045i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647060i32;
                } else if (__value__ == (2647060i32)) {
                    if (!_sawdot_2646215) {
                        _gotoNext = 2647071i32;
                    } else {
                        _gotoNext = 2647088i32;
                    };
                } else if (__value__ == (2647071i32)) {
                    _dp_2646274 = _nd_2646252;
                    _gotoNext = 2647088i32;
                } else if (__value__ == (2647088i32)) {
                    if (_base_2645972 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2647102i32;
                    } else {
                        _gotoNext = 2647347i32;
                    };
                } else if (__value__ == (2647102i32)) {
                    _dp_2646274 = (_dp_2646274 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2646261 = (_ndMant_2646261 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2647347i32;
                } else if (__value__ == (2647347i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2646037) : Bool)) {
                        _gotoNext = 2647387i32;
                    } else if (_base_2645972 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2647820i32;
                    } else {
                        _gotoNext = 2647861i32;
                    };
                } else if (__value__ == (2647387i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2647412i32;
                    } else {
                        _gotoNext = 2647430i32;
                    };
                } else if (__value__ == (2647412i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647430i32;
                } else if (__value__ == (2647430i32)) {
                    _esign_2647430 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2647458i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2647491i32;
                    } else {
                        _gotoNext = 2647520i32;
                    };
                } else if (__value__ == (2647458i32)) {
                    _i++;
                    _gotoNext = 2647520i32;
                } else if (__value__ == (2647491i32)) {
                    _i++;
                    _esign_2647430 = (-1 : stdgo.GoInt);
                    _gotoNext = 2647520i32;
                } else if (__value__ == (2647520i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2647563i32;
                    } else {
                        _gotoNext = 2647581i32;
                    };
                } else if (__value__ == (2647563i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647581i32;
                } else if (__value__ == (2647581i32)) {
                    _e_2647581 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2647590i32;
                } else if (__value__ == (2647590i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2647659i32;
                    } else {
                        _gotoNext = 2647782i32;
                    };
                } else if (__value__ == (2647655i32)) {
                    _i++;
                    _gotoNext = 2647590i32;
                } else if (__value__ == (2647659i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2647679i32;
                    } else {
                        _gotoNext = 2647725i32;
                    };
                } else if (__value__ == (2647679i32)) {
                    _underscores_2645813 = true;
                    _i++;
                    _gotoNext = 2647590i32;
                } else if (__value__ == (2647725i32)) {
                    if ((_e_2647581 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2647738i32;
                    } else {
                        _gotoNext = 2647655i32;
                    };
                } else if (__value__ == (2647738i32)) {
                    _e_2647581 = (((_e_2647581 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2647655i32;
                } else if (__value__ == (2647782i32)) {
                    _dp_2646274 = (_dp_2646274 + ((_e_2647581 * _esign_2647430 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2647861i32;
                } else if (__value__ == (2647820i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647861i32;
                } else if (__value__ == (2647861i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2647878i32;
                    } else {
                        _gotoNext = 2647905i32;
                    };
                } else if (__value__ == (2647878i32)) {
                    _exp = (_dp_2646274 - _ndMant_2646261 : stdgo.GoInt);
                    _gotoNext = 2647905i32;
                } else if (__value__ == (2647905i32)) {
                    if ((_underscores_2645813 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2647944i32;
                    } else {
                        _gotoNext = 2647960i32;
                    };
                } else if (__value__ == (2647944i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647960i32;
                } else if (__value__ == (2647960i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
