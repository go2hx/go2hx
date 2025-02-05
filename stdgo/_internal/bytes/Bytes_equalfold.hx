package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3006184:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3005511:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3005508:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3004919:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3004858:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3005639:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3005636:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3005429:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3005425:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3004906:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3004858 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3004866i32;
                } else if (__value__ == (3004866i32)) {
                    if (((_i_3004858 < (_s.length) : Bool) && (_i_3004858 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3004902i32;
                    } else {
                        _gotoNext = 3005291i32;
                    };
                } else if (__value__ == (3004902i32)) {
                    _sr_3004906 = _s[(_i_3004858 : stdgo.GoInt)];
                    _tr_3004919 = _t[(_i_3004858 : stdgo.GoInt)];
                    if (((_sr_3004906 | _tr_3004919 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3004958i32;
                    } else {
                        _gotoNext = 3005002i32;
                    };
                } else if (__value__ == (3004958i32)) {
                    _gotoNext = 3005316i32;
                } else if (__value__ == (3005002i32)) {
                    if (_tr_3004919 == (_sr_3004906)) {
                        _gotoNext = 3005014i32;
                    } else {
                        _gotoNext = 3005079i32;
                    };
                } else if (__value__ == (3005014i32)) {
                    _i_3004858++;
                    _gotoNext = 3004866i32;
                } else if (__value__ == (3005079i32)) {
                    if ((_tr_3004919 < _sr_3004906 : Bool)) {
                        _gotoNext = 3005090i32;
                    } else {
                        _gotoNext = 3005165i32;
                    };
                } else if (__value__ == (3005090i32)) {
                    {
                        final __tmp__0 = _sr_3004906;
                        final __tmp__1 = _tr_3004919;
                        _tr_3004919 = __tmp__0;
                        _sr_3004906 = __tmp__1;
                    };
                    _gotoNext = 3005165i32;
                } else if (__value__ == (3005165i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3004906 : Bool) && (_sr_3004906 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3004919 == ((_sr_3004906 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3005211i32;
                    } else {
                        _gotoNext = 3005231i32;
                    };
                } else if (__value__ == (3005211i32)) {
                    _i_3004858++;
                    _gotoNext = 3004866i32;
                } else if (__value__ == (3005231i32)) {
                    return false;
                    _i_3004858++;
                    _gotoNext = 3004866i32;
                } else if (__value__ == (3005291i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3005316i32;
                } else if (__value__ == (3005316i32)) {
                    _s = (_s.__slice__(_i_3004858) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3004858) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3005351i32;
                } else if (__value__ == (3005351i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3005382i32;
                    } else {
                        _gotoNext = 3006357i32;
                    };
                } else if (__value__ == (3005382i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3005463i32;
                    } else {
                        _gotoNext = 3005503i32;
                    };
                } else if (__value__ == (3005463i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3005425 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3005567i32;
                } else if (__value__ == (3005503i32)) {
                    _gotoNext = 3005503i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3005508 = @:tmpset0 __tmp__._0;
                        _size_3005511 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3005508;
                        final __tmp__1 = (_s.__slice__(_size_3005511) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3005425 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3005567i32;
                } else if (__value__ == (3005567i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3005591i32;
                    } else {
                        _gotoNext = 3005631i32;
                    };
                } else if (__value__ == (3005591i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3005429 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3005767i32;
                } else if (__value__ == (3005631i32)) {
                    _gotoNext = 3005631i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3005636 = @:tmpset0 __tmp__._0;
                        _size_3005639 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3005636;
                        final __tmp__1 = (_t.__slice__(_size_3005639) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3005429 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3005767i32;
                } else if (__value__ == (3005767i32)) {
                    if (_tr_3005429 == (_sr_3005425)) {
                        _gotoNext = 3005779i32;
                    } else {
                        _gotoNext = 3005844i32;
                    };
                } else if (__value__ == (3005779i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3005351i32;
                } else if (__value__ == (3005844i32)) {
                    if ((_tr_3005429 < _sr_3005425 : Bool)) {
                        _gotoNext = 3005855i32;
                    } else {
                        _gotoNext = 3005909i32;
                    };
                } else if (__value__ == (3005855i32)) {
                    {
                        final __tmp__0 = _sr_3005425;
                        final __tmp__1 = _tr_3005429;
                        _tr_3005429 = __tmp__0;
                        _sr_3005425 = __tmp__1;
                    };
                    _gotoNext = 3005909i32;
                } else if (__value__ == (3005909i32)) {
                    if ((_tr_3005429 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3005931i32;
                    } else {
                        _gotoNext = 3006184i32;
                    };
                } else if (__value__ == (3005931i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3005425 : Bool) && (_sr_3005425 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3005429 == ((_sr_3005425 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3006031i32;
                    } else {
                        _gotoNext = 3006054i32;
                    };
                } else if (__value__ == (3006031i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3005351i32;
                } else if (__value__ == (3006054i32)) {
                    return false;
                    _gotoNext = 3006184i32;
                } else if (__value__ == (3006184i32)) {
                    _r_3006184 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3005425);
                    var __blank__ = 0i32;
                    _gotoNext = 3006214i32;
                } else if (__value__ == (3006214i32)) {
                    if (((_r_3006184 != _sr_3005425) && (_r_3006184 < _tr_3005429 : Bool) : Bool)) {
                        _gotoNext = 3006236i32;
                    } else {
                        _gotoNext = 3006273i32;
                    };
                } else if (__value__ == (3006236i32)) {
                    _r_3006184 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3006184);
                    _gotoNext = 3006214i32;
                } else if (__value__ == (3006273i32)) {
                    if (_r_3006184 == (_tr_3005429)) {
                        _gotoNext = 3006284i32;
                    } else {
                        _gotoNext = 3006304i32;
                    };
                } else if (__value__ == (3006284i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3005351i32;
                } else if (__value__ == (3006304i32)) {
                    return false;
                    _gotoNext = 3005351i32;
                } else if (__value__ == (3006357i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
