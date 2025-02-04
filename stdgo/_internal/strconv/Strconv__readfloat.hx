package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2762090:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2760697:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2760921:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2760632:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2762241:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2760982:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2760934:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2760652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2760473:Bool = false;
        var _loopBreak = false;
        var _nd_2760912:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2760892:Bool = false;
        var _sawdot_2760875:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2760473 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2760529i32;
                    } else {
                        _gotoNext = 2760544i32;
                    };
                } else if (__value__ == (2760529i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2760544i32;
                } else if (__value__ == (2760544i32)) {
                    _gotoNext = 2760544i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2760554i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2760579i32;
                    } else {
                        _gotoNext = 2760632i32;
                    };
                } else if (__value__ == (2760554i32)) {
                    _i++;
                    _gotoNext = 2760632i32;
                } else if (__value__ == (2760579i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2760632i32;
                } else if (__value__ == (2760632i32)) {
                    _base_2760632 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2760652 = (19 : stdgo.GoInt);
                    _expChar_2760697 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2760774i32;
                    } else {
                        _gotoNext = 2760875i32;
                    };
                } else if (__value__ == (2760774i32)) {
                    _base_2760632 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2760652 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2760697 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2760875i32;
                } else if (__value__ == (2760875i32)) {
                    _sawdot_2760875 = false;
                    _sawdigits_2760892 = false;
                    _nd_2760912 = (0 : stdgo.GoInt);
                    _ndMant_2760921 = (0 : stdgo.GoInt);
                    _dp_2760934 = (0 : stdgo.GoInt);
                    _gotoNext = 2760942i32;
                } else if (__value__ == (2760942i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2760949i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2760971i32;
                    } else {
                        _gotoNext = 2761691i32;
                    };
                } else if (__value__ == (2760971i32)) {
                    _gotoNext = 2760975i32;
                } else if (__value__ == (2760975i32)) {
                    {
                        _c_2760982 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2760982 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2761002i32;
                            } else if (__value__ == (_c_2760982 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2761054i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2760982 : Bool) && (_c_2760982 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2761147i32;
                            } else if (__value__ == (((_base_2760632 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2760982) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2760982) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2761439i32;
                            } else {
                                _gotoNext = 2761681i32;
                            };
                        };
                    };
                } else if (__value__ == (2761002i32)) {
                    _underscores_2760473 = true;
                    _i++;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2761054i32)) {
                    if (_sawdot_2760875) {
                        _gotoNext = 2761082i32;
                    } else {
                        _gotoNext = 2761107i32;
                    };
                } else if (__value__ == (2761082i32)) {
                    _loopBreak = true;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2761107i32)) {
                    _sawdot_2760875 = true;
                    _dp_2760934 = _nd_2760912;
                    _i++;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2761147i32)) {
                    _sawdigits_2760892 = true;
                    if (((_c_2760982 == (48 : stdgo.GoUInt8)) && (_nd_2760912 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2761220i32;
                    } else {
                        _gotoNext = 2761276i32;
                    };
                } else if (__value__ == (2761220i32)) {
                    _dp_2760934--;
                    _i++;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2761276i32)) {
                    _nd_2760912++;
                    if ((_ndMant_2760921 < _maxMantDigits_2760652 : Bool)) {
                        _gotoNext = 2761310i32;
                    } else if (_c_2760982 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2761400i32;
                    } else {
                        _gotoNext = 2761427i32;
                    };
                } else if (__value__ == (2761310i32)) {
                    _mantissa = (_mantissa * (_base_2760632) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2760982 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2760921++;
                    _gotoNext = 2761427i32;
                } else if (__value__ == (2761400i32)) {
                    _trunc = true;
                    _gotoNext = 2761427i32;
                } else if (__value__ == (2761427i32)) {
                    _i++;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2761439i32)) {
                    _sawdigits_2760892 = true;
                    _nd_2760912++;
                    if ((_ndMant_2760921 < _maxMantDigits_2760652 : Bool)) {
                        _gotoNext = 2761551i32;
                    } else {
                        _gotoNext = 2761639i32;
                    };
                } else if (__value__ == (2761551i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2760982) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2760921++;
                    _gotoNext = 2761666i32;
                } else if (__value__ == (2761639i32)) {
                    _gotoNext = 2761639i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2761666i32;
                } else if (__value__ == (2761666i32)) {
                    _i++;
                    _gotoNext = 2760949i32;
                } else if (__value__ == (2761681i32)) {
                    _gotoNext = 2761691i32;
                } else if (__value__ == (2761691i32)) {
                    if (!_sawdigits_2760892) {
                        _gotoNext = 2761705i32;
                    } else {
                        _gotoNext = 2761720i32;
                    };
                } else if (__value__ == (2761705i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2761720i32;
                } else if (__value__ == (2761720i32)) {
                    if (!_sawdot_2760875) {
                        _gotoNext = 2761731i32;
                    } else {
                        _gotoNext = 2761748i32;
                    };
                } else if (__value__ == (2761731i32)) {
                    _dp_2760934 = _nd_2760912;
                    _gotoNext = 2761748i32;
                } else if (__value__ == (2761748i32)) {
                    if (_base_2760632 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2761762i32;
                    } else {
                        _gotoNext = 2762007i32;
                    };
                } else if (__value__ == (2761762i32)) {
                    _dp_2760934 = (_dp_2760934 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2760921 = (_ndMant_2760921 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2762007i32;
                } else if (__value__ == (2762007i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2760697) : Bool)) {
                        _gotoNext = 2762047i32;
                    } else if (_base_2760632 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2762480i32;
                    } else {
                        _gotoNext = 2762521i32;
                    };
                } else if (__value__ == (2762047i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2762072i32;
                    } else {
                        _gotoNext = 2762090i32;
                    };
                } else if (__value__ == (2762072i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2762090i32;
                } else if (__value__ == (2762090i32)) {
                    _esign_2762090 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2762118i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2762151i32;
                    } else {
                        _gotoNext = 2762180i32;
                    };
                } else if (__value__ == (2762118i32)) {
                    _i++;
                    _gotoNext = 2762180i32;
                } else if (__value__ == (2762151i32)) {
                    _i++;
                    _esign_2762090 = (-1 : stdgo.GoInt);
                    _gotoNext = 2762180i32;
                } else if (__value__ == (2762180i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2762223i32;
                    } else {
                        _gotoNext = 2762241i32;
                    };
                } else if (__value__ == (2762223i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2762241i32;
                } else if (__value__ == (2762241i32)) {
                    _e_2762241 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2762250i32;
                } else if (__value__ == (2762250i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2762319i32;
                    } else {
                        _gotoNext = 2762442i32;
                    };
                } else if (__value__ == (2762315i32)) {
                    _i++;
                    _gotoNext = 2762250i32;
                } else if (__value__ == (2762319i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2762339i32;
                    } else {
                        _gotoNext = 2762385i32;
                    };
                } else if (__value__ == (2762339i32)) {
                    _underscores_2760473 = true;
                    _i++;
                    _gotoNext = 2762250i32;
                } else if (__value__ == (2762385i32)) {
                    if ((_e_2762241 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2762398i32;
                    } else {
                        _gotoNext = 2762315i32;
                    };
                } else if (__value__ == (2762398i32)) {
                    _e_2762241 = (((_e_2762241 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2762315i32;
                } else if (__value__ == (2762442i32)) {
                    _dp_2760934 = (_dp_2760934 + ((_e_2762241 * _esign_2762090 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2762521i32;
                } else if (__value__ == (2762480i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2762521i32;
                } else if (__value__ == (2762521i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2762538i32;
                    } else {
                        _gotoNext = 2762565i32;
                    };
                } else if (__value__ == (2762538i32)) {
                    _exp = (_dp_2760934 - _ndMant_2760921 : stdgo.GoInt);
                    _gotoNext = 2762565i32;
                } else if (__value__ == (2762565i32)) {
                    if ((_underscores_2760473 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2762604i32;
                    } else {
                        _gotoNext = 2762620i32;
                    };
                } else if (__value__ == (2762604i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2762620i32;
                } else if (__value__ == (2762620i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
