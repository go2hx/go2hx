package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _loopBreak = false;
        var _esign_2685727:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_2684619:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _base_2684269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2685878:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2684558:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2684549:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2684529:Bool = false;
        var _sawdot_2684512:Bool = false;
        var _maxMantDigits_2684289:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2684334:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2684110:Bool = false;
        var _dp_2684571:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2684110 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2684166i32;
                    } else {
                        _gotoNext = 2684181i32;
                    };
                } else if (__value__ == (2684166i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2684181i32;
                } else if (__value__ == (2684181i32)) {
                    _gotoNext = 2684181i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2684191i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2684216i32;
                    } else {
                        _gotoNext = 2684269i32;
                    };
                } else if (__value__ == (2684191i32)) {
                    _i++;
                    _gotoNext = 2684269i32;
                } else if (__value__ == (2684216i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2684269i32;
                } else if (__value__ == (2684269i32)) {
                    _base_2684269 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2684289 = (19 : stdgo.GoInt);
                    _expChar_2684334 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2684411i32;
                    } else {
                        _gotoNext = 2684512i32;
                    };
                } else if (__value__ == (2684411i32)) {
                    _base_2684269 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2684289 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2684334 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2684512i32;
                } else if (__value__ == (2684512i32)) {
                    _sawdot_2684512 = false;
                    _sawdigits_2684529 = false;
                    _nd_2684549 = (0 : stdgo.GoInt);
                    _ndMant_2684558 = (0 : stdgo.GoInt);
                    _dp_2684571 = (0 : stdgo.GoInt);
                    _gotoNext = 2684579i32;
                } else if (__value__ == (2684579i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2684586i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2684608i32;
                    } else {
                        _gotoNext = 2685328i32;
                    };
                } else if (__value__ == (2684608i32)) {
                    _gotoNext = 2684612i32;
                } else if (__value__ == (2684612i32)) {
                    {
                        _c_2684619 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2684619 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2684639i32;
                            } else if (__value__ == (_c_2684619 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2684691i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2684619 : Bool) && (_c_2684619 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2684784i32;
                            } else if (__value__ == (((_base_2684269 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2684619) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2684619) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2685076i32;
                            } else {
                                _gotoNext = 2685318i32;
                            };
                        };
                    };
                } else if (__value__ == (2684639i32)) {
                    _underscores_2684110 = true;
                    _i++;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2684691i32)) {
                    if (_sawdot_2684512) {
                        _gotoNext = 2684719i32;
                    } else {
                        _gotoNext = 2684744i32;
                    };
                } else if (__value__ == (2684719i32)) {
                    _loopBreak = true;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2684744i32)) {
                    _sawdot_2684512 = true;
                    _dp_2684571 = _nd_2684549;
                    _i++;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2684784i32)) {
                    _sawdigits_2684529 = true;
                    if (((_c_2684619 == (48 : stdgo.GoUInt8)) && (_nd_2684549 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2684857i32;
                    } else {
                        _gotoNext = 2684913i32;
                    };
                } else if (__value__ == (2684857i32)) {
                    _dp_2684571--;
                    _i++;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2684913i32)) {
                    _nd_2684549++;
                    if ((_ndMant_2684558 < _maxMantDigits_2684289 : Bool)) {
                        _gotoNext = 2684947i32;
                    } else if (_c_2684619 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2685037i32;
                    } else {
                        _gotoNext = 2685064i32;
                    };
                } else if (__value__ == (2684947i32)) {
                    _mantissa = (_mantissa * (_base_2684269) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2684619 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2684558++;
                    _gotoNext = 2685064i32;
                } else if (__value__ == (2685037i32)) {
                    _trunc = true;
                    _gotoNext = 2685064i32;
                } else if (__value__ == (2685064i32)) {
                    _i++;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2685076i32)) {
                    _sawdigits_2684529 = true;
                    _nd_2684549++;
                    if ((_ndMant_2684558 < _maxMantDigits_2684289 : Bool)) {
                        _gotoNext = 2685188i32;
                    } else {
                        _gotoNext = 2685276i32;
                    };
                } else if (__value__ == (2685188i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2684619) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2684558++;
                    _gotoNext = 2685303i32;
                } else if (__value__ == (2685276i32)) {
                    _gotoNext = 2685276i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2685303i32;
                } else if (__value__ == (2685303i32)) {
                    _i++;
                    _gotoNext = 2684586i32;
                } else if (__value__ == (2685318i32)) {
                    _gotoNext = 2685328i32;
                } else if (__value__ == (2685328i32)) {
                    if (!_sawdigits_2684529) {
                        _gotoNext = 2685342i32;
                    } else {
                        _gotoNext = 2685357i32;
                    };
                } else if (__value__ == (2685342i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2685357i32;
                } else if (__value__ == (2685357i32)) {
                    if (!_sawdot_2684512) {
                        _gotoNext = 2685368i32;
                    } else {
                        _gotoNext = 2685385i32;
                    };
                } else if (__value__ == (2685368i32)) {
                    _dp_2684571 = _nd_2684549;
                    _gotoNext = 2685385i32;
                } else if (__value__ == (2685385i32)) {
                    if (_base_2684269 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2685399i32;
                    } else {
                        _gotoNext = 2685644i32;
                    };
                } else if (__value__ == (2685399i32)) {
                    _dp_2684571 = (_dp_2684571 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2684558 = (_ndMant_2684558 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2685644i32;
                } else if (__value__ == (2685644i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2684334) : Bool)) {
                        _gotoNext = 2685684i32;
                    } else if (_base_2684269 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2686117i32;
                    } else {
                        _gotoNext = 2686158i32;
                    };
                } else if (__value__ == (2685684i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2685709i32;
                    } else {
                        _gotoNext = 2685727i32;
                    };
                } else if (__value__ == (2685709i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2685727i32;
                } else if (__value__ == (2685727i32)) {
                    _esign_2685727 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2685755i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2685788i32;
                    } else {
                        _gotoNext = 2685817i32;
                    };
                } else if (__value__ == (2685755i32)) {
                    _i++;
                    _gotoNext = 2685817i32;
                } else if (__value__ == (2685788i32)) {
                    _i++;
                    _esign_2685727 = (-1 : stdgo.GoInt);
                    _gotoNext = 2685817i32;
                } else if (__value__ == (2685817i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2685860i32;
                    } else {
                        _gotoNext = 2685878i32;
                    };
                } else if (__value__ == (2685860i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2685878i32;
                } else if (__value__ == (2685878i32)) {
                    _e_2685878 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2685887i32;
                } else if (__value__ == (2685887i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2685956i32;
                    } else {
                        _gotoNext = 2686079i32;
                    };
                } else if (__value__ == (2685952i32)) {
                    _i++;
                    _gotoNext = 2685887i32;
                } else if (__value__ == (2685956i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2685976i32;
                    } else {
                        _gotoNext = 2686022i32;
                    };
                } else if (__value__ == (2685976i32)) {
                    _underscores_2684110 = true;
                    _i++;
                    _gotoNext = 2685887i32;
                } else if (__value__ == (2686022i32)) {
                    if ((_e_2685878 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2686035i32;
                    } else {
                        _gotoNext = 2685952i32;
                    };
                } else if (__value__ == (2686035i32)) {
                    _e_2685878 = (((_e_2685878 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2685952i32;
                } else if (__value__ == (2686079i32)) {
                    _dp_2684571 = (_dp_2684571 + ((_e_2685878 * _esign_2685727 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2686158i32;
                } else if (__value__ == (2686117i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686158i32;
                } else if (__value__ == (2686158i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2686175i32;
                    } else {
                        _gotoNext = 2686202i32;
                    };
                } else if (__value__ == (2686175i32)) {
                    _exp = (_dp_2684571 - _ndMant_2684558 : stdgo.GoInt);
                    _gotoNext = 2686202i32;
                } else if (__value__ == (2686202i32)) {
                    if ((_underscores_2684110 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2686241i32;
                    } else {
                        _gotoNext = 2686257i32;
                    };
                } else if (__value__ == (2686241i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2686257i32;
                } else if (__value__ == (2686257i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
