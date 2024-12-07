package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2824777:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2824687:Bool = false;
        var _maxMantDigits_2824447:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2824729:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2824670:Bool = false;
        var _expChar_2824492:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2824427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2825885:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2826036:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2824716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2824707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2824268:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2824268 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2824324i32;
                    } else {
                        _gotoNext = 2824339i32;
                    };
                } else if (__value__ == (2824324i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2824339i32;
                } else if (__value__ == (2824339i32)) {
                    _gotoNext = 2824339i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2824349i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2824374i32;
                    } else {
                        _gotoNext = 2824427i32;
                    };
                } else if (__value__ == (2824349i32)) {
                    _i++;
                    _gotoNext = 2824427i32;
                } else if (__value__ == (2824374i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2824427i32;
                } else if (__value__ == (2824427i32)) {
                    _base_2824427 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2824447 = (19 : stdgo.GoInt);
                    _expChar_2824492 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2824569i32;
                    } else {
                        _gotoNext = 2824670i32;
                    };
                } else if (__value__ == (2824569i32)) {
                    _base_2824427 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2824447 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2824492 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2824670i32;
                } else if (__value__ == (2824670i32)) {
                    _sawdot_2824670 = false;
                    _sawdigits_2824687 = false;
                    _nd_2824707 = (0 : stdgo.GoInt);
                    _ndMant_2824716 = (0 : stdgo.GoInt);
                    _dp_2824729 = (0 : stdgo.GoInt);
                    _gotoNext = 2824737i32;
                } else if (__value__ == (2824737i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2824744i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2824766i32;
                    } else {
                        _gotoNext = 2825486i32;
                    };
                } else if (__value__ == (2824766i32)) {
                    _gotoNext = 2824770i32;
                } else if (__value__ == (2824770i32)) {
                    {
                        _c_2824777 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2824777 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2824797i32;
                            } else if (__value__ == (_c_2824777 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2824849i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2824777 : Bool) && (_c_2824777 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2824942i32;
                            } else if (__value__ == (((_base_2824427 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2824777) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2824777) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2825234i32;
                            } else {
                                _gotoNext = 2825476i32;
                            };
                        };
                    };
                } else if (__value__ == (2824797i32)) {
                    _underscores_2824268 = true;
                    _i++;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2824849i32)) {
                    if (_sawdot_2824670) {
                        _gotoNext = 2824877i32;
                    } else {
                        _gotoNext = 2824902i32;
                    };
                } else if (__value__ == (2824877i32)) {
                    _loopBreak = true;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2824902i32)) {
                    _sawdot_2824670 = true;
                    _dp_2824729 = _nd_2824707;
                    _i++;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2824942i32)) {
                    _sawdigits_2824687 = true;
                    if (((_c_2824777 == (48 : stdgo.GoUInt8)) && (_nd_2824707 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2825015i32;
                    } else {
                        _gotoNext = 2825071i32;
                    };
                } else if (__value__ == (2825015i32)) {
                    _dp_2824729--;
                    _i++;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2825071i32)) {
                    _nd_2824707++;
                    if ((_ndMant_2824716 < _maxMantDigits_2824447 : Bool)) {
                        _gotoNext = 2825105i32;
                    } else if (_c_2824777 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2825195i32;
                    } else {
                        _gotoNext = 2825222i32;
                    };
                } else if (__value__ == (2825105i32)) {
                    _mantissa = (_mantissa * (_base_2824427) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2824777 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2824716++;
                    _gotoNext = 2825222i32;
                } else if (__value__ == (2825195i32)) {
                    _trunc = true;
                    _gotoNext = 2825222i32;
                } else if (__value__ == (2825222i32)) {
                    _i++;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2825234i32)) {
                    _sawdigits_2824687 = true;
                    _nd_2824707++;
                    if ((_ndMant_2824716 < _maxMantDigits_2824447 : Bool)) {
                        _gotoNext = 2825346i32;
                    } else {
                        _gotoNext = 2825434i32;
                    };
                } else if (__value__ == (2825346i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2824777) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2824716++;
                    _gotoNext = 2825461i32;
                } else if (__value__ == (2825434i32)) {
                    _gotoNext = 2825434i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2825461i32;
                } else if (__value__ == (2825461i32)) {
                    _i++;
                    _gotoNext = 2824744i32;
                } else if (__value__ == (2825476i32)) {
                    _gotoNext = 2825486i32;
                } else if (__value__ == (2825486i32)) {
                    if (!_sawdigits_2824687) {
                        _gotoNext = 2825500i32;
                    } else {
                        _gotoNext = 2825515i32;
                    };
                } else if (__value__ == (2825500i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2825515i32;
                } else if (__value__ == (2825515i32)) {
                    if (!_sawdot_2824670) {
                        _gotoNext = 2825526i32;
                    } else {
                        _gotoNext = 2825543i32;
                    };
                } else if (__value__ == (2825526i32)) {
                    _dp_2824729 = _nd_2824707;
                    _gotoNext = 2825543i32;
                } else if (__value__ == (2825543i32)) {
                    if (_base_2824427 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2825557i32;
                    } else {
                        _gotoNext = 2825802i32;
                    };
                } else if (__value__ == (2825557i32)) {
                    _dp_2824729 = (_dp_2824729 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2824716 = (_ndMant_2824716 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2825802i32;
                } else if (__value__ == (2825802i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2824492) : Bool)) {
                        _gotoNext = 2825842i32;
                    } else if (_base_2824427 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2826275i32;
                    } else {
                        _gotoNext = 2826316i32;
                    };
                } else if (__value__ == (2825842i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2825867i32;
                    } else {
                        _gotoNext = 2825885i32;
                    };
                } else if (__value__ == (2825867i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2825885i32;
                } else if (__value__ == (2825885i32)) {
                    _esign_2825885 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2825913i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2825946i32;
                    } else {
                        _gotoNext = 2825975i32;
                    };
                } else if (__value__ == (2825913i32)) {
                    _i++;
                    _gotoNext = 2825975i32;
                } else if (__value__ == (2825946i32)) {
                    _i++;
                    _esign_2825885 = (-1 : stdgo.GoInt);
                    _gotoNext = 2825975i32;
                } else if (__value__ == (2825975i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2826018i32;
                    } else {
                        _gotoNext = 2826036i32;
                    };
                } else if (__value__ == (2826018i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2826036i32;
                } else if (__value__ == (2826036i32)) {
                    _e_2826036 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2826045i32;
                } else if (__value__ == (2826045i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2826114i32;
                    } else {
                        _gotoNext = 2826237i32;
                    };
                } else if (__value__ == (2826110i32)) {
                    _i++;
                    _gotoNext = 2826045i32;
                } else if (__value__ == (2826114i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2826134i32;
                    } else {
                        _gotoNext = 2826180i32;
                    };
                } else if (__value__ == (2826134i32)) {
                    _underscores_2824268 = true;
                    _i++;
                    _gotoNext = 2826045i32;
                } else if (__value__ == (2826180i32)) {
                    if ((_e_2826036 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2826193i32;
                    } else {
                        _gotoNext = 2826110i32;
                    };
                } else if (__value__ == (2826193i32)) {
                    _e_2826036 = (((_e_2826036 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2826110i32;
                } else if (__value__ == (2826237i32)) {
                    _dp_2824729 = (_dp_2824729 + ((_e_2826036 * _esign_2825885 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2826316i32;
                } else if (__value__ == (2826275i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2826316i32;
                } else if (__value__ == (2826316i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2826333i32;
                    } else {
                        _gotoNext = 2826360i32;
                    };
                } else if (__value__ == (2826333i32)) {
                    _exp = (_dp_2824729 - _ndMant_2824716 : stdgo.GoInt);
                    _gotoNext = 2826360i32;
                } else if (__value__ == (2826360i32)) {
                    if ((_underscores_2824268 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2826399i32;
                    } else {
                        _gotoNext = 2826415i32;
                    };
                } else if (__value__ == (2826399i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2826415i32;
                } else if (__value__ == (2826415i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
