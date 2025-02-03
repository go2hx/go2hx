package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _dp_2784151:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2784129:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2784138:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2784092:Bool = false;
        var _maxMantDigits_2783869:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2785458:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2783849:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2785307:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2784199:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2784109:Bool = false;
        var _expChar_2783914:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2783690:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2783690 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2783746i32;
                    } else {
                        _gotoNext = 2783761i32;
                    };
                } else if (__value__ == (2783746i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2783761i32;
                } else if (__value__ == (2783761i32)) {
                    _gotoNext = 2783761i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2783771i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2783796i32;
                    } else {
                        _gotoNext = 2783849i32;
                    };
                } else if (__value__ == (2783771i32)) {
                    _i++;
                    _gotoNext = 2783849i32;
                } else if (__value__ == (2783796i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2783849i32;
                } else if (__value__ == (2783849i32)) {
                    _base_2783849 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2783869 = (19 : stdgo.GoInt);
                    _expChar_2783914 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2783991i32;
                    } else {
                        _gotoNext = 2784092i32;
                    };
                } else if (__value__ == (2783991i32)) {
                    _base_2783849 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2783869 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2783914 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2784092i32;
                } else if (__value__ == (2784092i32)) {
                    _sawdot_2784092 = false;
                    _sawdigits_2784109 = false;
                    _nd_2784129 = (0 : stdgo.GoInt);
                    _ndMant_2784138 = (0 : stdgo.GoInt);
                    _dp_2784151 = (0 : stdgo.GoInt);
                    _gotoNext = 2784159i32;
                } else if (__value__ == (2784159i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784166i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2784188i32;
                    } else {
                        _gotoNext = 2784908i32;
                    };
                } else if (__value__ == (2784188i32)) {
                    _gotoNext = 2784192i32;
                } else if (__value__ == (2784192i32)) {
                    {
                        _c_2784199 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2784199 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2784219i32;
                            } else if (__value__ == (_c_2784199 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2784271i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2784199 : Bool) && (_c_2784199 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2784364i32;
                            } else if (__value__ == (((_base_2783849 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2784199) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2784199) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2784656i32;
                            } else {
                                _gotoNext = 2784898i32;
                            };
                        };
                    };
                } else if (__value__ == (2784219i32)) {
                    _underscores_2783690 = true;
                    _i++;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784271i32)) {
                    if (_sawdot_2784092) {
                        _gotoNext = 2784299i32;
                    } else {
                        _gotoNext = 2784324i32;
                    };
                } else if (__value__ == (2784299i32)) {
                    _loopBreak = true;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784324i32)) {
                    _sawdot_2784092 = true;
                    _dp_2784151 = _nd_2784129;
                    _i++;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784364i32)) {
                    _sawdigits_2784109 = true;
                    if (((_c_2784199 == (48 : stdgo.GoUInt8)) && (_nd_2784129 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2784437i32;
                    } else {
                        _gotoNext = 2784493i32;
                    };
                } else if (__value__ == (2784437i32)) {
                    _dp_2784151--;
                    _i++;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784493i32)) {
                    _nd_2784129++;
                    if ((_ndMant_2784138 < _maxMantDigits_2783869 : Bool)) {
                        _gotoNext = 2784527i32;
                    } else if (_c_2784199 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2784617i32;
                    } else {
                        _gotoNext = 2784644i32;
                    };
                } else if (__value__ == (2784527i32)) {
                    _mantissa = (_mantissa * (_base_2783849) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2784199 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2784138++;
                    _gotoNext = 2784644i32;
                } else if (__value__ == (2784617i32)) {
                    _trunc = true;
                    _gotoNext = 2784644i32;
                } else if (__value__ == (2784644i32)) {
                    _i++;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784656i32)) {
                    _sawdigits_2784109 = true;
                    _nd_2784129++;
                    if ((_ndMant_2784138 < _maxMantDigits_2783869 : Bool)) {
                        _gotoNext = 2784768i32;
                    } else {
                        _gotoNext = 2784856i32;
                    };
                } else if (__value__ == (2784768i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2784199) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2784138++;
                    _gotoNext = 2784883i32;
                } else if (__value__ == (2784856i32)) {
                    _gotoNext = 2784856i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2784883i32;
                } else if (__value__ == (2784883i32)) {
                    _i++;
                    _gotoNext = 2784166i32;
                } else if (__value__ == (2784898i32)) {
                    _gotoNext = 2784908i32;
                } else if (__value__ == (2784908i32)) {
                    if (!_sawdigits_2784109) {
                        _gotoNext = 2784922i32;
                    } else {
                        _gotoNext = 2784937i32;
                    };
                } else if (__value__ == (2784922i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2784937i32;
                } else if (__value__ == (2784937i32)) {
                    if (!_sawdot_2784092) {
                        _gotoNext = 2784948i32;
                    } else {
                        _gotoNext = 2784965i32;
                    };
                } else if (__value__ == (2784948i32)) {
                    _dp_2784151 = _nd_2784129;
                    _gotoNext = 2784965i32;
                } else if (__value__ == (2784965i32)) {
                    if (_base_2783849 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2784979i32;
                    } else {
                        _gotoNext = 2785224i32;
                    };
                } else if (__value__ == (2784979i32)) {
                    _dp_2784151 = (_dp_2784151 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2784138 = (_ndMant_2784138 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2785224i32;
                } else if (__value__ == (2785224i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2783914) : Bool)) {
                        _gotoNext = 2785264i32;
                    } else if (_base_2783849 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2785697i32;
                    } else {
                        _gotoNext = 2785738i32;
                    };
                } else if (__value__ == (2785264i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2785289i32;
                    } else {
                        _gotoNext = 2785307i32;
                    };
                } else if (__value__ == (2785289i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2785307i32;
                } else if (__value__ == (2785307i32)) {
                    _esign_2785307 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2785335i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2785368i32;
                    } else {
                        _gotoNext = 2785397i32;
                    };
                } else if (__value__ == (2785335i32)) {
                    _i++;
                    _gotoNext = 2785397i32;
                } else if (__value__ == (2785368i32)) {
                    _i++;
                    _esign_2785307 = (-1 : stdgo.GoInt);
                    _gotoNext = 2785397i32;
                } else if (__value__ == (2785397i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2785440i32;
                    } else {
                        _gotoNext = 2785458i32;
                    };
                } else if (__value__ == (2785440i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2785458i32;
                } else if (__value__ == (2785458i32)) {
                    _e_2785458 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2785467i32;
                } else if (__value__ == (2785467i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2785536i32;
                    } else {
                        _gotoNext = 2785659i32;
                    };
                } else if (__value__ == (2785532i32)) {
                    _i++;
                    _gotoNext = 2785467i32;
                } else if (__value__ == (2785536i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2785556i32;
                    } else {
                        _gotoNext = 2785602i32;
                    };
                } else if (__value__ == (2785556i32)) {
                    _underscores_2783690 = true;
                    _i++;
                    _gotoNext = 2785467i32;
                } else if (__value__ == (2785602i32)) {
                    if ((_e_2785458 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2785615i32;
                    } else {
                        _gotoNext = 2785532i32;
                    };
                } else if (__value__ == (2785615i32)) {
                    _e_2785458 = (((_e_2785458 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2785532i32;
                } else if (__value__ == (2785659i32)) {
                    _dp_2784151 = (_dp_2784151 + ((_e_2785458 * _esign_2785307 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2785738i32;
                } else if (__value__ == (2785697i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2785738i32;
                } else if (__value__ == (2785738i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2785755i32;
                    } else {
                        _gotoNext = 2785782i32;
                    };
                } else if (__value__ == (2785755i32)) {
                    _exp = (_dp_2784151 - _ndMant_2784138 : stdgo.GoInt);
                    _gotoNext = 2785782i32;
                } else if (__value__ == (2785782i32)) {
                    if ((_underscores_2783690 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2785821i32;
                    } else {
                        _gotoNext = 2785837i32;
                    };
                } else if (__value__ == (2785821i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2785837i32;
                } else if (__value__ == (2785837i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
