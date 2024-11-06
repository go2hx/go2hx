package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_2859679:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2859455:Bool = false;
        var _ndMant_2859903:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2859857:Bool = false;
        var _base_2859614:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2861072:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2859964:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2859916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2859874:Bool = false;
        var _e_2861223:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2859894:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2859634:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2859455 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2859511i32;
                    } else {
                        _gotoNext = 2859526i32;
                    };
                } else if (__value__ == (2859511i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2859526i32;
                } else if (__value__ == (2859526i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2859526i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2859536i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2859561i32;
                    } else {
                        _gotoNext = 2859614i32;
                    };
                } else if (__value__ == (2859536i32)) {
                    _i++;
                    _gotoNext = 2859614i32;
                } else if (__value__ == (2859561i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2859614i32;
                } else if (__value__ == (2859614i32)) {
                    _base_2859614 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2859634 = (19 : stdgo.GoInt);
                    _expChar_2859679 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2859756i32;
                    } else {
                        _gotoNext = 2859857i32;
                    };
                } else if (__value__ == (2859756i32)) {
                    _base_2859614 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2859634 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2859679 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2859857i32;
                } else if (__value__ == (2859857i32)) {
                    _sawdot_2859857 = false;
                    _sawdigits_2859874 = false;
                    _nd_2859894 = (0 : stdgo.GoInt);
                    _ndMant_2859903 = (0 : stdgo.GoInt);
                    _dp_2859916 = (0 : stdgo.GoInt);
                    _gotoNext = 2859924i32;
                } else if (__value__ == (2859924i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2859931i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2859953i32;
                    } else {
                        _gotoNext = 2860673i32;
                    };
                } else if (__value__ == (2859953i32)) {
                    _c_2859964 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2859957i32;
                } else if (__value__ == (2859957i32)) {
                    {
                        _c_2859964 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2859964 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2859984i32;
                            } else if (__value__ == (_c_2859964 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2860036i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2859964 : Bool) && (_c_2859964 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2860129i32;
                            } else if (__value__ == (((_base_2859614 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2859964) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2859964) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2860421i32;
                            } else {
                                _gotoNext = 2860663i32;
                            };
                        };
                    };
                } else if (__value__ == (2859984i32)) {
                    _underscores_2859455 = true;
                    _i++;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2860036i32)) {
                    if (_sawdot_2859857) {
                        _gotoNext = 2860064i32;
                    } else {
                        _gotoNext = 2860089i32;
                    };
                } else if (__value__ == (2860064i32)) {
                    _loopBreak = true;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2860089i32)) {
                    _sawdot_2859857 = true;
                    _dp_2859916 = _nd_2859894;
                    _i++;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2860129i32)) {
                    _sawdigits_2859874 = true;
                    if (((_c_2859964 == (48 : stdgo.GoUInt8)) && (_nd_2859894 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2860202i32;
                    } else {
                        _gotoNext = 2860258i32;
                    };
                } else if (__value__ == (2860202i32)) {
                    _dp_2859916--;
                    _i++;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2860258i32)) {
                    _nd_2859894++;
                    if ((_ndMant_2859903 < _maxMantDigits_2859634 : Bool)) {
                        _gotoNext = 2860292i32;
                    } else if (_c_2859964 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2860382i32;
                    } else {
                        _gotoNext = 2860409i32;
                    };
                } else if (__value__ == (2860292i32)) {
                    _mantissa = (_mantissa * (_base_2859614) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2859964 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2859903++;
                    _gotoNext = 2860409i32;
                } else if (__value__ == (2860382i32)) {
                    _trunc = true;
                    _gotoNext = 2860409i32;
                } else if (__value__ == (2860409i32)) {
                    _i++;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2860421i32)) {
                    _sawdigits_2859874 = true;
                    _nd_2859894++;
                    if ((_ndMant_2859903 < _maxMantDigits_2859634 : Bool)) {
                        _gotoNext = 2860533i32;
                    } else {
                        _gotoNext = 2860621i32;
                    };
                } else if (__value__ == (2860533i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2859964) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2859903++;
                    _gotoNext = 2860648i32;
                } else if (__value__ == (2860621i32)) {
                    _trunc = true;
                    _gotoNext = 2860648i32;
                } else if (__value__ == (2860648i32)) {
                    _i++;
                    _gotoNext = 2859931i32;
                } else if (__value__ == (2860663i32)) {
                    _gotoNext = 2860673i32;
                } else if (__value__ == (2860673i32)) {
                    if (!_sawdigits_2859874) {
                        _gotoNext = 2860687i32;
                    } else {
                        _gotoNext = 2860702i32;
                    };
                } else if (__value__ == (2860687i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2860702i32;
                } else if (__value__ == (2860702i32)) {
                    if (!_sawdot_2859857) {
                        _gotoNext = 2860713i32;
                    } else {
                        _gotoNext = 2860730i32;
                    };
                } else if (__value__ == (2860713i32)) {
                    _dp_2859916 = _nd_2859894;
                    _gotoNext = 2860730i32;
                } else if (__value__ == (2860730i32)) {
                    if (_base_2859614 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2860744i32;
                    } else {
                        _gotoNext = 2860989i32;
                    };
                } else if (__value__ == (2860744i32)) {
                    _dp_2859916 = (_dp_2859916 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2859903 = (_ndMant_2859903 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2860989i32;
                } else if (__value__ == (2860989i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2859679) : Bool)) {
                        _gotoNext = 2861029i32;
                    } else if (_base_2859614 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2861462i32;
                    } else {
                        _gotoNext = 2861503i32;
                    };
                } else if (__value__ == (2861029i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2861054i32;
                    } else {
                        _gotoNext = 2861072i32;
                    };
                } else if (__value__ == (2861054i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2861072i32;
                } else if (__value__ == (2861072i32)) {
                    _esign_2861072 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2861100i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2861133i32;
                    } else {
                        _gotoNext = 2861162i32;
                    };
                } else if (__value__ == (2861100i32)) {
                    _i++;
                    _gotoNext = 2861162i32;
                } else if (__value__ == (2861133i32)) {
                    _i++;
                    _esign_2861072 = (-1 : stdgo.GoInt);
                    _gotoNext = 2861162i32;
                } else if (__value__ == (2861162i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2861205i32;
                    } else {
                        _gotoNext = 2861223i32;
                    };
                } else if (__value__ == (2861205i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2861223i32;
                } else if (__value__ == (2861223i32)) {
                    _e_2861223 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2861232i32;
                } else if (__value__ == (2861232i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2861301i32;
                    } else {
                        _gotoNext = 2861424i32;
                    };
                } else if (__value__ == (2861297i32)) {
                    _i++;
                    _gotoNext = 2861232i32;
                } else if (__value__ == (2861301i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2861321i32;
                    } else {
                        _gotoNext = 2861367i32;
                    };
                } else if (__value__ == (2861321i32)) {
                    _underscores_2859455 = true;
                    _i++;
                    _gotoNext = 2861232i32;
                } else if (__value__ == (2861367i32)) {
                    if ((_e_2861223 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2861380i32;
                    } else {
                        _gotoNext = 2861297i32;
                    };
                } else if (__value__ == (2861380i32)) {
                    _e_2861223 = (((_e_2861223 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2861297i32;
                } else if (__value__ == (2861424i32)) {
                    _dp_2859916 = (_dp_2859916 + ((_e_2861223 * _esign_2861072 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2861503i32;
                } else if (__value__ == (2861462i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2861503i32;
                } else if (__value__ == (2861503i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2861520i32;
                    } else {
                        _gotoNext = 2861547i32;
                    };
                } else if (__value__ == (2861520i32)) {
                    _exp = (_dp_2859916 - _ndMant_2859903 : stdgo.GoInt);
                    _gotoNext = 2861547i32;
                } else if (__value__ == (2861547i32)) {
                    if ((_underscores_2859455 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2861586i32;
                    } else {
                        _gotoNext = 2861602i32;
                    };
                } else if (__value__ == (2861586i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2861602i32;
                } else if (__value__ == (2861602i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
