package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2913022:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2914287:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2913742:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2913611:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2913532:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2913528:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2912961:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2913739:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2913614:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2913009:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2912961 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2912969i32;
                } else if (__value__ == (2912969i32)) {
                    if (((_i_2912961 < (_s.length) : Bool) && (_i_2912961 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2913005i32;
                    } else {
                        _gotoNext = 2913394i32;
                    };
                } else if (__value__ == (2913005i32)) {
                    _sr_2913009 = _s[(_i_2912961 : stdgo.GoInt)];
                    _tr_2913022 = _t[(_i_2912961 : stdgo.GoInt)];
                    if (((_sr_2913009 | _tr_2913022 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2913061i32;
                    } else {
                        _gotoNext = 2913105i32;
                    };
                } else if (__value__ == (2913061i32)) {
                    _gotoNext = 2913419i32;
                } else if (__value__ == (2913105i32)) {
                    if (_tr_2913022 == (_sr_2913009)) {
                        _gotoNext = 2913117i32;
                    } else {
                        _gotoNext = 2913182i32;
                    };
                } else if (__value__ == (2913117i32)) {
                    _i_2912961++;
                    _gotoNext = 2912969i32;
                } else if (__value__ == (2913182i32)) {
                    if ((_tr_2913022 < _sr_2913009 : Bool)) {
                        _gotoNext = 2913193i32;
                    } else {
                        _gotoNext = 2913268i32;
                    };
                } else if (__value__ == (2913193i32)) {
                    {
                        final __tmp__0 = _sr_2913009;
                        final __tmp__1 = _tr_2913022;
                        _tr_2913022 = __tmp__0;
                        _sr_2913009 = __tmp__1;
                    };
                    _gotoNext = 2913268i32;
                } else if (__value__ == (2913268i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2913009 : Bool) && (_sr_2913009 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2913022 == ((_sr_2913009 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2913314i32;
                    } else {
                        _gotoNext = 2913334i32;
                    };
                } else if (__value__ == (2913314i32)) {
                    _i_2912961++;
                    _gotoNext = 2912969i32;
                } else if (__value__ == (2913334i32)) {
                    return false;
                    _i_2912961++;
                    _gotoNext = 2912969i32;
                } else if (__value__ == (2913394i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2913419i32;
                } else if (__value__ == (2913419i32)) {
                    _s = (_s.__slice__(_i_2912961) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2912961) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2913454i32;
                } else if (__value__ == (2913454i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2913485i32;
                    } else {
                        _gotoNext = 2914460i32;
                    };
                } else if (__value__ == (2913485i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2913566i32;
                    } else {
                        _gotoNext = 2913606i32;
                    };
                } else if (__value__ == (2913566i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2913528 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2913670i32;
                } else if (__value__ == (2913606i32)) {
                    _gotoNext = 2913606i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2913611 = @:tmpset0 __tmp__._0;
                        _size_2913614 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2913611;
                        final __tmp__1 = (_s.__slice__(_size_2913614) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2913528 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2913670i32;
                } else if (__value__ == (2913670i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2913694i32;
                    } else {
                        _gotoNext = 2913734i32;
                    };
                } else if (__value__ == (2913694i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2913532 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2913870i32;
                } else if (__value__ == (2913734i32)) {
                    _gotoNext = 2913734i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2913739 = @:tmpset0 __tmp__._0;
                        _size_2913742 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2913739;
                        final __tmp__1 = (_t.__slice__(_size_2913742) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2913532 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2913870i32;
                } else if (__value__ == (2913870i32)) {
                    if (_tr_2913532 == (_sr_2913528)) {
                        _gotoNext = 2913882i32;
                    } else {
                        _gotoNext = 2913947i32;
                    };
                } else if (__value__ == (2913882i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2913454i32;
                } else if (__value__ == (2913947i32)) {
                    if ((_tr_2913532 < _sr_2913528 : Bool)) {
                        _gotoNext = 2913958i32;
                    } else {
                        _gotoNext = 2914012i32;
                    };
                } else if (__value__ == (2913958i32)) {
                    {
                        final __tmp__0 = _sr_2913528;
                        final __tmp__1 = _tr_2913532;
                        _tr_2913532 = __tmp__0;
                        _sr_2913528 = __tmp__1;
                    };
                    _gotoNext = 2914012i32;
                } else if (__value__ == (2914012i32)) {
                    if ((_tr_2913532 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2914034i32;
                    } else {
                        _gotoNext = 2914287i32;
                    };
                } else if (__value__ == (2914034i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2913528 : Bool) && (_sr_2913528 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2913532 == ((_sr_2913528 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2914134i32;
                    } else {
                        _gotoNext = 2914157i32;
                    };
                } else if (__value__ == (2914134i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2913454i32;
                } else if (__value__ == (2914157i32)) {
                    return false;
                    _gotoNext = 2914287i32;
                } else if (__value__ == (2914287i32)) {
                    _r_2914287 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2913528);
                    var __blank__ = 0i32;
                    _gotoNext = 2914317i32;
                } else if (__value__ == (2914317i32)) {
                    if (((_r_2914287 != _sr_2913528) && (_r_2914287 < _tr_2913532 : Bool) : Bool)) {
                        _gotoNext = 2914339i32;
                    } else {
                        _gotoNext = 2914376i32;
                    };
                } else if (__value__ == (2914339i32)) {
                    _r_2914287 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2914287);
                    _gotoNext = 2914317i32;
                } else if (__value__ == (2914376i32)) {
                    if (_r_2914287 == (_tr_2913532)) {
                        _gotoNext = 2914387i32;
                    } else {
                        _gotoNext = 2914407i32;
                    };
                } else if (__value__ == (2914387i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2913454i32;
                } else if (__value__ == (2914407i32)) {
                    return false;
                    _gotoNext = 2913454i32;
                } else if (__value__ == (2914460i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
