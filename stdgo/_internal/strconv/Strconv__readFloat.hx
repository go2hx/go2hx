package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2648443:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2647287:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2647005:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2646985:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2647335:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _e_2648594:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _ndMant_2647274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2647245:Bool = false;
        var _underscores_2646826:Bool = false;
        var _nd_2647265:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2647228:Bool = false;
        var _expChar_2647050:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2646826 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2646882i32;
                    } else {
                        _gotoNext = 2646897i32;
                    };
                } else if (__value__ == (2646882i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2646897i32;
                } else if (__value__ == (2646897i32)) {
                    _gotoNext = 2646897i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2646907i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2646932i32;
                    } else {
                        _gotoNext = 2646985i32;
                    };
                } else if (__value__ == (2646907i32)) {
                    _i++;
                    _gotoNext = 2646985i32;
                } else if (__value__ == (2646932i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2646985i32;
                } else if (__value__ == (2646985i32)) {
                    _base_2646985 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2647005 = (19 : stdgo.GoInt);
                    _expChar_2647050 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2647127i32;
                    } else {
                        _gotoNext = 2647228i32;
                    };
                } else if (__value__ == (2647127i32)) {
                    _base_2646985 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2647005 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2647050 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2647228i32;
                } else if (__value__ == (2647228i32)) {
                    _sawdot_2647228 = false;
                    _sawdigits_2647245 = false;
                    _nd_2647265 = (0 : stdgo.GoInt);
                    _ndMant_2647274 = (0 : stdgo.GoInt);
                    _dp_2647287 = (0 : stdgo.GoInt);
                    _gotoNext = 2647295i32;
                } else if (__value__ == (2647295i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2647302i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2647324i32;
                    } else {
                        _gotoNext = 2648044i32;
                    };
                } else if (__value__ == (2647324i32)) {
                    _gotoNext = 2647328i32;
                } else if (__value__ == (2647328i32)) {
                    {
                        _c_2647335 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2647335 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2647355i32;
                            } else if (__value__ == (_c_2647335 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2647407i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2647335 : Bool) && (_c_2647335 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647500i32;
                            } else if (__value__ == (((_base_2646985 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2647335) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2647335) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2647792i32;
                            } else {
                                _gotoNext = 2648034i32;
                            };
                        };
                    };
                } else if (__value__ == (2647355i32)) {
                    _underscores_2646826 = true;
                    _i++;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2647407i32)) {
                    if (_sawdot_2647228) {
                        _gotoNext = 2647435i32;
                    } else {
                        _gotoNext = 2647460i32;
                    };
                } else if (__value__ == (2647435i32)) {
                    _loopBreak = true;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2647460i32)) {
                    _sawdot_2647228 = true;
                    _dp_2647287 = _nd_2647265;
                    _i++;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2647500i32)) {
                    _sawdigits_2647245 = true;
                    if (((_c_2647335 == (48 : stdgo.GoUInt8)) && (_nd_2647265 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2647573i32;
                    } else {
                        _gotoNext = 2647629i32;
                    };
                } else if (__value__ == (2647573i32)) {
                    _dp_2647287--;
                    _i++;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2647629i32)) {
                    _nd_2647265++;
                    if ((_ndMant_2647274 < _maxMantDigits_2647005 : Bool)) {
                        _gotoNext = 2647663i32;
                    } else if (_c_2647335 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2647753i32;
                    } else {
                        _gotoNext = 2647780i32;
                    };
                } else if (__value__ == (2647663i32)) {
                    _mantissa = (_mantissa * (_base_2646985) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2647335 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2647274++;
                    _gotoNext = 2647780i32;
                } else if (__value__ == (2647753i32)) {
                    _trunc = true;
                    _gotoNext = 2647780i32;
                } else if (__value__ == (2647780i32)) {
                    _i++;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2647792i32)) {
                    _sawdigits_2647245 = true;
                    _nd_2647265++;
                    if ((_ndMant_2647274 < _maxMantDigits_2647005 : Bool)) {
                        _gotoNext = 2647904i32;
                    } else {
                        _gotoNext = 2647992i32;
                    };
                } else if (__value__ == (2647904i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2647335) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2647274++;
                    _gotoNext = 2648019i32;
                } else if (__value__ == (2647992i32)) {
                    _gotoNext = 2647992i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2648019i32;
                } else if (__value__ == (2648019i32)) {
                    _i++;
                    _gotoNext = 2647302i32;
                } else if (__value__ == (2648034i32)) {
                    _gotoNext = 2648044i32;
                } else if (__value__ == (2648044i32)) {
                    if (!_sawdigits_2647245) {
                        _gotoNext = 2648058i32;
                    } else {
                        _gotoNext = 2648073i32;
                    };
                } else if (__value__ == (2648058i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648073i32;
                } else if (__value__ == (2648073i32)) {
                    if (!_sawdot_2647228) {
                        _gotoNext = 2648084i32;
                    } else {
                        _gotoNext = 2648101i32;
                    };
                } else if (__value__ == (2648084i32)) {
                    _dp_2647287 = _nd_2647265;
                    _gotoNext = 2648101i32;
                } else if (__value__ == (2648101i32)) {
                    if (_base_2646985 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648115i32;
                    } else {
                        _gotoNext = 2648360i32;
                    };
                } else if (__value__ == (2648115i32)) {
                    _dp_2647287 = (_dp_2647287 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2647274 = (_ndMant_2647274 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2648360i32;
                } else if (__value__ == (2648360i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2647050) : Bool)) {
                        _gotoNext = 2648400i32;
                    } else if (_base_2646985 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648833i32;
                    } else {
                        _gotoNext = 2648874i32;
                    };
                } else if (__value__ == (2648400i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2648425i32;
                    } else {
                        _gotoNext = 2648443i32;
                    };
                } else if (__value__ == (2648425i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648443i32;
                } else if (__value__ == (2648443i32)) {
                    _esign_2648443 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2648471i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2648504i32;
                    } else {
                        _gotoNext = 2648533i32;
                    };
                } else if (__value__ == (2648471i32)) {
                    _i++;
                    _gotoNext = 2648533i32;
                } else if (__value__ == (2648504i32)) {
                    _i++;
                    _esign_2648443 = (-1 : stdgo.GoInt);
                    _gotoNext = 2648533i32;
                } else if (__value__ == (2648533i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2648576i32;
                    } else {
                        _gotoNext = 2648594i32;
                    };
                } else if (__value__ == (2648576i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648594i32;
                } else if (__value__ == (2648594i32)) {
                    _e_2648594 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2648603i32;
                } else if (__value__ == (2648603i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2648672i32;
                    } else {
                        _gotoNext = 2648795i32;
                    };
                } else if (__value__ == (2648668i32)) {
                    _i++;
                    _gotoNext = 2648603i32;
                } else if (__value__ == (2648672i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2648692i32;
                    } else {
                        _gotoNext = 2648738i32;
                    };
                } else if (__value__ == (2648692i32)) {
                    _underscores_2646826 = true;
                    _i++;
                    _gotoNext = 2648603i32;
                } else if (__value__ == (2648738i32)) {
                    if ((_e_2648594 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2648751i32;
                    } else {
                        _gotoNext = 2648668i32;
                    };
                } else if (__value__ == (2648751i32)) {
                    _e_2648594 = (((_e_2648594 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2648668i32;
                } else if (__value__ == (2648795i32)) {
                    _dp_2647287 = (_dp_2647287 + ((_e_2648594 * _esign_2648443 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2648874i32;
                } else if (__value__ == (2648833i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648874i32;
                } else if (__value__ == (2648874i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2648891i32;
                    } else {
                        _gotoNext = 2648918i32;
                    };
                } else if (__value__ == (2648891i32)) {
                    _exp = (_dp_2647287 - _ndMant_2647274 : stdgo.GoInt);
                    _gotoNext = 2648918i32;
                } else if (__value__ == (2648918i32)) {
                    if ((_underscores_2646826 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2648957i32;
                    } else {
                        _gotoNext = 2648973i32;
                    };
                } else if (__value__ == (2648957i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648973i32;
                } else if (__value__ == (2648973i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
