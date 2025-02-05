package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2876505:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2876501:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2875982:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2875934:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2876715:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2876712:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2876587:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2876584:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2875995:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2877260:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2875934 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2875942i32;
                } else if (__value__ == (2875942i32)) {
                    if (((_i_2875934 < (_s.length) : Bool) && (_i_2875934 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2875978i32;
                    } else {
                        _gotoNext = 2876367i32;
                    };
                } else if (__value__ == (2875978i32)) {
                    _sr_2875982 = _s[(_i_2875934 : stdgo.GoInt)];
                    _tr_2875995 = _t[(_i_2875934 : stdgo.GoInt)];
                    if (((_sr_2875982 | _tr_2875995 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876034i32;
                    } else {
                        _gotoNext = 2876078i32;
                    };
                } else if (__value__ == (2876034i32)) {
                    _gotoNext = 2876392i32;
                } else if (__value__ == (2876078i32)) {
                    if (_tr_2875995 == (_sr_2875982)) {
                        _gotoNext = 2876090i32;
                    } else {
                        _gotoNext = 2876155i32;
                    };
                } else if (__value__ == (2876090i32)) {
                    _i_2875934++;
                    _gotoNext = 2875942i32;
                } else if (__value__ == (2876155i32)) {
                    if ((_tr_2875995 < _sr_2875982 : Bool)) {
                        _gotoNext = 2876166i32;
                    } else {
                        _gotoNext = 2876241i32;
                    };
                } else if (__value__ == (2876166i32)) {
                    {
                        final __tmp__0 = _sr_2875982;
                        final __tmp__1 = _tr_2875995;
                        _tr_2875995 = __tmp__0;
                        _sr_2875982 = __tmp__1;
                    };
                    _gotoNext = 2876241i32;
                } else if (__value__ == (2876241i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2875982 : Bool) && (_sr_2875982 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2875995 == ((_sr_2875982 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2876287i32;
                    } else {
                        _gotoNext = 2876307i32;
                    };
                } else if (__value__ == (2876287i32)) {
                    _i_2875934++;
                    _gotoNext = 2875942i32;
                } else if (__value__ == (2876307i32)) {
                    return false;
                    _i_2875934++;
                    _gotoNext = 2875942i32;
                } else if (__value__ == (2876367i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2876392i32;
                } else if (__value__ == (2876392i32)) {
                    _s = (_s.__slice__(_i_2875934) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2875934) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2876427i32;
                } else if (__value__ == (2876427i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2876458i32;
                    } else {
                        _gotoNext = 2877433i32;
                    };
                } else if (__value__ == (2876458i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876539i32;
                    } else {
                        _gotoNext = 2876579i32;
                    };
                } else if (__value__ == (2876539i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2876501 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2876643i32;
                } else if (__value__ == (2876579i32)) {
                    _gotoNext = 2876579i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2876584 = @:tmpset0 __tmp__._0;
                        _size_2876587 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2876584;
                        final __tmp__1 = (_s.__slice__(_size_2876587) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2876501 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2876643i32;
                } else if (__value__ == (2876643i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876667i32;
                    } else {
                        _gotoNext = 2876707i32;
                    };
                } else if (__value__ == (2876667i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2876505 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2876843i32;
                } else if (__value__ == (2876707i32)) {
                    _gotoNext = 2876707i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2876712 = @:tmpset0 __tmp__._0;
                        _size_2876715 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2876712;
                        final __tmp__1 = (_t.__slice__(_size_2876715) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2876505 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2876843i32;
                } else if (__value__ == (2876843i32)) {
                    if (_tr_2876505 == (_sr_2876501)) {
                        _gotoNext = 2876855i32;
                    } else {
                        _gotoNext = 2876920i32;
                    };
                } else if (__value__ == (2876855i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2876427i32;
                } else if (__value__ == (2876920i32)) {
                    if ((_tr_2876505 < _sr_2876501 : Bool)) {
                        _gotoNext = 2876931i32;
                    } else {
                        _gotoNext = 2876985i32;
                    };
                } else if (__value__ == (2876931i32)) {
                    {
                        final __tmp__0 = _sr_2876501;
                        final __tmp__1 = _tr_2876505;
                        _tr_2876505 = __tmp__0;
                        _sr_2876501 = __tmp__1;
                    };
                    _gotoNext = 2876985i32;
                } else if (__value__ == (2876985i32)) {
                    if ((_tr_2876505 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2877007i32;
                    } else {
                        _gotoNext = 2877260i32;
                    };
                } else if (__value__ == (2877007i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2876501 : Bool) && (_sr_2876501 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2876505 == ((_sr_2876501 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2877107i32;
                    } else {
                        _gotoNext = 2877130i32;
                    };
                } else if (__value__ == (2877107i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2876427i32;
                } else if (__value__ == (2877130i32)) {
                    return false;
                    _gotoNext = 2877260i32;
                } else if (__value__ == (2877260i32)) {
                    _r_2877260 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2876501);
                    var __blank__ = 0i32;
                    _gotoNext = 2877290i32;
                } else if (__value__ == (2877290i32)) {
                    if (((_r_2877260 != _sr_2876501) && (_r_2877260 < _tr_2876505 : Bool) : Bool)) {
                        _gotoNext = 2877312i32;
                    } else {
                        _gotoNext = 2877349i32;
                    };
                } else if (__value__ == (2877312i32)) {
                    _r_2877260 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2877260);
                    _gotoNext = 2877290i32;
                } else if (__value__ == (2877349i32)) {
                    if (_r_2877260 == (_tr_2876505)) {
                        _gotoNext = 2877360i32;
                    } else {
                        _gotoNext = 2877380i32;
                    };
                } else if (__value__ == (2877360i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2876427i32;
                } else if (__value__ == (2877380i32)) {
                    return false;
                    _gotoNext = 2876427i32;
                } else if (__value__ == (2877433i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
