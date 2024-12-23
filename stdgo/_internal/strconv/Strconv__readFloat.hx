package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _c_2656941:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2656880:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2656871:stdgo.GoInt = (0 : stdgo.GoInt);
        var _esign_2658049:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2656834:Bool = false;
        var _maxMantDigits_2656611:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_2656591:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _loopBreak = false;
        var _sawdigits_2656851:Bool = false;
        var _e_2658200:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_2656893:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2656656:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _underscores_2656432:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2656432 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2656488i32;
                    } else {
                        _gotoNext = 2656503i32;
                    };
                } else if (__value__ == (2656488i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2656503i32;
                } else if (__value__ == (2656503i32)) {
                    _gotoNext = 2656503i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2656513i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2656538i32;
                    } else {
                        _gotoNext = 2656591i32;
                    };
                } else if (__value__ == (2656513i32)) {
                    _i++;
                    _gotoNext = 2656591i32;
                } else if (__value__ == (2656538i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2656591i32;
                } else if (__value__ == (2656591i32)) {
                    _base_2656591 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2656611 = (19 : stdgo.GoInt);
                    _expChar_2656656 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2656733i32;
                    } else {
                        _gotoNext = 2656834i32;
                    };
                } else if (__value__ == (2656733i32)) {
                    _base_2656591 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2656611 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2656656 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2656834i32;
                } else if (__value__ == (2656834i32)) {
                    _sawdot_2656834 = false;
                    _sawdigits_2656851 = false;
                    _nd_2656871 = (0 : stdgo.GoInt);
                    _ndMant_2656880 = (0 : stdgo.GoInt);
                    _dp_2656893 = (0 : stdgo.GoInt);
                    _gotoNext = 2656901i32;
                } else if (__value__ == (2656901i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2656908i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2656930i32;
                    } else {
                        _gotoNext = 2657650i32;
                    };
                } else if (__value__ == (2656930i32)) {
                    _gotoNext = 2656934i32;
                } else if (__value__ == (2656934i32)) {
                    {
                        _c_2656941 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2656941 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2656961i32;
                            } else if (__value__ == (_c_2656941 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2657013i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2656941 : Bool) && (_c_2656941 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2657106i32;
                            } else if (__value__ == (((_base_2656591 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2656941) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2656941) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2657398i32;
                            } else {
                                _gotoNext = 2657640i32;
                            };
                        };
                    };
                } else if (__value__ == (2656961i32)) {
                    _underscores_2656432 = true;
                    _i++;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2657013i32)) {
                    if (_sawdot_2656834) {
                        _gotoNext = 2657041i32;
                    } else {
                        _gotoNext = 2657066i32;
                    };
                } else if (__value__ == (2657041i32)) {
                    _loopBreak = true;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2657066i32)) {
                    _sawdot_2656834 = true;
                    _dp_2656893 = _nd_2656871;
                    _i++;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2657106i32)) {
                    _sawdigits_2656851 = true;
                    if (((_c_2656941 == (48 : stdgo.GoUInt8)) && (_nd_2656871 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2657179i32;
                    } else {
                        _gotoNext = 2657235i32;
                    };
                } else if (__value__ == (2657179i32)) {
                    _dp_2656893--;
                    _i++;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2657235i32)) {
                    _nd_2656871++;
                    if ((_ndMant_2656880 < _maxMantDigits_2656611 : Bool)) {
                        _gotoNext = 2657269i32;
                    } else if (_c_2656941 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2657359i32;
                    } else {
                        _gotoNext = 2657386i32;
                    };
                } else if (__value__ == (2657269i32)) {
                    _mantissa = (_mantissa * (_base_2656591) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2656941 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2656880++;
                    _gotoNext = 2657386i32;
                } else if (__value__ == (2657359i32)) {
                    _trunc = true;
                    _gotoNext = 2657386i32;
                } else if (__value__ == (2657386i32)) {
                    _i++;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2657398i32)) {
                    _sawdigits_2656851 = true;
                    _nd_2656871++;
                    if ((_ndMant_2656880 < _maxMantDigits_2656611 : Bool)) {
                        _gotoNext = 2657510i32;
                    } else {
                        _gotoNext = 2657598i32;
                    };
                } else if (__value__ == (2657510i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2656941) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2656880++;
                    _gotoNext = 2657625i32;
                } else if (__value__ == (2657598i32)) {
                    _gotoNext = 2657598i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2657625i32;
                } else if (__value__ == (2657625i32)) {
                    _i++;
                    _gotoNext = 2656908i32;
                } else if (__value__ == (2657640i32)) {
                    _gotoNext = 2657650i32;
                } else if (__value__ == (2657650i32)) {
                    if (!_sawdigits_2656851) {
                        _gotoNext = 2657664i32;
                    } else {
                        _gotoNext = 2657679i32;
                    };
                } else if (__value__ == (2657664i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2657679i32;
                } else if (__value__ == (2657679i32)) {
                    if (!_sawdot_2656834) {
                        _gotoNext = 2657690i32;
                    } else {
                        _gotoNext = 2657707i32;
                    };
                } else if (__value__ == (2657690i32)) {
                    _dp_2656893 = _nd_2656871;
                    _gotoNext = 2657707i32;
                } else if (__value__ == (2657707i32)) {
                    if (_base_2656591 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2657721i32;
                    } else {
                        _gotoNext = 2657966i32;
                    };
                } else if (__value__ == (2657721i32)) {
                    _dp_2656893 = (_dp_2656893 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2656880 = (_ndMant_2656880 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2657966i32;
                } else if (__value__ == (2657966i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2656656) : Bool)) {
                        _gotoNext = 2658006i32;
                    } else if (_base_2656591 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2658439i32;
                    } else {
                        _gotoNext = 2658480i32;
                    };
                } else if (__value__ == (2658006i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2658031i32;
                    } else {
                        _gotoNext = 2658049i32;
                    };
                } else if (__value__ == (2658031i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658049i32;
                } else if (__value__ == (2658049i32)) {
                    _esign_2658049 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2658077i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2658110i32;
                    } else {
                        _gotoNext = 2658139i32;
                    };
                } else if (__value__ == (2658077i32)) {
                    _i++;
                    _gotoNext = 2658139i32;
                } else if (__value__ == (2658110i32)) {
                    _i++;
                    _esign_2658049 = (-1 : stdgo.GoInt);
                    _gotoNext = 2658139i32;
                } else if (__value__ == (2658139i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2658182i32;
                    } else {
                        _gotoNext = 2658200i32;
                    };
                } else if (__value__ == (2658182i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658200i32;
                } else if (__value__ == (2658200i32)) {
                    _e_2658200 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2658209i32;
                } else if (__value__ == (2658209i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2658278i32;
                    } else {
                        _gotoNext = 2658401i32;
                    };
                } else if (__value__ == (2658274i32)) {
                    _i++;
                    _gotoNext = 2658209i32;
                } else if (__value__ == (2658278i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2658298i32;
                    } else {
                        _gotoNext = 2658344i32;
                    };
                } else if (__value__ == (2658298i32)) {
                    _underscores_2656432 = true;
                    _i++;
                    _gotoNext = 2658209i32;
                } else if (__value__ == (2658344i32)) {
                    if ((_e_2658200 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2658357i32;
                    } else {
                        _gotoNext = 2658274i32;
                    };
                } else if (__value__ == (2658357i32)) {
                    _e_2658200 = (((_e_2658200 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2658274i32;
                } else if (__value__ == (2658401i32)) {
                    _dp_2656893 = (_dp_2656893 + ((_e_2658200 * _esign_2658049 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2658480i32;
                } else if (__value__ == (2658439i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658480i32;
                } else if (__value__ == (2658480i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2658497i32;
                    } else {
                        _gotoNext = 2658524i32;
                    };
                } else if (__value__ == (2658497i32)) {
                    _exp = (_dp_2656893 - _ndMant_2656880 : stdgo.GoInt);
                    _gotoNext = 2658524i32;
                } else if (__value__ == (2658524i32)) {
                    if ((_underscores_2656432 && !stdgo._internal.strconv.Strconv__underscoreOK._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2658563i32;
                    } else {
                        _gotoNext = 2658579i32;
                    };
                } else if (__value__ == (2658563i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2658579i32;
                } else if (__value__ == (2658579i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
