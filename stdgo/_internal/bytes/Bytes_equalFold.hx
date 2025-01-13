package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2862709:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2862581:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2862498:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2861992:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2861979:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2863257:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2862712:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2862584:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2862502:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2861931:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2861931 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2861939i32;
                } else if (__value__ == (2861939i32)) {
                    if (((_i_2861931 < (_s.length) : Bool) && (_i_2861931 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2861975i32;
                    } else {
                        _gotoNext = 2862364i32;
                    };
                } else if (__value__ == (2861975i32)) {
                    _sr_2861979 = _s[(_i_2861931 : stdgo.GoInt)];
                    _tr_2861992 = _t[(_i_2861931 : stdgo.GoInt)];
                    if (((_sr_2861979 | _tr_2861992 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2862031i32;
                    } else {
                        _gotoNext = 2862075i32;
                    };
                } else if (__value__ == (2862031i32)) {
                    _gotoNext = 2862389i32;
                } else if (__value__ == (2862075i32)) {
                    if (_tr_2861992 == (_sr_2861979)) {
                        _gotoNext = 2862087i32;
                    } else {
                        _gotoNext = 2862152i32;
                    };
                } else if (__value__ == (2862087i32)) {
                    _i_2861931++;
                    _gotoNext = 2861939i32;
                } else if (__value__ == (2862152i32)) {
                    if ((_tr_2861992 < _sr_2861979 : Bool)) {
                        _gotoNext = 2862163i32;
                    } else {
                        _gotoNext = 2862238i32;
                    };
                } else if (__value__ == (2862163i32)) {
                    {
                        final __tmp__0 = _sr_2861979;
                        final __tmp__1 = _tr_2861992;
                        _tr_2861992 = __tmp__0;
                        _sr_2861979 = __tmp__1;
                    };
                    _gotoNext = 2862238i32;
                } else if (__value__ == (2862238i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2861979 : Bool) && (_sr_2861979 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2861992 == ((_sr_2861979 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2862284i32;
                    } else {
                        _gotoNext = 2862304i32;
                    };
                } else if (__value__ == (2862284i32)) {
                    _i_2861931++;
                    _gotoNext = 2861939i32;
                } else if (__value__ == (2862304i32)) {
                    return false;
                    _i_2861931++;
                    _gotoNext = 2861939i32;
                } else if (__value__ == (2862364i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2862389i32;
                } else if (__value__ == (2862389i32)) {
                    _s = (_s.__slice__(_i_2861931) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2861931) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2862424i32;
                } else if (__value__ == (2862424i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2862455i32;
                    } else {
                        _gotoNext = 2863430i32;
                    };
                } else if (__value__ == (2862455i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2862536i32;
                    } else {
                        _gotoNext = 2862576i32;
                    };
                } else if (__value__ == (2862536i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2862498 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2862640i32;
                } else if (__value__ == (2862576i32)) {
                    _gotoNext = 2862576i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2862581 = __tmp__._0;
                        _size_2862584 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2862581;
                        final __tmp__1 = (_s.__slice__(_size_2862584) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2862498 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2862640i32;
                } else if (__value__ == (2862640i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2862664i32;
                    } else {
                        _gotoNext = 2862704i32;
                    };
                } else if (__value__ == (2862664i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2862502 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2862840i32;
                } else if (__value__ == (2862704i32)) {
                    _gotoNext = 2862704i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2862709 = __tmp__._0;
                        _size_2862712 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2862709;
                        final __tmp__1 = (_t.__slice__(_size_2862712) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2862502 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2862840i32;
                } else if (__value__ == (2862840i32)) {
                    if (_tr_2862502 == (_sr_2862498)) {
                        _gotoNext = 2862852i32;
                    } else {
                        _gotoNext = 2862917i32;
                    };
                } else if (__value__ == (2862852i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2862424i32;
                } else if (__value__ == (2862917i32)) {
                    if ((_tr_2862502 < _sr_2862498 : Bool)) {
                        _gotoNext = 2862928i32;
                    } else {
                        _gotoNext = 2862982i32;
                    };
                } else if (__value__ == (2862928i32)) {
                    {
                        final __tmp__0 = _sr_2862498;
                        final __tmp__1 = _tr_2862502;
                        _tr_2862502 = __tmp__0;
                        _sr_2862498 = __tmp__1;
                    };
                    _gotoNext = 2862982i32;
                } else if (__value__ == (2862982i32)) {
                    if ((_tr_2862502 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2863004i32;
                    } else {
                        _gotoNext = 2863257i32;
                    };
                } else if (__value__ == (2863004i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2862498 : Bool) && (_sr_2862498 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2862502 == ((_sr_2862498 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2863104i32;
                    } else {
                        _gotoNext = 2863127i32;
                    };
                } else if (__value__ == (2863104i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2862424i32;
                } else if (__value__ == (2863127i32)) {
                    return false;
                    _gotoNext = 2863257i32;
                } else if (__value__ == (2863257i32)) {
                    _r_2863257 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2862498);
                    var __blank__ = 0i32;
                    _gotoNext = 2863287i32;
                } else if (__value__ == (2863287i32)) {
                    if (((_r_2863257 != _sr_2862498) && (_r_2863257 < _tr_2862502 : Bool) : Bool)) {
                        _gotoNext = 2863309i32;
                    } else {
                        _gotoNext = 2863346i32;
                    };
                } else if (__value__ == (2863309i32)) {
                    _r_2863257 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2863257);
                    _gotoNext = 2863287i32;
                } else if (__value__ == (2863346i32)) {
                    if (_r_2863257 == (_tr_2862502)) {
                        _gotoNext = 2863357i32;
                    } else {
                        _gotoNext = 2863377i32;
                    };
                } else if (__value__ == (2863357i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2862424i32;
                } else if (__value__ == (2863377i32)) {
                    return false;
                    _gotoNext = 2862424i32;
                } else if (__value__ == (2863430i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
