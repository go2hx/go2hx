package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _dp_2737507:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2737465:Bool = false;
        var _sawdot_2737448:Bool = false;
        var _expChar_2737270:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2737046:Bool = false;
        var _e_2738814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2738663:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2737555:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2737225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2737205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _loopBreak = false;
        var _ndMant_2737494:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2737485:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2737046 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2737102i32;
                    } else {
                        _gotoNext = 2737117i32;
                    };
                } else if (__value__ == (2737102i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2737117i32;
                } else if (__value__ == (2737117i32)) {
                    _gotoNext = 2737117i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2737127i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2737152i32;
                    } else {
                        _gotoNext = 2737205i32;
                    };
                } else if (__value__ == (2737127i32)) {
                    _i++;
                    _gotoNext = 2737205i32;
                } else if (__value__ == (2737152i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2737205i32;
                } else if (__value__ == (2737205i32)) {
                    _base_2737205 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2737225 = (19 : stdgo.GoInt);
                    _expChar_2737270 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2737347i32;
                    } else {
                        _gotoNext = 2737448i32;
                    };
                } else if (__value__ == (2737347i32)) {
                    _base_2737205 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2737225 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2737270 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2737448i32;
                } else if (__value__ == (2737448i32)) {
                    _sawdot_2737448 = false;
                    _sawdigits_2737465 = false;
                    _nd_2737485 = (0 : stdgo.GoInt);
                    _ndMant_2737494 = (0 : stdgo.GoInt);
                    _dp_2737507 = (0 : stdgo.GoInt);
                    _gotoNext = 2737515i32;
                } else if (__value__ == (2737515i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2737522i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2737544i32;
                    } else {
                        _gotoNext = 2738264i32;
                    };
                } else if (__value__ == (2737544i32)) {
                    _gotoNext = 2737548i32;
                } else if (__value__ == (2737548i32)) {
                    {
                        _c_2737555 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2737555 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2737575i32;
                            } else if (__value__ == (_c_2737555 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2737627i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2737555 : Bool) && (_c_2737555 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2737720i32;
                            } else if (__value__ == (((_base_2737205 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2737555) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2737555) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2738012i32;
                            } else {
                                _gotoNext = 2738254i32;
                            };
                        };
                    };
                } else if (__value__ == (2737575i32)) {
                    _underscores_2737046 = true;
                    _i++;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2737627i32)) {
                    if (_sawdot_2737448) {
                        _gotoNext = 2737655i32;
                    } else {
                        _gotoNext = 2737680i32;
                    };
                } else if (__value__ == (2737655i32)) {
                    _loopBreak = true;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2737680i32)) {
                    _sawdot_2737448 = true;
                    _dp_2737507 = _nd_2737485;
                    _i++;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2737720i32)) {
                    _sawdigits_2737465 = true;
                    if (((_c_2737555 == (48 : stdgo.GoUInt8)) && (_nd_2737485 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2737793i32;
                    } else {
                        _gotoNext = 2737849i32;
                    };
                } else if (__value__ == (2737793i32)) {
                    _dp_2737507--;
                    _i++;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2737849i32)) {
                    _nd_2737485++;
                    if ((_ndMant_2737494 < _maxMantDigits_2737225 : Bool)) {
                        _gotoNext = 2737883i32;
                    } else if (_c_2737555 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2737973i32;
                    } else {
                        _gotoNext = 2738000i32;
                    };
                } else if (__value__ == (2737883i32)) {
                    _mantissa = (_mantissa * (_base_2737205) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2737555 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2737494++;
                    _gotoNext = 2738000i32;
                } else if (__value__ == (2737973i32)) {
                    _trunc = true;
                    _gotoNext = 2738000i32;
                } else if (__value__ == (2738000i32)) {
                    _i++;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2738012i32)) {
                    _sawdigits_2737465 = true;
                    _nd_2737485++;
                    if ((_ndMant_2737494 < _maxMantDigits_2737225 : Bool)) {
                        _gotoNext = 2738124i32;
                    } else {
                        _gotoNext = 2738212i32;
                    };
                } else if (__value__ == (2738124i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2737555) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2737494++;
                    _gotoNext = 2738239i32;
                } else if (__value__ == (2738212i32)) {
                    _gotoNext = 2738212i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2738239i32;
                } else if (__value__ == (2738239i32)) {
                    _i++;
                    _gotoNext = 2737522i32;
                } else if (__value__ == (2738254i32)) {
                    _gotoNext = 2738264i32;
                } else if (__value__ == (2738264i32)) {
                    if (!_sawdigits_2737465) {
                        _gotoNext = 2738278i32;
                    } else {
                        _gotoNext = 2738293i32;
                    };
                } else if (__value__ == (2738278i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738293i32;
                } else if (__value__ == (2738293i32)) {
                    if (!_sawdot_2737448) {
                        _gotoNext = 2738304i32;
                    } else {
                        _gotoNext = 2738321i32;
                    };
                } else if (__value__ == (2738304i32)) {
                    _dp_2737507 = _nd_2737485;
                    _gotoNext = 2738321i32;
                } else if (__value__ == (2738321i32)) {
                    if (_base_2737205 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2738335i32;
                    } else {
                        _gotoNext = 2738580i32;
                    };
                } else if (__value__ == (2738335i32)) {
                    _dp_2737507 = (_dp_2737507 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2737494 = (_ndMant_2737494 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2738580i32;
                } else if (__value__ == (2738580i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2737270) : Bool)) {
                        _gotoNext = 2738620i32;
                    } else if (_base_2737205 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2739053i32;
                    } else {
                        _gotoNext = 2739094i32;
                    };
                } else if (__value__ == (2738620i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2738645i32;
                    } else {
                        _gotoNext = 2738663i32;
                    };
                } else if (__value__ == (2738645i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738663i32;
                } else if (__value__ == (2738663i32)) {
                    _esign_2738663 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2738691i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2738724i32;
                    } else {
                        _gotoNext = 2738753i32;
                    };
                } else if (__value__ == (2738691i32)) {
                    _i++;
                    _gotoNext = 2738753i32;
                } else if (__value__ == (2738724i32)) {
                    _i++;
                    _esign_2738663 = (-1 : stdgo.GoInt);
                    _gotoNext = 2738753i32;
                } else if (__value__ == (2738753i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2738796i32;
                    } else {
                        _gotoNext = 2738814i32;
                    };
                } else if (__value__ == (2738796i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2738814i32;
                } else if (__value__ == (2738814i32)) {
                    _e_2738814 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2738823i32;
                } else if (__value__ == (2738823i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2738892i32;
                    } else {
                        _gotoNext = 2739015i32;
                    };
                } else if (__value__ == (2738888i32)) {
                    _i++;
                    _gotoNext = 2738823i32;
                } else if (__value__ == (2738892i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2738912i32;
                    } else {
                        _gotoNext = 2738958i32;
                    };
                } else if (__value__ == (2738912i32)) {
                    _underscores_2737046 = true;
                    _i++;
                    _gotoNext = 2738823i32;
                } else if (__value__ == (2738958i32)) {
                    if ((_e_2738814 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2738971i32;
                    } else {
                        _gotoNext = 2738888i32;
                    };
                } else if (__value__ == (2738971i32)) {
                    _e_2738814 = (((_e_2738814 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2738888i32;
                } else if (__value__ == (2739015i32)) {
                    _dp_2737507 = (_dp_2737507 + ((_e_2738814 * _esign_2738663 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2739094i32;
                } else if (__value__ == (2739053i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739094i32;
                } else if (__value__ == (2739094i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2739111i32;
                    } else {
                        _gotoNext = 2739138i32;
                    };
                } else if (__value__ == (2739111i32)) {
                    _exp = (_dp_2737507 - _ndMant_2737494 : stdgo.GoInt);
                    _gotoNext = 2739138i32;
                } else if (__value__ == (2739138i32)) {
                    if ((_underscores_2737046 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2739177i32;
                    } else {
                        _gotoNext = 2739193i32;
                    };
                } else if (__value__ == (2739177i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2739193i32;
                } else if (__value__ == (2739193i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
