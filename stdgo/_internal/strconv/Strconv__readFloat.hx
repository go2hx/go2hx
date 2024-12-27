package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2639147:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2639099:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2638817:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _sawdigits_2639057:Bool = false;
        var _sawdot_2639040:Bool = false;
        var _base_2638797:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2638638:Bool = false;
        var _e_2640406:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2640255:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2639086:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2639077:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2638862:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2638638 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2638694i32;
                    } else {
                        _gotoNext = 2638709i32;
                    };
                } else if (__value__ == (2638694i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2638709i32;
                } else if (__value__ == (2638709i32)) {
                    _gotoNext = 2638709i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2638719i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2638744i32;
                    } else {
                        _gotoNext = 2638797i32;
                    };
                } else if (__value__ == (2638719i32)) {
                    _i++;
                    _gotoNext = 2638797i32;
                } else if (__value__ == (2638744i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2638797i32;
                } else if (__value__ == (2638797i32)) {
                    _base_2638797 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2638817 = (19 : stdgo.GoInt);
                    _expChar_2638862 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2638939i32;
                    } else {
                        _gotoNext = 2639040i32;
                    };
                } else if (__value__ == (2638939i32)) {
                    _base_2638797 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2638817 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2638862 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2639040i32;
                } else if (__value__ == (2639040i32)) {
                    _sawdot_2639040 = false;
                    _sawdigits_2639057 = false;
                    _nd_2639077 = (0 : stdgo.GoInt);
                    _ndMant_2639086 = (0 : stdgo.GoInt);
                    _dp_2639099 = (0 : stdgo.GoInt);
                    _gotoNext = 2639107i32;
                } else if (__value__ == (2639107i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639114i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2639136i32;
                    } else {
                        _gotoNext = 2639856i32;
                    };
                } else if (__value__ == (2639136i32)) {
                    _gotoNext = 2639140i32;
                } else if (__value__ == (2639140i32)) {
                    {
                        _c_2639147 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2639147 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2639167i32;
                            } else if (__value__ == (_c_2639147 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2639219i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2639147 : Bool) && (_c_2639147 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2639312i32;
                            } else if (__value__ == (((_base_2638797 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2639147) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2639147) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2639604i32;
                            } else {
                                _gotoNext = 2639846i32;
                            };
                        };
                    };
                } else if (__value__ == (2639167i32)) {
                    _underscores_2638638 = true;
                    _i++;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639219i32)) {
                    if (_sawdot_2639040) {
                        _gotoNext = 2639247i32;
                    } else {
                        _gotoNext = 2639272i32;
                    };
                } else if (__value__ == (2639247i32)) {
                    _loopBreak = true;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639272i32)) {
                    _sawdot_2639040 = true;
                    _dp_2639099 = _nd_2639077;
                    _i++;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639312i32)) {
                    _sawdigits_2639057 = true;
                    if (((_c_2639147 == (48 : stdgo.GoUInt8)) && (_nd_2639077 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2639385i32;
                    } else {
                        _gotoNext = 2639441i32;
                    };
                } else if (__value__ == (2639385i32)) {
                    _dp_2639099--;
                    _i++;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639441i32)) {
                    _nd_2639077++;
                    if ((_ndMant_2639086 < _maxMantDigits_2638817 : Bool)) {
                        _gotoNext = 2639475i32;
                    } else if (_c_2639147 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2639565i32;
                    } else {
                        _gotoNext = 2639592i32;
                    };
                } else if (__value__ == (2639475i32)) {
                    _mantissa = (_mantissa * (_base_2638797) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2639147 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2639086++;
                    _gotoNext = 2639592i32;
                } else if (__value__ == (2639565i32)) {
                    _trunc = true;
                    _gotoNext = 2639592i32;
                } else if (__value__ == (2639592i32)) {
                    _i++;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639604i32)) {
                    _sawdigits_2639057 = true;
                    _nd_2639077++;
                    if ((_ndMant_2639086 < _maxMantDigits_2638817 : Bool)) {
                        _gotoNext = 2639716i32;
                    } else {
                        _gotoNext = 2639804i32;
                    };
                } else if (__value__ == (2639716i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2639147) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2639086++;
                    _gotoNext = 2639831i32;
                } else if (__value__ == (2639804i32)) {
                    _gotoNext = 2639804i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2639831i32;
                } else if (__value__ == (2639831i32)) {
                    _i++;
                    _gotoNext = 2639114i32;
                } else if (__value__ == (2639846i32)) {
                    _gotoNext = 2639856i32;
                } else if (__value__ == (2639856i32)) {
                    if (!_sawdigits_2639057) {
                        _gotoNext = 2639870i32;
                    } else {
                        _gotoNext = 2639885i32;
                    };
                } else if (__value__ == (2639870i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2639885i32;
                } else if (__value__ == (2639885i32)) {
                    if (!_sawdot_2639040) {
                        _gotoNext = 2639896i32;
                    } else {
                        _gotoNext = 2639913i32;
                    };
                } else if (__value__ == (2639896i32)) {
                    _dp_2639099 = _nd_2639077;
                    _gotoNext = 2639913i32;
                } else if (__value__ == (2639913i32)) {
                    if (_base_2638797 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2639927i32;
                    } else {
                        _gotoNext = 2640172i32;
                    };
                } else if (__value__ == (2639927i32)) {
                    _dp_2639099 = (_dp_2639099 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2639086 = (_ndMant_2639086 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2640172i32;
                } else if (__value__ == (2640172i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2638862) : Bool)) {
                        _gotoNext = 2640212i32;
                    } else if (_base_2638797 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2640645i32;
                    } else {
                        _gotoNext = 2640686i32;
                    };
                } else if (__value__ == (2640212i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2640237i32;
                    } else {
                        _gotoNext = 2640255i32;
                    };
                } else if (__value__ == (2640237i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640255i32;
                } else if (__value__ == (2640255i32)) {
                    _esign_2640255 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2640283i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2640316i32;
                    } else {
                        _gotoNext = 2640345i32;
                    };
                } else if (__value__ == (2640283i32)) {
                    _i++;
                    _gotoNext = 2640345i32;
                } else if (__value__ == (2640316i32)) {
                    _i++;
                    _esign_2640255 = (-1 : stdgo.GoInt);
                    _gotoNext = 2640345i32;
                } else if (__value__ == (2640345i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2640388i32;
                    } else {
                        _gotoNext = 2640406i32;
                    };
                } else if (__value__ == (2640388i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640406i32;
                } else if (__value__ == (2640406i32)) {
                    _e_2640406 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2640415i32;
                } else if (__value__ == (2640415i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2640484i32;
                    } else {
                        _gotoNext = 2640607i32;
                    };
                } else if (__value__ == (2640480i32)) {
                    _i++;
                    _gotoNext = 2640415i32;
                } else if (__value__ == (2640484i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2640504i32;
                    } else {
                        _gotoNext = 2640550i32;
                    };
                } else if (__value__ == (2640504i32)) {
                    _underscores_2638638 = true;
                    _i++;
                    _gotoNext = 2640415i32;
                } else if (__value__ == (2640550i32)) {
                    if ((_e_2640406 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2640563i32;
                    } else {
                        _gotoNext = 2640480i32;
                    };
                } else if (__value__ == (2640563i32)) {
                    _e_2640406 = (((_e_2640406 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2640480i32;
                } else if (__value__ == (2640607i32)) {
                    _dp_2639099 = (_dp_2639099 + ((_e_2640406 * _esign_2640255 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2640686i32;
                } else if (__value__ == (2640645i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640686i32;
                } else if (__value__ == (2640686i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2640703i32;
                    } else {
                        _gotoNext = 2640730i32;
                    };
                } else if (__value__ == (2640703i32)) {
                    _exp = (_dp_2639099 - _ndMant_2639086 : stdgo.GoInt);
                    _gotoNext = 2640730i32;
                } else if (__value__ == (2640730i32)) {
                    if ((_underscores_2638638 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2640769i32;
                    } else {
                        _gotoNext = 2640785i32;
                    };
                } else if (__value__ == (2640769i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2640785i32;
                } else if (__value__ == (2640785i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
