package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _sawdigits_2748766:Bool = false;
        var _c_2748856:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2748347:Bool = false;
        var _maxMantDigits_2748526:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2748808:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2748795:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2748786:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2748749:Bool = false;
        var _expChar_2748571:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2748506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2750115:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2749964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2748347 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2748403i32;
                    } else {
                        _gotoNext = 2748418i32;
                    };
                } else if (__value__ == (2748403i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2748418i32;
                } else if (__value__ == (2748418i32)) {
                    _gotoNext = 2748418i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2748428i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2748453i32;
                    } else {
                        _gotoNext = 2748506i32;
                    };
                } else if (__value__ == (2748428i32)) {
                    _i++;
                    _gotoNext = 2748506i32;
                } else if (__value__ == (2748453i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2748506i32;
                } else if (__value__ == (2748506i32)) {
                    _base_2748506 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2748526 = (19 : stdgo.GoInt);
                    _expChar_2748571 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2748648i32;
                    } else {
                        _gotoNext = 2748749i32;
                    };
                } else if (__value__ == (2748648i32)) {
                    _base_2748506 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2748526 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2748571 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2748749i32;
                } else if (__value__ == (2748749i32)) {
                    _sawdot_2748749 = false;
                    _sawdigits_2748766 = false;
                    _nd_2748786 = (0 : stdgo.GoInt);
                    _ndMant_2748795 = (0 : stdgo.GoInt);
                    _dp_2748808 = (0 : stdgo.GoInt);
                    _gotoNext = 2748816i32;
                } else if (__value__ == (2748816i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2748823i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2748845i32;
                    } else {
                        _gotoNext = 2749565i32;
                    };
                } else if (__value__ == (2748845i32)) {
                    _gotoNext = 2748849i32;
                } else if (__value__ == (2748849i32)) {
                    {
                        _c_2748856 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2748856 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2748876i32;
                            } else if (__value__ == (_c_2748856 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2748928i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2748856 : Bool) && (_c_2748856 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2749021i32;
                            } else if (__value__ == (((_base_2748506 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2748856) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2748856) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2749313i32;
                            } else {
                                _gotoNext = 2749555i32;
                            };
                        };
                    };
                } else if (__value__ == (2748876i32)) {
                    _underscores_2748347 = true;
                    _i++;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2748928i32)) {
                    if (_sawdot_2748749) {
                        _gotoNext = 2748956i32;
                    } else {
                        _gotoNext = 2748981i32;
                    };
                } else if (__value__ == (2748956i32)) {
                    _loopBreak = true;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2748981i32)) {
                    _sawdot_2748749 = true;
                    _dp_2748808 = _nd_2748786;
                    _i++;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2749021i32)) {
                    _sawdigits_2748766 = true;
                    if (((_c_2748856 == (48 : stdgo.GoUInt8)) && (_nd_2748786 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2749094i32;
                    } else {
                        _gotoNext = 2749150i32;
                    };
                } else if (__value__ == (2749094i32)) {
                    _dp_2748808--;
                    _i++;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2749150i32)) {
                    _nd_2748786++;
                    if ((_ndMant_2748795 < _maxMantDigits_2748526 : Bool)) {
                        _gotoNext = 2749184i32;
                    } else if (_c_2748856 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2749274i32;
                    } else {
                        _gotoNext = 2749301i32;
                    };
                } else if (__value__ == (2749184i32)) {
                    _mantissa = (_mantissa * (_base_2748506) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2748856 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2748795++;
                    _gotoNext = 2749301i32;
                } else if (__value__ == (2749274i32)) {
                    _trunc = true;
                    _gotoNext = 2749301i32;
                } else if (__value__ == (2749301i32)) {
                    _i++;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2749313i32)) {
                    _sawdigits_2748766 = true;
                    _nd_2748786++;
                    if ((_ndMant_2748795 < _maxMantDigits_2748526 : Bool)) {
                        _gotoNext = 2749425i32;
                    } else {
                        _gotoNext = 2749513i32;
                    };
                } else if (__value__ == (2749425i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2748856) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2748795++;
                    _gotoNext = 2749540i32;
                } else if (__value__ == (2749513i32)) {
                    _gotoNext = 2749513i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2749540i32;
                } else if (__value__ == (2749540i32)) {
                    _i++;
                    _gotoNext = 2748823i32;
                } else if (__value__ == (2749555i32)) {
                    _gotoNext = 2749565i32;
                } else if (__value__ == (2749565i32)) {
                    if (!_sawdigits_2748766) {
                        _gotoNext = 2749579i32;
                    } else {
                        _gotoNext = 2749594i32;
                    };
                } else if (__value__ == (2749579i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2749594i32;
                } else if (__value__ == (2749594i32)) {
                    if (!_sawdot_2748749) {
                        _gotoNext = 2749605i32;
                    } else {
                        _gotoNext = 2749622i32;
                    };
                } else if (__value__ == (2749605i32)) {
                    _dp_2748808 = _nd_2748786;
                    _gotoNext = 2749622i32;
                } else if (__value__ == (2749622i32)) {
                    if (_base_2748506 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2749636i32;
                    } else {
                        _gotoNext = 2749881i32;
                    };
                } else if (__value__ == (2749636i32)) {
                    _dp_2748808 = (_dp_2748808 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2748795 = (_ndMant_2748795 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2749881i32;
                } else if (__value__ == (2749881i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2748571) : Bool)) {
                        _gotoNext = 2749921i32;
                    } else if (_base_2748506 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2750354i32;
                    } else {
                        _gotoNext = 2750395i32;
                    };
                } else if (__value__ == (2749921i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2749946i32;
                    } else {
                        _gotoNext = 2749964i32;
                    };
                } else if (__value__ == (2749946i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2749964i32;
                } else if (__value__ == (2749964i32)) {
                    _esign_2749964 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2749992i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2750025i32;
                    } else {
                        _gotoNext = 2750054i32;
                    };
                } else if (__value__ == (2749992i32)) {
                    _i++;
                    _gotoNext = 2750054i32;
                } else if (__value__ == (2750025i32)) {
                    _i++;
                    _esign_2749964 = (-1 : stdgo.GoInt);
                    _gotoNext = 2750054i32;
                } else if (__value__ == (2750054i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2750097i32;
                    } else {
                        _gotoNext = 2750115i32;
                    };
                } else if (__value__ == (2750097i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2750115i32;
                } else if (__value__ == (2750115i32)) {
                    _e_2750115 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2750124i32;
                } else if (__value__ == (2750124i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2750193i32;
                    } else {
                        _gotoNext = 2750316i32;
                    };
                } else if (__value__ == (2750189i32)) {
                    _i++;
                    _gotoNext = 2750124i32;
                } else if (__value__ == (2750193i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2750213i32;
                    } else {
                        _gotoNext = 2750259i32;
                    };
                } else if (__value__ == (2750213i32)) {
                    _underscores_2748347 = true;
                    _i++;
                    _gotoNext = 2750124i32;
                } else if (__value__ == (2750259i32)) {
                    if ((_e_2750115 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2750272i32;
                    } else {
                        _gotoNext = 2750189i32;
                    };
                } else if (__value__ == (2750272i32)) {
                    _e_2750115 = (((_e_2750115 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2750189i32;
                } else if (__value__ == (2750316i32)) {
                    _dp_2748808 = (_dp_2748808 + ((_e_2750115 * _esign_2749964 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2750395i32;
                } else if (__value__ == (2750354i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2750395i32;
                } else if (__value__ == (2750395i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2750412i32;
                    } else {
                        _gotoNext = 2750439i32;
                    };
                } else if (__value__ == (2750412i32)) {
                    _exp = (_dp_2748808 - _ndMant_2748795 : stdgo.GoInt);
                    _gotoNext = 2750439i32;
                } else if (__value__ == (2750439i32)) {
                    if ((_underscores_2748347 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2750478i32;
                    } else {
                        _gotoNext = 2750494i32;
                    };
                } else if (__value__ == (2750478i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2750494i32;
                } else if (__value__ == (2750494i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
