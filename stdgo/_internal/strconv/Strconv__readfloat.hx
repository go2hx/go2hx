package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2690801:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2690779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2690564:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2690519:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2692108:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2691957:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2690742:Bool = false;
        var _underscores_2690340:Bool = false;
        var _ndMant_2690788:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2690759:Bool = false;
        var _base_2690499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2690849:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2690340 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2690396i32;
                    } else {
                        _gotoNext = 2690411i32;
                    };
                } else if (__value__ == (2690396i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2690411i32;
                } else if (__value__ == (2690411i32)) {
                    _gotoNext = 2690411i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2690421i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2690446i32;
                    } else {
                        _gotoNext = 2690499i32;
                    };
                } else if (__value__ == (2690421i32)) {
                    _i++;
                    _gotoNext = 2690499i32;
                } else if (__value__ == (2690446i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2690499i32;
                } else if (__value__ == (2690499i32)) {
                    _base_2690499 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2690519 = (19 : stdgo.GoInt);
                    _expChar_2690564 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2690641i32;
                    } else {
                        _gotoNext = 2690742i32;
                    };
                } else if (__value__ == (2690641i32)) {
                    _base_2690499 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2690519 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2690564 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2690742i32;
                } else if (__value__ == (2690742i32)) {
                    _sawdot_2690742 = false;
                    _sawdigits_2690759 = false;
                    _nd_2690779 = (0 : stdgo.GoInt);
                    _ndMant_2690788 = (0 : stdgo.GoInt);
                    _dp_2690801 = (0 : stdgo.GoInt);
                    _gotoNext = 2690809i32;
                } else if (__value__ == (2690809i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2690816i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2690838i32;
                    } else {
                        _gotoNext = 2691558i32;
                    };
                } else if (__value__ == (2690838i32)) {
                    _gotoNext = 2690842i32;
                } else if (__value__ == (2690842i32)) {
                    {
                        _c_2690849 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2690849 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2690869i32;
                            } else if (__value__ == (_c_2690849 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2690921i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2690849 : Bool) && (_c_2690849 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2691014i32;
                            } else if (__value__ == (((_base_2690499 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2690849) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2690849) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2691306i32;
                            } else {
                                _gotoNext = 2691548i32;
                            };
                        };
                    };
                } else if (__value__ == (2690869i32)) {
                    _underscores_2690340 = true;
                    _i++;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2690921i32)) {
                    if (_sawdot_2690742) {
                        _gotoNext = 2690949i32;
                    } else {
                        _gotoNext = 2690974i32;
                    };
                } else if (__value__ == (2690949i32)) {
                    _loopBreak = true;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2690974i32)) {
                    _sawdot_2690742 = true;
                    _dp_2690801 = _nd_2690779;
                    _i++;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2691014i32)) {
                    _sawdigits_2690759 = true;
                    if (((_c_2690849 == (48 : stdgo.GoUInt8)) && (_nd_2690779 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2691087i32;
                    } else {
                        _gotoNext = 2691143i32;
                    };
                } else if (__value__ == (2691087i32)) {
                    _dp_2690801--;
                    _i++;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2691143i32)) {
                    _nd_2690779++;
                    if ((_ndMant_2690788 < _maxMantDigits_2690519 : Bool)) {
                        _gotoNext = 2691177i32;
                    } else if (_c_2690849 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2691267i32;
                    } else {
                        _gotoNext = 2691294i32;
                    };
                } else if (__value__ == (2691177i32)) {
                    _mantissa = (_mantissa * (_base_2690499) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2690849 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2690788++;
                    _gotoNext = 2691294i32;
                } else if (__value__ == (2691267i32)) {
                    _trunc = true;
                    _gotoNext = 2691294i32;
                } else if (__value__ == (2691294i32)) {
                    _i++;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2691306i32)) {
                    _sawdigits_2690759 = true;
                    _nd_2690779++;
                    if ((_ndMant_2690788 < _maxMantDigits_2690519 : Bool)) {
                        _gotoNext = 2691418i32;
                    } else {
                        _gotoNext = 2691506i32;
                    };
                } else if (__value__ == (2691418i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2690849) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2690788++;
                    _gotoNext = 2691533i32;
                } else if (__value__ == (2691506i32)) {
                    _gotoNext = 2691506i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2691533i32;
                } else if (__value__ == (2691533i32)) {
                    _i++;
                    _gotoNext = 2690816i32;
                } else if (__value__ == (2691548i32)) {
                    _gotoNext = 2691558i32;
                } else if (__value__ == (2691558i32)) {
                    if (!_sawdigits_2690759) {
                        _gotoNext = 2691572i32;
                    } else {
                        _gotoNext = 2691587i32;
                    };
                } else if (__value__ == (2691572i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691587i32;
                } else if (__value__ == (2691587i32)) {
                    if (!_sawdot_2690742) {
                        _gotoNext = 2691598i32;
                    } else {
                        _gotoNext = 2691615i32;
                    };
                } else if (__value__ == (2691598i32)) {
                    _dp_2690801 = _nd_2690779;
                    _gotoNext = 2691615i32;
                } else if (__value__ == (2691615i32)) {
                    if (_base_2690499 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2691629i32;
                    } else {
                        _gotoNext = 2691874i32;
                    };
                } else if (__value__ == (2691629i32)) {
                    _dp_2690801 = (_dp_2690801 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2690788 = (_ndMant_2690788 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2691874i32;
                } else if (__value__ == (2691874i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2690564) : Bool)) {
                        _gotoNext = 2691914i32;
                    } else if (_base_2690499 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2692347i32;
                    } else {
                        _gotoNext = 2692388i32;
                    };
                } else if (__value__ == (2691914i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2691939i32;
                    } else {
                        _gotoNext = 2691957i32;
                    };
                } else if (__value__ == (2691939i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2691957i32;
                } else if (__value__ == (2691957i32)) {
                    _esign_2691957 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2691985i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2692018i32;
                    } else {
                        _gotoNext = 2692047i32;
                    };
                } else if (__value__ == (2691985i32)) {
                    _i++;
                    _gotoNext = 2692047i32;
                } else if (__value__ == (2692018i32)) {
                    _i++;
                    _esign_2691957 = (-1 : stdgo.GoInt);
                    _gotoNext = 2692047i32;
                } else if (__value__ == (2692047i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2692090i32;
                    } else {
                        _gotoNext = 2692108i32;
                    };
                } else if (__value__ == (2692090i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2692108i32;
                } else if (__value__ == (2692108i32)) {
                    _e_2692108 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2692117i32;
                } else if (__value__ == (2692117i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2692186i32;
                    } else {
                        _gotoNext = 2692309i32;
                    };
                } else if (__value__ == (2692182i32)) {
                    _i++;
                    _gotoNext = 2692117i32;
                } else if (__value__ == (2692186i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2692206i32;
                    } else {
                        _gotoNext = 2692252i32;
                    };
                } else if (__value__ == (2692206i32)) {
                    _underscores_2690340 = true;
                    _i++;
                    _gotoNext = 2692117i32;
                } else if (__value__ == (2692252i32)) {
                    if ((_e_2692108 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2692265i32;
                    } else {
                        _gotoNext = 2692182i32;
                    };
                } else if (__value__ == (2692265i32)) {
                    _e_2692108 = (((_e_2692108 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2692182i32;
                } else if (__value__ == (2692309i32)) {
                    _dp_2690801 = (_dp_2690801 + ((_e_2692108 * _esign_2691957 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2692388i32;
                } else if (__value__ == (2692347i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2692388i32;
                } else if (__value__ == (2692388i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2692405i32;
                    } else {
                        _gotoNext = 2692432i32;
                    };
                } else if (__value__ == (2692405i32)) {
                    _exp = (_dp_2690801 - _ndMant_2690788 : stdgo.GoInt);
                    _gotoNext = 2692432i32;
                } else if (__value__ == (2692432i32)) {
                    if ((_underscores_2690340 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2692471i32;
                    } else {
                        _gotoNext = 2692487i32;
                    };
                } else if (__value__ == (2692471i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2692487i32;
                } else if (__value__ == (2692487i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
