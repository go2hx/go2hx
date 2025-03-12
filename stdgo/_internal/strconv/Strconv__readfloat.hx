package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_5:Bool = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
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
                        _gotoNext = 2675692i32;
                    } else {
                        _gotoNext = 2675707i32;
                    };
                } else if (__value__ == (2675692i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675707i32;
                } else if (__value__ == (2675707i32)) {
                    _gotoNext = 2675707i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2675717i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2675742i32;
                    } else {
                        _gotoNext = 2675795i32;
                    };
                } else if (__value__ == (2675717i32)) {
                    _i++;
                    _gotoNext = 2675795i32;
                } else if (__value__ == (2675742i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2675795i32;
                } else if (__value__ == (2675795i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2675937i32;
                    } else {
                        _gotoNext = 2676038i32;
                    };
                } else if (__value__ == (2675937i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2676038i32;
                } else if (__value__ == (2676038i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2676105i32;
                } else if (__value__ == (2676105i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676112i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2676134i32;
                    } else {
                        _gotoNext = 2676854i32;
                    };
                } else if (__value__ == (2676134i32)) {
                    _gotoNext = 2676138i32;
                } else if (__value__ == (2676138i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2676165i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2676217i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2676310i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2676602i32;
                            } else {
                                _gotoNext = 2676844i32;
                            };
                        };
                    };
                } else if (__value__ == (2676165i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676217i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2676245i32;
                    } else {
                        _gotoNext = 2676270i32;
                    };
                } else if (__value__ == (2676245i32)) {
                    _loopBreak = true;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676270i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676310i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2676383i32;
                    } else {
                        _gotoNext = 2676439i32;
                    };
                } else if (__value__ == (2676383i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676439i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2676473i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2676563i32;
                    } else {
                        _gotoNext = 2676590i32;
                    };
                } else if (__value__ == (2676473i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2676590i32;
                } else if (__value__ == (2676563i32)) {
                    _trunc = true;
                    _gotoNext = 2676590i32;
                } else if (__value__ == (2676590i32)) {
                    _i++;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676602i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2676714i32;
                    } else {
                        _gotoNext = 2676802i32;
                    };
                } else if (__value__ == (2676714i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2676829i32;
                } else if (__value__ == (2676802i32)) {
                    _gotoNext = 2676802i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2676829i32;
                } else if (__value__ == (2676829i32)) {
                    _i++;
                    _gotoNext = 2676112i32;
                } else if (__value__ == (2676844i32)) {
                    _gotoNext = 2676854i32;
                } else if (__value__ == (2676854i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2676868i32;
                    } else {
                        _gotoNext = 2676883i32;
                    };
                } else if (__value__ == (2676868i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2676883i32;
                } else if (__value__ == (2676883i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2676894i32;
                    } else {
                        _gotoNext = 2676911i32;
                    };
                } else if (__value__ == (2676894i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2676911i32;
                } else if (__value__ == (2676911i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2676925i32;
                    } else {
                        _gotoNext = 2677170i32;
                    };
                } else if (__value__ == (2676925i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2677170i32;
                } else if (__value__ == (2677170i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2677210i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677643i32;
                    } else {
                        _gotoNext = 2677684i32;
                    };
                } else if (__value__ == (2677210i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2677235i32;
                    } else {
                        _gotoNext = 2677253i32;
                    };
                } else if (__value__ == (2677235i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677253i32;
                } else if (__value__ == (2677253i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2677281i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2677314i32;
                    } else {
                        _gotoNext = 2677343i32;
                    };
                } else if (__value__ == (2677281i32)) {
                    _i++;
                    _gotoNext = 2677343i32;
                } else if (__value__ == (2677314i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2677343i32;
                } else if (__value__ == (2677343i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2677386i32;
                    } else {
                        _gotoNext = 2677404i32;
                    };
                } else if (__value__ == (2677386i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677404i32;
                } else if (__value__ == (2677404i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2677413i32;
                } else if (__value__ == (2677413i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2677482i32;
                    } else {
                        _gotoNext = 2677605i32;
                    };
                } else if (__value__ == (2677478i32)) {
                    _i++;
                    _gotoNext = 2677413i32;
                } else if (__value__ == (2677482i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2677502i32;
                    } else {
                        _gotoNext = 2677548i32;
                    };
                } else if (__value__ == (2677502i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2677413i32;
                } else if (__value__ == (2677548i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2677561i32;
                    } else {
                        _gotoNext = 2677478i32;
                    };
                } else if (__value__ == (2677561i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2677478i32;
                } else if (__value__ == (2677605i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2677684i32;
                } else if (__value__ == (2677643i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677684i32;
                } else if (__value__ == (2677684i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2677701i32;
                    } else {
                        _gotoNext = 2677728i32;
                    };
                } else if (__value__ == (2677701i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2677728i32;
                } else if (__value__ == (2677728i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2677767i32;
                    } else {
                        _gotoNext = 2677783i32;
                    };
                } else if (__value__ == (2677767i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2677783i32;
                } else if (__value__ == (2677783i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
