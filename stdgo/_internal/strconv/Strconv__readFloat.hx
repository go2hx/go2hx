package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _maxMantDigits_2631845:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2633283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2632127:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2632105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2631666:Bool = false;
        var _e_2633434:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2632175:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_2632085:Bool = false;
        var _expChar_2631890:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2632114:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2632068:Bool = false;
        var _base_2631825:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2631666 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2631722i32;
                    } else {
                        _gotoNext = 2631737i32;
                    };
                } else if (__value__ == (2631722i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631737i32;
                } else if (__value__ == (2631737i32)) {
                    _gotoNext = 2631737i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631747i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631772i32;
                    } else {
                        _gotoNext = 2631825i32;
                    };
                } else if (__value__ == (2631747i32)) {
                    _i++;
                    _gotoNext = 2631825i32;
                } else if (__value__ == (2631772i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2631825i32;
                } else if (__value__ == (2631825i32)) {
                    _base_2631825 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2631845 = (19 : stdgo.GoInt);
                    _expChar_2631890 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2631967i32;
                    } else {
                        _gotoNext = 2632068i32;
                    };
                } else if (__value__ == (2631967i32)) {
                    _base_2631825 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2631845 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2631890 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2632068i32;
                } else if (__value__ == (2632068i32)) {
                    _sawdot_2632068 = false;
                    _sawdigits_2632085 = false;
                    _nd_2632105 = (0 : stdgo.GoInt);
                    _ndMant_2632114 = (0 : stdgo.GoInt);
                    _dp_2632127 = (0 : stdgo.GoInt);
                    _gotoNext = 2632135i32;
                } else if (__value__ == (2632135i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632142i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2632164i32;
                    } else {
                        _gotoNext = 2632884i32;
                    };
                } else if (__value__ == (2632164i32)) {
                    _gotoNext = 2632168i32;
                } else if (__value__ == (2632168i32)) {
                    {
                        _c_2632175 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2632175 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2632195i32;
                            } else if (__value__ == (_c_2632175 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2632247i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2632175 : Bool) && (_c_2632175 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2632340i32;
                            } else if (__value__ == (((_base_2631825 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2632175) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2632175) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2632632i32;
                            } else {
                                _gotoNext = 2632874i32;
                            };
                        };
                    };
                } else if (__value__ == (2632195i32)) {
                    _underscores_2631666 = true;
                    _i++;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632247i32)) {
                    if (_sawdot_2632068) {
                        _gotoNext = 2632275i32;
                    } else {
                        _gotoNext = 2632300i32;
                    };
                } else if (__value__ == (2632275i32)) {
                    _loopBreak = true;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632300i32)) {
                    _sawdot_2632068 = true;
                    _dp_2632127 = _nd_2632105;
                    _i++;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632340i32)) {
                    _sawdigits_2632085 = true;
                    if (((_c_2632175 == (48 : stdgo.GoUInt8)) && (_nd_2632105 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2632413i32;
                    } else {
                        _gotoNext = 2632469i32;
                    };
                } else if (__value__ == (2632413i32)) {
                    _dp_2632127--;
                    _i++;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632469i32)) {
                    _nd_2632105++;
                    if ((_ndMant_2632114 < _maxMantDigits_2631845 : Bool)) {
                        _gotoNext = 2632503i32;
                    } else if (_c_2632175 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2632593i32;
                    } else {
                        _gotoNext = 2632620i32;
                    };
                } else if (__value__ == (2632503i32)) {
                    _mantissa = (_mantissa * (_base_2631825) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2632175 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2632114++;
                    _gotoNext = 2632620i32;
                } else if (__value__ == (2632593i32)) {
                    _trunc = true;
                    _gotoNext = 2632620i32;
                } else if (__value__ == (2632620i32)) {
                    _i++;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632632i32)) {
                    _sawdigits_2632085 = true;
                    _nd_2632105++;
                    if ((_ndMant_2632114 < _maxMantDigits_2631845 : Bool)) {
                        _gotoNext = 2632744i32;
                    } else {
                        _gotoNext = 2632832i32;
                    };
                } else if (__value__ == (2632744i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2632175) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2632114++;
                    _gotoNext = 2632859i32;
                } else if (__value__ == (2632832i32)) {
                    _gotoNext = 2632832i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2632859i32;
                } else if (__value__ == (2632859i32)) {
                    _i++;
                    _gotoNext = 2632142i32;
                } else if (__value__ == (2632874i32)) {
                    _gotoNext = 2632884i32;
                } else if (__value__ == (2632884i32)) {
                    if (!_sawdigits_2632085) {
                        _gotoNext = 2632898i32;
                    } else {
                        _gotoNext = 2632913i32;
                    };
                } else if (__value__ == (2632898i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2632913i32;
                } else if (__value__ == (2632913i32)) {
                    if (!_sawdot_2632068) {
                        _gotoNext = 2632924i32;
                    } else {
                        _gotoNext = 2632941i32;
                    };
                } else if (__value__ == (2632924i32)) {
                    _dp_2632127 = _nd_2632105;
                    _gotoNext = 2632941i32;
                } else if (__value__ == (2632941i32)) {
                    if (_base_2631825 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2632955i32;
                    } else {
                        _gotoNext = 2633200i32;
                    };
                } else if (__value__ == (2632955i32)) {
                    _dp_2632127 = (_dp_2632127 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2632114 = (_ndMant_2632114 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2633200i32;
                } else if (__value__ == (2633200i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2631890) : Bool)) {
                        _gotoNext = 2633240i32;
                    } else if (_base_2631825 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2633673i32;
                    } else {
                        _gotoNext = 2633714i32;
                    };
                } else if (__value__ == (2633240i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2633265i32;
                    } else {
                        _gotoNext = 2633283i32;
                    };
                } else if (__value__ == (2633265i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633283i32;
                } else if (__value__ == (2633283i32)) {
                    _esign_2633283 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2633311i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2633344i32;
                    } else {
                        _gotoNext = 2633373i32;
                    };
                } else if (__value__ == (2633311i32)) {
                    _i++;
                    _gotoNext = 2633373i32;
                } else if (__value__ == (2633344i32)) {
                    _i++;
                    _esign_2633283 = (-1 : stdgo.GoInt);
                    _gotoNext = 2633373i32;
                } else if (__value__ == (2633373i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2633416i32;
                    } else {
                        _gotoNext = 2633434i32;
                    };
                } else if (__value__ == (2633416i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633434i32;
                } else if (__value__ == (2633434i32)) {
                    _e_2633434 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2633443i32;
                } else if (__value__ == (2633443i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2633512i32;
                    } else {
                        _gotoNext = 2633635i32;
                    };
                } else if (__value__ == (2633508i32)) {
                    _i++;
                    _gotoNext = 2633443i32;
                } else if (__value__ == (2633512i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2633532i32;
                    } else {
                        _gotoNext = 2633578i32;
                    };
                } else if (__value__ == (2633532i32)) {
                    _underscores_2631666 = true;
                    _i++;
                    _gotoNext = 2633443i32;
                } else if (__value__ == (2633578i32)) {
                    if ((_e_2633434 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2633591i32;
                    } else {
                        _gotoNext = 2633508i32;
                    };
                } else if (__value__ == (2633591i32)) {
                    _e_2633434 = (((_e_2633434 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2633508i32;
                } else if (__value__ == (2633635i32)) {
                    _dp_2632127 = (_dp_2632127 + ((_e_2633434 * _esign_2633283 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2633714i32;
                } else if (__value__ == (2633673i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633714i32;
                } else if (__value__ == (2633714i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2633731i32;
                    } else {
                        _gotoNext = 2633758i32;
                    };
                } else if (__value__ == (2633731i32)) {
                    _exp = (_dp_2632127 - _ndMant_2632114 : stdgo.GoInt);
                    _gotoNext = 2633758i32;
                } else if (__value__ == (2633758i32)) {
                    if ((_underscores_2631666 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2633797i32;
                    } else {
                        _gotoNext = 2633813i32;
                    };
                } else if (__value__ == (2633797i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2633813i32;
                } else if (__value__ == (2633813i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
