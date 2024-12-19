package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2826354:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2827943:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2826614:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2826577:Bool = false;
        var _base_2826334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2826175:Bool = false;
        var _c_2826684:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2826623:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2826594:Bool = false;
        var _expChar_2826399:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2826636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2827792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2826175 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2826231i32;
                    } else {
                        _gotoNext = 2826246i32;
                    };
                } else if (__value__ == (2826231i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2826246i32;
                } else if (__value__ == (2826246i32)) {
                    _gotoNext = 2826246i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2826256i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2826281i32;
                    } else {
                        _gotoNext = 2826334i32;
                    };
                } else if (__value__ == (2826256i32)) {
                    _i++;
                    _gotoNext = 2826334i32;
                } else if (__value__ == (2826281i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2826334i32;
                } else if (__value__ == (2826334i32)) {
                    _base_2826334 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2826354 = (19 : stdgo.GoInt);
                    _expChar_2826399 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2826476i32;
                    } else {
                        _gotoNext = 2826577i32;
                    };
                } else if (__value__ == (2826476i32)) {
                    _base_2826334 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2826354 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2826399 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2826577i32;
                } else if (__value__ == (2826577i32)) {
                    _sawdot_2826577 = false;
                    _sawdigits_2826594 = false;
                    _nd_2826614 = (0 : stdgo.GoInt);
                    _ndMant_2826623 = (0 : stdgo.GoInt);
                    _dp_2826636 = (0 : stdgo.GoInt);
                    _gotoNext = 2826644i32;
                } else if (__value__ == (2826644i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2826651i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2826673i32;
                    } else {
                        _gotoNext = 2827393i32;
                    };
                } else if (__value__ == (2826673i32)) {
                    _gotoNext = 2826677i32;
                } else if (__value__ == (2826677i32)) {
                    {
                        _c_2826684 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2826684 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2826704i32;
                            } else if (__value__ == (_c_2826684 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2826756i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2826684 : Bool) && (_c_2826684 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2826849i32;
                            } else if (__value__ == (((_base_2826334 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2826684) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2826684) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2827141i32;
                            } else {
                                _gotoNext = 2827383i32;
                            };
                        };
                    };
                } else if (__value__ == (2826704i32)) {
                    _underscores_2826175 = true;
                    _i++;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2826756i32)) {
                    if (_sawdot_2826577) {
                        _gotoNext = 2826784i32;
                    } else {
                        _gotoNext = 2826809i32;
                    };
                } else if (__value__ == (2826784i32)) {
                    _loopBreak = true;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2826809i32)) {
                    _sawdot_2826577 = true;
                    _dp_2826636 = _nd_2826614;
                    _i++;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2826849i32)) {
                    _sawdigits_2826594 = true;
                    if (((_c_2826684 == (48 : stdgo.GoUInt8)) && (_nd_2826614 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2826922i32;
                    } else {
                        _gotoNext = 2826978i32;
                    };
                } else if (__value__ == (2826922i32)) {
                    _dp_2826636--;
                    _i++;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2826978i32)) {
                    _nd_2826614++;
                    if ((_ndMant_2826623 < _maxMantDigits_2826354 : Bool)) {
                        _gotoNext = 2827012i32;
                    } else if (_c_2826684 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2827102i32;
                    } else {
                        _gotoNext = 2827129i32;
                    };
                } else if (__value__ == (2827012i32)) {
                    _mantissa = (_mantissa * (_base_2826334) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2826684 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2826623++;
                    _gotoNext = 2827129i32;
                } else if (__value__ == (2827102i32)) {
                    _trunc = true;
                    _gotoNext = 2827129i32;
                } else if (__value__ == (2827129i32)) {
                    _i++;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2827141i32)) {
                    _sawdigits_2826594 = true;
                    _nd_2826614++;
                    if ((_ndMant_2826623 < _maxMantDigits_2826354 : Bool)) {
                        _gotoNext = 2827253i32;
                    } else {
                        _gotoNext = 2827341i32;
                    };
                } else if (__value__ == (2827253i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2826684) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2826623++;
                    _gotoNext = 2827368i32;
                } else if (__value__ == (2827341i32)) {
                    _gotoNext = 2827341i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2827368i32;
                } else if (__value__ == (2827368i32)) {
                    _i++;
                    _gotoNext = 2826651i32;
                } else if (__value__ == (2827383i32)) {
                    _gotoNext = 2827393i32;
                } else if (__value__ == (2827393i32)) {
                    if (!_sawdigits_2826594) {
                        _gotoNext = 2827407i32;
                    } else {
                        _gotoNext = 2827422i32;
                    };
                } else if (__value__ == (2827407i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2827422i32;
                } else if (__value__ == (2827422i32)) {
                    if (!_sawdot_2826577) {
                        _gotoNext = 2827433i32;
                    } else {
                        _gotoNext = 2827450i32;
                    };
                } else if (__value__ == (2827433i32)) {
                    _dp_2826636 = _nd_2826614;
                    _gotoNext = 2827450i32;
                } else if (__value__ == (2827450i32)) {
                    if (_base_2826334 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2827464i32;
                    } else {
                        _gotoNext = 2827709i32;
                    };
                } else if (__value__ == (2827464i32)) {
                    _dp_2826636 = (_dp_2826636 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2826623 = (_ndMant_2826623 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2827709i32;
                } else if (__value__ == (2827709i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2826399) : Bool)) {
                        _gotoNext = 2827749i32;
                    } else if (_base_2826334 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2828182i32;
                    } else {
                        _gotoNext = 2828223i32;
                    };
                } else if (__value__ == (2827749i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2827774i32;
                    } else {
                        _gotoNext = 2827792i32;
                    };
                } else if (__value__ == (2827774i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2827792i32;
                } else if (__value__ == (2827792i32)) {
                    _esign_2827792 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2827820i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2827853i32;
                    } else {
                        _gotoNext = 2827882i32;
                    };
                } else if (__value__ == (2827820i32)) {
                    _i++;
                    _gotoNext = 2827882i32;
                } else if (__value__ == (2827853i32)) {
                    _i++;
                    _esign_2827792 = (-1 : stdgo.GoInt);
                    _gotoNext = 2827882i32;
                } else if (__value__ == (2827882i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2827925i32;
                    } else {
                        _gotoNext = 2827943i32;
                    };
                } else if (__value__ == (2827925i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2827943i32;
                } else if (__value__ == (2827943i32)) {
                    _e_2827943 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2827952i32;
                } else if (__value__ == (2827952i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2828021i32;
                    } else {
                        _gotoNext = 2828144i32;
                    };
                } else if (__value__ == (2828017i32)) {
                    _i++;
                    _gotoNext = 2827952i32;
                } else if (__value__ == (2828021i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2828041i32;
                    } else {
                        _gotoNext = 2828087i32;
                    };
                } else if (__value__ == (2828041i32)) {
                    _underscores_2826175 = true;
                    _i++;
                    _gotoNext = 2827952i32;
                } else if (__value__ == (2828087i32)) {
                    if ((_e_2827943 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2828100i32;
                    } else {
                        _gotoNext = 2828017i32;
                    };
                } else if (__value__ == (2828100i32)) {
                    _e_2827943 = (((_e_2827943 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2828017i32;
                } else if (__value__ == (2828144i32)) {
                    _dp_2826636 = (_dp_2826636 + ((_e_2827943 * _esign_2827792 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2828223i32;
                } else if (__value__ == (2828182i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2828223i32;
                } else if (__value__ == (2828223i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2828240i32;
                    } else {
                        _gotoNext = 2828267i32;
                    };
                } else if (__value__ == (2828240i32)) {
                    _exp = (_dp_2826636 - _ndMant_2826623 : stdgo.GoInt);
                    _gotoNext = 2828267i32;
                } else if (__value__ == (2828267i32)) {
                    if ((_underscores_2826175 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2828306i32;
                    } else {
                        _gotoNext = 2828322i32;
                    };
                } else if (__value__ == (2828306i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2828322i32;
                } else if (__value__ == (2828322i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
