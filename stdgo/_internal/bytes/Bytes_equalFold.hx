package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2991054:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2990968:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2990462:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2990449:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2991727:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2991182:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2991179:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2991051:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2990972:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2990401:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2990401 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2990409i32;
                } else if (__value__ == (2990409i32)) {
                    if (((_i_2990401 < (_s.length) : Bool) && (_i_2990401 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2990445i32;
                    } else {
                        _gotoNext = 2990834i32;
                    };
                } else if (__value__ == (2990445i32)) {
                    _sr_2990449 = _s[(_i_2990401 : stdgo.GoInt)];
                    _tr_2990462 = _t[(_i_2990401 : stdgo.GoInt)];
                    if (((_sr_2990449 | _tr_2990462 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2990501i32;
                    } else {
                        _gotoNext = 2990545i32;
                    };
                } else if (__value__ == (2990501i32)) {
                    _gotoNext = 2990859i32;
                } else if (__value__ == (2990545i32)) {
                    if (_tr_2990462 == (_sr_2990449)) {
                        _gotoNext = 2990557i32;
                    } else {
                        _gotoNext = 2990622i32;
                    };
                } else if (__value__ == (2990557i32)) {
                    _i_2990401++;
                    _gotoNext = 2990409i32;
                } else if (__value__ == (2990622i32)) {
                    if ((_tr_2990462 < _sr_2990449 : Bool)) {
                        _gotoNext = 2990633i32;
                    } else {
                        _gotoNext = 2990708i32;
                    };
                } else if (__value__ == (2990633i32)) {
                    {
                        final __tmp__0 = _sr_2990449;
                        final __tmp__1 = _tr_2990462;
                        _tr_2990462 = __tmp__0;
                        _sr_2990449 = __tmp__1;
                    };
                    _gotoNext = 2990708i32;
                } else if (__value__ == (2990708i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2990449 : Bool) && (_sr_2990449 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2990462 == ((_sr_2990449 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2990754i32;
                    } else {
                        _gotoNext = 2990774i32;
                    };
                } else if (__value__ == (2990754i32)) {
                    _i_2990401++;
                    _gotoNext = 2990409i32;
                } else if (__value__ == (2990774i32)) {
                    return false;
                    _i_2990401++;
                    _gotoNext = 2990409i32;
                } else if (__value__ == (2990834i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2990859i32;
                } else if (__value__ == (2990859i32)) {
                    _s = (_s.__slice__(_i_2990401) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2990401) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2990894i32;
                } else if (__value__ == (2990894i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2990925i32;
                    } else {
                        _gotoNext = 2991900i32;
                    };
                } else if (__value__ == (2990925i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2991006i32;
                    } else {
                        _gotoNext = 2991046i32;
                    };
                } else if (__value__ == (2991006i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2990968 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2991110i32;
                } else if (__value__ == (2991046i32)) {
                    _gotoNext = 2991046i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2991051 = __tmp__._0;
                        _size_2991054 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2991051;
                        final __tmp__1 = (_s.__slice__(_size_2991054) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2990968 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2991110i32;
                } else if (__value__ == (2991110i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2991134i32;
                    } else {
                        _gotoNext = 2991174i32;
                    };
                } else if (__value__ == (2991134i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2990972 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2991310i32;
                } else if (__value__ == (2991174i32)) {
                    _gotoNext = 2991174i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2991179 = __tmp__._0;
                        _size_2991182 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2991179;
                        final __tmp__1 = (_t.__slice__(_size_2991182) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2990972 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2991310i32;
                } else if (__value__ == (2991310i32)) {
                    if (_tr_2990972 == (_sr_2990968)) {
                        _gotoNext = 2991322i32;
                    } else {
                        _gotoNext = 2991387i32;
                    };
                } else if (__value__ == (2991322i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2990894i32;
                } else if (__value__ == (2991387i32)) {
                    if ((_tr_2990972 < _sr_2990968 : Bool)) {
                        _gotoNext = 2991398i32;
                    } else {
                        _gotoNext = 2991452i32;
                    };
                } else if (__value__ == (2991398i32)) {
                    {
                        final __tmp__0 = _sr_2990968;
                        final __tmp__1 = _tr_2990972;
                        _tr_2990972 = __tmp__0;
                        _sr_2990968 = __tmp__1;
                    };
                    _gotoNext = 2991452i32;
                } else if (__value__ == (2991452i32)) {
                    if ((_tr_2990972 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2991474i32;
                    } else {
                        _gotoNext = 2991727i32;
                    };
                } else if (__value__ == (2991474i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2990968 : Bool) && (_sr_2990968 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2990972 == ((_sr_2990968 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2991574i32;
                    } else {
                        _gotoNext = 2991597i32;
                    };
                } else if (__value__ == (2991574i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2990894i32;
                } else if (__value__ == (2991597i32)) {
                    return false;
                    _gotoNext = 2991727i32;
                } else if (__value__ == (2991727i32)) {
                    _r_2991727 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2990968);
                    var __blank__ = 0i32;
                    _gotoNext = 2991757i32;
                } else if (__value__ == (2991757i32)) {
                    if (((_r_2991727 != _sr_2990968) && (_r_2991727 < _tr_2990972 : Bool) : Bool)) {
                        _gotoNext = 2991779i32;
                    } else {
                        _gotoNext = 2991816i32;
                    };
                } else if (__value__ == (2991779i32)) {
                    _r_2991727 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2991727);
                    _gotoNext = 2991757i32;
                } else if (__value__ == (2991816i32)) {
                    if (_r_2991727 == (_tr_2990972)) {
                        _gotoNext = 2991827i32;
                    } else {
                        _gotoNext = 2991847i32;
                    };
                } else if (__value__ == (2991827i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2990894i32;
                } else if (__value__ == (2991847i32)) {
                    return false;
                    _gotoNext = 2990894i32;
                } else if (__value__ == (2991900i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
