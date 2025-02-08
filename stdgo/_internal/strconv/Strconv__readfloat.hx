package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2668985:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2668948:Bool = false;
        var _esign_2670163:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2669007:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2669055:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2668965:Bool = false;
        var _base_2668705:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2670314:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2668770:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2668725:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2668546:Bool = false;
        var _ndMant_2668994:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2668546 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2668602i32;
                    } else {
                        _gotoNext = 2668617i32;
                    };
                } else if (__value__ == (2668602i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2668617i32;
                } else if (__value__ == (2668617i32)) {
                    _gotoNext = 2668617i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2668627i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2668652i32;
                    } else {
                        _gotoNext = 2668705i32;
                    };
                } else if (__value__ == (2668627i32)) {
                    _i++;
                    _gotoNext = 2668705i32;
                } else if (__value__ == (2668652i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2668705i32;
                } else if (__value__ == (2668705i32)) {
                    _base_2668705 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2668725 = (19 : stdgo.GoInt);
                    _expChar_2668770 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2668847i32;
                    } else {
                        _gotoNext = 2668948i32;
                    };
                } else if (__value__ == (2668847i32)) {
                    _base_2668705 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2668725 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2668770 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2668948i32;
                } else if (__value__ == (2668948i32)) {
                    _sawdot_2668948 = false;
                    _sawdigits_2668965 = false;
                    _nd_2668985 = (0 : stdgo.GoInt);
                    _ndMant_2668994 = (0 : stdgo.GoInt);
                    _dp_2669007 = (0 : stdgo.GoInt);
                    _gotoNext = 2669015i32;
                } else if (__value__ == (2669015i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669022i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2669044i32;
                    } else {
                        _gotoNext = 2669764i32;
                    };
                } else if (__value__ == (2669044i32)) {
                    _gotoNext = 2669048i32;
                } else if (__value__ == (2669048i32)) {
                    {
                        _c_2669055 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2669055 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2669075i32;
                            } else if (__value__ == (_c_2669055 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2669127i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2669055 : Bool) && (_c_2669055 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2669220i32;
                            } else if (__value__ == (((_base_2668705 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2669055) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2669055) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2669512i32;
                            } else {
                                _gotoNext = 2669754i32;
                            };
                        };
                    };
                } else if (__value__ == (2669075i32)) {
                    _underscores_2668546 = true;
                    _i++;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669127i32)) {
                    if (_sawdot_2668948) {
                        _gotoNext = 2669155i32;
                    } else {
                        _gotoNext = 2669180i32;
                    };
                } else if (__value__ == (2669155i32)) {
                    _loopBreak = true;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669180i32)) {
                    _sawdot_2668948 = true;
                    _dp_2669007 = _nd_2668985;
                    _i++;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669220i32)) {
                    _sawdigits_2668965 = true;
                    if (((_c_2669055 == (48 : stdgo.GoUInt8)) && (_nd_2668985 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2669293i32;
                    } else {
                        _gotoNext = 2669349i32;
                    };
                } else if (__value__ == (2669293i32)) {
                    _dp_2669007--;
                    _i++;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669349i32)) {
                    _nd_2668985++;
                    if ((_ndMant_2668994 < _maxMantDigits_2668725 : Bool)) {
                        _gotoNext = 2669383i32;
                    } else if (_c_2669055 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2669473i32;
                    } else {
                        _gotoNext = 2669500i32;
                    };
                } else if (__value__ == (2669383i32)) {
                    _mantissa = (_mantissa * (_base_2668705) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2669055 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2668994++;
                    _gotoNext = 2669500i32;
                } else if (__value__ == (2669473i32)) {
                    _trunc = true;
                    _gotoNext = 2669500i32;
                } else if (__value__ == (2669500i32)) {
                    _i++;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669512i32)) {
                    _sawdigits_2668965 = true;
                    _nd_2668985++;
                    if ((_ndMant_2668994 < _maxMantDigits_2668725 : Bool)) {
                        _gotoNext = 2669624i32;
                    } else {
                        _gotoNext = 2669712i32;
                    };
                } else if (__value__ == (2669624i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2669055) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2668994++;
                    _gotoNext = 2669739i32;
                } else if (__value__ == (2669712i32)) {
                    _gotoNext = 2669712i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2669739i32;
                } else if (__value__ == (2669739i32)) {
                    _i++;
                    _gotoNext = 2669022i32;
                } else if (__value__ == (2669754i32)) {
                    _gotoNext = 2669764i32;
                } else if (__value__ == (2669764i32)) {
                    if (!_sawdigits_2668965) {
                        _gotoNext = 2669778i32;
                    } else {
                        _gotoNext = 2669793i32;
                    };
                } else if (__value__ == (2669778i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2669793i32;
                } else if (__value__ == (2669793i32)) {
                    if (!_sawdot_2668948) {
                        _gotoNext = 2669804i32;
                    } else {
                        _gotoNext = 2669821i32;
                    };
                } else if (__value__ == (2669804i32)) {
                    _dp_2669007 = _nd_2668985;
                    _gotoNext = 2669821i32;
                } else if (__value__ == (2669821i32)) {
                    if (_base_2668705 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2669835i32;
                    } else {
                        _gotoNext = 2670080i32;
                    };
                } else if (__value__ == (2669835i32)) {
                    _dp_2669007 = (_dp_2669007 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2668994 = (_ndMant_2668994 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2670080i32;
                } else if (__value__ == (2670080i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2668770) : Bool)) {
                        _gotoNext = 2670120i32;
                    } else if (_base_2668705 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2670553i32;
                    } else {
                        _gotoNext = 2670594i32;
                    };
                } else if (__value__ == (2670120i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2670145i32;
                    } else {
                        _gotoNext = 2670163i32;
                    };
                } else if (__value__ == (2670145i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2670163i32;
                } else if (__value__ == (2670163i32)) {
                    _esign_2670163 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2670191i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2670224i32;
                    } else {
                        _gotoNext = 2670253i32;
                    };
                } else if (__value__ == (2670191i32)) {
                    _i++;
                    _gotoNext = 2670253i32;
                } else if (__value__ == (2670224i32)) {
                    _i++;
                    _esign_2670163 = (-1 : stdgo.GoInt);
                    _gotoNext = 2670253i32;
                } else if (__value__ == (2670253i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2670296i32;
                    } else {
                        _gotoNext = 2670314i32;
                    };
                } else if (__value__ == (2670296i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2670314i32;
                } else if (__value__ == (2670314i32)) {
                    _e_2670314 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2670323i32;
                } else if (__value__ == (2670323i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2670392i32;
                    } else {
                        _gotoNext = 2670515i32;
                    };
                } else if (__value__ == (2670388i32)) {
                    _i++;
                    _gotoNext = 2670323i32;
                } else if (__value__ == (2670392i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2670412i32;
                    } else {
                        _gotoNext = 2670458i32;
                    };
                } else if (__value__ == (2670412i32)) {
                    _underscores_2668546 = true;
                    _i++;
                    _gotoNext = 2670323i32;
                } else if (__value__ == (2670458i32)) {
                    if ((_e_2670314 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2670471i32;
                    } else {
                        _gotoNext = 2670388i32;
                    };
                } else if (__value__ == (2670471i32)) {
                    _e_2670314 = (((_e_2670314 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2670388i32;
                } else if (__value__ == (2670515i32)) {
                    _dp_2669007 = (_dp_2669007 + ((_e_2670314 * _esign_2670163 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2670594i32;
                } else if (__value__ == (2670553i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2670594i32;
                } else if (__value__ == (2670594i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2670611i32;
                    } else {
                        _gotoNext = 2670638i32;
                    };
                } else if (__value__ == (2670611i32)) {
                    _exp = (_dp_2669007 - _ndMant_2668994 : stdgo.GoInt);
                    _gotoNext = 2670638i32;
                } else if (__value__ == (2670638i32)) {
                    if ((_underscores_2668546 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2670677i32;
                    } else {
                        _gotoNext = 2670693i32;
                    };
                } else if (__value__ == (2670677i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2670693i32;
                } else if (__value__ == (2670693i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
