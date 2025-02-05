package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2689880:Bool = false;
        var _underscores_2689461:Bool = false;
        var _dp_2689922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2689900:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2689685:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_2689970:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _ndMant_2689909:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2689863:Bool = false;
        var _maxMantDigits_2689640:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2691229:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2691078:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2689620:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2689461 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2689517i32;
                    } else {
                        _gotoNext = 2689532i32;
                    };
                } else if (__value__ == (2689517i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689532i32;
                } else if (__value__ == (2689532i32)) {
                    _gotoNext = 2689532i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2689542i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2689567i32;
                    } else {
                        _gotoNext = 2689620i32;
                    };
                } else if (__value__ == (2689542i32)) {
                    _i++;
                    _gotoNext = 2689620i32;
                } else if (__value__ == (2689567i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2689620i32;
                } else if (__value__ == (2689620i32)) {
                    _base_2689620 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2689640 = (19 : stdgo.GoInt);
                    _expChar_2689685 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2689762i32;
                    } else {
                        _gotoNext = 2689863i32;
                    };
                } else if (__value__ == (2689762i32)) {
                    _base_2689620 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2689640 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2689685 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2689863i32;
                } else if (__value__ == (2689863i32)) {
                    _sawdot_2689863 = false;
                    _sawdigits_2689880 = false;
                    _nd_2689900 = (0 : stdgo.GoInt);
                    _ndMant_2689909 = (0 : stdgo.GoInt);
                    _dp_2689922 = (0 : stdgo.GoInt);
                    _gotoNext = 2689930i32;
                } else if (__value__ == (2689930i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2689937i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2689959i32;
                    } else {
                        _gotoNext = 2690679i32;
                    };
                } else if (__value__ == (2689959i32)) {
                    _gotoNext = 2689963i32;
                } else if (__value__ == (2689963i32)) {
                    {
                        _c_2689970 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2689970 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2689990i32;
                            } else if (__value__ == (_c_2689970 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2690042i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2689970 : Bool) && (_c_2689970 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2690135i32;
                            } else if (__value__ == (((_base_2689620 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2689970) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2689970) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2690427i32;
                            } else {
                                _gotoNext = 2690669i32;
                            };
                        };
                    };
                } else if (__value__ == (2689990i32)) {
                    _underscores_2689461 = true;
                    _i++;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2690042i32)) {
                    if (_sawdot_2689863) {
                        _gotoNext = 2690070i32;
                    } else {
                        _gotoNext = 2690095i32;
                    };
                } else if (__value__ == (2690070i32)) {
                    _loopBreak = true;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2690095i32)) {
                    _sawdot_2689863 = true;
                    _dp_2689922 = _nd_2689900;
                    _i++;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2690135i32)) {
                    _sawdigits_2689880 = true;
                    if (((_c_2689970 == (48 : stdgo.GoUInt8)) && (_nd_2689900 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2690208i32;
                    } else {
                        _gotoNext = 2690264i32;
                    };
                } else if (__value__ == (2690208i32)) {
                    _dp_2689922--;
                    _i++;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2690264i32)) {
                    _nd_2689900++;
                    if ((_ndMant_2689909 < _maxMantDigits_2689640 : Bool)) {
                        _gotoNext = 2690298i32;
                    } else if (_c_2689970 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2690388i32;
                    } else {
                        _gotoNext = 2690415i32;
                    };
                } else if (__value__ == (2690298i32)) {
                    _mantissa = (_mantissa * (_base_2689620) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2689970 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2689909++;
                    _gotoNext = 2690415i32;
                } else if (__value__ == (2690388i32)) {
                    _trunc = true;
                    _gotoNext = 2690415i32;
                } else if (__value__ == (2690415i32)) {
                    _i++;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2690427i32)) {
                    _sawdigits_2689880 = true;
                    _nd_2689900++;
                    if ((_ndMant_2689909 < _maxMantDigits_2689640 : Bool)) {
                        _gotoNext = 2690539i32;
                    } else {
                        _gotoNext = 2690627i32;
                    };
                } else if (__value__ == (2690539i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2689970) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2689909++;
                    _gotoNext = 2690654i32;
                } else if (__value__ == (2690627i32)) {
                    _gotoNext = 2690627i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2690654i32;
                } else if (__value__ == (2690654i32)) {
                    _i++;
                    _gotoNext = 2689937i32;
                } else if (__value__ == (2690669i32)) {
                    _gotoNext = 2690679i32;
                } else if (__value__ == (2690679i32)) {
                    if (!_sawdigits_2689880) {
                        _gotoNext = 2690693i32;
                    } else {
                        _gotoNext = 2690708i32;
                    };
                } else if (__value__ == (2690693i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2690708i32;
                } else if (__value__ == (2690708i32)) {
                    if (!_sawdot_2689863) {
                        _gotoNext = 2690719i32;
                    } else {
                        _gotoNext = 2690736i32;
                    };
                } else if (__value__ == (2690719i32)) {
                    _dp_2689922 = _nd_2689900;
                    _gotoNext = 2690736i32;
                } else if (__value__ == (2690736i32)) {
                    if (_base_2689620 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2690750i32;
                    } else {
                        _gotoNext = 2690995i32;
                    };
                } else if (__value__ == (2690750i32)) {
                    _dp_2689922 = (_dp_2689922 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2689909 = (_ndMant_2689909 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2690995i32;
                } else if (__value__ == (2690995i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2689685) : Bool)) {
                        _gotoNext = 2691035i32;
                    } else if (_base_2689620 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691468i32;
                    } else {
                        _gotoNext = 2691509i32;
                    };
                } else if (__value__ == (2691035i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2691060i32;
                    } else {
                        _gotoNext = 2691078i32;
                    };
                } else if (__value__ == (2691060i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691078i32;
                } else if (__value__ == (2691078i32)) {
                    _esign_2691078 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2691106i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2691139i32;
                    } else {
                        _gotoNext = 2691168i32;
                    };
                } else if (__value__ == (2691106i32)) {
                    _i++;
                    _gotoNext = 2691168i32;
                } else if (__value__ == (2691139i32)) {
                    _i++;
                    _esign_2691078 = (-1 : stdgo.GoInt);
                    _gotoNext = 2691168i32;
                } else if (__value__ == (2691168i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2691211i32;
                    } else {
                        _gotoNext = 2691229i32;
                    };
                } else if (__value__ == (2691211i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691229i32;
                } else if (__value__ == (2691229i32)) {
                    _e_2691229 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2691238i32;
                } else if (__value__ == (2691238i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2691307i32;
                    } else {
                        _gotoNext = 2691430i32;
                    };
                } else if (__value__ == (2691303i32)) {
                    _i++;
                    _gotoNext = 2691238i32;
                } else if (__value__ == (2691307i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2691327i32;
                    } else {
                        _gotoNext = 2691373i32;
                    };
                } else if (__value__ == (2691327i32)) {
                    _underscores_2689461 = true;
                    _i++;
                    _gotoNext = 2691238i32;
                } else if (__value__ == (2691373i32)) {
                    if ((_e_2691229 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2691386i32;
                    } else {
                        _gotoNext = 2691303i32;
                    };
                } else if (__value__ == (2691386i32)) {
                    _e_2691229 = (((_e_2691229 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2691303i32;
                } else if (__value__ == (2691430i32)) {
                    _dp_2689922 = (_dp_2689922 + ((_e_2691229 * _esign_2691078 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2691509i32;
                } else if (__value__ == (2691468i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691509i32;
                } else if (__value__ == (2691509i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691526i32;
                    } else {
                        _gotoNext = 2691553i32;
                    };
                } else if (__value__ == (2691526i32)) {
                    _exp = (_dp_2689922 - _ndMant_2689909 : stdgo.GoInt);
                    _gotoNext = 2691553i32;
                } else if (__value__ == (2691553i32)) {
                    if ((_underscores_2689461 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2691592i32;
                    } else {
                        _gotoNext = 2691608i32;
                    };
                } else if (__value__ == (2691592i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691608i32;
                } else if (__value__ == (2691608i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
