package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2742215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2741059:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2741046:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2741000:Bool = false;
        var _base_2740757:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2741017:Bool = false;
        var _expChar_2740822:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2740598:Bool = false;
        var _loopBreak = false;
        var _e_2742366:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2741107:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2741037:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2740777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2740598 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2740654i32;
                    } else {
                        _gotoNext = 2740669i32;
                    };
                } else if (__value__ == (2740654i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2740669i32;
                } else if (__value__ == (2740669i32)) {
                    _gotoNext = 2740669i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2740679i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2740704i32;
                    } else {
                        _gotoNext = 2740757i32;
                    };
                } else if (__value__ == (2740679i32)) {
                    _i++;
                    _gotoNext = 2740757i32;
                } else if (__value__ == (2740704i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2740757i32;
                } else if (__value__ == (2740757i32)) {
                    _base_2740757 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2740777 = (19 : stdgo.GoInt);
                    _expChar_2740822 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2740899i32;
                    } else {
                        _gotoNext = 2741000i32;
                    };
                } else if (__value__ == (2740899i32)) {
                    _base_2740757 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2740777 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2740822 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2741000i32;
                } else if (__value__ == (2741000i32)) {
                    _sawdot_2741000 = false;
                    _sawdigits_2741017 = false;
                    _nd_2741037 = (0 : stdgo.GoInt);
                    _ndMant_2741046 = (0 : stdgo.GoInt);
                    _dp_2741059 = (0 : stdgo.GoInt);
                    _gotoNext = 2741067i32;
                } else if (__value__ == (2741067i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741074i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2741096i32;
                    } else {
                        _gotoNext = 2741816i32;
                    };
                } else if (__value__ == (2741096i32)) {
                    _gotoNext = 2741100i32;
                } else if (__value__ == (2741100i32)) {
                    {
                        _c_2741107 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2741107 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2741127i32;
                            } else if (__value__ == (_c_2741107 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2741179i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2741107 : Bool) && (_c_2741107 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2741272i32;
                            } else if (__value__ == (((_base_2740757 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2741107) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2741107) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2741564i32;
                            } else {
                                _gotoNext = 2741806i32;
                            };
                        };
                    };
                } else if (__value__ == (2741127i32)) {
                    _underscores_2740598 = true;
                    _i++;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741179i32)) {
                    if (_sawdot_2741000) {
                        _gotoNext = 2741207i32;
                    } else {
                        _gotoNext = 2741232i32;
                    };
                } else if (__value__ == (2741207i32)) {
                    _loopBreak = true;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741232i32)) {
                    _sawdot_2741000 = true;
                    _dp_2741059 = _nd_2741037;
                    _i++;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741272i32)) {
                    _sawdigits_2741017 = true;
                    if (((_c_2741107 == (48 : stdgo.GoUInt8)) && (_nd_2741037 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2741345i32;
                    } else {
                        _gotoNext = 2741401i32;
                    };
                } else if (__value__ == (2741345i32)) {
                    _dp_2741059--;
                    _i++;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741401i32)) {
                    _nd_2741037++;
                    if ((_ndMant_2741046 < _maxMantDigits_2740777 : Bool)) {
                        _gotoNext = 2741435i32;
                    } else if (_c_2741107 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2741525i32;
                    } else {
                        _gotoNext = 2741552i32;
                    };
                } else if (__value__ == (2741435i32)) {
                    _mantissa = (_mantissa * (_base_2740757) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2741107 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2741046++;
                    _gotoNext = 2741552i32;
                } else if (__value__ == (2741525i32)) {
                    _trunc = true;
                    _gotoNext = 2741552i32;
                } else if (__value__ == (2741552i32)) {
                    _i++;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741564i32)) {
                    _sawdigits_2741017 = true;
                    _nd_2741037++;
                    if ((_ndMant_2741046 < _maxMantDigits_2740777 : Bool)) {
                        _gotoNext = 2741676i32;
                    } else {
                        _gotoNext = 2741764i32;
                    };
                } else if (__value__ == (2741676i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2741107) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2741046++;
                    _gotoNext = 2741791i32;
                } else if (__value__ == (2741764i32)) {
                    _gotoNext = 2741764i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2741791i32;
                } else if (__value__ == (2741791i32)) {
                    _i++;
                    _gotoNext = 2741074i32;
                } else if (__value__ == (2741806i32)) {
                    _gotoNext = 2741816i32;
                } else if (__value__ == (2741816i32)) {
                    if (!_sawdigits_2741017) {
                        _gotoNext = 2741830i32;
                    } else {
                        _gotoNext = 2741845i32;
                    };
                } else if (__value__ == (2741830i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2741845i32;
                } else if (__value__ == (2741845i32)) {
                    if (!_sawdot_2741000) {
                        _gotoNext = 2741856i32;
                    } else {
                        _gotoNext = 2741873i32;
                    };
                } else if (__value__ == (2741856i32)) {
                    _dp_2741059 = _nd_2741037;
                    _gotoNext = 2741873i32;
                } else if (__value__ == (2741873i32)) {
                    if (_base_2740757 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2741887i32;
                    } else {
                        _gotoNext = 2742132i32;
                    };
                } else if (__value__ == (2741887i32)) {
                    _dp_2741059 = (_dp_2741059 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2741046 = (_ndMant_2741046 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2742132i32;
                } else if (__value__ == (2742132i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2740822) : Bool)) {
                        _gotoNext = 2742172i32;
                    } else if (_base_2740757 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2742605i32;
                    } else {
                        _gotoNext = 2742646i32;
                    };
                } else if (__value__ == (2742172i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2742197i32;
                    } else {
                        _gotoNext = 2742215i32;
                    };
                } else if (__value__ == (2742197i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2742215i32;
                } else if (__value__ == (2742215i32)) {
                    _esign_2742215 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2742243i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2742276i32;
                    } else {
                        _gotoNext = 2742305i32;
                    };
                } else if (__value__ == (2742243i32)) {
                    _i++;
                    _gotoNext = 2742305i32;
                } else if (__value__ == (2742276i32)) {
                    _i++;
                    _esign_2742215 = (-1 : stdgo.GoInt);
                    _gotoNext = 2742305i32;
                } else if (__value__ == (2742305i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2742348i32;
                    } else {
                        _gotoNext = 2742366i32;
                    };
                } else if (__value__ == (2742348i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2742366i32;
                } else if (__value__ == (2742366i32)) {
                    _e_2742366 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2742375i32;
                } else if (__value__ == (2742375i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2742444i32;
                    } else {
                        _gotoNext = 2742567i32;
                    };
                } else if (__value__ == (2742440i32)) {
                    _i++;
                    _gotoNext = 2742375i32;
                } else if (__value__ == (2742444i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2742464i32;
                    } else {
                        _gotoNext = 2742510i32;
                    };
                } else if (__value__ == (2742464i32)) {
                    _underscores_2740598 = true;
                    _i++;
                    _gotoNext = 2742375i32;
                } else if (__value__ == (2742510i32)) {
                    if ((_e_2742366 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2742523i32;
                    } else {
                        _gotoNext = 2742440i32;
                    };
                } else if (__value__ == (2742523i32)) {
                    _e_2742366 = (((_e_2742366 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2742440i32;
                } else if (__value__ == (2742567i32)) {
                    _dp_2741059 = (_dp_2741059 + ((_e_2742366 * _esign_2742215 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2742646i32;
                } else if (__value__ == (2742605i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2742646i32;
                } else if (__value__ == (2742646i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2742663i32;
                    } else {
                        _gotoNext = 2742690i32;
                    };
                } else if (__value__ == (2742663i32)) {
                    _exp = (_dp_2741059 - _ndMant_2741046 : stdgo.GoInt);
                    _gotoNext = 2742690i32;
                } else if (__value__ == (2742690i32)) {
                    if ((_underscores_2740598 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2742729i32;
                    } else {
                        _gotoNext = 2742745i32;
                    };
                } else if (__value__ == (2742729i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2742745i32;
                } else if (__value__ == (2742745i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
