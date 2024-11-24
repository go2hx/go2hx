package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _ndMant_2687401:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2687392:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2687177:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _sawdigits_2687372:Bool = false;
        var _c_2687462:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_2687414:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2687132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2687112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_2688721:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2688570:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2687355:Bool = false;
        var _underscores_2686953:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2686953 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2687009i32;
                    } else {
                        _gotoNext = 2687024i32;
                    };
                } else if (__value__ == (2687009i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2687024i32;
                } else if (__value__ == (2687024i32)) {
                    _gotoNext = 2687024i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2687034i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2687059i32;
                    } else {
                        _gotoNext = 2687112i32;
                    };
                } else if (__value__ == (2687034i32)) {
                    _i++;
                    _gotoNext = 2687112i32;
                } else if (__value__ == (2687059i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2687112i32;
                } else if (__value__ == (2687112i32)) {
                    _base_2687112 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687132 = (19 : stdgo.GoInt);
                    _expChar_2687177 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2687254i32;
                    } else {
                        _gotoNext = 2687355i32;
                    };
                } else if (__value__ == (2687254i32)) {
                    _base_2687112 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2687132 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2687177 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2687355i32;
                } else if (__value__ == (2687355i32)) {
                    _sawdot_2687355 = false;
                    _sawdigits_2687372 = false;
                    _nd_2687392 = (0 : stdgo.GoInt);
                    _ndMant_2687401 = (0 : stdgo.GoInt);
                    _dp_2687414 = (0 : stdgo.GoInt);
                    _gotoNext = 2687422i32;
                } else if (__value__ == (2687422i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2687429i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2687451i32;
                    } else {
                        _gotoNext = 2688171i32;
                    };
                } else if (__value__ == (2687451i32)) {
                    _gotoNext = 2687455i32;
                } else if (__value__ == (2687455i32)) {
                    {
                        _c_2687462 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2687462 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2687482i32;
                            } else if (__value__ == (_c_2687462 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2687534i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2687462 : Bool) && (_c_2687462 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2687627i32;
                            } else if (__value__ == (((_base_2687112 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2687462) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2687462) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2687919i32;
                            } else {
                                _gotoNext = 2688161i32;
                            };
                        };
                    };
                } else if (__value__ == (2687482i32)) {
                    _underscores_2686953 = true;
                    _i++;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2687534i32)) {
                    if (_sawdot_2687355) {
                        _gotoNext = 2687562i32;
                    } else {
                        _gotoNext = 2687587i32;
                    };
                } else if (__value__ == (2687562i32)) {
                    _loopBreak = true;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2687587i32)) {
                    _sawdot_2687355 = true;
                    _dp_2687414 = _nd_2687392;
                    _i++;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2687627i32)) {
                    _sawdigits_2687372 = true;
                    if (((_c_2687462 == (48 : stdgo.GoUInt8)) && (_nd_2687392 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2687700i32;
                    } else {
                        _gotoNext = 2687756i32;
                    };
                } else if (__value__ == (2687700i32)) {
                    _dp_2687414--;
                    _i++;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2687756i32)) {
                    _nd_2687392++;
                    if ((_ndMant_2687401 < _maxMantDigits_2687132 : Bool)) {
                        _gotoNext = 2687790i32;
                    } else if (_c_2687462 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2687880i32;
                    } else {
                        _gotoNext = 2687907i32;
                    };
                } else if (__value__ == (2687790i32)) {
                    _mantissa = (_mantissa * (_base_2687112) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2687462 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2687401++;
                    _gotoNext = 2687907i32;
                } else if (__value__ == (2687880i32)) {
                    _trunc = true;
                    _gotoNext = 2687907i32;
                } else if (__value__ == (2687907i32)) {
                    _i++;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2687919i32)) {
                    _sawdigits_2687372 = true;
                    _nd_2687392++;
                    if ((_ndMant_2687401 < _maxMantDigits_2687132 : Bool)) {
                        _gotoNext = 2688031i32;
                    } else {
                        _gotoNext = 2688119i32;
                    };
                } else if (__value__ == (2688031i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2687462) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2687401++;
                    _gotoNext = 2688146i32;
                } else if (__value__ == (2688119i32)) {
                    _gotoNext = 2688119i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2688146i32;
                } else if (__value__ == (2688146i32)) {
                    _i++;
                    _gotoNext = 2687429i32;
                } else if (__value__ == (2688161i32)) {
                    _gotoNext = 2688171i32;
                } else if (__value__ == (2688171i32)) {
                    if (!_sawdigits_2687372) {
                        _gotoNext = 2688185i32;
                    } else {
                        _gotoNext = 2688200i32;
                    };
                } else if (__value__ == (2688185i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688200i32;
                } else if (__value__ == (2688200i32)) {
                    if (!_sawdot_2687355) {
                        _gotoNext = 2688211i32;
                    } else {
                        _gotoNext = 2688228i32;
                    };
                } else if (__value__ == (2688211i32)) {
                    _dp_2687414 = _nd_2687392;
                    _gotoNext = 2688228i32;
                } else if (__value__ == (2688228i32)) {
                    if (_base_2687112 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2688242i32;
                    } else {
                        _gotoNext = 2688487i32;
                    };
                } else if (__value__ == (2688242i32)) {
                    _dp_2687414 = (_dp_2687414 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2687401 = (_ndMant_2687401 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2688487i32;
                } else if (__value__ == (2688487i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2687177) : Bool)) {
                        _gotoNext = 2688527i32;
                    } else if (_base_2687112 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2688960i32;
                    } else {
                        _gotoNext = 2689001i32;
                    };
                } else if (__value__ == (2688527i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2688552i32;
                    } else {
                        _gotoNext = 2688570i32;
                    };
                } else if (__value__ == (2688552i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688570i32;
                } else if (__value__ == (2688570i32)) {
                    _esign_2688570 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2688598i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2688631i32;
                    } else {
                        _gotoNext = 2688660i32;
                    };
                } else if (__value__ == (2688598i32)) {
                    _i++;
                    _gotoNext = 2688660i32;
                } else if (__value__ == (2688631i32)) {
                    _i++;
                    _esign_2688570 = (-1 : stdgo.GoInt);
                    _gotoNext = 2688660i32;
                } else if (__value__ == (2688660i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2688703i32;
                    } else {
                        _gotoNext = 2688721i32;
                    };
                } else if (__value__ == (2688703i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2688721i32;
                } else if (__value__ == (2688721i32)) {
                    _e_2688721 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2688730i32;
                } else if (__value__ == (2688730i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2688799i32;
                    } else {
                        _gotoNext = 2688922i32;
                    };
                } else if (__value__ == (2688795i32)) {
                    _i++;
                    _gotoNext = 2688730i32;
                } else if (__value__ == (2688799i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2688819i32;
                    } else {
                        _gotoNext = 2688865i32;
                    };
                } else if (__value__ == (2688819i32)) {
                    _underscores_2686953 = true;
                    _i++;
                    _gotoNext = 2688730i32;
                } else if (__value__ == (2688865i32)) {
                    if ((_e_2688721 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2688878i32;
                    } else {
                        _gotoNext = 2688795i32;
                    };
                } else if (__value__ == (2688878i32)) {
                    _e_2688721 = (((_e_2688721 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2688795i32;
                } else if (__value__ == (2688922i32)) {
                    _dp_2687414 = (_dp_2687414 + ((_e_2688721 * _esign_2688570 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2689001i32;
                } else if (__value__ == (2688960i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689001i32;
                } else if (__value__ == (2689001i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2689018i32;
                    } else {
                        _gotoNext = 2689045i32;
                    };
                } else if (__value__ == (2689018i32)) {
                    _exp = (_dp_2687414 - _ndMant_2687401 : stdgo.GoInt);
                    _gotoNext = 2689045i32;
                } else if (__value__ == (2689045i32)) {
                    if ((_underscores_2686953 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2689084i32;
                    } else {
                        _gotoNext = 2689100i32;
                    };
                } else if (__value__ == (2689084i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2689100i32;
                } else if (__value__ == (2689100i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
