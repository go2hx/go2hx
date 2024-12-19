package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2646924:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _esign_2648032:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2646876:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2646834:Bool = false;
        var _sawdot_2646817:Bool = false;
        var _e_2648183:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2646863:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2646854:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2646639:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2646594:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2646574:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2646415:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2646415 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2646471i32;
                    } else {
                        _gotoNext = 2646486i32;
                    };
                } else if (__value__ == (2646471i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2646486i32;
                } else if (__value__ == (2646486i32)) {
                    _gotoNext = 2646486i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2646496i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2646521i32;
                    } else {
                        _gotoNext = 2646574i32;
                    };
                } else if (__value__ == (2646496i32)) {
                    _i++;
                    _gotoNext = 2646574i32;
                } else if (__value__ == (2646521i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2646574i32;
                } else if (__value__ == (2646574i32)) {
                    _base_2646574 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2646594 = (19 : stdgo.GoInt);
                    _expChar_2646639 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2646716i32;
                    } else {
                        _gotoNext = 2646817i32;
                    };
                } else if (__value__ == (2646716i32)) {
                    _base_2646574 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2646594 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2646639 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2646817i32;
                } else if (__value__ == (2646817i32)) {
                    _sawdot_2646817 = false;
                    _sawdigits_2646834 = false;
                    _nd_2646854 = (0 : stdgo.GoInt);
                    _ndMant_2646863 = (0 : stdgo.GoInt);
                    _dp_2646876 = (0 : stdgo.GoInt);
                    _gotoNext = 2646884i32;
                } else if (__value__ == (2646884i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2646891i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2646913i32;
                    } else {
                        _gotoNext = 2647633i32;
                    };
                } else if (__value__ == (2646913i32)) {
                    _gotoNext = 2646917i32;
                } else if (__value__ == (2646917i32)) {
                    {
                        _c_2646924 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2646924 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2646944i32;
                            } else if (__value__ == (_c_2646924 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2646996i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2646924 : Bool) && (_c_2646924 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647089i32;
                            } else if (__value__ == (((_base_2646574 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2646924) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2646924) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647381i32;
                            } else {
                                _gotoNext = 2647623i32;
                            };
                        };
                    };
                } else if (__value__ == (2646944i32)) {
                    _underscores_2646415 = true;
                    _i++;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2646996i32)) {
                    if (_sawdot_2646817) {
                        _gotoNext = 2647024i32;
                    } else {
                        _gotoNext = 2647049i32;
                    };
                } else if (__value__ == (2647024i32)) {
                    _loopBreak = true;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2647049i32)) {
                    _sawdot_2646817 = true;
                    _dp_2646876 = _nd_2646854;
                    _i++;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2647089i32)) {
                    _sawdigits_2646834 = true;
                    if (((_c_2646924 == (48 : stdgo.GoUInt8)) && (_nd_2646854 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2647162i32;
                    } else {
                        _gotoNext = 2647218i32;
                    };
                } else if (__value__ == (2647162i32)) {
                    _dp_2646876--;
                    _i++;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2647218i32)) {
                    _nd_2646854++;
                    if ((_ndMant_2646863 < _maxMantDigits_2646594 : Bool)) {
                        _gotoNext = 2647252i32;
                    } else if (_c_2646924 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2647342i32;
                    } else {
                        _gotoNext = 2647369i32;
                    };
                } else if (__value__ == (2647252i32)) {
                    _mantissa = (_mantissa * (_base_2646574) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2646924 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2646863++;
                    _gotoNext = 2647369i32;
                } else if (__value__ == (2647342i32)) {
                    _trunc = true;
                    _gotoNext = 2647369i32;
                } else if (__value__ == (2647369i32)) {
                    _i++;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2647381i32)) {
                    _sawdigits_2646834 = true;
                    _nd_2646854++;
                    if ((_ndMant_2646863 < _maxMantDigits_2646594 : Bool)) {
                        _gotoNext = 2647493i32;
                    } else {
                        _gotoNext = 2647581i32;
                    };
                } else if (__value__ == (2647493i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2646924) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2646863++;
                    _gotoNext = 2647608i32;
                } else if (__value__ == (2647581i32)) {
                    _gotoNext = 2647581i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2647608i32;
                } else if (__value__ == (2647608i32)) {
                    _i++;
                    _gotoNext = 2646891i32;
                } else if (__value__ == (2647623i32)) {
                    _gotoNext = 2647633i32;
                } else if (__value__ == (2647633i32)) {
                    if (!_sawdigits_2646834) {
                        _gotoNext = 2647647i32;
                    } else {
                        _gotoNext = 2647662i32;
                    };
                } else if (__value__ == (2647647i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647662i32;
                } else if (__value__ == (2647662i32)) {
                    if (!_sawdot_2646817) {
                        _gotoNext = 2647673i32;
                    } else {
                        _gotoNext = 2647690i32;
                    };
                } else if (__value__ == (2647673i32)) {
                    _dp_2646876 = _nd_2646854;
                    _gotoNext = 2647690i32;
                } else if (__value__ == (2647690i32)) {
                    if (_base_2646574 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2647704i32;
                    } else {
                        _gotoNext = 2647949i32;
                    };
                } else if (__value__ == (2647704i32)) {
                    _dp_2646876 = (_dp_2646876 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2646863 = (_ndMant_2646863 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2647949i32;
                } else if (__value__ == (2647949i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2646639) : Bool)) {
                        _gotoNext = 2647989i32;
                    } else if (_base_2646574 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648422i32;
                    } else {
                        _gotoNext = 2648463i32;
                    };
                } else if (__value__ == (2647989i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2648014i32;
                    } else {
                        _gotoNext = 2648032i32;
                    };
                } else if (__value__ == (2648014i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648032i32;
                } else if (__value__ == (2648032i32)) {
                    _esign_2648032 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2648060i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2648093i32;
                    } else {
                        _gotoNext = 2648122i32;
                    };
                } else if (__value__ == (2648060i32)) {
                    _i++;
                    _gotoNext = 2648122i32;
                } else if (__value__ == (2648093i32)) {
                    _i++;
                    _esign_2648032 = (-1 : stdgo.GoInt);
                    _gotoNext = 2648122i32;
                } else if (__value__ == (2648122i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2648165i32;
                    } else {
                        _gotoNext = 2648183i32;
                    };
                } else if (__value__ == (2648165i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648183i32;
                } else if (__value__ == (2648183i32)) {
                    _e_2648183 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2648192i32;
                } else if (__value__ == (2648192i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2648261i32;
                    } else {
                        _gotoNext = 2648384i32;
                    };
                } else if (__value__ == (2648257i32)) {
                    _i++;
                    _gotoNext = 2648192i32;
                } else if (__value__ == (2648261i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2648281i32;
                    } else {
                        _gotoNext = 2648327i32;
                    };
                } else if (__value__ == (2648281i32)) {
                    _underscores_2646415 = true;
                    _i++;
                    _gotoNext = 2648192i32;
                } else if (__value__ == (2648327i32)) {
                    if ((_e_2648183 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2648340i32;
                    } else {
                        _gotoNext = 2648257i32;
                    };
                } else if (__value__ == (2648340i32)) {
                    _e_2648183 = (((_e_2648183 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2648257i32;
                } else if (__value__ == (2648384i32)) {
                    _dp_2646876 = (_dp_2646876 + ((_e_2648183 * _esign_2648032 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2648463i32;
                } else if (__value__ == (2648422i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648463i32;
                } else if (__value__ == (2648463i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648480i32;
                    } else {
                        _gotoNext = 2648507i32;
                    };
                } else if (__value__ == (2648480i32)) {
                    _exp = (_dp_2646876 - _ndMant_2646863 : stdgo.GoInt);
                    _gotoNext = 2648507i32;
                } else if (__value__ == (2648507i32)) {
                    if ((_underscores_2646415 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2648546i32;
                    } else {
                        _gotoNext = 2648562i32;
                    };
                } else if (__value__ == (2648546i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648562i32;
                } else if (__value__ == (2648562i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
