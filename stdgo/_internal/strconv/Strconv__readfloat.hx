package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_3040173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdot_3038807:Bool = false;
        var _c_3038914:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _expChar_3038629:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_3038844:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_3038564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_3038405:Bool = false;
        var _esign_3040022:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_3038866:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_3038853:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_3038824:Bool = false;
        var _maxMantDigits_3038584:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_3038405 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 3038461i32;
                    } else {
                        _gotoNext = 3038476i32;
                    };
                } else if (__value__ == (3038461i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3038476i32;
                } else if (__value__ == (3038476i32)) {
                    _gotoNext = 3038476i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 3038486i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3038511i32;
                    } else {
                        _gotoNext = 3038564i32;
                    };
                } else if (__value__ == (3038486i32)) {
                    _i++;
                    _gotoNext = 3038564i32;
                } else if (__value__ == (3038511i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 3038564i32;
                } else if (__value__ == (3038564i32)) {
                    _base_3038564 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_3038584 = (19 : stdgo.GoInt);
                    _expChar_3038629 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3038706i32;
                    } else {
                        _gotoNext = 3038807i32;
                    };
                } else if (__value__ == (3038706i32)) {
                    _base_3038564 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_3038584 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3038629 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 3038807i32;
                } else if (__value__ == (3038807i32)) {
                    _sawdot_3038807 = false;
                    _sawdigits_3038824 = false;
                    _nd_3038844 = (0 : stdgo.GoInt);
                    _ndMant_3038853 = (0 : stdgo.GoInt);
                    _dp_3038866 = (0 : stdgo.GoInt);
                    _gotoNext = 3038874i32;
                } else if (__value__ == (3038874i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3038881i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 3038903i32;
                    } else {
                        _gotoNext = 3039623i32;
                    };
                } else if (__value__ == (3038903i32)) {
                    _gotoNext = 3038907i32;
                } else if (__value__ == (3038907i32)) {
                    {
                        _c_3038914 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_3038914 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 3038934i32;
                            } else if (__value__ == (_c_3038914 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 3038986i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_3038914 : Bool) && (_c_3038914 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 3039079i32;
                            } else if (__value__ == (((_base_3038564 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_3038914) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_3038914) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 3039371i32;
                            } else {
                                _gotoNext = 3039613i32;
                            };
                        };
                    };
                } else if (__value__ == (3038934i32)) {
                    _underscores_3038405 = true;
                    _i++;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3038986i32)) {
                    if (_sawdot_3038807) {
                        _gotoNext = 3039014i32;
                    } else {
                        _gotoNext = 3039039i32;
                    };
                } else if (__value__ == (3039014i32)) {
                    _loopBreak = true;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3039039i32)) {
                    _sawdot_3038807 = true;
                    _dp_3038866 = _nd_3038844;
                    _i++;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3039079i32)) {
                    _sawdigits_3038824 = true;
                    if (((_c_3038914 == (48 : stdgo.GoUInt8)) && (_nd_3038844 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3039152i32;
                    } else {
                        _gotoNext = 3039208i32;
                    };
                } else if (__value__ == (3039152i32)) {
                    _dp_3038866--;
                    _i++;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3039208i32)) {
                    _nd_3038844++;
                    if ((_ndMant_3038853 < _maxMantDigits_3038584 : Bool)) {
                        _gotoNext = 3039242i32;
                    } else if (_c_3038914 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 3039332i32;
                    } else {
                        _gotoNext = 3039359i32;
                    };
                } else if (__value__ == (3039242i32)) {
                    _mantissa = (_mantissa * (_base_3038564) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_3038914 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_3038853++;
                    _gotoNext = 3039359i32;
                } else if (__value__ == (3039332i32)) {
                    _trunc = true;
                    _gotoNext = 3039359i32;
                } else if (__value__ == (3039359i32)) {
                    _i++;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3039371i32)) {
                    _sawdigits_3038824 = true;
                    _nd_3038844++;
                    if ((_ndMant_3038853 < _maxMantDigits_3038584 : Bool)) {
                        _gotoNext = 3039483i32;
                    } else {
                        _gotoNext = 3039571i32;
                    };
                } else if (__value__ == (3039483i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_3038914) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_3038853++;
                    _gotoNext = 3039598i32;
                } else if (__value__ == (3039571i32)) {
                    _gotoNext = 3039571i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 3039598i32;
                } else if (__value__ == (3039598i32)) {
                    _i++;
                    _gotoNext = 3038881i32;
                } else if (__value__ == (3039613i32)) {
                    _gotoNext = 3039623i32;
                } else if (__value__ == (3039623i32)) {
                    if (!_sawdigits_3038824) {
                        _gotoNext = 3039637i32;
                    } else {
                        _gotoNext = 3039652i32;
                    };
                } else if (__value__ == (3039637i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3039652i32;
                } else if (__value__ == (3039652i32)) {
                    if (!_sawdot_3038807) {
                        _gotoNext = 3039663i32;
                    } else {
                        _gotoNext = 3039680i32;
                    };
                } else if (__value__ == (3039663i32)) {
                    _dp_3038866 = _nd_3038844;
                    _gotoNext = 3039680i32;
                } else if (__value__ == (3039680i32)) {
                    if (_base_3038564 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3039694i32;
                    } else {
                        _gotoNext = 3039939i32;
                    };
                } else if (__value__ == (3039694i32)) {
                    _dp_3038866 = (_dp_3038866 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_3038853 = (_ndMant_3038853 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3039939i32;
                } else if (__value__ == (3039939i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3038629) : Bool)) {
                        _gotoNext = 3039979i32;
                    } else if (_base_3038564 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3040412i32;
                    } else {
                        _gotoNext = 3040453i32;
                    };
                } else if (__value__ == (3039979i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 3040004i32;
                    } else {
                        _gotoNext = 3040022i32;
                    };
                } else if (__value__ == (3040004i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3040022i32;
                } else if (__value__ == (3040022i32)) {
                    _esign_3040022 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 3040050i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3040083i32;
                    } else {
                        _gotoNext = 3040112i32;
                    };
                } else if (__value__ == (3040050i32)) {
                    _i++;
                    _gotoNext = 3040112i32;
                } else if (__value__ == (3040083i32)) {
                    _i++;
                    _esign_3040022 = (-1 : stdgo.GoInt);
                    _gotoNext = 3040112i32;
                } else if (__value__ == (3040112i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3040155i32;
                    } else {
                        _gotoNext = 3040173i32;
                    };
                } else if (__value__ == (3040155i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3040173i32;
                } else if (__value__ == (3040173i32)) {
                    _e_3040173 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3040182i32;
                } else if (__value__ == (3040182i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 3040251i32;
                    } else {
                        _gotoNext = 3040374i32;
                    };
                } else if (__value__ == (3040247i32)) {
                    _i++;
                    _gotoNext = 3040182i32;
                } else if (__value__ == (3040251i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 3040271i32;
                    } else {
                        _gotoNext = 3040317i32;
                    };
                } else if (__value__ == (3040271i32)) {
                    _underscores_3038405 = true;
                    _i++;
                    _gotoNext = 3040182i32;
                } else if (__value__ == (3040317i32)) {
                    if ((_e_3040173 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3040330i32;
                    } else {
                        _gotoNext = 3040247i32;
                    };
                } else if (__value__ == (3040330i32)) {
                    _e_3040173 = (((_e_3040173 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3040247i32;
                } else if (__value__ == (3040374i32)) {
                    _dp_3038866 = (_dp_3038866 + ((_e_3040173 * _esign_3040022 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3040453i32;
                } else if (__value__ == (3040412i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3040453i32;
                } else if (__value__ == (3040453i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 3040470i32;
                    } else {
                        _gotoNext = 3040497i32;
                    };
                } else if (__value__ == (3040470i32)) {
                    _exp = (_dp_3038866 - _ndMant_3038853 : stdgo.GoInt);
                    _gotoNext = 3040497i32;
                } else if (__value__ == (3040497i32)) {
                    if ((_underscores_3038405 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 3040536i32;
                    } else {
                        _gotoNext = 3040552i32;
                    };
                } else if (__value__ == (3040536i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 3040552i32;
                } else if (__value__ == (3040552i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
