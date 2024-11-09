package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2630045:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2630016:Bool = false;
        var _sawdot_2629999:Bool = false;
        var _maxMantDigits_2629776:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_2631365:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2631214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2630106:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2629756:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2629597:Bool = false;
        var _expChar_2629821:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _dp_2630058:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2630036:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2629597 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2629653i32;
                    } else {
                        _gotoNext = 2629668i32;
                    };
                } else if (__value__ == (2629653i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2629668i32;
                } else if (__value__ == (2629668i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2629668i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2629678i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2629703i32;
                    } else {
                        _gotoNext = 2629756i32;
                    };
                } else if (__value__ == (2629678i32)) {
                    _i++;
                    _gotoNext = 2629756i32;
                } else if (__value__ == (2629703i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2629756i32;
                } else if (__value__ == (2629756i32)) {
                    _base_2629756 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629776 = (19 : stdgo.GoInt);
                    _expChar_2629821 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2629898i32;
                    } else {
                        _gotoNext = 2629999i32;
                    };
                } else if (__value__ == (2629898i32)) {
                    _base_2629756 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2629776 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2629821 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2629999i32;
                } else if (__value__ == (2629999i32)) {
                    _sawdot_2629999 = false;
                    _sawdigits_2630016 = false;
                    _nd_2630036 = (0 : stdgo.GoInt);
                    _ndMant_2630045 = (0 : stdgo.GoInt);
                    _dp_2630058 = (0 : stdgo.GoInt);
                    _gotoNext = 2630066i32;
                } else if (__value__ == (2630066i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630073i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2630095i32;
                    } else {
                        _gotoNext = 2630815i32;
                    };
                } else if (__value__ == (2630095i32)) {
                    _c_2630106 = _s[(_i : stdgo.GoInt)];
                    _gotoNext = 2630099i32;
                } else if (__value__ == (2630099i32)) {
                    {
                        _c_2630106 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2630106 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2630126i32;
                            } else if (__value__ == (_c_2630106 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2630178i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2630106 : Bool) && (_c_2630106 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630271i32;
                            } else if (__value__ == (((_base_2629756 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2630106) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2630106) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2630563i32;
                            } else {
                                _gotoNext = 2630805i32;
                            };
                        };
                    };
                } else if (__value__ == (2630126i32)) {
                    _underscores_2629597 = true;
                    _i++;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630178i32)) {
                    if (_sawdot_2629999) {
                        _gotoNext = 2630206i32;
                    } else {
                        _gotoNext = 2630231i32;
                    };
                } else if (__value__ == (2630206i32)) {
                    _loopBreak = true;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630231i32)) {
                    _sawdot_2629999 = true;
                    _dp_2630058 = _nd_2630036;
                    _i++;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630271i32)) {
                    _sawdigits_2630016 = true;
                    if (((_c_2630106 == (48 : stdgo.GoUInt8)) && (_nd_2630036 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2630344i32;
                    } else {
                        _gotoNext = 2630400i32;
                    };
                } else if (__value__ == (2630344i32)) {
                    _dp_2630058--;
                    _i++;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630400i32)) {
                    _nd_2630036++;
                    if ((_ndMant_2630045 < _maxMantDigits_2629776 : Bool)) {
                        _gotoNext = 2630434i32;
                    } else if (_c_2630106 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2630524i32;
                    } else {
                        _gotoNext = 2630551i32;
                    };
                } else if (__value__ == (2630434i32)) {
                    _mantissa = (_mantissa * (_base_2629756) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2630106 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2630045++;
                    _gotoNext = 2630551i32;
                } else if (__value__ == (2630524i32)) {
                    _trunc = true;
                    _gotoNext = 2630551i32;
                } else if (__value__ == (2630551i32)) {
                    _i++;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630563i32)) {
                    _sawdigits_2630016 = true;
                    _nd_2630036++;
                    if ((_ndMant_2630045 < _maxMantDigits_2629776 : Bool)) {
                        _gotoNext = 2630675i32;
                    } else {
                        _gotoNext = 2630763i32;
                    };
                } else if (__value__ == (2630675i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2630106) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2630045++;
                    _gotoNext = 2630790i32;
                } else if (__value__ == (2630763i32)) {
                    _gotoNext = 2630763i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2630790i32;
                } else if (__value__ == (2630790i32)) {
                    _i++;
                    _gotoNext = 2630073i32;
                } else if (__value__ == (2630805i32)) {
                    _gotoNext = 2630815i32;
                } else if (__value__ == (2630815i32)) {
                    if (!_sawdigits_2630016) {
                        _gotoNext = 2630829i32;
                    } else {
                        _gotoNext = 2630844i32;
                    };
                } else if (__value__ == (2630829i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2630844i32;
                } else if (__value__ == (2630844i32)) {
                    if (!_sawdot_2629999) {
                        _gotoNext = 2630855i32;
                    } else {
                        _gotoNext = 2630872i32;
                    };
                } else if (__value__ == (2630855i32)) {
                    _dp_2630058 = _nd_2630036;
                    _gotoNext = 2630872i32;
                } else if (__value__ == (2630872i32)) {
                    if (_base_2629756 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2630886i32;
                    } else {
                        _gotoNext = 2631131i32;
                    };
                } else if (__value__ == (2630886i32)) {
                    _dp_2630058 = (_dp_2630058 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2630045 = (_ndMant_2630045 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631131i32;
                } else if (__value__ == (2631131i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2629821) : Bool)) {
                        _gotoNext = 2631171i32;
                    } else if (_base_2629756 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631604i32;
                    } else {
                        _gotoNext = 2631645i32;
                    };
                } else if (__value__ == (2631171i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2631196i32;
                    } else {
                        _gotoNext = 2631214i32;
                    };
                } else if (__value__ == (2631196i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631214i32;
                } else if (__value__ == (2631214i32)) {
                    _esign_2631214 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2631242i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2631275i32;
                    } else {
                        _gotoNext = 2631304i32;
                    };
                } else if (__value__ == (2631242i32)) {
                    _i++;
                    _gotoNext = 2631304i32;
                } else if (__value__ == (2631275i32)) {
                    _i++;
                    _esign_2631214 = (-1 : stdgo.GoInt);
                    _gotoNext = 2631304i32;
                } else if (__value__ == (2631304i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2631347i32;
                    } else {
                        _gotoNext = 2631365i32;
                    };
                } else if (__value__ == (2631347i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631365i32;
                } else if (__value__ == (2631365i32)) {
                    _e_2631365 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2631374i32;
                } else if (__value__ == (2631374i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2631443i32;
                    } else {
                        _gotoNext = 2631566i32;
                    };
                } else if (__value__ == (2631439i32)) {
                    _i++;
                    _gotoNext = 2631374i32;
                } else if (__value__ == (2631443i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2631463i32;
                    } else {
                        _gotoNext = 2631509i32;
                    };
                } else if (__value__ == (2631463i32)) {
                    _underscores_2629597 = true;
                    _i++;
                    _gotoNext = 2631374i32;
                } else if (__value__ == (2631509i32)) {
                    if ((_e_2631365 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2631522i32;
                    } else {
                        _gotoNext = 2631439i32;
                    };
                } else if (__value__ == (2631522i32)) {
                    _e_2631365 = (((_e_2631365 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2631439i32;
                } else if (__value__ == (2631566i32)) {
                    _dp_2630058 = (_dp_2630058 + ((_e_2631365 * _esign_2631214 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2631645i32;
                } else if (__value__ == (2631604i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631645i32;
                } else if (__value__ == (2631645i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2631662i32;
                    } else {
                        _gotoNext = 2631689i32;
                    };
                } else if (__value__ == (2631662i32)) {
                    _exp = (_dp_2630058 - _ndMant_2630045 : stdgo.GoInt);
                    _gotoNext = 2631689i32;
                } else if (__value__ == (2631689i32)) {
                    if ((_underscores_2629597 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2631728i32;
                    } else {
                        _gotoNext = 2631744i32;
                    };
                } else if (__value__ == (2631728i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2631744i32;
                } else if (__value__ == (2631744i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
