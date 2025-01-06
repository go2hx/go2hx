package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2660458:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2661896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2660740:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2660503:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2660698:Bool = false;
        var _underscores_2660279:Bool = false;
        var _ndMant_2660727:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2660718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2660681:Bool = false;
        var _base_2660438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2662047:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2660788:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2660279 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660335i32;
                    } else {
                        _gotoNext = 2660350i32;
                    };
                } else if (__value__ == (2660335i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660350i32;
                } else if (__value__ == (2660350i32)) {
                    _gotoNext = 2660350i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660360i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660385i32;
                    } else {
                        _gotoNext = 2660438i32;
                    };
                } else if (__value__ == (2660360i32)) {
                    _i++;
                    _gotoNext = 2660438i32;
                } else if (__value__ == (2660385i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2660438i32;
                } else if (__value__ == (2660438i32)) {
                    _base_2660438 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2660458 = (19 : stdgo.GoInt);
                    _expChar_2660503 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2660580i32;
                    } else {
                        _gotoNext = 2660681i32;
                    };
                } else if (__value__ == (2660580i32)) {
                    _base_2660438 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2660458 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2660503 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2660681i32;
                } else if (__value__ == (2660681i32)) {
                    _sawdot_2660681 = false;
                    _sawdigits_2660698 = false;
                    _nd_2660718 = (0 : stdgo.GoInt);
                    _ndMant_2660727 = (0 : stdgo.GoInt);
                    _dp_2660740 = (0 : stdgo.GoInt);
                    _gotoNext = 2660748i32;
                } else if (__value__ == (2660748i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2660755i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2660777i32;
                    } else {
                        _gotoNext = 2661497i32;
                    };
                } else if (__value__ == (2660777i32)) {
                    _gotoNext = 2660781i32;
                } else if (__value__ == (2660781i32)) {
                    {
                        _c_2660788 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2660788 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2660808i32;
                            } else if (__value__ == (_c_2660788 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2660860i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2660788 : Bool) && (_c_2660788 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2660953i32;
                            } else if (__value__ == (((_base_2660438 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2660788) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2660788) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2661245i32;
                            } else {
                                _gotoNext = 2661487i32;
                            };
                        };
                    };
                } else if (__value__ == (2660808i32)) {
                    _underscores_2660279 = true;
                    _i++;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2660860i32)) {
                    if (_sawdot_2660681) {
                        _gotoNext = 2660888i32;
                    } else {
                        _gotoNext = 2660913i32;
                    };
                } else if (__value__ == (2660888i32)) {
                    _loopBreak = true;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2660913i32)) {
                    _sawdot_2660681 = true;
                    _dp_2660740 = _nd_2660718;
                    _i++;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2660953i32)) {
                    _sawdigits_2660698 = true;
                    if (((_c_2660788 == (48 : stdgo.GoUInt8)) && (_nd_2660718 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2661026i32;
                    } else {
                        _gotoNext = 2661082i32;
                    };
                } else if (__value__ == (2661026i32)) {
                    _dp_2660740--;
                    _i++;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2661082i32)) {
                    _nd_2660718++;
                    if ((_ndMant_2660727 < _maxMantDigits_2660458 : Bool)) {
                        _gotoNext = 2661116i32;
                    } else if (_c_2660788 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2661206i32;
                    } else {
                        _gotoNext = 2661233i32;
                    };
                } else if (__value__ == (2661116i32)) {
                    _mantissa = (_mantissa * (_base_2660438) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2660788 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2660727++;
                    _gotoNext = 2661233i32;
                } else if (__value__ == (2661206i32)) {
                    _trunc = true;
                    _gotoNext = 2661233i32;
                } else if (__value__ == (2661233i32)) {
                    _i++;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2661245i32)) {
                    _sawdigits_2660698 = true;
                    _nd_2660718++;
                    if ((_ndMant_2660727 < _maxMantDigits_2660458 : Bool)) {
                        _gotoNext = 2661357i32;
                    } else {
                        _gotoNext = 2661445i32;
                    };
                } else if (__value__ == (2661357i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2660788) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2660727++;
                    _gotoNext = 2661472i32;
                } else if (__value__ == (2661445i32)) {
                    _gotoNext = 2661445i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2661472i32;
                } else if (__value__ == (2661472i32)) {
                    _i++;
                    _gotoNext = 2660755i32;
                } else if (__value__ == (2661487i32)) {
                    _gotoNext = 2661497i32;
                } else if (__value__ == (2661497i32)) {
                    if (!_sawdigits_2660698) {
                        _gotoNext = 2661511i32;
                    } else {
                        _gotoNext = 2661526i32;
                    };
                } else if (__value__ == (2661511i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661526i32;
                } else if (__value__ == (2661526i32)) {
                    if (!_sawdot_2660681) {
                        _gotoNext = 2661537i32;
                    } else {
                        _gotoNext = 2661554i32;
                    };
                } else if (__value__ == (2661537i32)) {
                    _dp_2660740 = _nd_2660718;
                    _gotoNext = 2661554i32;
                } else if (__value__ == (2661554i32)) {
                    if (_base_2660438 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2661568i32;
                    } else {
                        _gotoNext = 2661813i32;
                    };
                } else if (__value__ == (2661568i32)) {
                    _dp_2660740 = (_dp_2660740 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2660727 = (_ndMant_2660727 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2661813i32;
                } else if (__value__ == (2661813i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2660503) : Bool)) {
                        _gotoNext = 2661853i32;
                    } else if (_base_2660438 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662286i32;
                    } else {
                        _gotoNext = 2662327i32;
                    };
                } else if (__value__ == (2661853i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2661878i32;
                    } else {
                        _gotoNext = 2661896i32;
                    };
                } else if (__value__ == (2661878i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661896i32;
                } else if (__value__ == (2661896i32)) {
                    _esign_2661896 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2661924i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2661957i32;
                    } else {
                        _gotoNext = 2661986i32;
                    };
                } else if (__value__ == (2661924i32)) {
                    _i++;
                    _gotoNext = 2661986i32;
                } else if (__value__ == (2661957i32)) {
                    _i++;
                    _esign_2661896 = (-1 : stdgo.GoInt);
                    _gotoNext = 2661986i32;
                } else if (__value__ == (2661986i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2662029i32;
                    } else {
                        _gotoNext = 2662047i32;
                    };
                } else if (__value__ == (2662029i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662047i32;
                } else if (__value__ == (2662047i32)) {
                    _e_2662047 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2662056i32;
                } else if (__value__ == (2662056i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2662125i32;
                    } else {
                        _gotoNext = 2662248i32;
                    };
                } else if (__value__ == (2662121i32)) {
                    _i++;
                    _gotoNext = 2662056i32;
                } else if (__value__ == (2662125i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2662145i32;
                    } else {
                        _gotoNext = 2662191i32;
                    };
                } else if (__value__ == (2662145i32)) {
                    _underscores_2660279 = true;
                    _i++;
                    _gotoNext = 2662056i32;
                } else if (__value__ == (2662191i32)) {
                    if ((_e_2662047 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2662204i32;
                    } else {
                        _gotoNext = 2662121i32;
                    };
                } else if (__value__ == (2662204i32)) {
                    _e_2662047 = (((_e_2662047 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2662121i32;
                } else if (__value__ == (2662248i32)) {
                    _dp_2660740 = (_dp_2660740 + ((_e_2662047 * _esign_2661896 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2662327i32;
                } else if (__value__ == (2662286i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662327i32;
                } else if (__value__ == (2662327i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2662344i32;
                    } else {
                        _gotoNext = 2662371i32;
                    };
                } else if (__value__ == (2662344i32)) {
                    _exp = (_dp_2660740 - _ndMant_2660727 : stdgo.GoInt);
                    _gotoNext = 2662371i32;
                } else if (__value__ == (2662371i32)) {
                    if ((_underscores_2660279 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2662410i32;
                    } else {
                        _gotoNext = 2662426i32;
                    };
                } else if (__value__ == (2662410i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2662426i32;
                } else if (__value__ == (2662426i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
