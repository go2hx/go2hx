package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_3062838:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3062835:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3062756:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3062752:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3062233:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3062185:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3063511:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3062966:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3062963:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3062246:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3062185 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3062193i32;
                } else if (__value__ == (3062193i32)) {
                    if (((_i_3062185 < (_s.length) : Bool) && (_i_3062185 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3062229i32;
                    } else {
                        _gotoNext = 3062618i32;
                    };
                } else if (__value__ == (3062229i32)) {
                    _sr_3062233 = _s[(_i_3062185 : stdgo.GoInt)];
                    _tr_3062246 = _t[(_i_3062185 : stdgo.GoInt)];
                    if (((_sr_3062233 | _tr_3062246 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3062285i32;
                    } else {
                        _gotoNext = 3062329i32;
                    };
                } else if (__value__ == (3062285i32)) {
                    _gotoNext = 3062643i32;
                } else if (__value__ == (3062329i32)) {
                    if (_tr_3062246 == (_sr_3062233)) {
                        _gotoNext = 3062341i32;
                    } else {
                        _gotoNext = 3062406i32;
                    };
                } else if (__value__ == (3062341i32)) {
                    _i_3062185++;
                    _gotoNext = 3062193i32;
                } else if (__value__ == (3062406i32)) {
                    if ((_tr_3062246 < _sr_3062233 : Bool)) {
                        _gotoNext = 3062417i32;
                    } else {
                        _gotoNext = 3062492i32;
                    };
                } else if (__value__ == (3062417i32)) {
                    {
                        final __tmp__0 = _sr_3062233;
                        final __tmp__1 = _tr_3062246;
                        _tr_3062246 = __tmp__0;
                        _sr_3062233 = __tmp__1;
                    };
                    _gotoNext = 3062492i32;
                } else if (__value__ == (3062492i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3062233 : Bool) && (_sr_3062233 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3062246 == ((_sr_3062233 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3062538i32;
                    } else {
                        _gotoNext = 3062558i32;
                    };
                } else if (__value__ == (3062538i32)) {
                    _i_3062185++;
                    _gotoNext = 3062193i32;
                } else if (__value__ == (3062558i32)) {
                    return false;
                    _i_3062185++;
                    _gotoNext = 3062193i32;
                } else if (__value__ == (3062618i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3062643i32;
                } else if (__value__ == (3062643i32)) {
                    _s = (_s.__slice__(_i_3062185) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3062185) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3062678i32;
                } else if (__value__ == (3062678i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3062709i32;
                    } else {
                        _gotoNext = 3063684i32;
                    };
                } else if (__value__ == (3062709i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3062790i32;
                    } else {
                        _gotoNext = 3062830i32;
                    };
                } else if (__value__ == (3062790i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3062752 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3062894i32;
                } else if (__value__ == (3062830i32)) {
                    _gotoNext = 3062830i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3062835 = @:tmpset0 __tmp__._0;
                        _size_3062838 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3062835;
                        final __tmp__1 = (_s.__slice__(_size_3062838) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3062752 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3062894i32;
                } else if (__value__ == (3062894i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3062918i32;
                    } else {
                        _gotoNext = 3062958i32;
                    };
                } else if (__value__ == (3062918i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3062756 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3063094i32;
                } else if (__value__ == (3062958i32)) {
                    _gotoNext = 3062958i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3062963 = @:tmpset0 __tmp__._0;
                        _size_3062966 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3062963;
                        final __tmp__1 = (_t.__slice__(_size_3062966) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3062756 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3063094i32;
                } else if (__value__ == (3063094i32)) {
                    if (_tr_3062756 == (_sr_3062752)) {
                        _gotoNext = 3063106i32;
                    } else {
                        _gotoNext = 3063171i32;
                    };
                } else if (__value__ == (3063106i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3062678i32;
                } else if (__value__ == (3063171i32)) {
                    if ((_tr_3062756 < _sr_3062752 : Bool)) {
                        _gotoNext = 3063182i32;
                    } else {
                        _gotoNext = 3063236i32;
                    };
                } else if (__value__ == (3063182i32)) {
                    {
                        final __tmp__0 = _sr_3062752;
                        final __tmp__1 = _tr_3062756;
                        _tr_3062756 = __tmp__0;
                        _sr_3062752 = __tmp__1;
                    };
                    _gotoNext = 3063236i32;
                } else if (__value__ == (3063236i32)) {
                    if ((_tr_3062756 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3063258i32;
                    } else {
                        _gotoNext = 3063511i32;
                    };
                } else if (__value__ == (3063258i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3062752 : Bool) && (_sr_3062752 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3062756 == ((_sr_3062752 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3063358i32;
                    } else {
                        _gotoNext = 3063381i32;
                    };
                } else if (__value__ == (3063358i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3062678i32;
                } else if (__value__ == (3063381i32)) {
                    return false;
                    _gotoNext = 3063511i32;
                } else if (__value__ == (3063511i32)) {
                    _r_3063511 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3062752);
                    var __blank__ = 0i32;
                    _gotoNext = 3063541i32;
                } else if (__value__ == (3063541i32)) {
                    if (((_r_3063511 != _sr_3062752) && (_r_3063511 < _tr_3062756 : Bool) : Bool)) {
                        _gotoNext = 3063563i32;
                    } else {
                        _gotoNext = 3063600i32;
                    };
                } else if (__value__ == (3063563i32)) {
                    _r_3063511 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3063511);
                    _gotoNext = 3063541i32;
                } else if (__value__ == (3063600i32)) {
                    if (_r_3063511 == (_tr_3062756)) {
                        _gotoNext = 3063611i32;
                    } else {
                        _gotoNext = 3063631i32;
                    };
                } else if (__value__ == (3063611i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3062678i32;
                } else if (__value__ == (3063631i32)) {
                    return false;
                    _gotoNext = 3062678i32;
                } else if (__value__ == (3063684i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
