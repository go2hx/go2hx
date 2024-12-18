package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2649807:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2649656:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2648548:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _expChar_2648263:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nd_2648478:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2648458:Bool = false;
        var _base_2648198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2648039:Bool = false;
        var _dp_2648500:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2648487:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2648441:Bool = false;
        var _maxMantDigits_2648218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2648039 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2648095i32;
                    } else {
                        _gotoNext = 2648110i32;
                    };
                } else if (__value__ == (2648095i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2648110i32;
                } else if (__value__ == (2648110i32)) {
                    _gotoNext = 2648110i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2648120i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2648145i32;
                    } else {
                        _gotoNext = 2648198i32;
                    };
                } else if (__value__ == (2648120i32)) {
                    _i++;
                    _gotoNext = 2648198i32;
                } else if (__value__ == (2648145i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2648198i32;
                } else if (__value__ == (2648198i32)) {
                    _base_2648198 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2648218 = (19 : stdgo.GoInt);
                    _expChar_2648263 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2648340i32;
                    } else {
                        _gotoNext = 2648441i32;
                    };
                } else if (__value__ == (2648340i32)) {
                    _base_2648198 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2648218 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2648263 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2648441i32;
                } else if (__value__ == (2648441i32)) {
                    _sawdot_2648441 = false;
                    _sawdigits_2648458 = false;
                    _nd_2648478 = (0 : stdgo.GoInt);
                    _ndMant_2648487 = (0 : stdgo.GoInt);
                    _dp_2648500 = (0 : stdgo.GoInt);
                    _gotoNext = 2648508i32;
                } else if (__value__ == (2648508i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2648515i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2648537i32;
                    } else {
                        _gotoNext = 2649257i32;
                    };
                } else if (__value__ == (2648537i32)) {
                    _gotoNext = 2648541i32;
                } else if (__value__ == (2648541i32)) {
                    {
                        _c_2648548 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2648548 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2648568i32;
                            } else if (__value__ == (_c_2648548 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2648620i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2648548 : Bool) && (_c_2648548 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2648713i32;
                            } else if (__value__ == (((_base_2648198 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2648548) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2648548) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2649005i32;
                            } else {
                                _gotoNext = 2649247i32;
                            };
                        };
                    };
                } else if (__value__ == (2648568i32)) {
                    _underscores_2648039 = true;
                    _i++;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2648620i32)) {
                    if (_sawdot_2648441) {
                        _gotoNext = 2648648i32;
                    } else {
                        _gotoNext = 2648673i32;
                    };
                } else if (__value__ == (2648648i32)) {
                    _loopBreak = true;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2648673i32)) {
                    _sawdot_2648441 = true;
                    _dp_2648500 = _nd_2648478;
                    _i++;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2648713i32)) {
                    _sawdigits_2648458 = true;
                    if (((_c_2648548 == (48 : stdgo.GoUInt8)) && (_nd_2648478 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2648786i32;
                    } else {
                        _gotoNext = 2648842i32;
                    };
                } else if (__value__ == (2648786i32)) {
                    _dp_2648500--;
                    _i++;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2648842i32)) {
                    _nd_2648478++;
                    if ((_ndMant_2648487 < _maxMantDigits_2648218 : Bool)) {
                        _gotoNext = 2648876i32;
                    } else if (_c_2648548 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2648966i32;
                    } else {
                        _gotoNext = 2648993i32;
                    };
                } else if (__value__ == (2648876i32)) {
                    _mantissa = (_mantissa * (_base_2648198) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2648548 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2648487++;
                    _gotoNext = 2648993i32;
                } else if (__value__ == (2648966i32)) {
                    _trunc = true;
                    _gotoNext = 2648993i32;
                } else if (__value__ == (2648993i32)) {
                    _i++;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2649005i32)) {
                    _sawdigits_2648458 = true;
                    _nd_2648478++;
                    if ((_ndMant_2648487 < _maxMantDigits_2648218 : Bool)) {
                        _gotoNext = 2649117i32;
                    } else {
                        _gotoNext = 2649205i32;
                    };
                } else if (__value__ == (2649117i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2648548) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2648487++;
                    _gotoNext = 2649232i32;
                } else if (__value__ == (2649205i32)) {
                    _gotoNext = 2649205i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2649232i32;
                } else if (__value__ == (2649232i32)) {
                    _i++;
                    _gotoNext = 2648515i32;
                } else if (__value__ == (2649247i32)) {
                    _gotoNext = 2649257i32;
                } else if (__value__ == (2649257i32)) {
                    if (!_sawdigits_2648458) {
                        _gotoNext = 2649271i32;
                    } else {
                        _gotoNext = 2649286i32;
                    };
                } else if (__value__ == (2649271i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649286i32;
                } else if (__value__ == (2649286i32)) {
                    if (!_sawdot_2648441) {
                        _gotoNext = 2649297i32;
                    } else {
                        _gotoNext = 2649314i32;
                    };
                } else if (__value__ == (2649297i32)) {
                    _dp_2648500 = _nd_2648478;
                    _gotoNext = 2649314i32;
                } else if (__value__ == (2649314i32)) {
                    if (_base_2648198 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2649328i32;
                    } else {
                        _gotoNext = 2649573i32;
                    };
                } else if (__value__ == (2649328i32)) {
                    _dp_2648500 = (_dp_2648500 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2648487 = (_ndMant_2648487 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2649573i32;
                } else if (__value__ == (2649573i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2648263) : Bool)) {
                        _gotoNext = 2649613i32;
                    } else if (_base_2648198 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2650046i32;
                    } else {
                        _gotoNext = 2650087i32;
                    };
                } else if (__value__ == (2649613i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2649638i32;
                    } else {
                        _gotoNext = 2649656i32;
                    };
                } else if (__value__ == (2649638i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649656i32;
                } else if (__value__ == (2649656i32)) {
                    _esign_2649656 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2649684i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2649717i32;
                    } else {
                        _gotoNext = 2649746i32;
                    };
                } else if (__value__ == (2649684i32)) {
                    _i++;
                    _gotoNext = 2649746i32;
                } else if (__value__ == (2649717i32)) {
                    _i++;
                    _esign_2649656 = (-1 : stdgo.GoInt);
                    _gotoNext = 2649746i32;
                } else if (__value__ == (2649746i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2649789i32;
                    } else {
                        _gotoNext = 2649807i32;
                    };
                } else if (__value__ == (2649789i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2649807i32;
                } else if (__value__ == (2649807i32)) {
                    _e_2649807 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2649816i32;
                } else if (__value__ == (2649816i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2649885i32;
                    } else {
                        _gotoNext = 2650008i32;
                    };
                } else if (__value__ == (2649881i32)) {
                    _i++;
                    _gotoNext = 2649816i32;
                } else if (__value__ == (2649885i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2649905i32;
                    } else {
                        _gotoNext = 2649951i32;
                    };
                } else if (__value__ == (2649905i32)) {
                    _underscores_2648039 = true;
                    _i++;
                    _gotoNext = 2649816i32;
                } else if (__value__ == (2649951i32)) {
                    if ((_e_2649807 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2649964i32;
                    } else {
                        _gotoNext = 2649881i32;
                    };
                } else if (__value__ == (2649964i32)) {
                    _e_2649807 = (((_e_2649807 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2649881i32;
                } else if (__value__ == (2650008i32)) {
                    _dp_2648500 = (_dp_2648500 + ((_e_2649807 * _esign_2649656 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2650087i32;
                } else if (__value__ == (2650046i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650087i32;
                } else if (__value__ == (2650087i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2650104i32;
                    } else {
                        _gotoNext = 2650131i32;
                    };
                } else if (__value__ == (2650104i32)) {
                    _exp = (_dp_2648500 - _ndMant_2648487 : stdgo.GoInt);
                    _gotoNext = 2650131i32;
                } else if (__value__ == (2650131i32)) {
                    if ((_underscores_2648039 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2650170i32;
                    } else {
                        _gotoNext = 2650186i32;
                    };
                } else if (__value__ == (2650170i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2650186i32;
                } else if (__value__ == (2650186i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
