package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _dp_2617729:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2617268:Bool = false;
        var _nd_2617707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2617670:Bool = false;
        var _maxMantDigits_2617447:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2619036:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2618885:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2617777:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2617716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2617427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2617687:Bool = false;
        var _expChar_2617492:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2617268 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2617324i32;
                    } else {
                        _gotoNext = 2617339i32;
                    };
                } else if (__value__ == (2617324i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2617339i32;
                } else if (__value__ == (2617339i32)) {
                    _gotoNext = 2617339i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2617349i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2617374i32;
                    } else {
                        _gotoNext = 2617427i32;
                    };
                } else if (__value__ == (2617349i32)) {
                    _i++;
                    _gotoNext = 2617427i32;
                } else if (__value__ == (2617374i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2617427i32;
                } else if (__value__ == (2617427i32)) {
                    _base_2617427 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2617447 = (19 : stdgo.GoInt);
                    _expChar_2617492 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2617569i32;
                    } else {
                        _gotoNext = 2617670i32;
                    };
                } else if (__value__ == (2617569i32)) {
                    _base_2617427 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2617447 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2617492 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2617670i32;
                } else if (__value__ == (2617670i32)) {
                    _sawdot_2617670 = false;
                    _sawdigits_2617687 = false;
                    _nd_2617707 = (0 : stdgo.GoInt);
                    _ndMant_2617716 = (0 : stdgo.GoInt);
                    _dp_2617729 = (0 : stdgo.GoInt);
                    _gotoNext = 2617737i32;
                } else if (__value__ == (2617737i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2617744i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2617766i32;
                    } else {
                        _gotoNext = 2618486i32;
                    };
                } else if (__value__ == (2617766i32)) {
                    _gotoNext = 2617770i32;
                } else if (__value__ == (2617770i32)) {
                    {
                        _c_2617777 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2617777 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2617797i32;
                            } else if (__value__ == (_c_2617777 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2617849i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2617777 : Bool) && (_c_2617777 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2617942i32;
                            } else if (__value__ == (((_base_2617427 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2617777) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2617777) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2618234i32;
                            } else {
                                _gotoNext = 2618476i32;
                            };
                        };
                    };
                } else if (__value__ == (2617797i32)) {
                    _underscores_2617268 = true;
                    _i++;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2617849i32)) {
                    if (_sawdot_2617670) {
                        _gotoNext = 2617877i32;
                    } else {
                        _gotoNext = 2617902i32;
                    };
                } else if (__value__ == (2617877i32)) {
                    _loopBreak = true;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2617902i32)) {
                    _sawdot_2617670 = true;
                    _dp_2617729 = _nd_2617707;
                    _i++;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2617942i32)) {
                    _sawdigits_2617687 = true;
                    if (((_c_2617777 == (48 : stdgo.GoUInt8)) && (_nd_2617707 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2618015i32;
                    } else {
                        _gotoNext = 2618071i32;
                    };
                } else if (__value__ == (2618015i32)) {
                    _dp_2617729--;
                    _i++;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2618071i32)) {
                    _nd_2617707++;
                    if ((_ndMant_2617716 < _maxMantDigits_2617447 : Bool)) {
                        _gotoNext = 2618105i32;
                    } else if (_c_2617777 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2618195i32;
                    } else {
                        _gotoNext = 2618222i32;
                    };
                } else if (__value__ == (2618105i32)) {
                    _mantissa = (_mantissa * (_base_2617427) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2617777 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2617716++;
                    _gotoNext = 2618222i32;
                } else if (__value__ == (2618195i32)) {
                    _trunc = true;
                    _gotoNext = 2618222i32;
                } else if (__value__ == (2618222i32)) {
                    _i++;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2618234i32)) {
                    _sawdigits_2617687 = true;
                    _nd_2617707++;
                    if ((_ndMant_2617716 < _maxMantDigits_2617447 : Bool)) {
                        _gotoNext = 2618346i32;
                    } else {
                        _gotoNext = 2618434i32;
                    };
                } else if (__value__ == (2618346i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2617777) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2617716++;
                    _gotoNext = 2618461i32;
                } else if (__value__ == (2618434i32)) {
                    _gotoNext = 2618434i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2618461i32;
                } else if (__value__ == (2618461i32)) {
                    _i++;
                    _gotoNext = 2617744i32;
                } else if (__value__ == (2618476i32)) {
                    _gotoNext = 2618486i32;
                } else if (__value__ == (2618486i32)) {
                    if (!_sawdigits_2617687) {
                        _gotoNext = 2618500i32;
                    } else {
                        _gotoNext = 2618515i32;
                    };
                } else if (__value__ == (2618500i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618515i32;
                } else if (__value__ == (2618515i32)) {
                    if (!_sawdot_2617670) {
                        _gotoNext = 2618526i32;
                    } else {
                        _gotoNext = 2618543i32;
                    };
                } else if (__value__ == (2618526i32)) {
                    _dp_2617729 = _nd_2617707;
                    _gotoNext = 2618543i32;
                } else if (__value__ == (2618543i32)) {
                    if (_base_2617427 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2618557i32;
                    } else {
                        _gotoNext = 2618802i32;
                    };
                } else if (__value__ == (2618557i32)) {
                    _dp_2617729 = (_dp_2617729 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2617716 = (_ndMant_2617716 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2618802i32;
                } else if (__value__ == (2618802i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2617492) : Bool)) {
                        _gotoNext = 2618842i32;
                    } else if (_base_2617427 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619275i32;
                    } else {
                        _gotoNext = 2619316i32;
                    };
                } else if (__value__ == (2618842i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2618867i32;
                    } else {
                        _gotoNext = 2618885i32;
                    };
                } else if (__value__ == (2618867i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618885i32;
                } else if (__value__ == (2618885i32)) {
                    _esign_2618885 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2618913i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2618946i32;
                    } else {
                        _gotoNext = 2618975i32;
                    };
                } else if (__value__ == (2618913i32)) {
                    _i++;
                    _gotoNext = 2618975i32;
                } else if (__value__ == (2618946i32)) {
                    _i++;
                    _esign_2618885 = (-1 : stdgo.GoInt);
                    _gotoNext = 2618975i32;
                } else if (__value__ == (2618975i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2619018i32;
                    } else {
                        _gotoNext = 2619036i32;
                    };
                } else if (__value__ == (2619018i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619036i32;
                } else if (__value__ == (2619036i32)) {
                    _e_2619036 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2619045i32;
                } else if (__value__ == (2619045i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2619114i32;
                    } else {
                        _gotoNext = 2619237i32;
                    };
                } else if (__value__ == (2619110i32)) {
                    _i++;
                    _gotoNext = 2619045i32;
                } else if (__value__ == (2619114i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2619134i32;
                    } else {
                        _gotoNext = 2619180i32;
                    };
                } else if (__value__ == (2619134i32)) {
                    _underscores_2617268 = true;
                    _i++;
                    _gotoNext = 2619045i32;
                } else if (__value__ == (2619180i32)) {
                    if ((_e_2619036 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2619193i32;
                    } else {
                        _gotoNext = 2619110i32;
                    };
                } else if (__value__ == (2619193i32)) {
                    _e_2619036 = (((_e_2619036 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2619110i32;
                } else if (__value__ == (2619237i32)) {
                    _dp_2617729 = (_dp_2617729 + ((_e_2619036 * _esign_2618885 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2619316i32;
                } else if (__value__ == (2619275i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619316i32;
                } else if (__value__ == (2619316i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619333i32;
                    } else {
                        _gotoNext = 2619360i32;
                    };
                } else if (__value__ == (2619333i32)) {
                    _exp = (_dp_2617729 - _ndMant_2617716 : stdgo.GoInt);
                    _gotoNext = 2619360i32;
                } else if (__value__ == (2619360i32)) {
                    if ((_underscores_2617268 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2619399i32;
                    } else {
                        _gotoNext = 2619415i32;
                    };
                } else if (__value__ == (2619399i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619415i32;
                } else if (__value__ == (2619415i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
