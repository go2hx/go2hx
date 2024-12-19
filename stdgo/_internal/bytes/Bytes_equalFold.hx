package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2869527:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2868854:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2868851:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2868768:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2868249:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2868982:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2868979:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2868772:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2868262:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2868201:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2868201 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2868209i32;
                } else if (__value__ == (2868209i32)) {
                    if (((_i_2868201 < (_s.length) : Bool) && (_i_2868201 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2868245i32;
                    } else {
                        _gotoNext = 2868634i32;
                    };
                } else if (__value__ == (2868245i32)) {
                    _sr_2868249 = _s[(_i_2868201 : stdgo.GoInt)];
                    _tr_2868262 = _t[(_i_2868201 : stdgo.GoInt)];
                    if (((_sr_2868249 | _tr_2868262 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2868301i32;
                    } else {
                        _gotoNext = 2868345i32;
                    };
                } else if (__value__ == (2868301i32)) {
                    _gotoNext = 2868659i32;
                } else if (__value__ == (2868345i32)) {
                    if (_tr_2868262 == (_sr_2868249)) {
                        _gotoNext = 2868357i32;
                    } else {
                        _gotoNext = 2868422i32;
                    };
                } else if (__value__ == (2868357i32)) {
                    _i_2868201++;
                    _gotoNext = 2868209i32;
                } else if (__value__ == (2868422i32)) {
                    if ((_tr_2868262 < _sr_2868249 : Bool)) {
                        _gotoNext = 2868433i32;
                    } else {
                        _gotoNext = 2868508i32;
                    };
                } else if (__value__ == (2868433i32)) {
                    {
                        final __tmp__0 = _sr_2868249;
                        final __tmp__1 = _tr_2868262;
                        _tr_2868262 = __tmp__0;
                        _sr_2868249 = __tmp__1;
                    };
                    _gotoNext = 2868508i32;
                } else if (__value__ == (2868508i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2868249 : Bool) && (_sr_2868249 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2868262 == ((_sr_2868249 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2868554i32;
                    } else {
                        _gotoNext = 2868574i32;
                    };
                } else if (__value__ == (2868554i32)) {
                    _i_2868201++;
                    _gotoNext = 2868209i32;
                } else if (__value__ == (2868574i32)) {
                    return false;
                    _i_2868201++;
                    _gotoNext = 2868209i32;
                } else if (__value__ == (2868634i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2868659i32;
                } else if (__value__ == (2868659i32)) {
                    _s = (_s.__slice__(_i_2868201) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2868201) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2868694i32;
                } else if (__value__ == (2868694i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2868725i32;
                    } else {
                        _gotoNext = 2869700i32;
                    };
                } else if (__value__ == (2868725i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2868806i32;
                    } else {
                        _gotoNext = 2868846i32;
                    };
                } else if (__value__ == (2868806i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2868768 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2868910i32;
                } else if (__value__ == (2868846i32)) {
                    _gotoNext = 2868846i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2868851 = __tmp__._0;
                        _size_2868854 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2868851;
                        final __tmp__1 = (_s.__slice__(_size_2868854) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2868768 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2868910i32;
                } else if (__value__ == (2868910i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2868934i32;
                    } else {
                        _gotoNext = 2868974i32;
                    };
                } else if (__value__ == (2868934i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2868772 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2869110i32;
                } else if (__value__ == (2868974i32)) {
                    _gotoNext = 2868974i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2868979 = __tmp__._0;
                        _size_2868982 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2868979;
                        final __tmp__1 = (_t.__slice__(_size_2868982) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2868772 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2869110i32;
                } else if (__value__ == (2869110i32)) {
                    if (_tr_2868772 == (_sr_2868768)) {
                        _gotoNext = 2869122i32;
                    } else {
                        _gotoNext = 2869187i32;
                    };
                } else if (__value__ == (2869122i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2868694i32;
                } else if (__value__ == (2869187i32)) {
                    if ((_tr_2868772 < _sr_2868768 : Bool)) {
                        _gotoNext = 2869198i32;
                    } else {
                        _gotoNext = 2869252i32;
                    };
                } else if (__value__ == (2869198i32)) {
                    {
                        final __tmp__0 = _sr_2868768;
                        final __tmp__1 = _tr_2868772;
                        _tr_2868772 = __tmp__0;
                        _sr_2868768 = __tmp__1;
                    };
                    _gotoNext = 2869252i32;
                } else if (__value__ == (2869252i32)) {
                    if ((_tr_2868772 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2869274i32;
                    } else {
                        _gotoNext = 2869527i32;
                    };
                } else if (__value__ == (2869274i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2868768 : Bool) && (_sr_2868768 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2868772 == ((_sr_2868768 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2869374i32;
                    } else {
                        _gotoNext = 2869397i32;
                    };
                } else if (__value__ == (2869374i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2868694i32;
                } else if (__value__ == (2869397i32)) {
                    return false;
                    _gotoNext = 2869527i32;
                } else if (__value__ == (2869527i32)) {
                    _r_2869527 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2868768);
                    var __blank__ = 0i32;
                    _gotoNext = 2869557i32;
                } else if (__value__ == (2869557i32)) {
                    if (((_r_2869527 != _sr_2868768) && (_r_2869527 < _tr_2868772 : Bool) : Bool)) {
                        _gotoNext = 2869579i32;
                    } else {
                        _gotoNext = 2869616i32;
                    };
                } else if (__value__ == (2869579i32)) {
                    _r_2869527 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2869527);
                    _gotoNext = 2869557i32;
                } else if (__value__ == (2869616i32)) {
                    if (_r_2869527 == (_tr_2868772)) {
                        _gotoNext = 2869627i32;
                    } else {
                        _gotoNext = 2869647i32;
                    };
                } else if (__value__ == (2869627i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2868694i32;
                } else if (__value__ == (2869647i32)) {
                    return false;
                    _gotoNext = 2868694i32;
                } else if (__value__ == (2869700i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
