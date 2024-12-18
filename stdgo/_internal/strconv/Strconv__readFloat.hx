package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2631234:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2629905:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2629690:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2629914:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2629645:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2629625:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2629466:Bool = false;
        var _esign_2631083:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2629975:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2629885:Bool = false;
        var _sawdot_2629868:Bool = false;
        var _dp_2629927:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2629466 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2629522i32;
                    } else {
                        _gotoNext = 2629537i32;
                    };
                } else if (__value__ == (2629522i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629537i32;
                } else if (__value__ == (2629537i32)) {
                    _gotoNext = 2629537i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2629547i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2629572i32;
                    } else {
                        _gotoNext = 2629625i32;
                    };
                } else if (__value__ == (2629547i32)) {
                    _i++;
                    _gotoNext = 2629625i32;
                } else if (__value__ == (2629572i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2629625i32;
                } else if (__value__ == (2629625i32)) {
                    _base_2629625 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629645 = (19 : stdgo.GoInt);
                    _expChar_2629690 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2629767i32;
                    } else {
                        _gotoNext = 2629868i32;
                    };
                } else if (__value__ == (2629767i32)) {
                    _base_2629625 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629645 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2629690 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2629868i32;
                } else if (__value__ == (2629868i32)) {
                    _sawdot_2629868 = false;
                    _sawdigits_2629885 = false;
                    _nd_2629905 = (0 : stdgo.GoInt);
                    _ndMant_2629914 = (0 : stdgo.GoInt);
                    _dp_2629927 = (0 : stdgo.GoInt);
                    _gotoNext = 2629935i32;
                } else if (__value__ == (2629935i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2629942i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2629964i32;
                    } else {
                        _gotoNext = 2630684i32;
                    };
                } else if (__value__ == (2629964i32)) {
                    _gotoNext = 2629968i32;
                } else if (__value__ == (2629968i32)) {
                    {
                        _c_2629975 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2629975 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2629995i32;
                            } else if (__value__ == (_c_2629975 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2630047i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2629975 : Bool) && (_c_2629975 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630140i32;
                            } else if (__value__ == (((_base_2629625 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2629975) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2629975) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630432i32;
                            } else {
                                _gotoNext = 2630674i32;
                            };
                        };
                    };
                } else if (__value__ == (2629995i32)) {
                    _underscores_2629466 = true;
                    _i++;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2630047i32)) {
                    if (_sawdot_2629868) {
                        _gotoNext = 2630075i32;
                    } else {
                        _gotoNext = 2630100i32;
                    };
                } else if (__value__ == (2630075i32)) {
                    _loopBreak = true;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2630100i32)) {
                    _sawdot_2629868 = true;
                    _dp_2629927 = _nd_2629905;
                    _i++;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2630140i32)) {
                    _sawdigits_2629885 = true;
                    if (((_c_2629975 == (48 : stdgo.GoUInt8)) && (_nd_2629905 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2630213i32;
                    } else {
                        _gotoNext = 2630269i32;
                    };
                } else if (__value__ == (2630213i32)) {
                    _dp_2629927--;
                    _i++;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2630269i32)) {
                    _nd_2629905++;
                    if ((_ndMant_2629914 < _maxMantDigits_2629645 : Bool)) {
                        _gotoNext = 2630303i32;
                    } else if (_c_2629975 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2630393i32;
                    } else {
                        _gotoNext = 2630420i32;
                    };
                } else if (__value__ == (2630303i32)) {
                    _mantissa = (_mantissa * (_base_2629625) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2629975 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629914++;
                    _gotoNext = 2630420i32;
                } else if (__value__ == (2630393i32)) {
                    _trunc = true;
                    _gotoNext = 2630420i32;
                } else if (__value__ == (2630420i32)) {
                    _i++;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2630432i32)) {
                    _sawdigits_2629885 = true;
                    _nd_2629905++;
                    if ((_ndMant_2629914 < _maxMantDigits_2629645 : Bool)) {
                        _gotoNext = 2630544i32;
                    } else {
                        _gotoNext = 2630632i32;
                    };
                } else if (__value__ == (2630544i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2629975) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629914++;
                    _gotoNext = 2630659i32;
                } else if (__value__ == (2630632i32)) {
                    _gotoNext = 2630632i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2630659i32;
                } else if (__value__ == (2630659i32)) {
                    _i++;
                    _gotoNext = 2629942i32;
                } else if (__value__ == (2630674i32)) {
                    _gotoNext = 2630684i32;
                } else if (__value__ == (2630684i32)) {
                    if (!_sawdigits_2629885) {
                        _gotoNext = 2630698i32;
                    } else {
                        _gotoNext = 2630713i32;
                    };
                } else if (__value__ == (2630698i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630713i32;
                } else if (__value__ == (2630713i32)) {
                    if (!_sawdot_2629868) {
                        _gotoNext = 2630724i32;
                    } else {
                        _gotoNext = 2630741i32;
                    };
                } else if (__value__ == (2630724i32)) {
                    _dp_2629927 = _nd_2629905;
                    _gotoNext = 2630741i32;
                } else if (__value__ == (2630741i32)) {
                    if (_base_2629625 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630755i32;
                    } else {
                        _gotoNext = 2631000i32;
                    };
                } else if (__value__ == (2630755i32)) {
                    _dp_2629927 = (_dp_2629927 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2629914 = (_ndMant_2629914 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631000i32;
                } else if (__value__ == (2631000i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2629690) : Bool)) {
                        _gotoNext = 2631040i32;
                    } else if (_base_2629625 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631473i32;
                    } else {
                        _gotoNext = 2631514i32;
                    };
                } else if (__value__ == (2631040i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2631065i32;
                    } else {
                        _gotoNext = 2631083i32;
                    };
                } else if (__value__ == (2631065i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631083i32;
                } else if (__value__ == (2631083i32)) {
                    _esign_2631083 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631111i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631144i32;
                    } else {
                        _gotoNext = 2631173i32;
                    };
                } else if (__value__ == (2631111i32)) {
                    _i++;
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631144i32)) {
                    _i++;
                    _esign_2631083 = (-1 : stdgo.GoInt);
                    _gotoNext = 2631173i32;
                } else if (__value__ == (2631173i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2631216i32;
                    } else {
                        _gotoNext = 2631234i32;
                    };
                } else if (__value__ == (2631216i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631234i32;
                } else if (__value__ == (2631234i32)) {
                    _e_2631234 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2631243i32;
                } else if (__value__ == (2631243i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2631312i32;
                    } else {
                        _gotoNext = 2631435i32;
                    };
                } else if (__value__ == (2631308i32)) {
                    _i++;
                    _gotoNext = 2631243i32;
                } else if (__value__ == (2631312i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2631332i32;
                    } else {
                        _gotoNext = 2631378i32;
                    };
                } else if (__value__ == (2631332i32)) {
                    _underscores_2629466 = true;
                    _i++;
                    _gotoNext = 2631243i32;
                } else if (__value__ == (2631378i32)) {
                    if ((_e_2631234 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2631391i32;
                    } else {
                        _gotoNext = 2631308i32;
                    };
                } else if (__value__ == (2631391i32)) {
                    _e_2631234 = (((_e_2631234 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2631308i32;
                } else if (__value__ == (2631435i32)) {
                    _dp_2629927 = (_dp_2629927 + ((_e_2631234 * _esign_2631083 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631514i32;
                } else if (__value__ == (2631473i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631514i32;
                } else if (__value__ == (2631514i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631531i32;
                    } else {
                        _gotoNext = 2631558i32;
                    };
                } else if (__value__ == (2631531i32)) {
                    _exp = (_dp_2629927 - _ndMant_2629914 : stdgo.GoInt);
                    _gotoNext = 2631558i32;
                } else if (__value__ == (2631558i32)) {
                    if ((_underscores_2629466 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2631597i32;
                    } else {
                        _gotoNext = 2631613i32;
                    };
                } else if (__value__ == (2631597i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631613i32;
                } else if (__value__ == (2631613i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
