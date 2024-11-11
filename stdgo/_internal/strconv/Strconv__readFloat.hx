package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _e_2672787:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2671528:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2671438:Bool = false;
        var _sawdot_2671421:Bool = false;
        var _maxMantDigits_2671198:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2672636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2671467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2671458:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2671243:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2671480:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2671178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2671019:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2671019 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2671075i32;
                    } else {
                        _gotoNext = 2671090i32;
                    };
                } else if (__value__ == (2671075i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2671090i32;
                } else if (__value__ == (2671090i32)) {
                    _gotoNext = 2671090i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2671100i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2671125i32;
                    } else {
                        _gotoNext = 2671178i32;
                    };
                } else if (__value__ == (2671100i32)) {
                    _i++;
                    _gotoNext = 2671178i32;
                } else if (__value__ == (2671125i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2671178i32;
                } else if (__value__ == (2671178i32)) {
                    _base_2671178 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2671198 = (19 : stdgo.GoInt);
                    _expChar_2671243 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2671320i32;
                    } else {
                        _gotoNext = 2671421i32;
                    };
                } else if (__value__ == (2671320i32)) {
                    _base_2671178 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2671198 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2671243 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2671421i32;
                } else if (__value__ == (2671421i32)) {
                    _sawdot_2671421 = false;
                    _sawdigits_2671438 = false;
                    _nd_2671458 = (0 : stdgo.GoInt);
                    _ndMant_2671467 = (0 : stdgo.GoInt);
                    _dp_2671480 = (0 : stdgo.GoInt);
                    _gotoNext = 2671488i32;
                } else if (__value__ == (2671488i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2671495i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2671517i32;
                    } else {
                        _gotoNext = 2672237i32;
                    };
                } else if (__value__ == (2671517i32)) {
                    _gotoNext = 2671521i32;
                } else if (__value__ == (2671521i32)) {
                    {
                        _c_2671528 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2671528 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2671548i32;
                            } else if (__value__ == (_c_2671528 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2671600i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2671528 : Bool) && (_c_2671528 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2671693i32;
                            } else if (__value__ == (((_base_2671178 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2671528) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2671528) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2671985i32;
                            } else {
                                _gotoNext = 2672227i32;
                            };
                        };
                    };
                } else if (__value__ == (2671548i32)) {
                    _underscores_2671019 = true;
                    _i++;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2671600i32)) {
                    if (_sawdot_2671421) {
                        _gotoNext = 2671628i32;
                    } else {
                        _gotoNext = 2671653i32;
                    };
                } else if (__value__ == (2671628i32)) {
                    _loopBreak = true;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2671653i32)) {
                    _sawdot_2671421 = true;
                    _dp_2671480 = _nd_2671458;
                    _i++;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2671693i32)) {
                    _sawdigits_2671438 = true;
                    if (((_c_2671528 == (48 : stdgo.GoUInt8)) && (_nd_2671458 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2671766i32;
                    } else {
                        _gotoNext = 2671822i32;
                    };
                } else if (__value__ == (2671766i32)) {
                    _dp_2671480--;
                    _i++;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2671822i32)) {
                    _nd_2671458++;
                    if ((_ndMant_2671467 < _maxMantDigits_2671198 : Bool)) {
                        _gotoNext = 2671856i32;
                    } else if (_c_2671528 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2671946i32;
                    } else {
                        _gotoNext = 2671973i32;
                    };
                } else if (__value__ == (2671856i32)) {
                    _mantissa = (_mantissa * (_base_2671178) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2671528 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2671467++;
                    _gotoNext = 2671973i32;
                } else if (__value__ == (2671946i32)) {
                    _trunc = true;
                    _gotoNext = 2671973i32;
                } else if (__value__ == (2671973i32)) {
                    _i++;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2671985i32)) {
                    _sawdigits_2671438 = true;
                    _nd_2671458++;
                    if ((_ndMant_2671467 < _maxMantDigits_2671198 : Bool)) {
                        _gotoNext = 2672097i32;
                    } else {
                        _gotoNext = 2672185i32;
                    };
                } else if (__value__ == (2672097i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2671528) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2671467++;
                    _gotoNext = 2672212i32;
                } else if (__value__ == (2672185i32)) {
                    _gotoNext = 2672185i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2672212i32;
                } else if (__value__ == (2672212i32)) {
                    _i++;
                    _gotoNext = 2671495i32;
                } else if (__value__ == (2672227i32)) {
                    _gotoNext = 2672237i32;
                } else if (__value__ == (2672237i32)) {
                    if (!_sawdigits_2671438) {
                        _gotoNext = 2672251i32;
                    } else {
                        _gotoNext = 2672266i32;
                    };
                } else if (__value__ == (2672251i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2672266i32;
                } else if (__value__ == (2672266i32)) {
                    if (!_sawdot_2671421) {
                        _gotoNext = 2672277i32;
                    } else {
                        _gotoNext = 2672294i32;
                    };
                } else if (__value__ == (2672277i32)) {
                    _dp_2671480 = _nd_2671458;
                    _gotoNext = 2672294i32;
                } else if (__value__ == (2672294i32)) {
                    if (_base_2671178 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2672308i32;
                    } else {
                        _gotoNext = 2672553i32;
                    };
                } else if (__value__ == (2672308i32)) {
                    _dp_2671480 = (_dp_2671480 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2671467 = (_ndMant_2671467 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2672553i32;
                } else if (__value__ == (2672553i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2671243) : Bool)) {
                        _gotoNext = 2672593i32;
                    } else if (_base_2671178 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2673026i32;
                    } else {
                        _gotoNext = 2673067i32;
                    };
                } else if (__value__ == (2672593i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2672618i32;
                    } else {
                        _gotoNext = 2672636i32;
                    };
                } else if (__value__ == (2672618i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2672636i32;
                } else if (__value__ == (2672636i32)) {
                    _esign_2672636 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2672664i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2672697i32;
                    } else {
                        _gotoNext = 2672726i32;
                    };
                } else if (__value__ == (2672664i32)) {
                    _i++;
                    _gotoNext = 2672726i32;
                } else if (__value__ == (2672697i32)) {
                    _i++;
                    _esign_2672636 = (-1 : stdgo.GoInt);
                    _gotoNext = 2672726i32;
                } else if (__value__ == (2672726i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2672769i32;
                    } else {
                        _gotoNext = 2672787i32;
                    };
                } else if (__value__ == (2672769i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2672787i32;
                } else if (__value__ == (2672787i32)) {
                    _e_2672787 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2672796i32;
                } else if (__value__ == (2672796i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2672865i32;
                    } else {
                        _gotoNext = 2672988i32;
                    };
                } else if (__value__ == (2672861i32)) {
                    _i++;
                    _gotoNext = 2672796i32;
                } else if (__value__ == (2672865i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2672885i32;
                    } else {
                        _gotoNext = 2672931i32;
                    };
                } else if (__value__ == (2672885i32)) {
                    _underscores_2671019 = true;
                    _i++;
                    _gotoNext = 2672796i32;
                } else if (__value__ == (2672931i32)) {
                    if ((_e_2672787 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2672944i32;
                    } else {
                        _gotoNext = 2672861i32;
                    };
                } else if (__value__ == (2672944i32)) {
                    _e_2672787 = (((_e_2672787 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2672861i32;
                } else if (__value__ == (2672988i32)) {
                    _dp_2671480 = (_dp_2671480 + ((_e_2672787 * _esign_2672636 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2673067i32;
                } else if (__value__ == (2673026i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2673067i32;
                } else if (__value__ == (2673067i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2673084i32;
                    } else {
                        _gotoNext = 2673111i32;
                    };
                } else if (__value__ == (2673084i32)) {
                    _exp = (_dp_2671480 - _ndMant_2671467 : stdgo.GoInt);
                    _gotoNext = 2673111i32;
                } else if (__value__ == (2673111i32)) {
                    if ((_underscores_2671019 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2673150i32;
                    } else {
                        _gotoNext = 2673166i32;
                    };
                } else if (__value__ == (2673150i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2673166i32;
                } else if (__value__ == (2673166i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
