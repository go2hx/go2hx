package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3019852:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3019804:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3020457:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3020454:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3020371:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3019865:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3021130:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3020585:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3020582:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3020375:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3019804 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3019812i32;
                } else if (__value__ == (3019812i32)) {
                    if (((_i_3019804 < (_s.length) : Bool) && (_i_3019804 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3019848i32;
                    } else {
                        _gotoNext = 3020237i32;
                    };
                } else if (__value__ == (3019848i32)) {
                    _sr_3019852 = _s[(_i_3019804 : stdgo.GoInt)];
                    _tr_3019865 = _t[(_i_3019804 : stdgo.GoInt)];
                    if (((_sr_3019852 | _tr_3019865 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3019904i32;
                    } else {
                        _gotoNext = 3019948i32;
                    };
                } else if (__value__ == (3019904i32)) {
                    _gotoNext = 3020262i32;
                } else if (__value__ == (3019948i32)) {
                    if (_tr_3019865 == (_sr_3019852)) {
                        _gotoNext = 3019960i32;
                    } else {
                        _gotoNext = 3020025i32;
                    };
                } else if (__value__ == (3019960i32)) {
                    _i_3019804++;
                    _gotoNext = 3019812i32;
                } else if (__value__ == (3020025i32)) {
                    if ((_tr_3019865 < _sr_3019852 : Bool)) {
                        _gotoNext = 3020036i32;
                    } else {
                        _gotoNext = 3020111i32;
                    };
                } else if (__value__ == (3020036i32)) {
                    {
                        final __tmp__0 = _sr_3019852;
                        final __tmp__1 = _tr_3019865;
                        _tr_3019865 = __tmp__0;
                        _sr_3019852 = __tmp__1;
                    };
                    _gotoNext = 3020111i32;
                } else if (__value__ == (3020111i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3019852 : Bool) && (_sr_3019852 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3019865 == ((_sr_3019852 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3020157i32;
                    } else {
                        _gotoNext = 3020177i32;
                    };
                } else if (__value__ == (3020157i32)) {
                    _i_3019804++;
                    _gotoNext = 3019812i32;
                } else if (__value__ == (3020177i32)) {
                    return false;
                    _i_3019804++;
                    _gotoNext = 3019812i32;
                } else if (__value__ == (3020237i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3020262i32;
                } else if (__value__ == (3020262i32)) {
                    _s = (_s.__slice__(_i_3019804) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3019804) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3020297i32;
                } else if (__value__ == (3020297i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3020328i32;
                    } else {
                        _gotoNext = 3021303i32;
                    };
                } else if (__value__ == (3020328i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020409i32;
                    } else {
                        _gotoNext = 3020449i32;
                    };
                } else if (__value__ == (3020409i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3020371 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3020513i32;
                } else if (__value__ == (3020449i32)) {
                    _gotoNext = 3020449i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3020454 = @:tmpset0 __tmp__._0;
                        _size_3020457 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3020454;
                        final __tmp__1 = (_s.__slice__(_size_3020457) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3020371 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3020513i32;
                } else if (__value__ == (3020513i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020537i32;
                    } else {
                        _gotoNext = 3020577i32;
                    };
                } else if (__value__ == (3020537i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3020375 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3020713i32;
                } else if (__value__ == (3020577i32)) {
                    _gotoNext = 3020577i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3020582 = @:tmpset0 __tmp__._0;
                        _size_3020585 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3020582;
                        final __tmp__1 = (_t.__slice__(_size_3020585) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3020375 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3020713i32;
                } else if (__value__ == (3020713i32)) {
                    if (_tr_3020375 == (_sr_3020371)) {
                        _gotoNext = 3020725i32;
                    } else {
                        _gotoNext = 3020790i32;
                    };
                } else if (__value__ == (3020725i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020297i32;
                } else if (__value__ == (3020790i32)) {
                    if ((_tr_3020375 < _sr_3020371 : Bool)) {
                        _gotoNext = 3020801i32;
                    } else {
                        _gotoNext = 3020855i32;
                    };
                } else if (__value__ == (3020801i32)) {
                    {
                        final __tmp__0 = _sr_3020371;
                        final __tmp__1 = _tr_3020375;
                        _tr_3020375 = __tmp__0;
                        _sr_3020371 = __tmp__1;
                    };
                    _gotoNext = 3020855i32;
                } else if (__value__ == (3020855i32)) {
                    if ((_tr_3020375 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3020877i32;
                    } else {
                        _gotoNext = 3021130i32;
                    };
                } else if (__value__ == (3020877i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3020371 : Bool) && (_sr_3020371 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3020375 == ((_sr_3020371 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3020977i32;
                    } else {
                        _gotoNext = 3021000i32;
                    };
                } else if (__value__ == (3020977i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020297i32;
                } else if (__value__ == (3021000i32)) {
                    return false;
                    _gotoNext = 3021130i32;
                } else if (__value__ == (3021130i32)) {
                    _r_3021130 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3020371);
                    var __blank__ = 0i32;
                    _gotoNext = 3021160i32;
                } else if (__value__ == (3021160i32)) {
                    if (((_r_3021130 != _sr_3020371) && (_r_3021130 < _tr_3020375 : Bool) : Bool)) {
                        _gotoNext = 3021182i32;
                    } else {
                        _gotoNext = 3021219i32;
                    };
                } else if (__value__ == (3021182i32)) {
                    _r_3021130 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3021130);
                    _gotoNext = 3021160i32;
                } else if (__value__ == (3021219i32)) {
                    if (_r_3021130 == (_tr_3020375)) {
                        _gotoNext = 3021230i32;
                    } else {
                        _gotoNext = 3021250i32;
                    };
                } else if (__value__ == (3021230i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020297i32;
                } else if (__value__ == (3021250i32)) {
                    return false;
                    _gotoNext = 3020297i32;
                } else if (__value__ == (3021303i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
