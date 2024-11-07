package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2660562:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2659393:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2659169:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdot_2659347:Bool = false;
        var _maxMantDigits_2659124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2659104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2658945:Bool = false;
        var _c_2659454:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2659406:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2660713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2659364:Bool = false;
        var _loopBreak = false;
        var _nd_2659384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2658945 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2659001i32;
                    } else {
                        _gotoNext = 2659016i32;
                    };
                } else if (__value__ == (2659001i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2659016i32;
                } else if (__value__ == (2659016i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2659016i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2659026i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2659051i32;
                    } else {
                        _gotoNext = 2659104i32;
                    };
                } else if (__value__ == (2659026i32)) {
                    _i++;
                    _gotoNext = 2659104i32;
                } else if (__value__ == (2659051i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2659104i32;
                } else if (__value__ == (2659104i32)) {
                    _base_2659104 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2659124 = (19 : stdgo.GoInt);
                    _expChar_2659169 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2659246i32;
                    } else {
                        _gotoNext = 2659347i32;
                    };
                } else if (__value__ == (2659246i32)) {
                    _base_2659104 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2659124 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2659169 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2659347i32;
                } else if (__value__ == (2659347i32)) {
                    _sawdot_2659347 = false;
                    _sawdigits_2659364 = false;
                    _nd_2659384 = (0 : stdgo.GoInt);
                    _ndMant_2659393 = (0 : stdgo.GoInt);
                    _dp_2659406 = (0 : stdgo.GoInt);
                    _gotoNext = 2659414i32;
                } else if (__value__ == (2659414i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2659421i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2659443i32;
                    } else {
                        _gotoNext = 2660163i32;
                    };
                } else if (__value__ == (2659443i32)) {
                    _c_2659454 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2659447i32;
                } else if (__value__ == (2659447i32)) {
                    {
                        _c_2659454 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2659454 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2659474i32;
                            } else if (__value__ == (_c_2659454 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2659526i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2659454 : Bool) && (_c_2659454 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659619i32;
                            } else if (__value__ == (((_base_2659104 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2659454) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2659454) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2659911i32;
                            } else {
                                _gotoNext = 2660153i32;
                            };
                        };
                    };
                } else if (__value__ == (2659474i32)) {
                    _underscores_2658945 = true;
                    _i++;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2659526i32)) {
                    if (_sawdot_2659347) {
                        _gotoNext = 2659554i32;
                    } else {
                        _gotoNext = 2659579i32;
                    };
                } else if (__value__ == (2659554i32)) {
                    _loopBreak = true;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2659579i32)) {
                    _sawdot_2659347 = true;
                    _dp_2659406 = _nd_2659384;
                    _i++;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2659619i32)) {
                    _sawdigits_2659364 = true;
                    if (((_c_2659454 == (48 : stdgo.GoUInt8)) && (_nd_2659384 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2659692i32;
                    } else {
                        _gotoNext = 2659748i32;
                    };
                } else if (__value__ == (2659692i32)) {
                    _dp_2659406--;
                    _i++;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2659748i32)) {
                    _nd_2659384++;
                    if ((_ndMant_2659393 < _maxMantDigits_2659124 : Bool)) {
                        _gotoNext = 2659782i32;
                    } else if (_c_2659454 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2659872i32;
                    } else {
                        _gotoNext = 2659899i32;
                    };
                } else if (__value__ == (2659782i32)) {
                    _mantissa = (_mantissa * (_base_2659104) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2659454 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2659393++;
                    _gotoNext = 2659899i32;
                } else if (__value__ == (2659872i32)) {
                    _trunc = true;
                    _gotoNext = 2659899i32;
                } else if (__value__ == (2659899i32)) {
                    _i++;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2659911i32)) {
                    _sawdigits_2659364 = true;
                    _nd_2659384++;
                    if ((_ndMant_2659393 < _maxMantDigits_2659124 : Bool)) {
                        _gotoNext = 2660023i32;
                    } else {
                        _gotoNext = 2660111i32;
                    };
                } else if (__value__ == (2660023i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2659454) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2659393++;
                    _gotoNext = 2660138i32;
                } else if (__value__ == (2660111i32)) {
                    _trunc = true;
                    _gotoNext = 2660138i32;
                } else if (__value__ == (2660138i32)) {
                    _i++;
                    _gotoNext = 2659421i32;
                } else if (__value__ == (2660153i32)) {
                    _gotoNext = 2660163i32;
                } else if (__value__ == (2660163i32)) {
                    if (!_sawdigits_2659364) {
                        _gotoNext = 2660177i32;
                    } else {
                        _gotoNext = 2660192i32;
                    };
                } else if (__value__ == (2660177i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660192i32;
                } else if (__value__ == (2660192i32)) {
                    if (!_sawdot_2659347) {
                        _gotoNext = 2660203i32;
                    } else {
                        _gotoNext = 2660220i32;
                    };
                } else if (__value__ == (2660203i32)) {
                    _dp_2659406 = _nd_2659384;
                    _gotoNext = 2660220i32;
                } else if (__value__ == (2660220i32)) {
                    if (_base_2659104 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660234i32;
                    } else {
                        _gotoNext = 2660479i32;
                    };
                } else if (__value__ == (2660234i32)) {
                    _dp_2659406 = (_dp_2659406 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2659393 = (_ndMant_2659393 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660479i32;
                } else if (__value__ == (2660479i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2659169) : Bool)) {
                        _gotoNext = 2660519i32;
                    } else if (_base_2659104 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2660952i32;
                    } else {
                        _gotoNext = 2660993i32;
                    };
                } else if (__value__ == (2660519i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2660544i32;
                    } else {
                        _gotoNext = 2660562i32;
                    };
                } else if (__value__ == (2660544i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660562i32;
                } else if (__value__ == (2660562i32)) {
                    _esign_2660562 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2660590i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2660623i32;
                    } else {
                        _gotoNext = 2660652i32;
                    };
                } else if (__value__ == (2660590i32)) {
                    _i++;
                    _gotoNext = 2660652i32;
                } else if (__value__ == (2660623i32)) {
                    _i++;
                    _esign_2660562 = (-1 : stdgo.GoInt);
                    _gotoNext = 2660652i32;
                } else if (__value__ == (2660652i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2660695i32;
                    } else {
                        _gotoNext = 2660713i32;
                    };
                } else if (__value__ == (2660695i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660713i32;
                } else if (__value__ == (2660713i32)) {
                    _e_2660713 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2660722i32;
                } else if (__value__ == (2660722i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2660791i32;
                    } else {
                        _gotoNext = 2660914i32;
                    };
                } else if (__value__ == (2660787i32)) {
                    _i++;
                    _gotoNext = 2660722i32;
                } else if (__value__ == (2660791i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2660811i32;
                    } else {
                        _gotoNext = 2660857i32;
                    };
                } else if (__value__ == (2660811i32)) {
                    _underscores_2658945 = true;
                    _i++;
                    _gotoNext = 2660722i32;
                } else if (__value__ == (2660857i32)) {
                    if ((_e_2660713 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2660870i32;
                    } else {
                        _gotoNext = 2660787i32;
                    };
                } else if (__value__ == (2660870i32)) {
                    _e_2660713 = (((_e_2660713 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2660787i32;
                } else if (__value__ == (2660914i32)) {
                    _dp_2659406 = (_dp_2659406 + ((_e_2660713 * _esign_2660562 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2660993i32;
                } else if (__value__ == (2660952i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2660993i32;
                } else if (__value__ == (2660993i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2661010i32;
                    } else {
                        _gotoNext = 2661037i32;
                    };
                } else if (__value__ == (2661010i32)) {
                    _exp = (_dp_2659406 - _ndMant_2659393 : stdgo.GoInt);
                    _gotoNext = 2661037i32;
                } else if (__value__ == (2661037i32)) {
                    if ((_underscores_2658945 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2661076i32;
                    } else {
                        _gotoNext = 2661092i32;
                    };
                } else if (__value__ == (2661076i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2661092i32;
                } else if (__value__ == (2661092i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
