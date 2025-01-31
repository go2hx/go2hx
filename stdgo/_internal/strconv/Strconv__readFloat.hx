package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _esign_2651710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2650602:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2650554:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2650093:Bool = false;
        var _ndMant_2650541:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2650252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2651861:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2650512:Bool = false;
        var _expChar_2650317:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _maxMantDigits_2650272:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_2650532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2650495:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2650093 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2650149i32;
                    } else {
                        _gotoNext = 2650164i32;
                    };
                } else if (__value__ == (2650149i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650164i32;
                } else if (__value__ == (2650164i32)) {
                    _gotoNext = 2650164i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2650174i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2650199i32;
                    } else {
                        _gotoNext = 2650252i32;
                    };
                } else if (__value__ == (2650174i32)) {
                    _i++;
                    _gotoNext = 2650252i32;
                } else if (__value__ == (2650199i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2650252i32;
                } else if (__value__ == (2650252i32)) {
                    _base_2650252 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2650272 = (19 : stdgo.GoInt);
                    _expChar_2650317 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2650394i32;
                    } else {
                        _gotoNext = 2650495i32;
                    };
                } else if (__value__ == (2650394i32)) {
                    _base_2650252 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2650272 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2650317 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2650495i32;
                } else if (__value__ == (2650495i32)) {
                    _sawdot_2650495 = false;
                    _sawdigits_2650512 = false;
                    _nd_2650532 = (0 : stdgo.GoInt);
                    _ndMant_2650541 = (0 : stdgo.GoInt);
                    _dp_2650554 = (0 : stdgo.GoInt);
                    _gotoNext = 2650562i32;
                } else if (__value__ == (2650562i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2650569i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2650591i32;
                    } else {
                        _gotoNext = 2651311i32;
                    };
                } else if (__value__ == (2650591i32)) {
                    _gotoNext = 2650595i32;
                } else if (__value__ == (2650595i32)) {
                    {
                        _c_2650602 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2650602 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2650622i32;
                            } else if (__value__ == (_c_2650602 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2650674i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2650602 : Bool) && (_c_2650602 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2650767i32;
                            } else if (__value__ == (((_base_2650252 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2650602) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2650602) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2651059i32;
                            } else {
                                _gotoNext = 2651301i32;
                            };
                        };
                    };
                } else if (__value__ == (2650622i32)) {
                    _underscores_2650093 = true;
                    _i++;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2650674i32)) {
                    if (_sawdot_2650495) {
                        _gotoNext = 2650702i32;
                    } else {
                        _gotoNext = 2650727i32;
                    };
                } else if (__value__ == (2650702i32)) {
                    _loopBreak = true;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2650727i32)) {
                    _sawdot_2650495 = true;
                    _dp_2650554 = _nd_2650532;
                    _i++;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2650767i32)) {
                    _sawdigits_2650512 = true;
                    if (((_c_2650602 == (48 : stdgo.GoUInt8)) && (_nd_2650532 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2650840i32;
                    } else {
                        _gotoNext = 2650896i32;
                    };
                } else if (__value__ == (2650840i32)) {
                    _dp_2650554--;
                    _i++;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2650896i32)) {
                    _nd_2650532++;
                    if ((_ndMant_2650541 < _maxMantDigits_2650272 : Bool)) {
                        _gotoNext = 2650930i32;
                    } else if (_c_2650602 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2651020i32;
                    } else {
                        _gotoNext = 2651047i32;
                    };
                } else if (__value__ == (2650930i32)) {
                    _mantissa = (_mantissa * (_base_2650252) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2650602 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2650541++;
                    _gotoNext = 2651047i32;
                } else if (__value__ == (2651020i32)) {
                    _trunc = true;
                    _gotoNext = 2651047i32;
                } else if (__value__ == (2651047i32)) {
                    _i++;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2651059i32)) {
                    _sawdigits_2650512 = true;
                    _nd_2650532++;
                    if ((_ndMant_2650541 < _maxMantDigits_2650272 : Bool)) {
                        _gotoNext = 2651171i32;
                    } else {
                        _gotoNext = 2651259i32;
                    };
                } else if (__value__ == (2651171i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2650602) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2650541++;
                    _gotoNext = 2651286i32;
                } else if (__value__ == (2651259i32)) {
                    _gotoNext = 2651259i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2651286i32;
                } else if (__value__ == (2651286i32)) {
                    _i++;
                    _gotoNext = 2650569i32;
                } else if (__value__ == (2651301i32)) {
                    _gotoNext = 2651311i32;
                } else if (__value__ == (2651311i32)) {
                    if (!_sawdigits_2650512) {
                        _gotoNext = 2651325i32;
                    } else {
                        _gotoNext = 2651340i32;
                    };
                } else if (__value__ == (2651325i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2651340i32;
                } else if (__value__ == (2651340i32)) {
                    if (!_sawdot_2650495) {
                        _gotoNext = 2651351i32;
                    } else {
                        _gotoNext = 2651368i32;
                    };
                } else if (__value__ == (2651351i32)) {
                    _dp_2650554 = _nd_2650532;
                    _gotoNext = 2651368i32;
                } else if (__value__ == (2651368i32)) {
                    if (_base_2650252 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2651382i32;
                    } else {
                        _gotoNext = 2651627i32;
                    };
                } else if (__value__ == (2651382i32)) {
                    _dp_2650554 = (_dp_2650554 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2650541 = (_ndMant_2650541 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2651627i32;
                } else if (__value__ == (2651627i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2650317) : Bool)) {
                        _gotoNext = 2651667i32;
                    } else if (_base_2650252 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2652100i32;
                    } else {
                        _gotoNext = 2652141i32;
                    };
                } else if (__value__ == (2651667i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2651692i32;
                    } else {
                        _gotoNext = 2651710i32;
                    };
                } else if (__value__ == (2651692i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2651710i32;
                } else if (__value__ == (2651710i32)) {
                    _esign_2651710 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2651738i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2651771i32;
                    } else {
                        _gotoNext = 2651800i32;
                    };
                } else if (__value__ == (2651738i32)) {
                    _i++;
                    _gotoNext = 2651800i32;
                } else if (__value__ == (2651771i32)) {
                    _i++;
                    _esign_2651710 = (-1 : stdgo.GoInt);
                    _gotoNext = 2651800i32;
                } else if (__value__ == (2651800i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2651843i32;
                    } else {
                        _gotoNext = 2651861i32;
                    };
                } else if (__value__ == (2651843i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2651861i32;
                } else if (__value__ == (2651861i32)) {
                    _e_2651861 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2651870i32;
                } else if (__value__ == (2651870i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2651939i32;
                    } else {
                        _gotoNext = 2652062i32;
                    };
                } else if (__value__ == (2651935i32)) {
                    _i++;
                    _gotoNext = 2651870i32;
                } else if (__value__ == (2651939i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2651959i32;
                    } else {
                        _gotoNext = 2652005i32;
                    };
                } else if (__value__ == (2651959i32)) {
                    _underscores_2650093 = true;
                    _i++;
                    _gotoNext = 2651870i32;
                } else if (__value__ == (2652005i32)) {
                    if ((_e_2651861 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2652018i32;
                    } else {
                        _gotoNext = 2651935i32;
                    };
                } else if (__value__ == (2652018i32)) {
                    _e_2651861 = (((_e_2651861 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2651935i32;
                } else if (__value__ == (2652062i32)) {
                    _dp_2650554 = (_dp_2650554 + ((_e_2651861 * _esign_2651710 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2652141i32;
                } else if (__value__ == (2652100i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2652141i32;
                } else if (__value__ == (2652141i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2652158i32;
                    } else {
                        _gotoNext = 2652185i32;
                    };
                } else if (__value__ == (2652158i32)) {
                    _exp = (_dp_2650554 - _ndMant_2650541 : stdgo.GoInt);
                    _gotoNext = 2652185i32;
                } else if (__value__ == (2652185i32)) {
                    if ((_underscores_2650093 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2652224i32;
                    } else {
                        _gotoNext = 2652240i32;
                    };
                } else if (__value__ == (2652224i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2652240i32;
                } else if (__value__ == (2652240i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
