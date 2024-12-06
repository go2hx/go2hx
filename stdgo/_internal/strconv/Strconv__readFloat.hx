package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2608984:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2608923:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2608699:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2608475:Bool = false;
        var _e_2610243:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2608914:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2608877:Bool = false;
        var _base_2608634:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_2610092:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2608936:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2608894:Bool = false;
        var _maxMantDigits_2608654:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2608475 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2608531i32;
                    } else {
                        _gotoNext = 2608546i32;
                    };
                } else if (__value__ == (2608531i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2608546i32;
                } else if (__value__ == (2608546i32)) {
                    _gotoNext = 2608546i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2608556i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2608581i32;
                    } else {
                        _gotoNext = 2608634i32;
                    };
                } else if (__value__ == (2608556i32)) {
                    _i++;
                    _gotoNext = 2608634i32;
                } else if (__value__ == (2608581i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2608634i32;
                } else if (__value__ == (2608634i32)) {
                    _base_2608634 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2608654 = (19 : stdgo.GoInt);
                    _expChar_2608699 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2608776i32;
                    } else {
                        _gotoNext = 2608877i32;
                    };
                } else if (__value__ == (2608776i32)) {
                    _base_2608634 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2608654 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2608699 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2608877i32;
                } else if (__value__ == (2608877i32)) {
                    _sawdot_2608877 = false;
                    _sawdigits_2608894 = false;
                    _nd_2608914 = (0 : stdgo.GoInt);
                    _ndMant_2608923 = (0 : stdgo.GoInt);
                    _dp_2608936 = (0 : stdgo.GoInt);
                    _gotoNext = 2608944i32;
                } else if (__value__ == (2608944i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2608951i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2608973i32;
                    } else {
                        _gotoNext = 2609693i32;
                    };
                } else if (__value__ == (2608973i32)) {
                    _gotoNext = 2608977i32;
                } else if (__value__ == (2608977i32)) {
                    {
                        _c_2608984 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2608984 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2609004i32;
                            } else if (__value__ == (_c_2608984 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2609056i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2608984 : Bool) && (_c_2608984 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2609149i32;
                            } else if (__value__ == (((_base_2608634 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2608984) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2608984) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2609441i32;
                            } else {
                                _gotoNext = 2609683i32;
                            };
                        };
                    };
                } else if (__value__ == (2609004i32)) {
                    _underscores_2608475 = true;
                    _i++;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2609056i32)) {
                    if (_sawdot_2608877) {
                        _gotoNext = 2609084i32;
                    } else {
                        _gotoNext = 2609109i32;
                    };
                } else if (__value__ == (2609084i32)) {
                    _loopBreak = true;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2609109i32)) {
                    _sawdot_2608877 = true;
                    _dp_2608936 = _nd_2608914;
                    _i++;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2609149i32)) {
                    _sawdigits_2608894 = true;
                    if (((_c_2608984 == (48 : stdgo.GoUInt8)) && (_nd_2608914 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2609222i32;
                    } else {
                        _gotoNext = 2609278i32;
                    };
                } else if (__value__ == (2609222i32)) {
                    _dp_2608936--;
                    _i++;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2609278i32)) {
                    _nd_2608914++;
                    if ((_ndMant_2608923 < _maxMantDigits_2608654 : Bool)) {
                        _gotoNext = 2609312i32;
                    } else if (_c_2608984 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2609402i32;
                    } else {
                        _gotoNext = 2609429i32;
                    };
                } else if (__value__ == (2609312i32)) {
                    _mantissa = (_mantissa * (_base_2608634) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2608984 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2608923++;
                    _gotoNext = 2609429i32;
                } else if (__value__ == (2609402i32)) {
                    _trunc = true;
                    _gotoNext = 2609429i32;
                } else if (__value__ == (2609429i32)) {
                    _i++;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2609441i32)) {
                    _sawdigits_2608894 = true;
                    _nd_2608914++;
                    if ((_ndMant_2608923 < _maxMantDigits_2608654 : Bool)) {
                        _gotoNext = 2609553i32;
                    } else {
                        _gotoNext = 2609641i32;
                    };
                } else if (__value__ == (2609553i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2608984) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2608923++;
                    _gotoNext = 2609668i32;
                } else if (__value__ == (2609641i32)) {
                    _gotoNext = 2609641i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2609668i32;
                } else if (__value__ == (2609668i32)) {
                    _i++;
                    _gotoNext = 2608951i32;
                } else if (__value__ == (2609683i32)) {
                    _gotoNext = 2609693i32;
                } else if (__value__ == (2609693i32)) {
                    if (!_sawdigits_2608894) {
                        _gotoNext = 2609707i32;
                    } else {
                        _gotoNext = 2609722i32;
                    };
                } else if (__value__ == (2609707i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2609722i32;
                } else if (__value__ == (2609722i32)) {
                    if (!_sawdot_2608877) {
                        _gotoNext = 2609733i32;
                    } else {
                        _gotoNext = 2609750i32;
                    };
                } else if (__value__ == (2609733i32)) {
                    _dp_2608936 = _nd_2608914;
                    _gotoNext = 2609750i32;
                } else if (__value__ == (2609750i32)) {
                    if (_base_2608634 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2609764i32;
                    } else {
                        _gotoNext = 2610009i32;
                    };
                } else if (__value__ == (2609764i32)) {
                    _dp_2608936 = (_dp_2608936 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2608923 = (_ndMant_2608923 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2610009i32;
                } else if (__value__ == (2610009i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2608699) : Bool)) {
                        _gotoNext = 2610049i32;
                    } else if (_base_2608634 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2610482i32;
                    } else {
                        _gotoNext = 2610523i32;
                    };
                } else if (__value__ == (2610049i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2610074i32;
                    } else {
                        _gotoNext = 2610092i32;
                    };
                } else if (__value__ == (2610074i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610092i32;
                } else if (__value__ == (2610092i32)) {
                    _esign_2610092 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2610120i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2610153i32;
                    } else {
                        _gotoNext = 2610182i32;
                    };
                } else if (__value__ == (2610120i32)) {
                    _i++;
                    _gotoNext = 2610182i32;
                } else if (__value__ == (2610153i32)) {
                    _i++;
                    _esign_2610092 = (-1 : stdgo.GoInt);
                    _gotoNext = 2610182i32;
                } else if (__value__ == (2610182i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2610225i32;
                    } else {
                        _gotoNext = 2610243i32;
                    };
                } else if (__value__ == (2610225i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610243i32;
                } else if (__value__ == (2610243i32)) {
                    _e_2610243 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2610252i32;
                } else if (__value__ == (2610252i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2610321i32;
                    } else {
                        _gotoNext = 2610444i32;
                    };
                } else if (__value__ == (2610317i32)) {
                    _i++;
                    _gotoNext = 2610252i32;
                } else if (__value__ == (2610321i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2610341i32;
                    } else {
                        _gotoNext = 2610387i32;
                    };
                } else if (__value__ == (2610341i32)) {
                    _underscores_2608475 = true;
                    _i++;
                    _gotoNext = 2610252i32;
                } else if (__value__ == (2610387i32)) {
                    if ((_e_2610243 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2610400i32;
                    } else {
                        _gotoNext = 2610317i32;
                    };
                } else if (__value__ == (2610400i32)) {
                    _e_2610243 = (((_e_2610243 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2610317i32;
                } else if (__value__ == (2610444i32)) {
                    _dp_2608936 = (_dp_2608936 + ((_e_2610243 * _esign_2610092 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2610523i32;
                } else if (__value__ == (2610482i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610523i32;
                } else if (__value__ == (2610523i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2610540i32;
                    } else {
                        _gotoNext = 2610567i32;
                    };
                } else if (__value__ == (2610540i32)) {
                    _exp = (_dp_2608936 - _ndMant_2608923 : stdgo.GoInt);
                    _gotoNext = 2610567i32;
                } else if (__value__ == (2610567i32)) {
                    if ((_underscores_2608475 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2610606i32;
                    } else {
                        _gotoNext = 2610622i32;
                    };
                } else if (__value__ == (2610606i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2610622i32;
                } else if (__value__ == (2610622i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
