package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_2720148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2719997:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_2718828:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2718782:Bool = false;
        var _base_2718539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2718889:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _dp_2718841:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2718799:Bool = false;
        var _maxMantDigits_2718559:stdgo.GoInt = (0 : stdgo.GoInt);
        var _underscores_2718380:Bool = false;
        var _nd_2718819:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2718604:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2718380 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2718436i32;
                    } else {
                        _gotoNext = 2718451i32;
                    };
                } else if (__value__ == (2718436i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2718451i32;
                } else if (__value__ == (2718451i32)) {
                    _gotoNext = 2718451i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2718461i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2718486i32;
                    } else {
                        _gotoNext = 2718539i32;
                    };
                } else if (__value__ == (2718461i32)) {
                    _i++;
                    _gotoNext = 2718539i32;
                } else if (__value__ == (2718486i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2718539i32;
                } else if (__value__ == (2718539i32)) {
                    _base_2718539 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2718559 = (19 : stdgo.GoInt);
                    _expChar_2718604 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2718681i32;
                    } else {
                        _gotoNext = 2718782i32;
                    };
                } else if (__value__ == (2718681i32)) {
                    _base_2718539 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2718559 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2718604 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2718782i32;
                } else if (__value__ == (2718782i32)) {
                    _sawdot_2718782 = false;
                    _sawdigits_2718799 = false;
                    _nd_2718819 = (0 : stdgo.GoInt);
                    _ndMant_2718828 = (0 : stdgo.GoInt);
                    _dp_2718841 = (0 : stdgo.GoInt);
                    _gotoNext = 2718849i32;
                } else if (__value__ == (2718849i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2718856i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2718878i32;
                    } else {
                        _gotoNext = 2719598i32;
                    };
                } else if (__value__ == (2718878i32)) {
                    _gotoNext = 2718882i32;
                } else if (__value__ == (2718882i32)) {
                    {
                        _c_2718889 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2718889 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2718909i32;
                            } else if (__value__ == (_c_2718889 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2718961i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2718889 : Bool) && (_c_2718889 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2719054i32;
                            } else if (__value__ == (((_base_2718539 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2718889) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2718889) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2719346i32;
                            } else {
                                _gotoNext = 2719588i32;
                            };
                        };
                    };
                } else if (__value__ == (2718909i32)) {
                    _underscores_2718380 = true;
                    _i++;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2718961i32)) {
                    if (_sawdot_2718782) {
                        _gotoNext = 2718989i32;
                    } else {
                        _gotoNext = 2719014i32;
                    };
                } else if (__value__ == (2718989i32)) {
                    _loopBreak = true;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2719014i32)) {
                    _sawdot_2718782 = true;
                    _dp_2718841 = _nd_2718819;
                    _i++;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2719054i32)) {
                    _sawdigits_2718799 = true;
                    if (((_c_2718889 == (48 : stdgo.GoUInt8)) && (_nd_2718819 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2719127i32;
                    } else {
                        _gotoNext = 2719183i32;
                    };
                } else if (__value__ == (2719127i32)) {
                    _dp_2718841--;
                    _i++;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2719183i32)) {
                    _nd_2718819++;
                    if ((_ndMant_2718828 < _maxMantDigits_2718559 : Bool)) {
                        _gotoNext = 2719217i32;
                    } else if (_c_2718889 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2719307i32;
                    } else {
                        _gotoNext = 2719334i32;
                    };
                } else if (__value__ == (2719217i32)) {
                    _mantissa = (_mantissa * (_base_2718539) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2718889 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2718828++;
                    _gotoNext = 2719334i32;
                } else if (__value__ == (2719307i32)) {
                    _trunc = true;
                    _gotoNext = 2719334i32;
                } else if (__value__ == (2719334i32)) {
                    _i++;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2719346i32)) {
                    _sawdigits_2718799 = true;
                    _nd_2718819++;
                    if ((_ndMant_2718828 < _maxMantDigits_2718559 : Bool)) {
                        _gotoNext = 2719458i32;
                    } else {
                        _gotoNext = 2719546i32;
                    };
                } else if (__value__ == (2719458i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2718889) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2718828++;
                    _gotoNext = 2719573i32;
                } else if (__value__ == (2719546i32)) {
                    _gotoNext = 2719546i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2719573i32;
                } else if (__value__ == (2719573i32)) {
                    _i++;
                    _gotoNext = 2718856i32;
                } else if (__value__ == (2719588i32)) {
                    _gotoNext = 2719598i32;
                } else if (__value__ == (2719598i32)) {
                    if (!_sawdigits_2718799) {
                        _gotoNext = 2719612i32;
                    } else {
                        _gotoNext = 2719627i32;
                    };
                } else if (__value__ == (2719612i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2719627i32;
                } else if (__value__ == (2719627i32)) {
                    if (!_sawdot_2718782) {
                        _gotoNext = 2719638i32;
                    } else {
                        _gotoNext = 2719655i32;
                    };
                } else if (__value__ == (2719638i32)) {
                    _dp_2718841 = _nd_2718819;
                    _gotoNext = 2719655i32;
                } else if (__value__ == (2719655i32)) {
                    if (_base_2718539 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2719669i32;
                    } else {
                        _gotoNext = 2719914i32;
                    };
                } else if (__value__ == (2719669i32)) {
                    _dp_2718841 = (_dp_2718841 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2718828 = (_ndMant_2718828 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2719914i32;
                } else if (__value__ == (2719914i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2718604) : Bool)) {
                        _gotoNext = 2719954i32;
                    } else if (_base_2718539 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2720387i32;
                    } else {
                        _gotoNext = 2720428i32;
                    };
                } else if (__value__ == (2719954i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2719979i32;
                    } else {
                        _gotoNext = 2719997i32;
                    };
                } else if (__value__ == (2719979i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2719997i32;
                } else if (__value__ == (2719997i32)) {
                    _esign_2719997 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2720025i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2720058i32;
                    } else {
                        _gotoNext = 2720087i32;
                    };
                } else if (__value__ == (2720025i32)) {
                    _i++;
                    _gotoNext = 2720087i32;
                } else if (__value__ == (2720058i32)) {
                    _i++;
                    _esign_2719997 = (-1 : stdgo.GoInt);
                    _gotoNext = 2720087i32;
                } else if (__value__ == (2720087i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2720130i32;
                    } else {
                        _gotoNext = 2720148i32;
                    };
                } else if (__value__ == (2720130i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2720148i32;
                } else if (__value__ == (2720148i32)) {
                    _e_2720148 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2720157i32;
                } else if (__value__ == (2720157i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2720226i32;
                    } else {
                        _gotoNext = 2720349i32;
                    };
                } else if (__value__ == (2720222i32)) {
                    _i++;
                    _gotoNext = 2720157i32;
                } else if (__value__ == (2720226i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2720246i32;
                    } else {
                        _gotoNext = 2720292i32;
                    };
                } else if (__value__ == (2720246i32)) {
                    _underscores_2718380 = true;
                    _i++;
                    _gotoNext = 2720157i32;
                } else if (__value__ == (2720292i32)) {
                    if ((_e_2720148 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2720305i32;
                    } else {
                        _gotoNext = 2720222i32;
                    };
                } else if (__value__ == (2720305i32)) {
                    _e_2720148 = (((_e_2720148 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2720222i32;
                } else if (__value__ == (2720349i32)) {
                    _dp_2718841 = (_dp_2718841 + ((_e_2720148 * _esign_2719997 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2720428i32;
                } else if (__value__ == (2720387i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2720428i32;
                } else if (__value__ == (2720428i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2720445i32;
                    } else {
                        _gotoNext = 2720472i32;
                    };
                } else if (__value__ == (2720445i32)) {
                    _exp = (_dp_2718841 - _ndMant_2718828 : stdgo.GoInt);
                    _gotoNext = 2720472i32;
                } else if (__value__ == (2720472i32)) {
                    if ((_underscores_2718380 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2720511i32;
                    } else {
                        _gotoNext = 2720527i32;
                    };
                } else if (__value__ == (2720511i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2720527i32;
                } else if (__value__ == (2720527i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
