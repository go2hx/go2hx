package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_5:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2676739i32;
                    } else {
                        _gotoNext = 2676754i32;
                    };
                } else if (__value__ == (2676739i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676754i32;
                } else if (__value__ == (2676754i32)) {
                    _gotoNext = 2676754i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2676764i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2676789i32;
                    } else {
                        _gotoNext = 2676842i32;
                    };
                } else if (__value__ == (2676764i32)) {
                    _i++;
                    _gotoNext = 2676842i32;
                } else if (__value__ == (2676789i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2676842i32;
                } else if (__value__ == (2676842i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2676984i32;
                    } else {
                        _gotoNext = 2677085i32;
                    };
                } else if (__value__ == (2676984i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2677085i32;
                } else if (__value__ == (2677085i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2677152i32;
                } else if (__value__ == (2677152i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677159i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2677181i32;
                    } else {
                        _gotoNext = 2677901i32;
                    };
                } else if (__value__ == (2677181i32)) {
                    _gotoNext = 2677185i32;
                } else if (__value__ == (2677185i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2677212i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2677264i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2677357i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2677649i32;
                            } else {
                                _gotoNext = 2677891i32;
                            };
                        };
                    };
                } else if (__value__ == (2677212i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677264i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2677292i32;
                    } else {
                        _gotoNext = 2677317i32;
                    };
                } else if (__value__ == (2677292i32)) {
                    _loopBreak = true;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677317i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677357i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2677430i32;
                    } else {
                        _gotoNext = 2677486i32;
                    };
                } else if (__value__ == (2677430i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677486i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2677520i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2677610i32;
                    } else {
                        _gotoNext = 2677637i32;
                    };
                } else if (__value__ == (2677520i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2677637i32;
                } else if (__value__ == (2677610i32)) {
                    _trunc = true;
                    _gotoNext = 2677637i32;
                } else if (__value__ == (2677637i32)) {
                    _i++;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677649i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2677761i32;
                    } else {
                        _gotoNext = 2677849i32;
                    };
                } else if (__value__ == (2677761i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2677876i32;
                } else if (__value__ == (2677849i32)) {
                    _gotoNext = 2677849i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2677876i32;
                } else if (__value__ == (2677876i32)) {
                    _i++;
                    _gotoNext = 2677159i32;
                } else if (__value__ == (2677891i32)) {
                    _gotoNext = 2677901i32;
                } else if (__value__ == (2677901i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2677915i32;
                    } else {
                        _gotoNext = 2677930i32;
                    };
                } else if (__value__ == (2677915i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677930i32;
                } else if (__value__ == (2677930i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2677941i32;
                    } else {
                        _gotoNext = 2677958i32;
                    };
                } else if (__value__ == (2677941i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2677958i32;
                } else if (__value__ == (2677958i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677972i32;
                    } else {
                        _gotoNext = 2678217i32;
                    };
                } else if (__value__ == (2677972i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2678217i32;
                } else if (__value__ == (2678217i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2678257i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2678690i32;
                    } else {
                        _gotoNext = 2678731i32;
                    };
                } else if (__value__ == (2678257i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2678282i32;
                    } else {
                        _gotoNext = 2678300i32;
                    };
                } else if (__value__ == (2678282i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678300i32;
                } else if (__value__ == (2678300i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2678328i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2678361i32;
                    } else {
                        _gotoNext = 2678390i32;
                    };
                } else if (__value__ == (2678328i32)) {
                    _i++;
                    _gotoNext = 2678390i32;
                } else if (__value__ == (2678361i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2678390i32;
                } else if (__value__ == (2678390i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2678433i32;
                    } else {
                        _gotoNext = 2678451i32;
                    };
                } else if (__value__ == (2678433i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678451i32;
                } else if (__value__ == (2678451i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2678460i32;
                } else if (__value__ == (2678460i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2678529i32;
                    } else {
                        _gotoNext = 2678652i32;
                    };
                } else if (__value__ == (2678525i32)) {
                    _i++;
                    _gotoNext = 2678460i32;
                } else if (__value__ == (2678529i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2678549i32;
                    } else {
                        _gotoNext = 2678595i32;
                    };
                } else if (__value__ == (2678549i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2678460i32;
                } else if (__value__ == (2678595i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2678608i32;
                    } else {
                        _gotoNext = 2678525i32;
                    };
                } else if (__value__ == (2678608i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2678525i32;
                } else if (__value__ == (2678652i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2678731i32;
                } else if (__value__ == (2678690i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678731i32;
                } else if (__value__ == (2678731i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2678748i32;
                    } else {
                        _gotoNext = 2678775i32;
                    };
                } else if (__value__ == (2678748i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2678775i32;
                } else if (__value__ == (2678775i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2678814i32;
                    } else {
                        _gotoNext = 2678830i32;
                    };
                } else if (__value__ == (2678814i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678830i32;
                } else if (__value__ == (2678830i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
