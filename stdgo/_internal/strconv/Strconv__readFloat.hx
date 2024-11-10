package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2791885:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2790556:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2790341:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_2790626:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2790578:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2790296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2790519:Bool = false;
        var _esign_2791734:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _ndMant_2790565:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2790536:Bool = false;
        var _base_2790276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_2790117:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2790117 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2790173i32;
                    } else {
                        _gotoNext = 2790188i32;
                    };
                } else if (__value__ == (2790173i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2790188i32;
                } else if (__value__ == (2790188i32)) {
                    _gotoNext = 2790188i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2790198i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2790223i32;
                    } else {
                        _gotoNext = 2790276i32;
                    };
                } else if (__value__ == (2790198i32)) {
                    _i++;
                    _gotoNext = 2790276i32;
                } else if (__value__ == (2790223i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2790276i32;
                } else if (__value__ == (2790276i32)) {
                    _base_2790276 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2790296 = (19 : stdgo.GoInt);
                    _expChar_2790341 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2790418i32;
                    } else {
                        _gotoNext = 2790519i32;
                    };
                } else if (__value__ == (2790418i32)) {
                    _base_2790276 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2790296 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2790341 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2790519i32;
                } else if (__value__ == (2790519i32)) {
                    _sawdot_2790519 = false;
                    _sawdigits_2790536 = false;
                    _nd_2790556 = (0 : stdgo.GoInt);
                    _ndMant_2790565 = (0 : stdgo.GoInt);
                    _dp_2790578 = (0 : stdgo.GoInt);
                    _gotoNext = 2790586i32;
                } else if (__value__ == (2790586i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2790593i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2790615i32;
                    } else {
                        _gotoNext = 2791335i32;
                    };
                } else if (__value__ == (2790615i32)) {
                    _gotoNext = 2790619i32;
                } else if (__value__ == (2790619i32)) {
                    {
                        _c_2790626 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2790626 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2790646i32;
                            } else if (__value__ == (_c_2790626 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2790698i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2790626 : Bool) && (_c_2790626 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2790791i32;
                            } else if (__value__ == (((_base_2790276 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2790626) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2790626) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2791083i32;
                            } else {
                                _gotoNext = 2791325i32;
                            };
                        };
                    };
                } else if (__value__ == (2790646i32)) {
                    _underscores_2790117 = true;
                    _i++;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2790698i32)) {
                    if (_sawdot_2790519) {
                        _gotoNext = 2790726i32;
                    } else {
                        _gotoNext = 2790751i32;
                    };
                } else if (__value__ == (2790726i32)) {
                    _loopBreak = true;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2790751i32)) {
                    _sawdot_2790519 = true;
                    _dp_2790578 = _nd_2790556;
                    _i++;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2790791i32)) {
                    _sawdigits_2790536 = true;
                    if (((_c_2790626 == (48 : stdgo.GoUInt8)) && (_nd_2790556 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2790864i32;
                    } else {
                        _gotoNext = 2790920i32;
                    };
                } else if (__value__ == (2790864i32)) {
                    _dp_2790578--;
                    _i++;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2790920i32)) {
                    _nd_2790556++;
                    if ((_ndMant_2790565 < _maxMantDigits_2790296 : Bool)) {
                        _gotoNext = 2790954i32;
                    } else if (_c_2790626 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2791044i32;
                    } else {
                        _gotoNext = 2791071i32;
                    };
                } else if (__value__ == (2790954i32)) {
                    _mantissa = (_mantissa * (_base_2790276) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2790626 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2790565++;
                    _gotoNext = 2791071i32;
                } else if (__value__ == (2791044i32)) {
                    _trunc = true;
                    _gotoNext = 2791071i32;
                } else if (__value__ == (2791071i32)) {
                    _i++;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2791083i32)) {
                    _sawdigits_2790536 = true;
                    _nd_2790556++;
                    if ((_ndMant_2790565 < _maxMantDigits_2790296 : Bool)) {
                        _gotoNext = 2791195i32;
                    } else {
                        _gotoNext = 2791283i32;
                    };
                } else if (__value__ == (2791195i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2790626) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2790565++;
                    _gotoNext = 2791310i32;
                } else if (__value__ == (2791283i32)) {
                    _gotoNext = 2791283i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2791310i32;
                } else if (__value__ == (2791310i32)) {
                    _i++;
                    _gotoNext = 2790593i32;
                } else if (__value__ == (2791325i32)) {
                    _gotoNext = 2791335i32;
                } else if (__value__ == (2791335i32)) {
                    if (!_sawdigits_2790536) {
                        _gotoNext = 2791349i32;
                    } else {
                        _gotoNext = 2791364i32;
                    };
                } else if (__value__ == (2791349i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2791364i32;
                } else if (__value__ == (2791364i32)) {
                    if (!_sawdot_2790519) {
                        _gotoNext = 2791375i32;
                    } else {
                        _gotoNext = 2791392i32;
                    };
                } else if (__value__ == (2791375i32)) {
                    _dp_2790578 = _nd_2790556;
                    _gotoNext = 2791392i32;
                } else if (__value__ == (2791392i32)) {
                    if (_base_2790276 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2791406i32;
                    } else {
                        _gotoNext = 2791651i32;
                    };
                } else if (__value__ == (2791406i32)) {
                    _dp_2790578 = (_dp_2790578 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2790565 = (_ndMant_2790565 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2791651i32;
                } else if (__value__ == (2791651i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2790341) : Bool)) {
                        _gotoNext = 2791691i32;
                    } else if (_base_2790276 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2792124i32;
                    } else {
                        _gotoNext = 2792165i32;
                    };
                } else if (__value__ == (2791691i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2791716i32;
                    } else {
                        _gotoNext = 2791734i32;
                    };
                } else if (__value__ == (2791716i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2791734i32;
                } else if (__value__ == (2791734i32)) {
                    _esign_2791734 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2791762i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2791795i32;
                    } else {
                        _gotoNext = 2791824i32;
                    };
                } else if (__value__ == (2791762i32)) {
                    _i++;
                    _gotoNext = 2791824i32;
                } else if (__value__ == (2791795i32)) {
                    _i++;
                    _esign_2791734 = (-1 : stdgo.GoInt);
                    _gotoNext = 2791824i32;
                } else if (__value__ == (2791824i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2791867i32;
                    } else {
                        _gotoNext = 2791885i32;
                    };
                } else if (__value__ == (2791867i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2791885i32;
                } else if (__value__ == (2791885i32)) {
                    _e_2791885 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2791894i32;
                } else if (__value__ == (2791894i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2791963i32;
                    } else {
                        _gotoNext = 2792086i32;
                    };
                } else if (__value__ == (2791959i32)) {
                    _i++;
                    _gotoNext = 2791894i32;
                } else if (__value__ == (2791963i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2791983i32;
                    } else {
                        _gotoNext = 2792029i32;
                    };
                } else if (__value__ == (2791983i32)) {
                    _underscores_2790117 = true;
                    _i++;
                    _gotoNext = 2791894i32;
                } else if (__value__ == (2792029i32)) {
                    if ((_e_2791885 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2792042i32;
                    } else {
                        _gotoNext = 2791959i32;
                    };
                } else if (__value__ == (2792042i32)) {
                    _e_2791885 = (((_e_2791885 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2791959i32;
                } else if (__value__ == (2792086i32)) {
                    _dp_2790578 = (_dp_2790578 + ((_e_2791885 * _esign_2791734 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2792165i32;
                } else if (__value__ == (2792124i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2792165i32;
                } else if (__value__ == (2792165i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2792182i32;
                    } else {
                        _gotoNext = 2792209i32;
                    };
                } else if (__value__ == (2792182i32)) {
                    _exp = (_dp_2790578 - _ndMant_2790565 : stdgo.GoInt);
                    _gotoNext = 2792209i32;
                } else if (__value__ == (2792209i32)) {
                    if ((_underscores_2790117 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2792248i32;
                    } else {
                        _gotoNext = 2792264i32;
                    };
                } else if (__value__ == (2792248i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2792264i32;
                } else if (__value__ == (2792264i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
