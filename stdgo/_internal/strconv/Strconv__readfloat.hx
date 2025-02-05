package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _base_2736416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2738025:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2736718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2736436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2737874:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2736766:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _nd_2736696:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2736676:Bool = false;
        var _underscores_2736257:Bool = false;
        var _ndMant_2736705:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2736659:Bool = false;
        var _expChar_2736481:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2736257 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2736313i32;
                    } else {
                        _gotoNext = 2736328i32;
                    };
                } else if (__value__ == (2736313i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2736328i32;
                } else if (__value__ == (2736328i32)) {
                    _gotoNext = 2736328i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2736338i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2736363i32;
                    } else {
                        _gotoNext = 2736416i32;
                    };
                } else if (__value__ == (2736338i32)) {
                    _i++;
                    _gotoNext = 2736416i32;
                } else if (__value__ == (2736363i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2736416i32;
                } else if (__value__ == (2736416i32)) {
                    _base_2736416 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2736436 = (19 : stdgo.GoInt);
                    _expChar_2736481 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2736558i32;
                    } else {
                        _gotoNext = 2736659i32;
                    };
                } else if (__value__ == (2736558i32)) {
                    _base_2736416 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2736436 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2736481 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2736659i32;
                } else if (__value__ == (2736659i32)) {
                    _sawdot_2736659 = false;
                    _sawdigits_2736676 = false;
                    _nd_2736696 = (0 : stdgo.GoInt);
                    _ndMant_2736705 = (0 : stdgo.GoInt);
                    _dp_2736718 = (0 : stdgo.GoInt);
                    _gotoNext = 2736726i32;
                } else if (__value__ == (2736726i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2736733i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2736755i32;
                    } else {
                        _gotoNext = 2737475i32;
                    };
                } else if (__value__ == (2736755i32)) {
                    _gotoNext = 2736759i32;
                } else if (__value__ == (2736759i32)) {
                    {
                        _c_2736766 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2736766 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2736786i32;
                            } else if (__value__ == (_c_2736766 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2736838i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2736766 : Bool) && (_c_2736766 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2736931i32;
                            } else if (__value__ == (((_base_2736416 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2736766) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2736766) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737223i32;
                            } else {
                                _gotoNext = 2737465i32;
                            };
                        };
                    };
                } else if (__value__ == (2736786i32)) {
                    _underscores_2736257 = true;
                    _i++;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2736838i32)) {
                    if (_sawdot_2736659) {
                        _gotoNext = 2736866i32;
                    } else {
                        _gotoNext = 2736891i32;
                    };
                } else if (__value__ == (2736866i32)) {
                    _loopBreak = true;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2736891i32)) {
                    _sawdot_2736659 = true;
                    _dp_2736718 = _nd_2736696;
                    _i++;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2736931i32)) {
                    _sawdigits_2736676 = true;
                    if (((_c_2736766 == (48 : stdgo.GoUInt8)) && (_nd_2736696 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2737004i32;
                    } else {
                        _gotoNext = 2737060i32;
                    };
                } else if (__value__ == (2737004i32)) {
                    _dp_2736718--;
                    _i++;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2737060i32)) {
                    _nd_2736696++;
                    if ((_ndMant_2736705 < _maxMantDigits_2736436 : Bool)) {
                        _gotoNext = 2737094i32;
                    } else if (_c_2736766 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2737184i32;
                    } else {
                        _gotoNext = 2737211i32;
                    };
                } else if (__value__ == (2737094i32)) {
                    _mantissa = (_mantissa * (_base_2736416) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2736766 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2736705++;
                    _gotoNext = 2737211i32;
                } else if (__value__ == (2737184i32)) {
                    _trunc = true;
                    _gotoNext = 2737211i32;
                } else if (__value__ == (2737211i32)) {
                    _i++;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2737223i32)) {
                    _sawdigits_2736676 = true;
                    _nd_2736696++;
                    if ((_ndMant_2736705 < _maxMantDigits_2736436 : Bool)) {
                        _gotoNext = 2737335i32;
                    } else {
                        _gotoNext = 2737423i32;
                    };
                } else if (__value__ == (2737335i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2736766) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2736705++;
                    _gotoNext = 2737450i32;
                } else if (__value__ == (2737423i32)) {
                    _gotoNext = 2737423i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2737450i32;
                } else if (__value__ == (2737450i32)) {
                    _i++;
                    _gotoNext = 2736733i32;
                } else if (__value__ == (2737465i32)) {
                    _gotoNext = 2737475i32;
                } else if (__value__ == (2737475i32)) {
                    if (!_sawdigits_2736676) {
                        _gotoNext = 2737489i32;
                    } else {
                        _gotoNext = 2737504i32;
                    };
                } else if (__value__ == (2737489i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737504i32;
                } else if (__value__ == (2737504i32)) {
                    if (!_sawdot_2736659) {
                        _gotoNext = 2737515i32;
                    } else {
                        _gotoNext = 2737532i32;
                    };
                } else if (__value__ == (2737515i32)) {
                    _dp_2736718 = _nd_2736696;
                    _gotoNext = 2737532i32;
                } else if (__value__ == (2737532i32)) {
                    if (_base_2736416 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2737546i32;
                    } else {
                        _gotoNext = 2737791i32;
                    };
                } else if (__value__ == (2737546i32)) {
                    _dp_2736718 = (_dp_2736718 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2736705 = (_ndMant_2736705 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2737791i32;
                } else if (__value__ == (2737791i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2736481) : Bool)) {
                        _gotoNext = 2737831i32;
                    } else if (_base_2736416 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738264i32;
                    } else {
                        _gotoNext = 2738305i32;
                    };
                } else if (__value__ == (2737831i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2737856i32;
                    } else {
                        _gotoNext = 2737874i32;
                    };
                } else if (__value__ == (2737856i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737874i32;
                } else if (__value__ == (2737874i32)) {
                    _esign_2737874 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2737902i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2737935i32;
                    } else {
                        _gotoNext = 2737964i32;
                    };
                } else if (__value__ == (2737902i32)) {
                    _i++;
                    _gotoNext = 2737964i32;
                } else if (__value__ == (2737935i32)) {
                    _i++;
                    _esign_2737874 = (-1 : stdgo.GoInt);
                    _gotoNext = 2737964i32;
                } else if (__value__ == (2737964i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2738007i32;
                    } else {
                        _gotoNext = 2738025i32;
                    };
                } else if (__value__ == (2738007i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738025i32;
                } else if (__value__ == (2738025i32)) {
                    _e_2738025 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2738034i32;
                } else if (__value__ == (2738034i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2738103i32;
                    } else {
                        _gotoNext = 2738226i32;
                    };
                } else if (__value__ == (2738099i32)) {
                    _i++;
                    _gotoNext = 2738034i32;
                } else if (__value__ == (2738103i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2738123i32;
                    } else {
                        _gotoNext = 2738169i32;
                    };
                } else if (__value__ == (2738123i32)) {
                    _underscores_2736257 = true;
                    _i++;
                    _gotoNext = 2738034i32;
                } else if (__value__ == (2738169i32)) {
                    if ((_e_2738025 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2738182i32;
                    } else {
                        _gotoNext = 2738099i32;
                    };
                } else if (__value__ == (2738182i32)) {
                    _e_2738025 = (((_e_2738025 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2738099i32;
                } else if (__value__ == (2738226i32)) {
                    _dp_2736718 = (_dp_2736718 + ((_e_2738025 * _esign_2737874 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738305i32;
                } else if (__value__ == (2738264i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738305i32;
                } else if (__value__ == (2738305i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738322i32;
                    } else {
                        _gotoNext = 2738349i32;
                    };
                } else if (__value__ == (2738322i32)) {
                    _exp = (_dp_2736718 - _ndMant_2736705 : stdgo.GoInt);
                    _gotoNext = 2738349i32;
                } else if (__value__ == (2738349i32)) {
                    if ((_underscores_2736257 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2738388i32;
                    } else {
                        _gotoNext = 2738404i32;
                    };
                } else if (__value__ == (2738388i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738404i32;
                } else if (__value__ == (2738404i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
