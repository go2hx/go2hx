package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2629202:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2628913:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2630522:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2629215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2629173:Bool = false;
        var _expChar_2628978:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2628933:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _underscores_2628754:Bool = false;
        var _esign_2630371:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2629263:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2629193:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2629156:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2628754 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2628810i32;
                    } else {
                        _gotoNext = 2628825i32;
                    };
                } else if (__value__ == (2628810i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2628825i32;
                } else if (__value__ == (2628825i32)) {
                    _gotoNext = 2628825i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2628835i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2628860i32;
                    } else {
                        _gotoNext = 2628913i32;
                    };
                } else if (__value__ == (2628835i32)) {
                    _i++;
                    _gotoNext = 2628913i32;
                } else if (__value__ == (2628860i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2628913i32;
                } else if (__value__ == (2628913i32)) {
                    _base_2628913 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2628933 = (19 : stdgo.GoInt);
                    _expChar_2628978 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2629055i32;
                    } else {
                        _gotoNext = 2629156i32;
                    };
                } else if (__value__ == (2629055i32)) {
                    _base_2628913 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2628933 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2628978 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2629156i32;
                } else if (__value__ == (2629156i32)) {
                    _sawdot_2629156 = false;
                    _sawdigits_2629173 = false;
                    _nd_2629193 = (0 : stdgo.GoInt);
                    _ndMant_2629202 = (0 : stdgo.GoInt);
                    _dp_2629215 = (0 : stdgo.GoInt);
                    _gotoNext = 2629223i32;
                } else if (__value__ == (2629223i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629230i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2629252i32;
                    } else {
                        _gotoNext = 2629972i32;
                    };
                } else if (__value__ == (2629252i32)) {
                    _gotoNext = 2629256i32;
                } else if (__value__ == (2629256i32)) {
                    {
                        _c_2629263 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2629263 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2629283i32;
                            } else if (__value__ == (_c_2629263 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2629335i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2629263 : Bool) && (_c_2629263 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2629428i32;
                            } else if (__value__ == (((_base_2628913 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2629263) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2629263) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2629720i32;
                            } else {
                                _gotoNext = 2629962i32;
                            };
                        };
                    };
                } else if (__value__ == (2629283i32)) {
                    _underscores_2628754 = true;
                    _i++;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629335i32)) {
                    if (_sawdot_2629156) {
                        _gotoNext = 2629363i32;
                    } else {
                        _gotoNext = 2629388i32;
                    };
                } else if (__value__ == (2629363i32)) {
                    _loopBreak = true;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629388i32)) {
                    _sawdot_2629156 = true;
                    _dp_2629215 = _nd_2629193;
                    _i++;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629428i32)) {
                    _sawdigits_2629173 = true;
                    if (((_c_2629263 == (48 : stdgo.GoUInt8)) && (_nd_2629193 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2629501i32;
                    } else {
                        _gotoNext = 2629557i32;
                    };
                } else if (__value__ == (2629501i32)) {
                    _dp_2629215--;
                    _i++;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629557i32)) {
                    _nd_2629193++;
                    if ((_ndMant_2629202 < _maxMantDigits_2628933 : Bool)) {
                        _gotoNext = 2629591i32;
                    } else if (_c_2629263 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2629681i32;
                    } else {
                        _gotoNext = 2629708i32;
                    };
                } else if (__value__ == (2629591i32)) {
                    _mantissa = (_mantissa * (_base_2628913) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2629263 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629202++;
                    _gotoNext = 2629708i32;
                } else if (__value__ == (2629681i32)) {
                    _trunc = true;
                    _gotoNext = 2629708i32;
                } else if (__value__ == (2629708i32)) {
                    _i++;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629720i32)) {
                    _sawdigits_2629173 = true;
                    _nd_2629193++;
                    if ((_ndMant_2629202 < _maxMantDigits_2628933 : Bool)) {
                        _gotoNext = 2629832i32;
                    } else {
                        _gotoNext = 2629920i32;
                    };
                } else if (__value__ == (2629832i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2629263) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2629202++;
                    _gotoNext = 2629947i32;
                } else if (__value__ == (2629920i32)) {
                    _gotoNext = 2629920i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2629947i32;
                } else if (__value__ == (2629947i32)) {
                    _i++;
                    _gotoNext = 2629230i32;
                } else if (__value__ == (2629962i32)) {
                    _gotoNext = 2629972i32;
                } else if (__value__ == (2629972i32)) {
                    if (!_sawdigits_2629173) {
                        _gotoNext = 2629986i32;
                    } else {
                        _gotoNext = 2630001i32;
                    };
                } else if (__value__ == (2629986i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630001i32;
                } else if (__value__ == (2630001i32)) {
                    if (!_sawdot_2629156) {
                        _gotoNext = 2630012i32;
                    } else {
                        _gotoNext = 2630029i32;
                    };
                } else if (__value__ == (2630012i32)) {
                    _dp_2629215 = _nd_2629193;
                    _gotoNext = 2630029i32;
                } else if (__value__ == (2630029i32)) {
                    if (_base_2628913 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630043i32;
                    } else {
                        _gotoNext = 2630288i32;
                    };
                } else if (__value__ == (2630043i32)) {
                    _dp_2629215 = (_dp_2629215 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2629202 = (_ndMant_2629202 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2630288i32;
                } else if (__value__ == (2630288i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2628978) : Bool)) {
                        _gotoNext = 2630328i32;
                    } else if (_base_2628913 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630761i32;
                    } else {
                        _gotoNext = 2630802i32;
                    };
                } else if (__value__ == (2630328i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2630353i32;
                    } else {
                        _gotoNext = 2630371i32;
                    };
                } else if (__value__ == (2630353i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630371i32;
                } else if (__value__ == (2630371i32)) {
                    _esign_2630371 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2630399i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2630432i32;
                    } else {
                        _gotoNext = 2630461i32;
                    };
                } else if (__value__ == (2630399i32)) {
                    _i++;
                    _gotoNext = 2630461i32;
                } else if (__value__ == (2630432i32)) {
                    _i++;
                    _esign_2630371 = (-1 : stdgo.GoInt);
                    _gotoNext = 2630461i32;
                } else if (__value__ == (2630461i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2630504i32;
                    } else {
                        _gotoNext = 2630522i32;
                    };
                } else if (__value__ == (2630504i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630522i32;
                } else if (__value__ == (2630522i32)) {
                    _e_2630522 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2630531i32;
                } else if (__value__ == (2630531i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2630600i32;
                    } else {
                        _gotoNext = 2630723i32;
                    };
                } else if (__value__ == (2630596i32)) {
                    _i++;
                    _gotoNext = 2630531i32;
                } else if (__value__ == (2630600i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2630620i32;
                    } else {
                        _gotoNext = 2630666i32;
                    };
                } else if (__value__ == (2630620i32)) {
                    _underscores_2628754 = true;
                    _i++;
                    _gotoNext = 2630531i32;
                } else if (__value__ == (2630666i32)) {
                    if ((_e_2630522 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2630679i32;
                    } else {
                        _gotoNext = 2630596i32;
                    };
                } else if (__value__ == (2630679i32)) {
                    _e_2630522 = (((_e_2630522 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2630596i32;
                } else if (__value__ == (2630723i32)) {
                    _dp_2629215 = (_dp_2629215 + ((_e_2630522 * _esign_2630371 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2630802i32;
                } else if (__value__ == (2630761i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630802i32;
                } else if (__value__ == (2630802i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630819i32;
                    } else {
                        _gotoNext = 2630846i32;
                    };
                } else if (__value__ == (2630819i32)) {
                    _exp = (_dp_2629215 - _ndMant_2629202 : stdgo.GoInt);
                    _gotoNext = 2630846i32;
                } else if (__value__ == (2630846i32)) {
                    if ((_underscores_2628754 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2630885i32;
                    } else {
                        _gotoNext = 2630901i32;
                    };
                } else if (__value__ == (2630885i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630901i32;
                } else if (__value__ == (2630901i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
