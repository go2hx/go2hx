package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _nd_2821694:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2821657:Bool = false;
        var _dp_2821716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _base_2821414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _expChar_2821479:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2821434:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2821674:Bool = false;
        var _underscores_2821255:Bool = false;
        var _e_2823023:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2822872:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2821764:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2821703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2821255 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2821311i32;
                    } else {
                        _gotoNext = 2821326i32;
                    };
                } else if (__value__ == (2821311i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2821326i32;
                } else if (__value__ == (2821326i32)) {
                    _gotoNext = 2821326i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2821336i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2821361i32;
                    } else {
                        _gotoNext = 2821414i32;
                    };
                } else if (__value__ == (2821336i32)) {
                    _i++;
                    _gotoNext = 2821414i32;
                } else if (__value__ == (2821361i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2821414i32;
                } else if (__value__ == (2821414i32)) {
                    _base_2821414 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2821434 = (19 : stdgo.GoInt);
                    _expChar_2821479 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2821556i32;
                    } else {
                        _gotoNext = 2821657i32;
                    };
                } else if (__value__ == (2821556i32)) {
                    _base_2821414 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2821434 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2821479 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2821657i32;
                } else if (__value__ == (2821657i32)) {
                    _sawdot_2821657 = false;
                    _sawdigits_2821674 = false;
                    _nd_2821694 = (0 : stdgo.GoInt);
                    _ndMant_2821703 = (0 : stdgo.GoInt);
                    _dp_2821716 = (0 : stdgo.GoInt);
                    _gotoNext = 2821724i32;
                } else if (__value__ == (2821724i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2821731i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2821753i32;
                    } else {
                        _gotoNext = 2822473i32;
                    };
                } else if (__value__ == (2821753i32)) {
                    _gotoNext = 2821757i32;
                } else if (__value__ == (2821757i32)) {
                    {
                        _c_2821764 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2821764 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2821784i32;
                            } else if (__value__ == (_c_2821764 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2821836i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2821764 : Bool) && (_c_2821764 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2821929i32;
                            } else if (__value__ == (((_base_2821414 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2821764) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2821764) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2822221i32;
                            } else {
                                _gotoNext = 2822463i32;
                            };
                        };
                    };
                } else if (__value__ == (2821784i32)) {
                    _underscores_2821255 = true;
                    _i++;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2821836i32)) {
                    if (_sawdot_2821657) {
                        _gotoNext = 2821864i32;
                    } else {
                        _gotoNext = 2821889i32;
                    };
                } else if (__value__ == (2821864i32)) {
                    _loopBreak = true;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2821889i32)) {
                    _sawdot_2821657 = true;
                    _dp_2821716 = _nd_2821694;
                    _i++;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2821929i32)) {
                    _sawdigits_2821674 = true;
                    if (((_c_2821764 == (48 : stdgo.GoUInt8)) && (_nd_2821694 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2822002i32;
                    } else {
                        _gotoNext = 2822058i32;
                    };
                } else if (__value__ == (2822002i32)) {
                    _dp_2821716--;
                    _i++;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2822058i32)) {
                    _nd_2821694++;
                    if ((_ndMant_2821703 < _maxMantDigits_2821434 : Bool)) {
                        _gotoNext = 2822092i32;
                    } else if (_c_2821764 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2822182i32;
                    } else {
                        _gotoNext = 2822209i32;
                    };
                } else if (__value__ == (2822092i32)) {
                    _mantissa = (_mantissa * (_base_2821414) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2821764 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2821703++;
                    _gotoNext = 2822209i32;
                } else if (__value__ == (2822182i32)) {
                    _trunc = true;
                    _gotoNext = 2822209i32;
                } else if (__value__ == (2822209i32)) {
                    _i++;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2822221i32)) {
                    _sawdigits_2821674 = true;
                    _nd_2821694++;
                    if ((_ndMant_2821703 < _maxMantDigits_2821434 : Bool)) {
                        _gotoNext = 2822333i32;
                    } else {
                        _gotoNext = 2822421i32;
                    };
                } else if (__value__ == (2822333i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2821764) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2821703++;
                    _gotoNext = 2822448i32;
                } else if (__value__ == (2822421i32)) {
                    _gotoNext = 2822421i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2822448i32;
                } else if (__value__ == (2822448i32)) {
                    _i++;
                    _gotoNext = 2821731i32;
                } else if (__value__ == (2822463i32)) {
                    _gotoNext = 2822473i32;
                } else if (__value__ == (2822473i32)) {
                    if (!_sawdigits_2821674) {
                        _gotoNext = 2822487i32;
                    } else {
                        _gotoNext = 2822502i32;
                    };
                } else if (__value__ == (2822487i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2822502i32;
                } else if (__value__ == (2822502i32)) {
                    if (!_sawdot_2821657) {
                        _gotoNext = 2822513i32;
                    } else {
                        _gotoNext = 2822530i32;
                    };
                } else if (__value__ == (2822513i32)) {
                    _dp_2821716 = _nd_2821694;
                    _gotoNext = 2822530i32;
                } else if (__value__ == (2822530i32)) {
                    if (_base_2821414 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2822544i32;
                    } else {
                        _gotoNext = 2822789i32;
                    };
                } else if (__value__ == (2822544i32)) {
                    _dp_2821716 = (_dp_2821716 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2821703 = (_ndMant_2821703 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2822789i32;
                } else if (__value__ == (2822789i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2821479) : Bool)) {
                        _gotoNext = 2822829i32;
                    } else if (_base_2821414 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2823262i32;
                    } else {
                        _gotoNext = 2823303i32;
                    };
                } else if (__value__ == (2822829i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2822854i32;
                    } else {
                        _gotoNext = 2822872i32;
                    };
                } else if (__value__ == (2822854i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2822872i32;
                } else if (__value__ == (2822872i32)) {
                    _esign_2822872 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2822900i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2822933i32;
                    } else {
                        _gotoNext = 2822962i32;
                    };
                } else if (__value__ == (2822900i32)) {
                    _i++;
                    _gotoNext = 2822962i32;
                } else if (__value__ == (2822933i32)) {
                    _i++;
                    _esign_2822872 = (-1 : stdgo.GoInt);
                    _gotoNext = 2822962i32;
                } else if (__value__ == (2822962i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2823005i32;
                    } else {
                        _gotoNext = 2823023i32;
                    };
                } else if (__value__ == (2823005i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2823023i32;
                } else if (__value__ == (2823023i32)) {
                    _e_2823023 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2823032i32;
                } else if (__value__ == (2823032i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2823101i32;
                    } else {
                        _gotoNext = 2823224i32;
                    };
                } else if (__value__ == (2823097i32)) {
                    _i++;
                    _gotoNext = 2823032i32;
                } else if (__value__ == (2823101i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2823121i32;
                    } else {
                        _gotoNext = 2823167i32;
                    };
                } else if (__value__ == (2823121i32)) {
                    _underscores_2821255 = true;
                    _i++;
                    _gotoNext = 2823032i32;
                } else if (__value__ == (2823167i32)) {
                    if ((_e_2823023 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2823180i32;
                    } else {
                        _gotoNext = 2823097i32;
                    };
                } else if (__value__ == (2823180i32)) {
                    _e_2823023 = (((_e_2823023 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2823097i32;
                } else if (__value__ == (2823224i32)) {
                    _dp_2821716 = (_dp_2821716 + ((_e_2823023 * _esign_2822872 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2823303i32;
                } else if (__value__ == (2823262i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2823303i32;
                } else if (__value__ == (2823303i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2823320i32;
                    } else {
                        _gotoNext = 2823347i32;
                    };
                } else if (__value__ == (2823320i32)) {
                    _exp = (_dp_2821716 - _ndMant_2821703 : stdgo.GoInt);
                    _gotoNext = 2823347i32;
                } else if (__value__ == (2823347i32)) {
                    if ((_underscores_2821255 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2823386i32;
                    } else {
                        _gotoNext = 2823402i32;
                    };
                } else if (__value__ == (2823386i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2823402i32;
                } else if (__value__ == (2823402i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
