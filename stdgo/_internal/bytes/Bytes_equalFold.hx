package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3140690:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3140642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3141423:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3141420:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3141295:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3141292:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3140703:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_3141213:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3141209:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3141968:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3140642 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3140650i32;
                } else if (__value__ == (3140650i32)) {
                    if (((_i_3140642 < (_s.length) : Bool) && (_i_3140642 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3140686i32;
                    } else {
                        _gotoNext = 3141075i32;
                    };
                } else if (__value__ == (3140686i32)) {
                    _sr_3140690 = _s[(_i_3140642 : stdgo.GoInt)];
                    _tr_3140703 = _t[(_i_3140642 : stdgo.GoInt)];
                    if (((_sr_3140690 | _tr_3140703 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3140742i32;
                    } else {
                        _gotoNext = 3140786i32;
                    };
                } else if (__value__ == (3140742i32)) {
                    _gotoNext = 3141100i32;
                } else if (__value__ == (3140786i32)) {
                    if (_tr_3140703 == (_sr_3140690)) {
                        _gotoNext = 3140798i32;
                    } else {
                        _gotoNext = 3140863i32;
                    };
                } else if (__value__ == (3140798i32)) {
                    _i_3140642++;
                    _gotoNext = 3140650i32;
                } else if (__value__ == (3140863i32)) {
                    if ((_tr_3140703 < _sr_3140690 : Bool)) {
                        _gotoNext = 3140874i32;
                    } else {
                        _gotoNext = 3140949i32;
                    };
                } else if (__value__ == (3140874i32)) {
                    {
                        final __tmp__0 = _sr_3140690;
                        final __tmp__1 = _tr_3140703;
                        _tr_3140703 = __tmp__0;
                        _sr_3140690 = __tmp__1;
                    };
                    _gotoNext = 3140949i32;
                } else if (__value__ == (3140949i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3140690 : Bool) && (_sr_3140690 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3140703 == ((_sr_3140690 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3140995i32;
                    } else {
                        _gotoNext = 3141015i32;
                    };
                } else if (__value__ == (3140995i32)) {
                    _i_3140642++;
                    _gotoNext = 3140650i32;
                } else if (__value__ == (3141015i32)) {
                    return false;
                    _i_3140642++;
                    _gotoNext = 3140650i32;
                } else if (__value__ == (3141075i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3141100i32;
                } else if (__value__ == (3141100i32)) {
                    _s = (_s.__slice__(_i_3140642) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3140642) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3141135i32;
                } else if (__value__ == (3141135i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3141166i32;
                    } else {
                        _gotoNext = 3142141i32;
                    };
                } else if (__value__ == (3141166i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3141247i32;
                    } else {
                        _gotoNext = 3141287i32;
                    };
                } else if (__value__ == (3141247i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3141209 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3141351i32;
                } else if (__value__ == (3141287i32)) {
                    _gotoNext = 3141287i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3141292 = __tmp__._0;
                        _size_3141295 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3141292;
                        final __tmp__1 = (_s.__slice__(_size_3141295) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3141209 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3141351i32;
                } else if (__value__ == (3141351i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3141375i32;
                    } else {
                        _gotoNext = 3141415i32;
                    };
                } else if (__value__ == (3141375i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3141213 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3141551i32;
                } else if (__value__ == (3141415i32)) {
                    _gotoNext = 3141415i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3141420 = __tmp__._0;
                        _size_3141423 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3141420;
                        final __tmp__1 = (_t.__slice__(_size_3141423) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3141213 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3141551i32;
                } else if (__value__ == (3141551i32)) {
                    if (_tr_3141213 == (_sr_3141209)) {
                        _gotoNext = 3141563i32;
                    } else {
                        _gotoNext = 3141628i32;
                    };
                } else if (__value__ == (3141563i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3141135i32;
                } else if (__value__ == (3141628i32)) {
                    if ((_tr_3141213 < _sr_3141209 : Bool)) {
                        _gotoNext = 3141639i32;
                    } else {
                        _gotoNext = 3141693i32;
                    };
                } else if (__value__ == (3141639i32)) {
                    {
                        final __tmp__0 = _sr_3141209;
                        final __tmp__1 = _tr_3141213;
                        _tr_3141213 = __tmp__0;
                        _sr_3141209 = __tmp__1;
                    };
                    _gotoNext = 3141693i32;
                } else if (__value__ == (3141693i32)) {
                    if ((_tr_3141213 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3141715i32;
                    } else {
                        _gotoNext = 3141968i32;
                    };
                } else if (__value__ == (3141715i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3141209 : Bool) && (_sr_3141209 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3141213 == ((_sr_3141209 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3141815i32;
                    } else {
                        _gotoNext = 3141838i32;
                    };
                } else if (__value__ == (3141815i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3141135i32;
                } else if (__value__ == (3141838i32)) {
                    return false;
                    _gotoNext = 3141968i32;
                } else if (__value__ == (3141968i32)) {
                    _r_3141968 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3141209);
                    var __blank__ = 0i32;
                    _gotoNext = 3141998i32;
                } else if (__value__ == (3141998i32)) {
                    if (((_r_3141968 != _sr_3141209) && (_r_3141968 < _tr_3141213 : Bool) : Bool)) {
                        _gotoNext = 3142020i32;
                    } else {
                        _gotoNext = 3142057i32;
                    };
                } else if (__value__ == (3142020i32)) {
                    _r_3141968 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3141968);
                    _gotoNext = 3141998i32;
                } else if (__value__ == (3142057i32)) {
                    if (_r_3141968 == (_tr_3141213)) {
                        _gotoNext = 3142068i32;
                    } else {
                        _gotoNext = 3142088i32;
                    };
                } else if (__value__ == (3142068i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3141135i32;
                } else if (__value__ == (3142088i32)) {
                    return false;
                    _gotoNext = 3141135i32;
                } else if (__value__ == (3142141i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
