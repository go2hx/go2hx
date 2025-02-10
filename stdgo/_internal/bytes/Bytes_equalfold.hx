package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2874112:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2873353:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2873357:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2872847:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2872834:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2872786:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2873567:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2873564:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2873439:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2873436:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2872786 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2872794i32;
                } else if (__value__ == (2872794i32)) {
                    if (((_i_2872786 < (_s.length) : Bool) && (_i_2872786 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2872830i32;
                    } else {
                        _gotoNext = 2873219i32;
                    };
                } else if (__value__ == (2872830i32)) {
                    _sr_2872834 = _s[(_i_2872786 : stdgo.GoInt)];
                    _tr_2872847 = _t[(_i_2872786 : stdgo.GoInt)];
                    if (((_sr_2872834 | _tr_2872847 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2872886i32;
                    } else {
                        _gotoNext = 2872930i32;
                    };
                } else if (__value__ == (2872886i32)) {
                    _gotoNext = 2873244i32;
                } else if (__value__ == (2872930i32)) {
                    if (_tr_2872847 == (_sr_2872834)) {
                        _gotoNext = 2872942i32;
                    } else {
                        _gotoNext = 2873007i32;
                    };
                } else if (__value__ == (2872942i32)) {
                    _i_2872786++;
                    _gotoNext = 2872794i32;
                } else if (__value__ == (2873007i32)) {
                    if ((_tr_2872847 < _sr_2872834 : Bool)) {
                        _gotoNext = 2873018i32;
                    } else {
                        _gotoNext = 2873093i32;
                    };
                } else if (__value__ == (2873018i32)) {
                    {
                        final __tmp__0 = _sr_2872834;
                        final __tmp__1 = _tr_2872847;
                        _tr_2872847 = __tmp__0;
                        _sr_2872834 = __tmp__1;
                    };
                    _gotoNext = 2873093i32;
                } else if (__value__ == (2873093i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2872834 : Bool) && (_sr_2872834 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2872847 == ((_sr_2872834 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2873139i32;
                    } else {
                        _gotoNext = 2873159i32;
                    };
                } else if (__value__ == (2873139i32)) {
                    _i_2872786++;
                    _gotoNext = 2872794i32;
                } else if (__value__ == (2873159i32)) {
                    return false;
                    _i_2872786++;
                    _gotoNext = 2872794i32;
                } else if (__value__ == (2873219i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2873244i32;
                } else if (__value__ == (2873244i32)) {
                    _s = (_s.__slice__(_i_2872786) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2872786) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2873279i32;
                } else if (__value__ == (2873279i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2873310i32;
                    } else {
                        _gotoNext = 2874285i32;
                    };
                } else if (__value__ == (2873310i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2873391i32;
                    } else {
                        _gotoNext = 2873431i32;
                    };
                } else if (__value__ == (2873391i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2873353 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2873495i32;
                } else if (__value__ == (2873431i32)) {
                    _gotoNext = 2873431i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2873436 = @:tmpset0 __tmp__._0;
                        _size_2873439 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2873436;
                        final __tmp__1 = (_s.__slice__(_size_2873439) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2873353 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2873495i32;
                } else if (__value__ == (2873495i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2873519i32;
                    } else {
                        _gotoNext = 2873559i32;
                    };
                } else if (__value__ == (2873519i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2873357 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2873695i32;
                } else if (__value__ == (2873559i32)) {
                    _gotoNext = 2873559i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2873564 = @:tmpset0 __tmp__._0;
                        _size_2873567 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2873564;
                        final __tmp__1 = (_t.__slice__(_size_2873567) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2873357 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2873695i32;
                } else if (__value__ == (2873695i32)) {
                    if (_tr_2873357 == (_sr_2873353)) {
                        _gotoNext = 2873707i32;
                    } else {
                        _gotoNext = 2873772i32;
                    };
                } else if (__value__ == (2873707i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2873279i32;
                } else if (__value__ == (2873772i32)) {
                    if ((_tr_2873357 < _sr_2873353 : Bool)) {
                        _gotoNext = 2873783i32;
                    } else {
                        _gotoNext = 2873837i32;
                    };
                } else if (__value__ == (2873783i32)) {
                    {
                        final __tmp__0 = _sr_2873353;
                        final __tmp__1 = _tr_2873357;
                        _tr_2873357 = __tmp__0;
                        _sr_2873353 = __tmp__1;
                    };
                    _gotoNext = 2873837i32;
                } else if (__value__ == (2873837i32)) {
                    if ((_tr_2873357 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2873859i32;
                    } else {
                        _gotoNext = 2874112i32;
                    };
                } else if (__value__ == (2873859i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2873353 : Bool) && (_sr_2873353 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2873357 == ((_sr_2873353 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2873959i32;
                    } else {
                        _gotoNext = 2873982i32;
                    };
                } else if (__value__ == (2873959i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2873279i32;
                } else if (__value__ == (2873982i32)) {
                    return false;
                    _gotoNext = 2874112i32;
                } else if (__value__ == (2874112i32)) {
                    _r_2874112 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2873353);
                    var __blank__ = 0i32;
                    _gotoNext = 2874142i32;
                } else if (__value__ == (2874142i32)) {
                    if (((_r_2874112 != _sr_2873353) && (_r_2874112 < _tr_2873357 : Bool) : Bool)) {
                        _gotoNext = 2874164i32;
                    } else {
                        _gotoNext = 2874201i32;
                    };
                } else if (__value__ == (2874164i32)) {
                    _r_2874112 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2874112);
                    _gotoNext = 2874142i32;
                } else if (__value__ == (2874201i32)) {
                    if (_r_2874112 == (_tr_2873357)) {
                        _gotoNext = 2874212i32;
                    } else {
                        _gotoNext = 2874232i32;
                    };
                } else if (__value__ == (2874212i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2873279i32;
                } else if (__value__ == (2874232i32)) {
                    return false;
                    _gotoNext = 2873279i32;
                } else if (__value__ == (2874285i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
