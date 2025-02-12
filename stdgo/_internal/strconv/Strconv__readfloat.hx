package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2779934:Bool = false;
        var _maxMantDigits_2779694:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2779674:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2779515:Bool = false;
        var _c_2780024:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2779963:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2779917:Bool = false;
        var _expChar_2779739:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2781132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2779954:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2781283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2779976:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2779515 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2779571i32;
                    } else {
                        _gotoNext = 2779586i32;
                    };
                } else if (__value__ == (2779571i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2779586i32;
                } else if (__value__ == (2779586i32)) {
                    _gotoNext = 2779586i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2779596i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2779621i32;
                    } else {
                        _gotoNext = 2779674i32;
                    };
                } else if (__value__ == (2779596i32)) {
                    _i++;
                    _gotoNext = 2779674i32;
                } else if (__value__ == (2779621i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2779674i32;
                } else if (__value__ == (2779674i32)) {
                    _base_2779674 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2779694 = (19 : stdgo.GoInt);
                    _expChar_2779739 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2779816i32;
                    } else {
                        _gotoNext = 2779917i32;
                    };
                } else if (__value__ == (2779816i32)) {
                    _base_2779674 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2779694 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2779739 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2779917i32;
                } else if (__value__ == (2779917i32)) {
                    _sawdot_2779917 = false;
                    _sawdigits_2779934 = false;
                    _nd_2779954 = (0 : stdgo.GoInt);
                    _ndMant_2779963 = (0 : stdgo.GoInt);
                    _dp_2779976 = (0 : stdgo.GoInt);
                    _gotoNext = 2779984i32;
                } else if (__value__ == (2779984i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2779991i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2780013i32;
                    } else {
                        _gotoNext = 2780733i32;
                    };
                } else if (__value__ == (2780013i32)) {
                    _gotoNext = 2780017i32;
                } else if (__value__ == (2780017i32)) {
                    {
                        _c_2780024 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2780024 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2780044i32;
                            } else if (__value__ == (_c_2780024 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2780096i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2780024 : Bool) && (_c_2780024 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2780189i32;
                            } else if (__value__ == (((_base_2779674 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2780024) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2780024) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2780481i32;
                            } else {
                                _gotoNext = 2780723i32;
                            };
                        };
                    };
                } else if (__value__ == (2780044i32)) {
                    _underscores_2779515 = true;
                    _i++;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2780096i32)) {
                    if (_sawdot_2779917) {
                        _gotoNext = 2780124i32;
                    } else {
                        _gotoNext = 2780149i32;
                    };
                } else if (__value__ == (2780124i32)) {
                    _loopBreak = true;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2780149i32)) {
                    _sawdot_2779917 = true;
                    _dp_2779976 = _nd_2779954;
                    _i++;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2780189i32)) {
                    _sawdigits_2779934 = true;
                    if (((_c_2780024 == (48 : stdgo.GoUInt8)) && (_nd_2779954 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2780262i32;
                    } else {
                        _gotoNext = 2780318i32;
                    };
                } else if (__value__ == (2780262i32)) {
                    _dp_2779976--;
                    _i++;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2780318i32)) {
                    _nd_2779954++;
                    if ((_ndMant_2779963 < _maxMantDigits_2779694 : Bool)) {
                        _gotoNext = 2780352i32;
                    } else if (_c_2780024 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2780442i32;
                    } else {
                        _gotoNext = 2780469i32;
                    };
                } else if (__value__ == (2780352i32)) {
                    _mantissa = (_mantissa * (_base_2779674) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2780024 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2779963++;
                    _gotoNext = 2780469i32;
                } else if (__value__ == (2780442i32)) {
                    _trunc = true;
                    _gotoNext = 2780469i32;
                } else if (__value__ == (2780469i32)) {
                    _i++;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2780481i32)) {
                    _sawdigits_2779934 = true;
                    _nd_2779954++;
                    if ((_ndMant_2779963 < _maxMantDigits_2779694 : Bool)) {
                        _gotoNext = 2780593i32;
                    } else {
                        _gotoNext = 2780681i32;
                    };
                } else if (__value__ == (2780593i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2780024) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2779963++;
                    _gotoNext = 2780708i32;
                } else if (__value__ == (2780681i32)) {
                    _gotoNext = 2780681i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2780708i32;
                } else if (__value__ == (2780708i32)) {
                    _i++;
                    _gotoNext = 2779991i32;
                } else if (__value__ == (2780723i32)) {
                    _gotoNext = 2780733i32;
                } else if (__value__ == (2780733i32)) {
                    if (!_sawdigits_2779934) {
                        _gotoNext = 2780747i32;
                    } else {
                        _gotoNext = 2780762i32;
                    };
                } else if (__value__ == (2780747i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2780762i32;
                } else if (__value__ == (2780762i32)) {
                    if (!_sawdot_2779917) {
                        _gotoNext = 2780773i32;
                    } else {
                        _gotoNext = 2780790i32;
                    };
                } else if (__value__ == (2780773i32)) {
                    _dp_2779976 = _nd_2779954;
                    _gotoNext = 2780790i32;
                } else if (__value__ == (2780790i32)) {
                    if (_base_2779674 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2780804i32;
                    } else {
                        _gotoNext = 2781049i32;
                    };
                } else if (__value__ == (2780804i32)) {
                    _dp_2779976 = (_dp_2779976 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2779963 = (_ndMant_2779963 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2781049i32;
                } else if (__value__ == (2781049i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2779739) : Bool)) {
                        _gotoNext = 2781089i32;
                    } else if (_base_2779674 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2781522i32;
                    } else {
                        _gotoNext = 2781563i32;
                    };
                } else if (__value__ == (2781089i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2781114i32;
                    } else {
                        _gotoNext = 2781132i32;
                    };
                } else if (__value__ == (2781114i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781132i32;
                } else if (__value__ == (2781132i32)) {
                    _esign_2781132 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2781160i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2781193i32;
                    } else {
                        _gotoNext = 2781222i32;
                    };
                } else if (__value__ == (2781160i32)) {
                    _i++;
                    _gotoNext = 2781222i32;
                } else if (__value__ == (2781193i32)) {
                    _i++;
                    _esign_2781132 = (-1 : stdgo.GoInt);
                    _gotoNext = 2781222i32;
                } else if (__value__ == (2781222i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2781265i32;
                    } else {
                        _gotoNext = 2781283i32;
                    };
                } else if (__value__ == (2781265i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781283i32;
                } else if (__value__ == (2781283i32)) {
                    _e_2781283 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2781292i32;
                } else if (__value__ == (2781292i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2781361i32;
                    } else {
                        _gotoNext = 2781484i32;
                    };
                } else if (__value__ == (2781357i32)) {
                    _i++;
                    _gotoNext = 2781292i32;
                } else if (__value__ == (2781361i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2781381i32;
                    } else {
                        _gotoNext = 2781427i32;
                    };
                } else if (__value__ == (2781381i32)) {
                    _underscores_2779515 = true;
                    _i++;
                    _gotoNext = 2781292i32;
                } else if (__value__ == (2781427i32)) {
                    if ((_e_2781283 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2781440i32;
                    } else {
                        _gotoNext = 2781357i32;
                    };
                } else if (__value__ == (2781440i32)) {
                    _e_2781283 = (((_e_2781283 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2781357i32;
                } else if (__value__ == (2781484i32)) {
                    _dp_2779976 = (_dp_2779976 + ((_e_2781283 * _esign_2781132 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2781563i32;
                } else if (__value__ == (2781522i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781563i32;
                } else if (__value__ == (2781563i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2781580i32;
                    } else {
                        _gotoNext = 2781607i32;
                    };
                } else if (__value__ == (2781580i32)) {
                    _exp = (_dp_2779976 - _ndMant_2779963 : stdgo.GoInt);
                    _gotoNext = 2781607i32;
                } else if (__value__ == (2781607i32)) {
                    if ((_underscores_2779515 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2781646i32;
                    } else {
                        _gotoNext = 2781662i32;
                    };
                } else if (__value__ == (2781646i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2781662i32;
                } else if (__value__ == (2781662i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
