package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2680659:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2680707:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2680357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sawdigits_2680617:Bool = false;
        var _sawdot_2680600:Bool = false;
        var _maxMantDigits_2680377:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2681815:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2680637:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2680422:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2680198:Bool = false;
        var _e_2681966:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2680646:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2680198 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2680254i32;
                    } else {
                        _gotoNext = 2680269i32;
                    };
                } else if (__value__ == (2680254i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680269i32;
                } else if (__value__ == (2680269i32)) {
                    _gotoNext = 2680269i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2680279i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2680304i32;
                    } else {
                        _gotoNext = 2680357i32;
                    };
                } else if (__value__ == (2680279i32)) {
                    _i++;
                    _gotoNext = 2680357i32;
                } else if (__value__ == (2680304i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2680357i32;
                } else if (__value__ == (2680357i32)) {
                    _base_2680357 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2680377 = (19 : stdgo.GoInt);
                    _expChar_2680422 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2680499i32;
                    } else {
                        _gotoNext = 2680600i32;
                    };
                } else if (__value__ == (2680499i32)) {
                    _base_2680357 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2680377 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2680422 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2680600i32;
                } else if (__value__ == (2680600i32)) {
                    _sawdot_2680600 = false;
                    _sawdigits_2680617 = false;
                    _nd_2680637 = (0 : stdgo.GoInt);
                    _ndMant_2680646 = (0 : stdgo.GoInt);
                    _dp_2680659 = (0 : stdgo.GoInt);
                    _gotoNext = 2680667i32;
                } else if (__value__ == (2680667i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2680674i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2680696i32;
                    } else {
                        _gotoNext = 2681416i32;
                    };
                } else if (__value__ == (2680696i32)) {
                    _gotoNext = 2680700i32;
                } else if (__value__ == (2680700i32)) {
                    {
                        _c_2680707 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2680707 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2680727i32;
                            } else if (__value__ == (_c_2680707 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2680779i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2680707 : Bool) && (_c_2680707 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2680872i32;
                            } else if (__value__ == (((_base_2680357 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2680707) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2680707) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2681164i32;
                            } else {
                                _gotoNext = 2681406i32;
                            };
                        };
                    };
                } else if (__value__ == (2680727i32)) {
                    _underscores_2680198 = true;
                    _i++;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2680779i32)) {
                    if (_sawdot_2680600) {
                        _gotoNext = 2680807i32;
                    } else {
                        _gotoNext = 2680832i32;
                    };
                } else if (__value__ == (2680807i32)) {
                    _loopBreak = true;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2680832i32)) {
                    _sawdot_2680600 = true;
                    _dp_2680659 = _nd_2680637;
                    _i++;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2680872i32)) {
                    _sawdigits_2680617 = true;
                    if (((_c_2680707 == (48 : stdgo.GoUInt8)) && (_nd_2680637 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2680945i32;
                    } else {
                        _gotoNext = 2681001i32;
                    };
                } else if (__value__ == (2680945i32)) {
                    _dp_2680659--;
                    _i++;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2681001i32)) {
                    _nd_2680637++;
                    if ((_ndMant_2680646 < _maxMantDigits_2680377 : Bool)) {
                        _gotoNext = 2681035i32;
                    } else if (_c_2680707 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2681125i32;
                    } else {
                        _gotoNext = 2681152i32;
                    };
                } else if (__value__ == (2681035i32)) {
                    _mantissa = (_mantissa * (_base_2680357) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2680707 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2680646++;
                    _gotoNext = 2681152i32;
                } else if (__value__ == (2681125i32)) {
                    _trunc = true;
                    _gotoNext = 2681152i32;
                } else if (__value__ == (2681152i32)) {
                    _i++;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2681164i32)) {
                    _sawdigits_2680617 = true;
                    _nd_2680637++;
                    if ((_ndMant_2680646 < _maxMantDigits_2680377 : Bool)) {
                        _gotoNext = 2681276i32;
                    } else {
                        _gotoNext = 2681364i32;
                    };
                } else if (__value__ == (2681276i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2680707) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2680646++;
                    _gotoNext = 2681391i32;
                } else if (__value__ == (2681364i32)) {
                    _gotoNext = 2681364i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2681391i32;
                } else if (__value__ == (2681391i32)) {
                    _i++;
                    _gotoNext = 2680674i32;
                } else if (__value__ == (2681406i32)) {
                    _gotoNext = 2681416i32;
                } else if (__value__ == (2681416i32)) {
                    if (!_sawdigits_2680617) {
                        _gotoNext = 2681430i32;
                    } else {
                        _gotoNext = 2681445i32;
                    };
                } else if (__value__ == (2681430i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681445i32;
                } else if (__value__ == (2681445i32)) {
                    if (!_sawdot_2680600) {
                        _gotoNext = 2681456i32;
                    } else {
                        _gotoNext = 2681473i32;
                    };
                } else if (__value__ == (2681456i32)) {
                    _dp_2680659 = _nd_2680637;
                    _gotoNext = 2681473i32;
                } else if (__value__ == (2681473i32)) {
                    if (_base_2680357 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2681487i32;
                    } else {
                        _gotoNext = 2681732i32;
                    };
                } else if (__value__ == (2681487i32)) {
                    _dp_2680659 = (_dp_2680659 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2680646 = (_ndMant_2680646 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2681732i32;
                } else if (__value__ == (2681732i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2680422) : Bool)) {
                        _gotoNext = 2681772i32;
                    } else if (_base_2680357 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682205i32;
                    } else {
                        _gotoNext = 2682246i32;
                    };
                } else if (__value__ == (2681772i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2681797i32;
                    } else {
                        _gotoNext = 2681815i32;
                    };
                } else if (__value__ == (2681797i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681815i32;
                } else if (__value__ == (2681815i32)) {
                    _esign_2681815 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2681843i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2681876i32;
                    } else {
                        _gotoNext = 2681905i32;
                    };
                } else if (__value__ == (2681843i32)) {
                    _i++;
                    _gotoNext = 2681905i32;
                } else if (__value__ == (2681876i32)) {
                    _i++;
                    _esign_2681815 = (-1 : stdgo.GoInt);
                    _gotoNext = 2681905i32;
                } else if (__value__ == (2681905i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2681948i32;
                    } else {
                        _gotoNext = 2681966i32;
                    };
                } else if (__value__ == (2681948i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2681966i32;
                } else if (__value__ == (2681966i32)) {
                    _e_2681966 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2681975i32;
                } else if (__value__ == (2681975i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2682044i32;
                    } else {
                        _gotoNext = 2682167i32;
                    };
                } else if (__value__ == (2682040i32)) {
                    _i++;
                    _gotoNext = 2681975i32;
                } else if (__value__ == (2682044i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2682064i32;
                    } else {
                        _gotoNext = 2682110i32;
                    };
                } else if (__value__ == (2682064i32)) {
                    _underscores_2680198 = true;
                    _i++;
                    _gotoNext = 2681975i32;
                } else if (__value__ == (2682110i32)) {
                    if ((_e_2681966 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2682123i32;
                    } else {
                        _gotoNext = 2682040i32;
                    };
                } else if (__value__ == (2682123i32)) {
                    _e_2681966 = (((_e_2681966 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2682040i32;
                } else if (__value__ == (2682167i32)) {
                    _dp_2680659 = (_dp_2680659 + ((_e_2681966 * _esign_2681815 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2682246i32;
                } else if (__value__ == (2682205i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682246i32;
                } else if (__value__ == (2682246i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2682263i32;
                    } else {
                        _gotoNext = 2682290i32;
                    };
                } else if (__value__ == (2682263i32)) {
                    _exp = (_dp_2680659 - _ndMant_2680646 : stdgo.GoInt);
                    _gotoNext = 2682290i32;
                } else if (__value__ == (2682290i32)) {
                    if ((_underscores_2680198 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2682329i32;
                    } else {
                        _gotoNext = 2682345i32;
                    };
                } else if (__value__ == (2682329i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2682345i32;
                } else if (__value__ == (2682345i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
