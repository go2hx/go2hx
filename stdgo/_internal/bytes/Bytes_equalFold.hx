package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2881965:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2881459:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2882179:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2882176:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2882051:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2881969:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2881446:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2881398:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2882724:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2882048:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2881398 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2881406i32;
                } else if (__value__ == (2881406i32)) {
                    if (((_i_2881398 < (_s.length) : Bool) && (_i_2881398 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2881442i32;
                    } else {
                        _gotoNext = 2881831i32;
                    };
                } else if (__value__ == (2881442i32)) {
                    _sr_2881446 = _s[(_i_2881398 : stdgo.GoInt)];
                    _tr_2881459 = _t[(_i_2881398 : stdgo.GoInt)];
                    if (((_sr_2881446 | _tr_2881459 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2881498i32;
                    } else {
                        _gotoNext = 2881542i32;
                    };
                } else if (__value__ == (2881498i32)) {
                    _gotoNext = 2881856i32;
                } else if (__value__ == (2881542i32)) {
                    if (_tr_2881459 == (_sr_2881446)) {
                        _gotoNext = 2881554i32;
                    } else {
                        _gotoNext = 2881619i32;
                    };
                } else if (__value__ == (2881554i32)) {
                    _i_2881398++;
                    _gotoNext = 2881406i32;
                } else if (__value__ == (2881619i32)) {
                    if ((_tr_2881459 < _sr_2881446 : Bool)) {
                        _gotoNext = 2881630i32;
                    } else {
                        _gotoNext = 2881705i32;
                    };
                } else if (__value__ == (2881630i32)) {
                    {
                        final __tmp__0 = _sr_2881446;
                        final __tmp__1 = _tr_2881459;
                        _tr_2881459 = __tmp__0;
                        _sr_2881446 = __tmp__1;
                    };
                    _gotoNext = 2881705i32;
                } else if (__value__ == (2881705i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2881446 : Bool) && (_sr_2881446 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2881459 == ((_sr_2881446 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2881751i32;
                    } else {
                        _gotoNext = 2881771i32;
                    };
                } else if (__value__ == (2881751i32)) {
                    _i_2881398++;
                    _gotoNext = 2881406i32;
                } else if (__value__ == (2881771i32)) {
                    return false;
                    _i_2881398++;
                    _gotoNext = 2881406i32;
                } else if (__value__ == (2881831i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2881856i32;
                } else if (__value__ == (2881856i32)) {
                    _s = (_s.__slice__(_i_2881398) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2881398) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2881891i32;
                } else if (__value__ == (2881891i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2881922i32;
                    } else {
                        _gotoNext = 2882897i32;
                    };
                } else if (__value__ == (2881922i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2882003i32;
                    } else {
                        _gotoNext = 2882043i32;
                    };
                } else if (__value__ == (2882003i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2881965 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2882107i32;
                } else if (__value__ == (2882043i32)) {
                    _gotoNext = 2882043i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2882048 = __tmp__._0;
                        _size_2882051 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2882048;
                        final __tmp__1 = (_s.__slice__(_size_2882051) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2881965 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2882107i32;
                } else if (__value__ == (2882107i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2882131i32;
                    } else {
                        _gotoNext = 2882171i32;
                    };
                } else if (__value__ == (2882131i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2881969 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2882307i32;
                } else if (__value__ == (2882171i32)) {
                    _gotoNext = 2882171i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2882176 = __tmp__._0;
                        _size_2882179 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2882176;
                        final __tmp__1 = (_t.__slice__(_size_2882179) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2881969 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2882307i32;
                } else if (__value__ == (2882307i32)) {
                    if (_tr_2881969 == (_sr_2881965)) {
                        _gotoNext = 2882319i32;
                    } else {
                        _gotoNext = 2882384i32;
                    };
                } else if (__value__ == (2882319i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2881891i32;
                } else if (__value__ == (2882384i32)) {
                    if ((_tr_2881969 < _sr_2881965 : Bool)) {
                        _gotoNext = 2882395i32;
                    } else {
                        _gotoNext = 2882449i32;
                    };
                } else if (__value__ == (2882395i32)) {
                    {
                        final __tmp__0 = _sr_2881965;
                        final __tmp__1 = _tr_2881969;
                        _tr_2881969 = __tmp__0;
                        _sr_2881965 = __tmp__1;
                    };
                    _gotoNext = 2882449i32;
                } else if (__value__ == (2882449i32)) {
                    if ((_tr_2881969 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2882471i32;
                    } else {
                        _gotoNext = 2882724i32;
                    };
                } else if (__value__ == (2882471i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2881965 : Bool) && (_sr_2881965 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2881969 == ((_sr_2881965 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2882571i32;
                    } else {
                        _gotoNext = 2882594i32;
                    };
                } else if (__value__ == (2882571i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2881891i32;
                } else if (__value__ == (2882594i32)) {
                    return false;
                    _gotoNext = 2882724i32;
                } else if (__value__ == (2882724i32)) {
                    _r_2882724 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2881965);
                    var __blank__ = 0i32;
                    _gotoNext = 2882754i32;
                } else if (__value__ == (2882754i32)) {
                    if (((_r_2882724 != _sr_2881965) && (_r_2882724 < _tr_2881969 : Bool) : Bool)) {
                        _gotoNext = 2882776i32;
                    } else {
                        _gotoNext = 2882813i32;
                    };
                } else if (__value__ == (2882776i32)) {
                    _r_2882724 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2882724);
                    _gotoNext = 2882754i32;
                } else if (__value__ == (2882813i32)) {
                    if (_r_2882724 == (_tr_2881969)) {
                        _gotoNext = 2882824i32;
                    } else {
                        _gotoNext = 2882844i32;
                    };
                } else if (__value__ == (2882824i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2881891i32;
                } else if (__value__ == (2882844i32)) {
                    return false;
                    _gotoNext = 2881891i32;
                } else if (__value__ == (2882897i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
