package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdot_2833456:Bool = false;
        var _underscores_2833054:Bool = false;
        var _esign_2834671:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2833563:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2833493:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2833278:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2833213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2834822:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2833515:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2833233:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2833473:Bool = false;
        var _ndMant_2833502:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2833054 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2833110i32;
                    } else {
                        _gotoNext = 2833125i32;
                    };
                } else if (__value__ == (2833110i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2833125i32;
                } else if (__value__ == (2833125i32)) {
                    _gotoNext = 2833125i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2833135i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2833160i32;
                    } else {
                        _gotoNext = 2833213i32;
                    };
                } else if (__value__ == (2833135i32)) {
                    _i++;
                    _gotoNext = 2833213i32;
                } else if (__value__ == (2833160i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2833213i32;
                } else if (__value__ == (2833213i32)) {
                    _base_2833213 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2833233 = (19 : stdgo.GoInt);
                    _expChar_2833278 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2833355i32;
                    } else {
                        _gotoNext = 2833456i32;
                    };
                } else if (__value__ == (2833355i32)) {
                    _base_2833213 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2833233 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2833278 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2833456i32;
                } else if (__value__ == (2833456i32)) {
                    _sawdot_2833456 = false;
                    _sawdigits_2833473 = false;
                    _nd_2833493 = (0 : stdgo.GoInt);
                    _ndMant_2833502 = (0 : stdgo.GoInt);
                    _dp_2833515 = (0 : stdgo.GoInt);
                    _gotoNext = 2833523i32;
                } else if (__value__ == (2833523i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2833530i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2833552i32;
                    } else {
                        _gotoNext = 2834272i32;
                    };
                } else if (__value__ == (2833552i32)) {
                    _gotoNext = 2833556i32;
                } else if (__value__ == (2833556i32)) {
                    {
                        _c_2833563 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2833563 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2833583i32;
                            } else if (__value__ == (_c_2833563 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2833635i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2833563 : Bool) && (_c_2833563 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2833728i32;
                            } else if (__value__ == (((_base_2833213 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2833563) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2833563) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2834020i32;
                            } else {
                                _gotoNext = 2834262i32;
                            };
                        };
                    };
                } else if (__value__ == (2833583i32)) {
                    _underscores_2833054 = true;
                    _i++;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2833635i32)) {
                    if (_sawdot_2833456) {
                        _gotoNext = 2833663i32;
                    } else {
                        _gotoNext = 2833688i32;
                    };
                } else if (__value__ == (2833663i32)) {
                    _loopBreak = true;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2833688i32)) {
                    _sawdot_2833456 = true;
                    _dp_2833515 = _nd_2833493;
                    _i++;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2833728i32)) {
                    _sawdigits_2833473 = true;
                    if (((_c_2833563 == (48 : stdgo.GoUInt8)) && (_nd_2833493 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2833801i32;
                    } else {
                        _gotoNext = 2833857i32;
                    };
                } else if (__value__ == (2833801i32)) {
                    _dp_2833515--;
                    _i++;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2833857i32)) {
                    _nd_2833493++;
                    if ((_ndMant_2833502 < _maxMantDigits_2833233 : Bool)) {
                        _gotoNext = 2833891i32;
                    } else if (_c_2833563 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2833981i32;
                    } else {
                        _gotoNext = 2834008i32;
                    };
                } else if (__value__ == (2833891i32)) {
                    _mantissa = (_mantissa * (_base_2833213) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2833563 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2833502++;
                    _gotoNext = 2834008i32;
                } else if (__value__ == (2833981i32)) {
                    _trunc = true;
                    _gotoNext = 2834008i32;
                } else if (__value__ == (2834008i32)) {
                    _i++;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2834020i32)) {
                    _sawdigits_2833473 = true;
                    _nd_2833493++;
                    if ((_ndMant_2833502 < _maxMantDigits_2833233 : Bool)) {
                        _gotoNext = 2834132i32;
                    } else {
                        _gotoNext = 2834220i32;
                    };
                } else if (__value__ == (2834132i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2833563) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2833502++;
                    _gotoNext = 2834247i32;
                } else if (__value__ == (2834220i32)) {
                    _gotoNext = 2834220i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2834247i32;
                } else if (__value__ == (2834247i32)) {
                    _i++;
                    _gotoNext = 2833530i32;
                } else if (__value__ == (2834262i32)) {
                    _gotoNext = 2834272i32;
                } else if (__value__ == (2834272i32)) {
                    if (!_sawdigits_2833473) {
                        _gotoNext = 2834286i32;
                    } else {
                        _gotoNext = 2834301i32;
                    };
                } else if (__value__ == (2834286i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2834301i32;
                } else if (__value__ == (2834301i32)) {
                    if (!_sawdot_2833456) {
                        _gotoNext = 2834312i32;
                    } else {
                        _gotoNext = 2834329i32;
                    };
                } else if (__value__ == (2834312i32)) {
                    _dp_2833515 = _nd_2833493;
                    _gotoNext = 2834329i32;
                } else if (__value__ == (2834329i32)) {
                    if (_base_2833213 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2834343i32;
                    } else {
                        _gotoNext = 2834588i32;
                    };
                } else if (__value__ == (2834343i32)) {
                    _dp_2833515 = (_dp_2833515 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2833502 = (_ndMant_2833502 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2834588i32;
                } else if (__value__ == (2834588i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2833278) : Bool)) {
                        _gotoNext = 2834628i32;
                    } else if (_base_2833213 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2835061i32;
                    } else {
                        _gotoNext = 2835102i32;
                    };
                } else if (__value__ == (2834628i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2834653i32;
                    } else {
                        _gotoNext = 2834671i32;
                    };
                } else if (__value__ == (2834653i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2834671i32;
                } else if (__value__ == (2834671i32)) {
                    _esign_2834671 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2834699i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2834732i32;
                    } else {
                        _gotoNext = 2834761i32;
                    };
                } else if (__value__ == (2834699i32)) {
                    _i++;
                    _gotoNext = 2834761i32;
                } else if (__value__ == (2834732i32)) {
                    _i++;
                    _esign_2834671 = (-1 : stdgo.GoInt);
                    _gotoNext = 2834761i32;
                } else if (__value__ == (2834761i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2834804i32;
                    } else {
                        _gotoNext = 2834822i32;
                    };
                } else if (__value__ == (2834804i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2834822i32;
                } else if (__value__ == (2834822i32)) {
                    _e_2834822 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2834831i32;
                } else if (__value__ == (2834831i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2834900i32;
                    } else {
                        _gotoNext = 2835023i32;
                    };
                } else if (__value__ == (2834896i32)) {
                    _i++;
                    _gotoNext = 2834831i32;
                } else if (__value__ == (2834900i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2834920i32;
                    } else {
                        _gotoNext = 2834966i32;
                    };
                } else if (__value__ == (2834920i32)) {
                    _underscores_2833054 = true;
                    _i++;
                    _gotoNext = 2834831i32;
                } else if (__value__ == (2834966i32)) {
                    if ((_e_2834822 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2834979i32;
                    } else {
                        _gotoNext = 2834896i32;
                    };
                } else if (__value__ == (2834979i32)) {
                    _e_2834822 = (((_e_2834822 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2834896i32;
                } else if (__value__ == (2835023i32)) {
                    _dp_2833515 = (_dp_2833515 + ((_e_2834822 * _esign_2834671 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2835102i32;
                } else if (__value__ == (2835061i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2835102i32;
                } else if (__value__ == (2835102i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2835119i32;
                    } else {
                        _gotoNext = 2835146i32;
                    };
                } else if (__value__ == (2835119i32)) {
                    _exp = (_dp_2833515 - _ndMant_2833502 : stdgo.GoInt);
                    _gotoNext = 2835146i32;
                } else if (__value__ == (2835146i32)) {
                    if ((_underscores_2833054 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2835185i32;
                    } else {
                        _gotoNext = 2835201i32;
                    };
                } else if (__value__ == (2835185i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2835201i32;
                } else if (__value__ == (2835201i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
