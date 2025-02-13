package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _underscores_2678524:Bool = false;
        var _ndMant_2678972:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2678926:Bool = false;
        var _expChar_2678748:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _base_2678683:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2680292:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2680141:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2679033:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2678985:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2678963:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2678943:Bool = false;
        var _maxMantDigits_2678703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2678524 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2678580i32;
                    } else {
                        _gotoNext = 2678595i32;
                    };
                } else if (__value__ == (2678580i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2678595i32;
                } else if (__value__ == (2678595i32)) {
                    _gotoNext = 2678595i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2678605i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2678630i32;
                    } else {
                        _gotoNext = 2678683i32;
                    };
                } else if (__value__ == (2678605i32)) {
                    _i++;
                    _gotoNext = 2678683i32;
                } else if (__value__ == (2678630i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2678683i32;
                } else if (__value__ == (2678683i32)) {
                    _base_2678683 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2678703 = (19 : stdgo.GoInt);
                    _expChar_2678748 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2678825i32;
                    } else {
                        _gotoNext = 2678926i32;
                    };
                } else if (__value__ == (2678825i32)) {
                    _base_2678683 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2678703 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2678748 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2678926i32;
                } else if (__value__ == (2678926i32)) {
                    _sawdot_2678926 = false;
                    _sawdigits_2678943 = false;
                    _nd_2678963 = (0 : stdgo.GoInt);
                    _ndMant_2678972 = (0 : stdgo.GoInt);
                    _dp_2678985 = (0 : stdgo.GoInt);
                    _gotoNext = 2678993i32;
                } else if (__value__ == (2678993i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679000i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2679022i32;
                    } else {
                        _gotoNext = 2679742i32;
                    };
                } else if (__value__ == (2679022i32)) {
                    _gotoNext = 2679026i32;
                } else if (__value__ == (2679026i32)) {
                    {
                        _c_2679033 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2679033 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2679053i32;
                            } else if (__value__ == (_c_2679033 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2679105i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2679033 : Bool) && (_c_2679033 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2679198i32;
                            } else if (__value__ == (((_base_2678683 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2679033) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2679033) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2679490i32;
                            } else {
                                _gotoNext = 2679732i32;
                            };
                        };
                    };
                } else if (__value__ == (2679053i32)) {
                    _underscores_2678524 = true;
                    _i++;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679105i32)) {
                    if (_sawdot_2678926) {
                        _gotoNext = 2679133i32;
                    } else {
                        _gotoNext = 2679158i32;
                    };
                } else if (__value__ == (2679133i32)) {
                    _loopBreak = true;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679158i32)) {
                    _sawdot_2678926 = true;
                    _dp_2678985 = _nd_2678963;
                    _i++;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679198i32)) {
                    _sawdigits_2678943 = true;
                    if (((_c_2679033 == (48 : stdgo.GoUInt8)) && (_nd_2678963 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2679271i32;
                    } else {
                        _gotoNext = 2679327i32;
                    };
                } else if (__value__ == (2679271i32)) {
                    _dp_2678985--;
                    _i++;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679327i32)) {
                    _nd_2678963++;
                    if ((_ndMant_2678972 < _maxMantDigits_2678703 : Bool)) {
                        _gotoNext = 2679361i32;
                    } else if (_c_2679033 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2679451i32;
                    } else {
                        _gotoNext = 2679478i32;
                    };
                } else if (__value__ == (2679361i32)) {
                    _mantissa = (_mantissa * (_base_2678683) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2679033 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2678972++;
                    _gotoNext = 2679478i32;
                } else if (__value__ == (2679451i32)) {
                    _trunc = true;
                    _gotoNext = 2679478i32;
                } else if (__value__ == (2679478i32)) {
                    _i++;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679490i32)) {
                    _sawdigits_2678943 = true;
                    _nd_2678963++;
                    if ((_ndMant_2678972 < _maxMantDigits_2678703 : Bool)) {
                        _gotoNext = 2679602i32;
                    } else {
                        _gotoNext = 2679690i32;
                    };
                } else if (__value__ == (2679602i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2679033) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2678972++;
                    _gotoNext = 2679717i32;
                } else if (__value__ == (2679690i32)) {
                    _gotoNext = 2679690i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2679717i32;
                } else if (__value__ == (2679717i32)) {
                    _i++;
                    _gotoNext = 2679000i32;
                } else if (__value__ == (2679732i32)) {
                    _gotoNext = 2679742i32;
                } else if (__value__ == (2679742i32)) {
                    if (!_sawdigits_2678943) {
                        _gotoNext = 2679756i32;
                    } else {
                        _gotoNext = 2679771i32;
                    };
                } else if (__value__ == (2679756i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2679771i32;
                } else if (__value__ == (2679771i32)) {
                    if (!_sawdot_2678926) {
                        _gotoNext = 2679782i32;
                    } else {
                        _gotoNext = 2679799i32;
                    };
                } else if (__value__ == (2679782i32)) {
                    _dp_2678985 = _nd_2678963;
                    _gotoNext = 2679799i32;
                } else if (__value__ == (2679799i32)) {
                    if (_base_2678683 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2679813i32;
                    } else {
                        _gotoNext = 2680058i32;
                    };
                } else if (__value__ == (2679813i32)) {
                    _dp_2678985 = (_dp_2678985 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2678972 = (_ndMant_2678972 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2680058i32;
                } else if (__value__ == (2680058i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2678748) : Bool)) {
                        _gotoNext = 2680098i32;
                    } else if (_base_2678683 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2680531i32;
                    } else {
                        _gotoNext = 2680572i32;
                    };
                } else if (__value__ == (2680098i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2680123i32;
                    } else {
                        _gotoNext = 2680141i32;
                    };
                } else if (__value__ == (2680123i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680141i32;
                } else if (__value__ == (2680141i32)) {
                    _esign_2680141 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2680169i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2680202i32;
                    } else {
                        _gotoNext = 2680231i32;
                    };
                } else if (__value__ == (2680169i32)) {
                    _i++;
                    _gotoNext = 2680231i32;
                } else if (__value__ == (2680202i32)) {
                    _i++;
                    _esign_2680141 = (-1 : stdgo.GoInt);
                    _gotoNext = 2680231i32;
                } else if (__value__ == (2680231i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2680274i32;
                    } else {
                        _gotoNext = 2680292i32;
                    };
                } else if (__value__ == (2680274i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680292i32;
                } else if (__value__ == (2680292i32)) {
                    _e_2680292 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2680301i32;
                } else if (__value__ == (2680301i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2680370i32;
                    } else {
                        _gotoNext = 2680493i32;
                    };
                } else if (__value__ == (2680366i32)) {
                    _i++;
                    _gotoNext = 2680301i32;
                } else if (__value__ == (2680370i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2680390i32;
                    } else {
                        _gotoNext = 2680436i32;
                    };
                } else if (__value__ == (2680390i32)) {
                    _underscores_2678524 = true;
                    _i++;
                    _gotoNext = 2680301i32;
                } else if (__value__ == (2680436i32)) {
                    if ((_e_2680292 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2680449i32;
                    } else {
                        _gotoNext = 2680366i32;
                    };
                } else if (__value__ == (2680449i32)) {
                    _e_2680292 = (((_e_2680292 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2680366i32;
                } else if (__value__ == (2680493i32)) {
                    _dp_2678985 = (_dp_2678985 + ((_e_2680292 * _esign_2680141 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2680572i32;
                } else if (__value__ == (2680531i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680572i32;
                } else if (__value__ == (2680572i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2680589i32;
                    } else {
                        _gotoNext = 2680616i32;
                    };
                } else if (__value__ == (2680589i32)) {
                    _exp = (_dp_2678985 - _ndMant_2678972 : stdgo.GoInt);
                    _gotoNext = 2680616i32;
                } else if (__value__ == (2680616i32)) {
                    if ((_underscores_2678524 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2680655i32;
                    } else {
                        _gotoNext = 2680671i32;
                    };
                } else if (__value__ == (2680655i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2680671i32;
                } else if (__value__ == (2680671i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
