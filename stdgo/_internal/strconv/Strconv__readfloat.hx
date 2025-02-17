package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _sawdot_4:Bool = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2736163i32;
                    } else {
                        _gotoNext = 2736178i32;
                    };
                } else if (__value__ == (2736163i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2736178i32;
                } else if (__value__ == (2736178i32)) {
                    _gotoNext = 2736178i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2736188i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2736213i32;
                    } else {
                        _gotoNext = 2736266i32;
                    };
                } else if (__value__ == (2736188i32)) {
                    _i++;
                    _gotoNext = 2736266i32;
                } else if (__value__ == (2736213i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2736266i32;
                } else if (__value__ == (2736266i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2736408i32;
                    } else {
                        _gotoNext = 2736509i32;
                    };
                } else if (__value__ == (2736408i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2736509i32;
                } else if (__value__ == (2736509i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2736576i32;
                } else if (__value__ == (2736576i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2736583i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2736605i32;
                    } else {
                        _gotoNext = 2737325i32;
                    };
                } else if (__value__ == (2736605i32)) {
                    _gotoNext = 2736609i32;
                } else if (__value__ == (2736609i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2736636i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2736688i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2736781i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737073i32;
                            } else {
                                _gotoNext = 2737315i32;
                            };
                        };
                    };
                } else if (__value__ == (2736636i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2736688i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2736716i32;
                    } else {
                        _gotoNext = 2736741i32;
                    };
                } else if (__value__ == (2736716i32)) {
                    _loopBreak = true;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2736741i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2736781i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2736854i32;
                    } else {
                        _gotoNext = 2736910i32;
                    };
                } else if (__value__ == (2736854i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2736910i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2736944i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2737034i32;
                    } else {
                        _gotoNext = 2737061i32;
                    };
                } else if (__value__ == (2736944i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2737061i32;
                } else if (__value__ == (2737034i32)) {
                    _trunc = true;
                    _gotoNext = 2737061i32;
                } else if (__value__ == (2737061i32)) {
                    _i++;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2737073i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2737185i32;
                    } else {
                        _gotoNext = 2737273i32;
                    };
                } else if (__value__ == (2737185i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2737300i32;
                } else if (__value__ == (2737273i32)) {
                    _gotoNext = 2737273i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2737300i32;
                } else if (__value__ == (2737300i32)) {
                    _i++;
                    _gotoNext = 2736583i32;
                } else if (__value__ == (2737315i32)) {
                    _gotoNext = 2737325i32;
                } else if (__value__ == (2737325i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2737339i32;
                    } else {
                        _gotoNext = 2737354i32;
                    };
                } else if (__value__ == (2737339i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737354i32;
                } else if (__value__ == (2737354i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2737365i32;
                    } else {
                        _gotoNext = 2737382i32;
                    };
                } else if (__value__ == (2737365i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2737382i32;
                } else if (__value__ == (2737382i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2737396i32;
                    } else {
                        _gotoNext = 2737641i32;
                    };
                } else if (__value__ == (2737396i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2737641i32;
                } else if (__value__ == (2737641i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2737681i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738114i32;
                    } else {
                        _gotoNext = 2738155i32;
                    };
                } else if (__value__ == (2737681i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2737706i32;
                    } else {
                        _gotoNext = 2737724i32;
                    };
                } else if (__value__ == (2737706i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737724i32;
                } else if (__value__ == (2737724i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2737752i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2737785i32;
                    } else {
                        _gotoNext = 2737814i32;
                    };
                } else if (__value__ == (2737752i32)) {
                    _i++;
                    _gotoNext = 2737814i32;
                } else if (__value__ == (2737785i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2737814i32;
                } else if (__value__ == (2737814i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2737857i32;
                    } else {
                        _gotoNext = 2737875i32;
                    };
                } else if (__value__ == (2737857i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737875i32;
                } else if (__value__ == (2737875i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2737884i32;
                } else if (__value__ == (2737884i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2737953i32;
                    } else {
                        _gotoNext = 2738076i32;
                    };
                } else if (__value__ == (2737949i32)) {
                    _i++;
                    _gotoNext = 2737884i32;
                } else if (__value__ == (2737953i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2737973i32;
                    } else {
                        _gotoNext = 2738019i32;
                    };
                } else if (__value__ == (2737973i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2737884i32;
                } else if (__value__ == (2738019i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2738032i32;
                    } else {
                        _gotoNext = 2737949i32;
                    };
                } else if (__value__ == (2738032i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2737949i32;
                } else if (__value__ == (2738076i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738155i32;
                } else if (__value__ == (2738114i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738155i32;
                } else if (__value__ == (2738155i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738172i32;
                    } else {
                        _gotoNext = 2738199i32;
                    };
                } else if (__value__ == (2738172i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2738199i32;
                } else if (__value__ == (2738199i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2738238i32;
                    } else {
                        _gotoNext = 2738254i32;
                    };
                } else if (__value__ == (2738238i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738254i32;
                } else if (__value__ == (2738254i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
