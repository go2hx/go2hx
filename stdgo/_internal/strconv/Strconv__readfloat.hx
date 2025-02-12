package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_3046435:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3045327:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_3045257:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3045042:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_3044977:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_3046586:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_3045279:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_3045237:Bool = false;
        var _underscores_3044818:Bool = false;
        var _loopBreak = false;
        var _ndMant_3045266:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_3045220:Bool = false;
        var _maxMantDigits_3044997:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_3044818 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 3044874i32;
                    } else {
                        _gotoNext = 3044889i32;
                    };
                } else if (__value__ == (3044874i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3044889i32;
                } else if (__value__ == (3044889i32)) {
                    _gotoNext = 3044889i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 3044899i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3044924i32;
                    } else {
                        _gotoNext = 3044977i32;
                    };
                } else if (__value__ == (3044899i32)) {
                    _i++;
                    _gotoNext = 3044977i32;
                } else if (__value__ == (3044924i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 3044977i32;
                } else if (__value__ == (3044977i32)) {
                    _base_3044977 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_3044997 = (19 : stdgo.GoInt);
                    _expChar_3045042 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3045119i32;
                    } else {
                        _gotoNext = 3045220i32;
                    };
                } else if (__value__ == (3045119i32)) {
                    _base_3044977 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_3044997 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3045042 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 3045220i32;
                } else if (__value__ == (3045220i32)) {
                    _sawdot_3045220 = false;
                    _sawdigits_3045237 = false;
                    _nd_3045257 = (0 : stdgo.GoInt);
                    _ndMant_3045266 = (0 : stdgo.GoInt);
                    _dp_3045279 = (0 : stdgo.GoInt);
                    _gotoNext = 3045287i32;
                } else if (__value__ == (3045287i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3045294i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 3045316i32;
                    } else {
                        _gotoNext = 3046036i32;
                    };
                } else if (__value__ == (3045316i32)) {
                    _gotoNext = 3045320i32;
                } else if (__value__ == (3045320i32)) {
                    {
                        _c_3045327 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_3045327 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 3045347i32;
                            } else if (__value__ == (_c_3045327 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 3045399i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_3045327 : Bool) && (_c_3045327 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 3045492i32;
                            } else if (__value__ == (((_base_3044977 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_3045327) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_3045327) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 3045784i32;
                            } else {
                                _gotoNext = 3046026i32;
                            };
                        };
                    };
                } else if (__value__ == (3045347i32)) {
                    _underscores_3044818 = true;
                    _i++;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3045399i32)) {
                    if (_sawdot_3045220) {
                        _gotoNext = 3045427i32;
                    } else {
                        _gotoNext = 3045452i32;
                    };
                } else if (__value__ == (3045427i32)) {
                    _loopBreak = true;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3045452i32)) {
                    _sawdot_3045220 = true;
                    _dp_3045279 = _nd_3045257;
                    _i++;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3045492i32)) {
                    _sawdigits_3045237 = true;
                    if (((_c_3045327 == (48 : stdgo.GoUInt8)) && (_nd_3045257 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3045565i32;
                    } else {
                        _gotoNext = 3045621i32;
                    };
                } else if (__value__ == (3045565i32)) {
                    _dp_3045279--;
                    _i++;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3045621i32)) {
                    _nd_3045257++;
                    if ((_ndMant_3045266 < _maxMantDigits_3044997 : Bool)) {
                        _gotoNext = 3045655i32;
                    } else if (_c_3045327 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 3045745i32;
                    } else {
                        _gotoNext = 3045772i32;
                    };
                } else if (__value__ == (3045655i32)) {
                    _mantissa = (_mantissa * (_base_3044977) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_3045327 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_3045266++;
                    _gotoNext = 3045772i32;
                } else if (__value__ == (3045745i32)) {
                    _trunc = true;
                    _gotoNext = 3045772i32;
                } else if (__value__ == (3045772i32)) {
                    _i++;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3045784i32)) {
                    _sawdigits_3045237 = true;
                    _nd_3045257++;
                    if ((_ndMant_3045266 < _maxMantDigits_3044997 : Bool)) {
                        _gotoNext = 3045896i32;
                    } else {
                        _gotoNext = 3045984i32;
                    };
                } else if (__value__ == (3045896i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_3045327) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_3045266++;
                    _gotoNext = 3046011i32;
                } else if (__value__ == (3045984i32)) {
                    _gotoNext = 3045984i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 3046011i32;
                } else if (__value__ == (3046011i32)) {
                    _i++;
                    _gotoNext = 3045294i32;
                } else if (__value__ == (3046026i32)) {
                    _gotoNext = 3046036i32;
                } else if (__value__ == (3046036i32)) {
                    if (!_sawdigits_3045237) {
                        _gotoNext = 3046050i32;
                    } else {
                        _gotoNext = 3046065i32;
                    };
                } else if (__value__ == (3046050i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3046065i32;
                } else if (__value__ == (3046065i32)) {
                    if (!_sawdot_3045220) {
                        _gotoNext = 3046076i32;
                    } else {
                        _gotoNext = 3046093i32;
                    };
                } else if (__value__ == (3046076i32)) {
                    _dp_3045279 = _nd_3045257;
                    _gotoNext = 3046093i32;
                } else if (__value__ == (3046093i32)) {
                    if (_base_3044977 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3046107i32;
                    } else {
                        _gotoNext = 3046352i32;
                    };
                } else if (__value__ == (3046107i32)) {
                    _dp_3045279 = (_dp_3045279 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_3045266 = (_ndMant_3045266 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3046352i32;
                } else if (__value__ == (3046352i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3045042) : Bool)) {
                        _gotoNext = 3046392i32;
                    } else if (_base_3044977 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3046825i32;
                    } else {
                        _gotoNext = 3046866i32;
                    };
                } else if (__value__ == (3046392i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 3046417i32;
                    } else {
                        _gotoNext = 3046435i32;
                    };
                } else if (__value__ == (3046417i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3046435i32;
                } else if (__value__ == (3046435i32)) {
                    _esign_3046435 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 3046463i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3046496i32;
                    } else {
                        _gotoNext = 3046525i32;
                    };
                } else if (__value__ == (3046463i32)) {
                    _i++;
                    _gotoNext = 3046525i32;
                } else if (__value__ == (3046496i32)) {
                    _i++;
                    _esign_3046435 = (-1 : stdgo.GoInt);
                    _gotoNext = 3046525i32;
                } else if (__value__ == (3046525i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3046568i32;
                    } else {
                        _gotoNext = 3046586i32;
                    };
                } else if (__value__ == (3046568i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3046586i32;
                } else if (__value__ == (3046586i32)) {
                    _e_3046586 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3046595i32;
                } else if (__value__ == (3046595i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 3046664i32;
                    } else {
                        _gotoNext = 3046787i32;
                    };
                } else if (__value__ == (3046660i32)) {
                    _i++;
                    _gotoNext = 3046595i32;
                } else if (__value__ == (3046664i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 3046684i32;
                    } else {
                        _gotoNext = 3046730i32;
                    };
                } else if (__value__ == (3046684i32)) {
                    _underscores_3044818 = true;
                    _i++;
                    _gotoNext = 3046595i32;
                } else if (__value__ == (3046730i32)) {
                    if ((_e_3046586 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3046743i32;
                    } else {
                        _gotoNext = 3046660i32;
                    };
                } else if (__value__ == (3046743i32)) {
                    _e_3046586 = (((_e_3046586 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3046660i32;
                } else if (__value__ == (3046787i32)) {
                    _dp_3045279 = (_dp_3045279 + ((_e_3046586 * _esign_3046435 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3046866i32;
                } else if (__value__ == (3046825i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3046866i32;
                } else if (__value__ == (3046866i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3046883i32;
                    } else {
                        _gotoNext = 3046910i32;
                    };
                } else if (__value__ == (3046883i32)) {
                    _exp = (_dp_3045279 - _ndMant_3045266 : stdgo.GoInt);
                    _gotoNext = 3046910i32;
                } else if (__value__ == (3046910i32)) {
                    if ((_underscores_3044818 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 3046949i32;
                    } else {
                        _gotoNext = 3046965i32;
                    };
                } else if (__value__ == (3046949i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3046965i32;
                } else if (__value__ == (3046965i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
