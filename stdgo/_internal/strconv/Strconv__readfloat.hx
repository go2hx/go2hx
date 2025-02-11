package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2608411:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2607091:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2607045:Bool = false;
        var _base_2606802:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2607152:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2607082:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2606867:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2608260:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2607104:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2606822:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2606643:Bool = false;
        var _sawdigits_2607062:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2606643 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2606699i32;
                    } else {
                        _gotoNext = 2606714i32;
                    };
                } else if (__value__ == (2606699i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2606714i32;
                } else if (__value__ == (2606714i32)) {
                    _gotoNext = 2606714i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2606724i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2606749i32;
                    } else {
                        _gotoNext = 2606802i32;
                    };
                } else if (__value__ == (2606724i32)) {
                    _i++;
                    _gotoNext = 2606802i32;
                } else if (__value__ == (2606749i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2606802i32;
                } else if (__value__ == (2606802i32)) {
                    _base_2606802 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2606822 = (19 : stdgo.GoInt);
                    _expChar_2606867 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2606944i32;
                    } else {
                        _gotoNext = 2607045i32;
                    };
                } else if (__value__ == (2606944i32)) {
                    _base_2606802 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2606822 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2606867 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2607045i32;
                } else if (__value__ == (2607045i32)) {
                    _sawdot_2607045 = false;
                    _sawdigits_2607062 = false;
                    _nd_2607082 = (0 : stdgo.GoInt);
                    _ndMant_2607091 = (0 : stdgo.GoInt);
                    _dp_2607104 = (0 : stdgo.GoInt);
                    _gotoNext = 2607112i32;
                } else if (__value__ == (2607112i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607119i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2607141i32;
                    } else {
                        _gotoNext = 2607861i32;
                    };
                } else if (__value__ == (2607141i32)) {
                    _gotoNext = 2607145i32;
                } else if (__value__ == (2607145i32)) {
                    {
                        _c_2607152 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2607152 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2607172i32;
                            } else if (__value__ == (_c_2607152 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2607224i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2607152 : Bool) && (_c_2607152 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2607317i32;
                            } else if (__value__ == (((_base_2606802 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2607152) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2607152) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2607609i32;
                            } else {
                                _gotoNext = 2607851i32;
                            };
                        };
                    };
                } else if (__value__ == (2607172i32)) {
                    _underscores_2606643 = true;
                    _i++;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607224i32)) {
                    if (_sawdot_2607045) {
                        _gotoNext = 2607252i32;
                    } else {
                        _gotoNext = 2607277i32;
                    };
                } else if (__value__ == (2607252i32)) {
                    _loopBreak = true;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607277i32)) {
                    _sawdot_2607045 = true;
                    _dp_2607104 = _nd_2607082;
                    _i++;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607317i32)) {
                    _sawdigits_2607062 = true;
                    if (((_c_2607152 == (48 : stdgo.GoUInt8)) && (_nd_2607082 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2607390i32;
                    } else {
                        _gotoNext = 2607446i32;
                    };
                } else if (__value__ == (2607390i32)) {
                    _dp_2607104--;
                    _i++;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607446i32)) {
                    _nd_2607082++;
                    if ((_ndMant_2607091 < _maxMantDigits_2606822 : Bool)) {
                        _gotoNext = 2607480i32;
                    } else if (_c_2607152 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2607570i32;
                    } else {
                        _gotoNext = 2607597i32;
                    };
                } else if (__value__ == (2607480i32)) {
                    _mantissa = (_mantissa * (_base_2606802) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2607152 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2607091++;
                    _gotoNext = 2607597i32;
                } else if (__value__ == (2607570i32)) {
                    _trunc = true;
                    _gotoNext = 2607597i32;
                } else if (__value__ == (2607597i32)) {
                    _i++;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607609i32)) {
                    _sawdigits_2607062 = true;
                    _nd_2607082++;
                    if ((_ndMant_2607091 < _maxMantDigits_2606822 : Bool)) {
                        _gotoNext = 2607721i32;
                    } else {
                        _gotoNext = 2607809i32;
                    };
                } else if (__value__ == (2607721i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2607152) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2607091++;
                    _gotoNext = 2607836i32;
                } else if (__value__ == (2607809i32)) {
                    _gotoNext = 2607809i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2607836i32;
                } else if (__value__ == (2607836i32)) {
                    _i++;
                    _gotoNext = 2607119i32;
                } else if (__value__ == (2607851i32)) {
                    _gotoNext = 2607861i32;
                } else if (__value__ == (2607861i32)) {
                    if (!_sawdigits_2607062) {
                        _gotoNext = 2607875i32;
                    } else {
                        _gotoNext = 2607890i32;
                    };
                } else if (__value__ == (2607875i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2607890i32;
                } else if (__value__ == (2607890i32)) {
                    if (!_sawdot_2607045) {
                        _gotoNext = 2607901i32;
                    } else {
                        _gotoNext = 2607918i32;
                    };
                } else if (__value__ == (2607901i32)) {
                    _dp_2607104 = _nd_2607082;
                    _gotoNext = 2607918i32;
                } else if (__value__ == (2607918i32)) {
                    if (_base_2606802 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2607932i32;
                    } else {
                        _gotoNext = 2608177i32;
                    };
                } else if (__value__ == (2607932i32)) {
                    _dp_2607104 = (_dp_2607104 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2607091 = (_ndMant_2607091 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2608177i32;
                } else if (__value__ == (2608177i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2606867) : Bool)) {
                        _gotoNext = 2608217i32;
                    } else if (_base_2606802 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2608650i32;
                    } else {
                        _gotoNext = 2608691i32;
                    };
                } else if (__value__ == (2608217i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2608242i32;
                    } else {
                        _gotoNext = 2608260i32;
                    };
                } else if (__value__ == (2608242i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2608260i32;
                } else if (__value__ == (2608260i32)) {
                    _esign_2608260 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2608288i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2608321i32;
                    } else {
                        _gotoNext = 2608350i32;
                    };
                } else if (__value__ == (2608288i32)) {
                    _i++;
                    _gotoNext = 2608350i32;
                } else if (__value__ == (2608321i32)) {
                    _i++;
                    _esign_2608260 = (-1 : stdgo.GoInt);
                    _gotoNext = 2608350i32;
                } else if (__value__ == (2608350i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2608393i32;
                    } else {
                        _gotoNext = 2608411i32;
                    };
                } else if (__value__ == (2608393i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2608411i32;
                } else if (__value__ == (2608411i32)) {
                    _e_2608411 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2608420i32;
                } else if (__value__ == (2608420i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2608489i32;
                    } else {
                        _gotoNext = 2608612i32;
                    };
                } else if (__value__ == (2608485i32)) {
                    _i++;
                    _gotoNext = 2608420i32;
                } else if (__value__ == (2608489i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2608509i32;
                    } else {
                        _gotoNext = 2608555i32;
                    };
                } else if (__value__ == (2608509i32)) {
                    _underscores_2606643 = true;
                    _i++;
                    _gotoNext = 2608420i32;
                } else if (__value__ == (2608555i32)) {
                    if ((_e_2608411 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2608568i32;
                    } else {
                        _gotoNext = 2608485i32;
                    };
                } else if (__value__ == (2608568i32)) {
                    _e_2608411 = (((_e_2608411 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2608485i32;
                } else if (__value__ == (2608612i32)) {
                    _dp_2607104 = (_dp_2607104 + ((_e_2608411 * _esign_2608260 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2608691i32;
                } else if (__value__ == (2608650i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2608691i32;
                } else if (__value__ == (2608691i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2608708i32;
                    } else {
                        _gotoNext = 2608735i32;
                    };
                } else if (__value__ == (2608708i32)) {
                    _exp = (_dp_2607104 - _ndMant_2607091 : stdgo.GoInt);
                    _gotoNext = 2608735i32;
                } else if (__value__ == (2608735i32)) {
                    if ((_underscores_2606643 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2608774i32;
                    } else {
                        _gotoNext = 2608790i32;
                    };
                } else if (__value__ == (2608774i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2608790i32;
                } else if (__value__ == (2608790i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
