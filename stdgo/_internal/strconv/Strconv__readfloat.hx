package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2639825i32;
                    } else {
                        _gotoNext = 2639840i32;
                    };
                } else if (__value__ == (2639825i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639840i32;
                } else if (__value__ == (2639840i32)) {
                    _gotoNext = 2639840i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2639850i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2639875i32;
                    } else {
                        _gotoNext = 2639928i32;
                    };
                } else if (__value__ == (2639850i32)) {
                    _i++;
                    _gotoNext = 2639928i32;
                } else if (__value__ == (2639875i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2639928i32;
                } else if (__value__ == (2639928i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2640070i32;
                    } else {
                        _gotoNext = 2640171i32;
                    };
                } else if (__value__ == (2640070i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2640171i32;
                } else if (__value__ == (2640171i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2640238i32;
                } else if (__value__ == (2640238i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640245i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2640267i32;
                    } else {
                        _gotoNext = 2640987i32;
                    };
                } else if (__value__ == (2640267i32)) {
                    _gotoNext = 2640271i32;
                } else if (__value__ == (2640271i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2640298i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2640350i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2640443i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2640735i32;
                            } else {
                                _gotoNext = 2640977i32;
                            };
                        };
                    };
                } else if (__value__ == (2640298i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640350i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2640378i32;
                    } else {
                        _gotoNext = 2640403i32;
                    };
                } else if (__value__ == (2640378i32)) {
                    _loopBreak = true;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640403i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640443i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2640516i32;
                    } else {
                        _gotoNext = 2640572i32;
                    };
                } else if (__value__ == (2640516i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640572i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2640606i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2640696i32;
                    } else {
                        _gotoNext = 2640723i32;
                    };
                } else if (__value__ == (2640606i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2640723i32;
                } else if (__value__ == (2640696i32)) {
                    _trunc = true;
                    _gotoNext = 2640723i32;
                } else if (__value__ == (2640723i32)) {
                    _i++;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640735i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2640847i32;
                    } else {
                        _gotoNext = 2640935i32;
                    };
                } else if (__value__ == (2640847i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2640962i32;
                } else if (__value__ == (2640935i32)) {
                    _gotoNext = 2640935i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2640962i32;
                } else if (__value__ == (2640962i32)) {
                    _i++;
                    _gotoNext = 2640245i32;
                } else if (__value__ == (2640977i32)) {
                    _gotoNext = 2640987i32;
                } else if (__value__ == (2640987i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2641001i32;
                    } else {
                        _gotoNext = 2641016i32;
                    };
                } else if (__value__ == (2641001i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641016i32;
                } else if (__value__ == (2641016i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2641027i32;
                    } else {
                        _gotoNext = 2641044i32;
                    };
                } else if (__value__ == (2641027i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2641044i32;
                } else if (__value__ == (2641044i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641058i32;
                    } else {
                        _gotoNext = 2641303i32;
                    };
                } else if (__value__ == (2641058i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2641303i32;
                } else if (__value__ == (2641303i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2641343i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641776i32;
                    } else {
                        _gotoNext = 2641817i32;
                    };
                } else if (__value__ == (2641343i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2641368i32;
                    } else {
                        _gotoNext = 2641386i32;
                    };
                } else if (__value__ == (2641368i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641386i32;
                } else if (__value__ == (2641386i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2641414i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2641447i32;
                    } else {
                        _gotoNext = 2641476i32;
                    };
                } else if (__value__ == (2641414i32)) {
                    _i++;
                    _gotoNext = 2641476i32;
                } else if (__value__ == (2641447i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2641476i32;
                } else if (__value__ == (2641476i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2641519i32;
                    } else {
                        _gotoNext = 2641537i32;
                    };
                } else if (__value__ == (2641519i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641537i32;
                } else if (__value__ == (2641537i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2641546i32;
                } else if (__value__ == (2641546i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2641615i32;
                    } else {
                        _gotoNext = 2641738i32;
                    };
                } else if (__value__ == (2641611i32)) {
                    _i++;
                    _gotoNext = 2641546i32;
                } else if (__value__ == (2641615i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2641635i32;
                    } else {
                        _gotoNext = 2641681i32;
                    };
                } else if (__value__ == (2641635i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2641546i32;
                } else if (__value__ == (2641681i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2641694i32;
                    } else {
                        _gotoNext = 2641611i32;
                    };
                } else if (__value__ == (2641694i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2641611i32;
                } else if (__value__ == (2641738i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2641817i32;
                } else if (__value__ == (2641776i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641817i32;
                } else if (__value__ == (2641817i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2641834i32;
                    } else {
                        _gotoNext = 2641861i32;
                    };
                } else if (__value__ == (2641834i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2641861i32;
                } else if (__value__ == (2641861i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2641900i32;
                    } else {
                        _gotoNext = 2641916i32;
                    };
                } else if (__value__ == (2641900i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2641916i32;
                } else if (__value__ == (2641916i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
