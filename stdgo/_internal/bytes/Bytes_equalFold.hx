package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3003473:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3004228:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3003683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3003680:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3003555:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3002902:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3003552:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3003469:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3002963:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3002950:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3002902 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3002910i32;
                } else if (__value__ == (3002910i32)) {
                    if (((_i_3002902 < (_s.length) : Bool) && (_i_3002902 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3002946i32;
                    } else {
                        _gotoNext = 3003335i32;
                    };
                } else if (__value__ == (3002946i32)) {
                    _sr_3002950 = _s[(_i_3002902 : stdgo.GoInt)];
                    _tr_3002963 = _t[(_i_3002902 : stdgo.GoInt)];
                    if (((_sr_3002950 | _tr_3002963 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3003002i32;
                    } else {
                        _gotoNext = 3003046i32;
                    };
                } else if (__value__ == (3003002i32)) {
                    _gotoNext = 3003360i32;
                } else if (__value__ == (3003046i32)) {
                    if (_tr_3002963 == (_sr_3002950)) {
                        _gotoNext = 3003058i32;
                    } else {
                        _gotoNext = 3003123i32;
                    };
                } else if (__value__ == (3003058i32)) {
                    _i_3002902++;
                    _gotoNext = 3002910i32;
                } else if (__value__ == (3003123i32)) {
                    if ((_tr_3002963 < _sr_3002950 : Bool)) {
                        _gotoNext = 3003134i32;
                    } else {
                        _gotoNext = 3003209i32;
                    };
                } else if (__value__ == (3003134i32)) {
                    {
                        final __tmp__0 = _sr_3002950;
                        final __tmp__1 = _tr_3002963;
                        _tr_3002963 = __tmp__0;
                        _sr_3002950 = __tmp__1;
                    };
                    _gotoNext = 3003209i32;
                } else if (__value__ == (3003209i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3002950 : Bool) && (_sr_3002950 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3002963 == ((_sr_3002950 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3003255i32;
                    } else {
                        _gotoNext = 3003275i32;
                    };
                } else if (__value__ == (3003255i32)) {
                    _i_3002902++;
                    _gotoNext = 3002910i32;
                } else if (__value__ == (3003275i32)) {
                    return false;
                    _i_3002902++;
                    _gotoNext = 3002910i32;
                } else if (__value__ == (3003335i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3003360i32;
                } else if (__value__ == (3003360i32)) {
                    _s = (_s.__slice__(_i_3002902) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3002902) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3003395i32;
                } else if (__value__ == (3003395i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3003426i32;
                    } else {
                        _gotoNext = 3004401i32;
                    };
                } else if (__value__ == (3003426i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3003507i32;
                    } else {
                        _gotoNext = 3003547i32;
                    };
                } else if (__value__ == (3003507i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3003469 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3003611i32;
                } else if (__value__ == (3003547i32)) {
                    _gotoNext = 3003547i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3003552 = __tmp__._0;
                        _size_3003555 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3003552;
                        final __tmp__1 = (_s.__slice__(_size_3003555) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3003469 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3003611i32;
                } else if (__value__ == (3003611i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3003635i32;
                    } else {
                        _gotoNext = 3003675i32;
                    };
                } else if (__value__ == (3003635i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3003473 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3003811i32;
                } else if (__value__ == (3003675i32)) {
                    _gotoNext = 3003675i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3003680 = __tmp__._0;
                        _size_3003683 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3003680;
                        final __tmp__1 = (_t.__slice__(_size_3003683) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3003473 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3003811i32;
                } else if (__value__ == (3003811i32)) {
                    if (_tr_3003473 == (_sr_3003469)) {
                        _gotoNext = 3003823i32;
                    } else {
                        _gotoNext = 3003888i32;
                    };
                } else if (__value__ == (3003823i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3003395i32;
                } else if (__value__ == (3003888i32)) {
                    if ((_tr_3003473 < _sr_3003469 : Bool)) {
                        _gotoNext = 3003899i32;
                    } else {
                        _gotoNext = 3003953i32;
                    };
                } else if (__value__ == (3003899i32)) {
                    {
                        final __tmp__0 = _sr_3003469;
                        final __tmp__1 = _tr_3003473;
                        _tr_3003473 = __tmp__0;
                        _sr_3003469 = __tmp__1;
                    };
                    _gotoNext = 3003953i32;
                } else if (__value__ == (3003953i32)) {
                    if ((_tr_3003473 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3003975i32;
                    } else {
                        _gotoNext = 3004228i32;
                    };
                } else if (__value__ == (3003975i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3003469 : Bool) && (_sr_3003469 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3003473 == ((_sr_3003469 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3004075i32;
                    } else {
                        _gotoNext = 3004098i32;
                    };
                } else if (__value__ == (3004075i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3003395i32;
                } else if (__value__ == (3004098i32)) {
                    return false;
                    _gotoNext = 3004228i32;
                } else if (__value__ == (3004228i32)) {
                    _r_3004228 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3003469);
                    var __blank__ = 0i32;
                    _gotoNext = 3004258i32;
                } else if (__value__ == (3004258i32)) {
                    if (((_r_3004228 != _sr_3003469) && (_r_3004228 < _tr_3003473 : Bool) : Bool)) {
                        _gotoNext = 3004280i32;
                    } else {
                        _gotoNext = 3004317i32;
                    };
                } else if (__value__ == (3004280i32)) {
                    _r_3004228 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3004228);
                    _gotoNext = 3004258i32;
                } else if (__value__ == (3004317i32)) {
                    if (_r_3004228 == (_tr_3003473)) {
                        _gotoNext = 3004328i32;
                    } else {
                        _gotoNext = 3004348i32;
                    };
                } else if (__value__ == (3004328i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3003395i32;
                } else if (__value__ == (3004348i32)) {
                    return false;
                    _gotoNext = 3003395i32;
                } else if (__value__ == (3004401i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
