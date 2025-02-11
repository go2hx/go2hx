package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2647488:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2647206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2647186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2648795:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2647475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2647251:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2647027:Bool = false;
        var _esign_2648644:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2647466:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2647429:Bool = false;
        var _c_2647536:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2647446:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2647027 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2647083i32;
                    } else {
                        _gotoNext = 2647098i32;
                    };
                } else if (__value__ == (2647083i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2647098i32;
                } else if (__value__ == (2647098i32)) {
                    _gotoNext = 2647098i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2647108i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2647133i32;
                    } else {
                        _gotoNext = 2647186i32;
                    };
                } else if (__value__ == (2647108i32)) {
                    _i++;
                    _gotoNext = 2647186i32;
                } else if (__value__ == (2647133i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2647186i32;
                } else if (__value__ == (2647186i32)) {
                    _base_2647186 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2647206 = (19 : stdgo.GoInt);
                    _expChar_2647251 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2647328i32;
                    } else {
                        _gotoNext = 2647429i32;
                    };
                } else if (__value__ == (2647328i32)) {
                    _base_2647186 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2647206 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2647251 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2647429i32;
                } else if (__value__ == (2647429i32)) {
                    _sawdot_2647429 = false;
                    _sawdigits_2647446 = false;
                    _nd_2647466 = (0 : stdgo.GoInt);
                    _ndMant_2647475 = (0 : stdgo.GoInt);
                    _dp_2647488 = (0 : stdgo.GoInt);
                    _gotoNext = 2647496i32;
                } else if (__value__ == (2647496i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2647503i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2647525i32;
                    } else {
                        _gotoNext = 2648245i32;
                    };
                } else if (__value__ == (2647525i32)) {
                    _gotoNext = 2647529i32;
                } else if (__value__ == (2647529i32)) {
                    {
                        _c_2647536 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2647536 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2647556i32;
                            } else if (__value__ == (_c_2647536 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2647608i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2647536 : Bool) && (_c_2647536 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647701i32;
                            } else if (__value__ == (((_base_2647186 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2647536) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2647536) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647993i32;
                            } else {
                                _gotoNext = 2648235i32;
                            };
                        };
                    };
                } else if (__value__ == (2647556i32)) {
                    _underscores_2647027 = true;
                    _i++;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2647608i32)) {
                    if (_sawdot_2647429) {
                        _gotoNext = 2647636i32;
                    } else {
                        _gotoNext = 2647661i32;
                    };
                } else if (__value__ == (2647636i32)) {
                    _loopBreak = true;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2647661i32)) {
                    _sawdot_2647429 = true;
                    _dp_2647488 = _nd_2647466;
                    _i++;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2647701i32)) {
                    _sawdigits_2647446 = true;
                    if (((_c_2647536 == (48 : stdgo.GoUInt8)) && (_nd_2647466 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2647774i32;
                    } else {
                        _gotoNext = 2647830i32;
                    };
                } else if (__value__ == (2647774i32)) {
                    _dp_2647488--;
                    _i++;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2647830i32)) {
                    _nd_2647466++;
                    if ((_ndMant_2647475 < _maxMantDigits_2647206 : Bool)) {
                        _gotoNext = 2647864i32;
                    } else if (_c_2647536 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2647954i32;
                    } else {
                        _gotoNext = 2647981i32;
                    };
                } else if (__value__ == (2647864i32)) {
                    _mantissa = (_mantissa * (_base_2647186) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2647536 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2647475++;
                    _gotoNext = 2647981i32;
                } else if (__value__ == (2647954i32)) {
                    _trunc = true;
                    _gotoNext = 2647981i32;
                } else if (__value__ == (2647981i32)) {
                    _i++;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2647993i32)) {
                    _sawdigits_2647446 = true;
                    _nd_2647466++;
                    if ((_ndMant_2647475 < _maxMantDigits_2647206 : Bool)) {
                        _gotoNext = 2648105i32;
                    } else {
                        _gotoNext = 2648193i32;
                    };
                } else if (__value__ == (2648105i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2647536) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2647475++;
                    _gotoNext = 2648220i32;
                } else if (__value__ == (2648193i32)) {
                    _gotoNext = 2648193i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2648220i32;
                } else if (__value__ == (2648220i32)) {
                    _i++;
                    _gotoNext = 2647503i32;
                } else if (__value__ == (2648235i32)) {
                    _gotoNext = 2648245i32;
                } else if (__value__ == (2648245i32)) {
                    if (!_sawdigits_2647446) {
                        _gotoNext = 2648259i32;
                    } else {
                        _gotoNext = 2648274i32;
                    };
                } else if (__value__ == (2648259i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648274i32;
                } else if (__value__ == (2648274i32)) {
                    if (!_sawdot_2647429) {
                        _gotoNext = 2648285i32;
                    } else {
                        _gotoNext = 2648302i32;
                    };
                } else if (__value__ == (2648285i32)) {
                    _dp_2647488 = _nd_2647466;
                    _gotoNext = 2648302i32;
                } else if (__value__ == (2648302i32)) {
                    if (_base_2647186 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648316i32;
                    } else {
                        _gotoNext = 2648561i32;
                    };
                } else if (__value__ == (2648316i32)) {
                    _dp_2647488 = (_dp_2647488 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2647475 = (_ndMant_2647475 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2648561i32;
                } else if (__value__ == (2648561i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2647251) : Bool)) {
                        _gotoNext = 2648601i32;
                    } else if (_base_2647186 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2649034i32;
                    } else {
                        _gotoNext = 2649075i32;
                    };
                } else if (__value__ == (2648601i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2648626i32;
                    } else {
                        _gotoNext = 2648644i32;
                    };
                } else if (__value__ == (2648626i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648644i32;
                } else if (__value__ == (2648644i32)) {
                    _esign_2648644 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2648672i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2648705i32;
                    } else {
                        _gotoNext = 2648734i32;
                    };
                } else if (__value__ == (2648672i32)) {
                    _i++;
                    _gotoNext = 2648734i32;
                } else if (__value__ == (2648705i32)) {
                    _i++;
                    _esign_2648644 = (-1 : stdgo.GoInt);
                    _gotoNext = 2648734i32;
                } else if (__value__ == (2648734i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2648777i32;
                    } else {
                        _gotoNext = 2648795i32;
                    };
                } else if (__value__ == (2648777i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648795i32;
                } else if (__value__ == (2648795i32)) {
                    _e_2648795 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2648804i32;
                } else if (__value__ == (2648804i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2648873i32;
                    } else {
                        _gotoNext = 2648996i32;
                    };
                } else if (__value__ == (2648869i32)) {
                    _i++;
                    _gotoNext = 2648804i32;
                } else if (__value__ == (2648873i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2648893i32;
                    } else {
                        _gotoNext = 2648939i32;
                    };
                } else if (__value__ == (2648893i32)) {
                    _underscores_2647027 = true;
                    _i++;
                    _gotoNext = 2648804i32;
                } else if (__value__ == (2648939i32)) {
                    if ((_e_2648795 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2648952i32;
                    } else {
                        _gotoNext = 2648869i32;
                    };
                } else if (__value__ == (2648952i32)) {
                    _e_2648795 = (((_e_2648795 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2648869i32;
                } else if (__value__ == (2648996i32)) {
                    _dp_2647488 = (_dp_2647488 + ((_e_2648795 * _esign_2648644 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2649075i32;
                } else if (__value__ == (2649034i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649075i32;
                } else if (__value__ == (2649075i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2649092i32;
                    } else {
                        _gotoNext = 2649119i32;
                    };
                } else if (__value__ == (2649092i32)) {
                    _exp = (_dp_2647488 - _ndMant_2647475 : stdgo.GoInt);
                    _gotoNext = 2649119i32;
                } else if (__value__ == (2649119i32)) {
                    if ((_underscores_2647027 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2649158i32;
                    } else {
                        _gotoNext = 2649174i32;
                    };
                } else if (__value__ == (2649158i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649174i32;
                } else if (__value__ == (2649174i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
