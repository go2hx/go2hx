package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2708199:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2707091:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2707043:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2708350:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2707021:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2706806:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2706741:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ndMant_2707030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2706582:Bool = false;
        var _sawdigits_2707001:Bool = false;
        var _sawdot_2706984:Bool = false;
        var _maxMantDigits_2706761:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2706582 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2706638i32;
                    } else {
                        _gotoNext = 2706653i32;
                    };
                } else if (__value__ == (2706638i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2706653i32;
                } else if (__value__ == (2706653i32)) {
                    _gotoNext = 2706653i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2706663i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2706688i32;
                    } else {
                        _gotoNext = 2706741i32;
                    };
                } else if (__value__ == (2706663i32)) {
                    _i++;
                    _gotoNext = 2706741i32;
                } else if (__value__ == (2706688i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2706741i32;
                } else if (__value__ == (2706741i32)) {
                    _base_2706741 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2706761 = (19 : stdgo.GoInt);
                    _expChar_2706806 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2706883i32;
                    } else {
                        _gotoNext = 2706984i32;
                    };
                } else if (__value__ == (2706883i32)) {
                    _base_2706741 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2706761 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2706806 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2706984i32;
                } else if (__value__ == (2706984i32)) {
                    _sawdot_2706984 = false;
                    _sawdigits_2707001 = false;
                    _nd_2707021 = (0 : stdgo.GoInt);
                    _ndMant_2707030 = (0 : stdgo.GoInt);
                    _dp_2707043 = (0 : stdgo.GoInt);
                    _gotoNext = 2707051i32;
                } else if (__value__ == (2707051i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707058i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2707080i32;
                    } else {
                        _gotoNext = 2707800i32;
                    };
                } else if (__value__ == (2707080i32)) {
                    _gotoNext = 2707084i32;
                } else if (__value__ == (2707084i32)) {
                    {
                        _c_2707091 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2707091 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2707111i32;
                            } else if (__value__ == (_c_2707091 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2707163i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2707091 : Bool) && (_c_2707091 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2707256i32;
                            } else if (__value__ == (((_base_2706741 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2707091) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2707091) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2707548i32;
                            } else {
                                _gotoNext = 2707790i32;
                            };
                        };
                    };
                } else if (__value__ == (2707111i32)) {
                    _underscores_2706582 = true;
                    _i++;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707163i32)) {
                    if (_sawdot_2706984) {
                        _gotoNext = 2707191i32;
                    } else {
                        _gotoNext = 2707216i32;
                    };
                } else if (__value__ == (2707191i32)) {
                    _loopBreak = true;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707216i32)) {
                    _sawdot_2706984 = true;
                    _dp_2707043 = _nd_2707021;
                    _i++;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707256i32)) {
                    _sawdigits_2707001 = true;
                    if (((_c_2707091 == (48 : stdgo.GoUInt8)) && (_nd_2707021 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2707329i32;
                    } else {
                        _gotoNext = 2707385i32;
                    };
                } else if (__value__ == (2707329i32)) {
                    _dp_2707043--;
                    _i++;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707385i32)) {
                    _nd_2707021++;
                    if ((_ndMant_2707030 < _maxMantDigits_2706761 : Bool)) {
                        _gotoNext = 2707419i32;
                    } else if (_c_2707091 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2707509i32;
                    } else {
                        _gotoNext = 2707536i32;
                    };
                } else if (__value__ == (2707419i32)) {
                    _mantissa = (_mantissa * (_base_2706741) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2707091 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2707030++;
                    _gotoNext = 2707536i32;
                } else if (__value__ == (2707509i32)) {
                    _trunc = true;
                    _gotoNext = 2707536i32;
                } else if (__value__ == (2707536i32)) {
                    _i++;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707548i32)) {
                    _sawdigits_2707001 = true;
                    _nd_2707021++;
                    if ((_ndMant_2707030 < _maxMantDigits_2706761 : Bool)) {
                        _gotoNext = 2707660i32;
                    } else {
                        _gotoNext = 2707748i32;
                    };
                } else if (__value__ == (2707660i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2707091) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2707030++;
                    _gotoNext = 2707775i32;
                } else if (__value__ == (2707748i32)) {
                    _gotoNext = 2707748i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2707775i32;
                } else if (__value__ == (2707775i32)) {
                    _i++;
                    _gotoNext = 2707058i32;
                } else if (__value__ == (2707790i32)) {
                    _gotoNext = 2707800i32;
                } else if (__value__ == (2707800i32)) {
                    if (!_sawdigits_2707001) {
                        _gotoNext = 2707814i32;
                    } else {
                        _gotoNext = 2707829i32;
                    };
                } else if (__value__ == (2707814i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2707829i32;
                } else if (__value__ == (2707829i32)) {
                    if (!_sawdot_2706984) {
                        _gotoNext = 2707840i32;
                    } else {
                        _gotoNext = 2707857i32;
                    };
                } else if (__value__ == (2707840i32)) {
                    _dp_2707043 = _nd_2707021;
                    _gotoNext = 2707857i32;
                } else if (__value__ == (2707857i32)) {
                    if (_base_2706741 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2707871i32;
                    } else {
                        _gotoNext = 2708116i32;
                    };
                } else if (__value__ == (2707871i32)) {
                    _dp_2707043 = (_dp_2707043 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2707030 = (_ndMant_2707030 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2708116i32;
                } else if (__value__ == (2708116i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2706806) : Bool)) {
                        _gotoNext = 2708156i32;
                    } else if (_base_2706741 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2708589i32;
                    } else {
                        _gotoNext = 2708630i32;
                    };
                } else if (__value__ == (2708156i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2708181i32;
                    } else {
                        _gotoNext = 2708199i32;
                    };
                } else if (__value__ == (2708181i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2708199i32;
                } else if (__value__ == (2708199i32)) {
                    _esign_2708199 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2708227i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2708260i32;
                    } else {
                        _gotoNext = 2708289i32;
                    };
                } else if (__value__ == (2708227i32)) {
                    _i++;
                    _gotoNext = 2708289i32;
                } else if (__value__ == (2708260i32)) {
                    _i++;
                    _esign_2708199 = (-1 : stdgo.GoInt);
                    _gotoNext = 2708289i32;
                } else if (__value__ == (2708289i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2708332i32;
                    } else {
                        _gotoNext = 2708350i32;
                    };
                } else if (__value__ == (2708332i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2708350i32;
                } else if (__value__ == (2708350i32)) {
                    _e_2708350 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2708359i32;
                } else if (__value__ == (2708359i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2708428i32;
                    } else {
                        _gotoNext = 2708551i32;
                    };
                } else if (__value__ == (2708424i32)) {
                    _i++;
                    _gotoNext = 2708359i32;
                } else if (__value__ == (2708428i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2708448i32;
                    } else {
                        _gotoNext = 2708494i32;
                    };
                } else if (__value__ == (2708448i32)) {
                    _underscores_2706582 = true;
                    _i++;
                    _gotoNext = 2708359i32;
                } else if (__value__ == (2708494i32)) {
                    if ((_e_2708350 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2708507i32;
                    } else {
                        _gotoNext = 2708424i32;
                    };
                } else if (__value__ == (2708507i32)) {
                    _e_2708350 = (((_e_2708350 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2708424i32;
                } else if (__value__ == (2708551i32)) {
                    _dp_2707043 = (_dp_2707043 + ((_e_2708350 * _esign_2708199 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2708630i32;
                } else if (__value__ == (2708589i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2708630i32;
                } else if (__value__ == (2708630i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2708647i32;
                    } else {
                        _gotoNext = 2708674i32;
                    };
                } else if (__value__ == (2708647i32)) {
                    _exp = (_dp_2707043 - _ndMant_2707030 : stdgo.GoInt);
                    _gotoNext = 2708674i32;
                } else if (__value__ == (2708674i32)) {
                    if ((_underscores_2706582 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2708713i32;
                    } else {
                        _gotoNext = 2708729i32;
                    };
                } else if (__value__ == (2708713i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2708729i32;
                } else if (__value__ == (2708729i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
