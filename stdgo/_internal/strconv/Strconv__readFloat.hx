package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2699732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2699719:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2699673:Bool = false;
        var _base_2699430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2699271:Bool = false;
        var _e_2701039:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2700888:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2699780:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2699690:Bool = false;
        var _expChar_2699495:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2699450:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2699710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2699271 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2699327i32;
                    } else {
                        _gotoNext = 2699342i32;
                    };
                } else if (__value__ == (2699327i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2699342i32;
                } else if (__value__ == (2699342i32)) {
                    _gotoNext = 2699342i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2699352i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2699377i32;
                    } else {
                        _gotoNext = 2699430i32;
                    };
                } else if (__value__ == (2699352i32)) {
                    _i++;
                    _gotoNext = 2699430i32;
                } else if (__value__ == (2699377i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2699430i32;
                } else if (__value__ == (2699430i32)) {
                    _base_2699430 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2699450 = (19 : stdgo.GoInt);
                    _expChar_2699495 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2699572i32;
                    } else {
                        _gotoNext = 2699673i32;
                    };
                } else if (__value__ == (2699572i32)) {
                    _base_2699430 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2699450 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2699495 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2699673i32;
                } else if (__value__ == (2699673i32)) {
                    _sawdot_2699673 = false;
                    _sawdigits_2699690 = false;
                    _nd_2699710 = (0 : stdgo.GoInt);
                    _ndMant_2699719 = (0 : stdgo.GoInt);
                    _dp_2699732 = (0 : stdgo.GoInt);
                    _gotoNext = 2699740i32;
                } else if (__value__ == (2699740i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2699747i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2699769i32;
                    } else {
                        _gotoNext = 2700489i32;
                    };
                } else if (__value__ == (2699769i32)) {
                    _gotoNext = 2699773i32;
                } else if (__value__ == (2699773i32)) {
                    {
                        _c_2699780 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2699780 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2699800i32;
                            } else if (__value__ == (_c_2699780 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2699852i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2699780 : Bool) && (_c_2699780 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2699945i32;
                            } else if (__value__ == (((_base_2699430 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2699780) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2699780) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2700237i32;
                            } else {
                                _gotoNext = 2700479i32;
                            };
                        };
                    };
                } else if (__value__ == (2699800i32)) {
                    _underscores_2699271 = true;
                    _i++;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2699852i32)) {
                    if (_sawdot_2699673) {
                        _gotoNext = 2699880i32;
                    } else {
                        _gotoNext = 2699905i32;
                    };
                } else if (__value__ == (2699880i32)) {
                    _loopBreak = true;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2699905i32)) {
                    _sawdot_2699673 = true;
                    _dp_2699732 = _nd_2699710;
                    _i++;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2699945i32)) {
                    _sawdigits_2699690 = true;
                    if (((_c_2699780 == (48 : stdgo.GoUInt8)) && (_nd_2699710 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2700018i32;
                    } else {
                        _gotoNext = 2700074i32;
                    };
                } else if (__value__ == (2700018i32)) {
                    _dp_2699732--;
                    _i++;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2700074i32)) {
                    _nd_2699710++;
                    if ((_ndMant_2699719 < _maxMantDigits_2699450 : Bool)) {
                        _gotoNext = 2700108i32;
                    } else if (_c_2699780 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2700198i32;
                    } else {
                        _gotoNext = 2700225i32;
                    };
                } else if (__value__ == (2700108i32)) {
                    _mantissa = (_mantissa * (_base_2699430) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2699780 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2699719++;
                    _gotoNext = 2700225i32;
                } else if (__value__ == (2700198i32)) {
                    _trunc = true;
                    _gotoNext = 2700225i32;
                } else if (__value__ == (2700225i32)) {
                    _i++;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2700237i32)) {
                    _sawdigits_2699690 = true;
                    _nd_2699710++;
                    if ((_ndMant_2699719 < _maxMantDigits_2699450 : Bool)) {
                        _gotoNext = 2700349i32;
                    } else {
                        _gotoNext = 2700437i32;
                    };
                } else if (__value__ == (2700349i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2699780) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2699719++;
                    _gotoNext = 2700464i32;
                } else if (__value__ == (2700437i32)) {
                    _gotoNext = 2700437i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2700464i32;
                } else if (__value__ == (2700464i32)) {
                    _i++;
                    _gotoNext = 2699747i32;
                } else if (__value__ == (2700479i32)) {
                    _gotoNext = 2700489i32;
                } else if (__value__ == (2700489i32)) {
                    if (!_sawdigits_2699690) {
                        _gotoNext = 2700503i32;
                    } else {
                        _gotoNext = 2700518i32;
                    };
                } else if (__value__ == (2700503i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2700518i32;
                } else if (__value__ == (2700518i32)) {
                    if (!_sawdot_2699673) {
                        _gotoNext = 2700529i32;
                    } else {
                        _gotoNext = 2700546i32;
                    };
                } else if (__value__ == (2700529i32)) {
                    _dp_2699732 = _nd_2699710;
                    _gotoNext = 2700546i32;
                } else if (__value__ == (2700546i32)) {
                    if (_base_2699430 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2700560i32;
                    } else {
                        _gotoNext = 2700805i32;
                    };
                } else if (__value__ == (2700560i32)) {
                    _dp_2699732 = (_dp_2699732 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2699719 = (_ndMant_2699719 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2700805i32;
                } else if (__value__ == (2700805i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2699495) : Bool)) {
                        _gotoNext = 2700845i32;
                    } else if (_base_2699430 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2701278i32;
                    } else {
                        _gotoNext = 2701319i32;
                    };
                } else if (__value__ == (2700845i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2700870i32;
                    } else {
                        _gotoNext = 2700888i32;
                    };
                } else if (__value__ == (2700870i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2700888i32;
                } else if (__value__ == (2700888i32)) {
                    _esign_2700888 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2700916i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2700949i32;
                    } else {
                        _gotoNext = 2700978i32;
                    };
                } else if (__value__ == (2700916i32)) {
                    _i++;
                    _gotoNext = 2700978i32;
                } else if (__value__ == (2700949i32)) {
                    _i++;
                    _esign_2700888 = (-1 : stdgo.GoInt);
                    _gotoNext = 2700978i32;
                } else if (__value__ == (2700978i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2701021i32;
                    } else {
                        _gotoNext = 2701039i32;
                    };
                } else if (__value__ == (2701021i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2701039i32;
                } else if (__value__ == (2701039i32)) {
                    _e_2701039 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2701048i32;
                } else if (__value__ == (2701048i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2701117i32;
                    } else {
                        _gotoNext = 2701240i32;
                    };
                } else if (__value__ == (2701113i32)) {
                    _i++;
                    _gotoNext = 2701048i32;
                } else if (__value__ == (2701117i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2701137i32;
                    } else {
                        _gotoNext = 2701183i32;
                    };
                } else if (__value__ == (2701137i32)) {
                    _underscores_2699271 = true;
                    _i++;
                    _gotoNext = 2701048i32;
                } else if (__value__ == (2701183i32)) {
                    if ((_e_2701039 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2701196i32;
                    } else {
                        _gotoNext = 2701113i32;
                    };
                } else if (__value__ == (2701196i32)) {
                    _e_2701039 = (((_e_2701039 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2701113i32;
                } else if (__value__ == (2701240i32)) {
                    _dp_2699732 = (_dp_2699732 + ((_e_2701039 * _esign_2700888 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2701319i32;
                } else if (__value__ == (2701278i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2701319i32;
                } else if (__value__ == (2701319i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2701336i32;
                    } else {
                        _gotoNext = 2701363i32;
                    };
                } else if (__value__ == (2701336i32)) {
                    _exp = (_dp_2699732 - _ndMant_2699719 : stdgo.GoInt);
                    _gotoNext = 2701363i32;
                } else if (__value__ == (2701363i32)) {
                    if ((_underscores_2699271 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2701402i32;
                    } else {
                        _gotoNext = 2701418i32;
                    };
                } else if (__value__ == (2701402i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2701418i32;
                } else if (__value__ == (2701418i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
