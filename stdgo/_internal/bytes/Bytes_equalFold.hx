package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2783099:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2782340:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2781834:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2781821:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2781773:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2782554:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2782426:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2782423:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2782344:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2782551:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2781773 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2781781i32;
                } else if (__value__ == (2781781i32)) {
                    if (((_i_2781773 < (_s.length) : Bool) && (_i_2781773 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2781817i32;
                    } else {
                        _gotoNext = 2782206i32;
                    };
                } else if (__value__ == (2781817i32)) {
                    _sr_2781821 = _s[(_i_2781773 : stdgo.GoInt)];
                    _tr_2781834 = _t[(_i_2781773 : stdgo.GoInt)];
                    if (((_sr_2781821 | _tr_2781834 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2781873i32;
                    } else {
                        _gotoNext = 2781917i32;
                    };
                } else if (__value__ == (2781873i32)) {
                    _gotoNext = 2782231i32;
                } else if (__value__ == (2781917i32)) {
                    if (_tr_2781834 == (_sr_2781821)) {
                        _gotoNext = 2781929i32;
                    } else {
                        _gotoNext = 2781994i32;
                    };
                } else if (__value__ == (2781929i32)) {
                    _i_2781773++;
                    _gotoNext = 2781781i32;
                } else if (__value__ == (2781994i32)) {
                    if ((_tr_2781834 < _sr_2781821 : Bool)) {
                        _gotoNext = 2782005i32;
                    } else {
                        _gotoNext = 2782080i32;
                    };
                } else if (__value__ == (2782005i32)) {
                    {
                        final __tmp__0 = _sr_2781821;
                        final __tmp__1 = _tr_2781834;
                        _tr_2781834 = __tmp__0;
                        _sr_2781821 = __tmp__1;
                    };
                    _gotoNext = 2782080i32;
                } else if (__value__ == (2782080i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2781821 : Bool) && (_sr_2781821 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2781834 == ((_sr_2781821 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2782126i32;
                    } else {
                        _gotoNext = 2782146i32;
                    };
                } else if (__value__ == (2782126i32)) {
                    _i_2781773++;
                    _gotoNext = 2781781i32;
                } else if (__value__ == (2782146i32)) {
                    return false;
                    _i_2781773++;
                    _gotoNext = 2781781i32;
                } else if (__value__ == (2782206i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2782231i32;
                } else if (__value__ == (2782231i32)) {
                    _s = (_s.__slice__(_i_2781773) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2781773) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2782266i32;
                } else if (__value__ == (2782266i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2782297i32;
                    } else {
                        _gotoNext = 2783272i32;
                    };
                } else if (__value__ == (2782297i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2782378i32;
                    } else {
                        _gotoNext = 2782418i32;
                    };
                } else if (__value__ == (2782378i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2782340 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2782482i32;
                } else if (__value__ == (2782418i32)) {
                    _gotoNext = 2782418i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2782423 = __tmp__._0;
                        _size_2782426 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2782423;
                        final __tmp__1 = (_s.__slice__(_size_2782426) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2782340 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2782482i32;
                } else if (__value__ == (2782482i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2782506i32;
                    } else {
                        _gotoNext = 2782546i32;
                    };
                } else if (__value__ == (2782506i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2782344 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2782682i32;
                } else if (__value__ == (2782546i32)) {
                    _gotoNext = 2782546i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2782551 = __tmp__._0;
                        _size_2782554 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2782551;
                        final __tmp__1 = (_t.__slice__(_size_2782554) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2782344 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2782682i32;
                } else if (__value__ == (2782682i32)) {
                    if (_tr_2782344 == (_sr_2782340)) {
                        _gotoNext = 2782694i32;
                    } else {
                        _gotoNext = 2782759i32;
                    };
                } else if (__value__ == (2782694i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2782266i32;
                } else if (__value__ == (2782759i32)) {
                    if ((_tr_2782344 < _sr_2782340 : Bool)) {
                        _gotoNext = 2782770i32;
                    } else {
                        _gotoNext = 2782824i32;
                    };
                } else if (__value__ == (2782770i32)) {
                    {
                        final __tmp__0 = _sr_2782340;
                        final __tmp__1 = _tr_2782344;
                        _tr_2782344 = __tmp__0;
                        _sr_2782340 = __tmp__1;
                    };
                    _gotoNext = 2782824i32;
                } else if (__value__ == (2782824i32)) {
                    if ((_tr_2782344 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2782846i32;
                    } else {
                        _gotoNext = 2783099i32;
                    };
                } else if (__value__ == (2782846i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2782340 : Bool) && (_sr_2782340 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2782344 == ((_sr_2782340 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2782946i32;
                    } else {
                        _gotoNext = 2782969i32;
                    };
                } else if (__value__ == (2782946i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2782266i32;
                } else if (__value__ == (2782969i32)) {
                    return false;
                    _gotoNext = 2783099i32;
                } else if (__value__ == (2783099i32)) {
                    _r_2783099 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2782340);
                    var __blank__ = 0i32;
                    _gotoNext = 2783129i32;
                } else if (__value__ == (2783129i32)) {
                    if (((_r_2783099 != _sr_2782340) && (_r_2783099 < _tr_2782344 : Bool) : Bool)) {
                        _gotoNext = 2783151i32;
                    } else {
                        _gotoNext = 2783188i32;
                    };
                } else if (__value__ == (2783151i32)) {
                    _r_2783099 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2783099);
                    _gotoNext = 2783129i32;
                } else if (__value__ == (2783188i32)) {
                    if (_r_2783099 == (_tr_2782344)) {
                        _gotoNext = 2783199i32;
                    } else {
                        _gotoNext = 2783219i32;
                    };
                } else if (__value__ == (2783199i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2782266i32;
                } else if (__value__ == (2783219i32)) {
                    return false;
                    _gotoNext = 2782266i32;
                } else if (__value__ == (2783272i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
