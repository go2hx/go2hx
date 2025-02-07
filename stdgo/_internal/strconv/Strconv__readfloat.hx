package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _underscores_2641084:Bool = false;
        var _loopBreak = false;
        var _base_2641243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _maxMantDigits_2641263:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2642852:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2642701:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2641593:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2641523:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2641486:Bool = false;
        var _expChar_2641308:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2641545:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2641532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2641503:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2641084 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2641140i32;
                    } else {
                        _gotoNext = 2641155i32;
                    };
                } else if (__value__ == (2641140i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641155i32;
                } else if (__value__ == (2641155i32)) {
                    _gotoNext = 2641155i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2641165i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2641190i32;
                    } else {
                        _gotoNext = 2641243i32;
                    };
                } else if (__value__ == (2641165i32)) {
                    _i++;
                    _gotoNext = 2641243i32;
                } else if (__value__ == (2641190i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2641243i32;
                } else if (__value__ == (2641243i32)) {
                    _base_2641243 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2641263 = (19 : stdgo.GoInt);
                    _expChar_2641308 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2641385i32;
                    } else {
                        _gotoNext = 2641486i32;
                    };
                } else if (__value__ == (2641385i32)) {
                    _base_2641243 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2641263 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2641308 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2641486i32;
                } else if (__value__ == (2641486i32)) {
                    _sawdot_2641486 = false;
                    _sawdigits_2641503 = false;
                    _nd_2641523 = (0 : stdgo.GoInt);
                    _ndMant_2641532 = (0 : stdgo.GoInt);
                    _dp_2641545 = (0 : stdgo.GoInt);
                    _gotoNext = 2641553i32;
                } else if (__value__ == (2641553i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2641560i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2641582i32;
                    } else {
                        _gotoNext = 2642302i32;
                    };
                } else if (__value__ == (2641582i32)) {
                    _gotoNext = 2641586i32;
                } else if (__value__ == (2641586i32)) {
                    {
                        _c_2641593 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2641593 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2641613i32;
                            } else if (__value__ == (_c_2641593 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2641665i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2641593 : Bool) && (_c_2641593 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2641758i32;
                            } else if (__value__ == (((_base_2641243 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2641593) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2641593) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2642050i32;
                            } else {
                                _gotoNext = 2642292i32;
                            };
                        };
                    };
                } else if (__value__ == (2641613i32)) {
                    _underscores_2641084 = true;
                    _i++;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2641665i32)) {
                    if (_sawdot_2641486) {
                        _gotoNext = 2641693i32;
                    } else {
                        _gotoNext = 2641718i32;
                    };
                } else if (__value__ == (2641693i32)) {
                    _loopBreak = true;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2641718i32)) {
                    _sawdot_2641486 = true;
                    _dp_2641545 = _nd_2641523;
                    _i++;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2641758i32)) {
                    _sawdigits_2641503 = true;
                    if (((_c_2641593 == (48 : stdgo.GoUInt8)) && (_nd_2641523 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2641831i32;
                    } else {
                        _gotoNext = 2641887i32;
                    };
                } else if (__value__ == (2641831i32)) {
                    _dp_2641545--;
                    _i++;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2641887i32)) {
                    _nd_2641523++;
                    if ((_ndMant_2641532 < _maxMantDigits_2641263 : Bool)) {
                        _gotoNext = 2641921i32;
                    } else if (_c_2641593 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2642011i32;
                    } else {
                        _gotoNext = 2642038i32;
                    };
                } else if (__value__ == (2641921i32)) {
                    _mantissa = (_mantissa * (_base_2641243) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2641593 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2641532++;
                    _gotoNext = 2642038i32;
                } else if (__value__ == (2642011i32)) {
                    _trunc = true;
                    _gotoNext = 2642038i32;
                } else if (__value__ == (2642038i32)) {
                    _i++;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2642050i32)) {
                    _sawdigits_2641503 = true;
                    _nd_2641523++;
                    if ((_ndMant_2641532 < _maxMantDigits_2641263 : Bool)) {
                        _gotoNext = 2642162i32;
                    } else {
                        _gotoNext = 2642250i32;
                    };
                } else if (__value__ == (2642162i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2641593) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2641532++;
                    _gotoNext = 2642277i32;
                } else if (__value__ == (2642250i32)) {
                    _gotoNext = 2642250i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2642277i32;
                } else if (__value__ == (2642277i32)) {
                    _i++;
                    _gotoNext = 2641560i32;
                } else if (__value__ == (2642292i32)) {
                    _gotoNext = 2642302i32;
                } else if (__value__ == (2642302i32)) {
                    if (!_sawdigits_2641503) {
                        _gotoNext = 2642316i32;
                    } else {
                        _gotoNext = 2642331i32;
                    };
                } else if (__value__ == (2642316i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642331i32;
                } else if (__value__ == (2642331i32)) {
                    if (!_sawdot_2641486) {
                        _gotoNext = 2642342i32;
                    } else {
                        _gotoNext = 2642359i32;
                    };
                } else if (__value__ == (2642342i32)) {
                    _dp_2641545 = _nd_2641523;
                    _gotoNext = 2642359i32;
                } else if (__value__ == (2642359i32)) {
                    if (_base_2641243 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2642373i32;
                    } else {
                        _gotoNext = 2642618i32;
                    };
                } else if (__value__ == (2642373i32)) {
                    _dp_2641545 = (_dp_2641545 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2641532 = (_ndMant_2641532 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2642618i32;
                } else if (__value__ == (2642618i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2641308) : Bool)) {
                        _gotoNext = 2642658i32;
                    } else if (_base_2641243 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2643091i32;
                    } else {
                        _gotoNext = 2643132i32;
                    };
                } else if (__value__ == (2642658i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2642683i32;
                    } else {
                        _gotoNext = 2642701i32;
                    };
                } else if (__value__ == (2642683i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642701i32;
                } else if (__value__ == (2642701i32)) {
                    _esign_2642701 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2642729i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2642762i32;
                    } else {
                        _gotoNext = 2642791i32;
                    };
                } else if (__value__ == (2642729i32)) {
                    _i++;
                    _gotoNext = 2642791i32;
                } else if (__value__ == (2642762i32)) {
                    _i++;
                    _esign_2642701 = (-1 : stdgo.GoInt);
                    _gotoNext = 2642791i32;
                } else if (__value__ == (2642791i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2642834i32;
                    } else {
                        _gotoNext = 2642852i32;
                    };
                } else if (__value__ == (2642834i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2642852i32;
                } else if (__value__ == (2642852i32)) {
                    _e_2642852 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2642861i32;
                } else if (__value__ == (2642861i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2642930i32;
                    } else {
                        _gotoNext = 2643053i32;
                    };
                } else if (__value__ == (2642926i32)) {
                    _i++;
                    _gotoNext = 2642861i32;
                } else if (__value__ == (2642930i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2642950i32;
                    } else {
                        _gotoNext = 2642996i32;
                    };
                } else if (__value__ == (2642950i32)) {
                    _underscores_2641084 = true;
                    _i++;
                    _gotoNext = 2642861i32;
                } else if (__value__ == (2642996i32)) {
                    if ((_e_2642852 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2643009i32;
                    } else {
                        _gotoNext = 2642926i32;
                    };
                } else if (__value__ == (2643009i32)) {
                    _e_2642852 = (((_e_2642852 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2642926i32;
                } else if (__value__ == (2643053i32)) {
                    _dp_2641545 = (_dp_2641545 + ((_e_2642852 * _esign_2642701 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2643132i32;
                } else if (__value__ == (2643091i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643132i32;
                } else if (__value__ == (2643132i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2643149i32;
                    } else {
                        _gotoNext = 2643176i32;
                    };
                } else if (__value__ == (2643149i32)) {
                    _exp = (_dp_2641545 - _ndMant_2641532 : stdgo.GoInt);
                    _gotoNext = 2643176i32;
                } else if (__value__ == (2643176i32)) {
                    if ((_underscores_2641084 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2643215i32;
                    } else {
                        _gotoNext = 2643231i32;
                    };
                } else if (__value__ == (2643215i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2643231i32;
                } else if (__value__ == (2643231i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
