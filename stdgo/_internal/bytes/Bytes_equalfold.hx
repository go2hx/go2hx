package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3051821:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3053086:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3052541:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3052331:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3051760:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3052538:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3052413:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3052410:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3052327:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3051808:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3051760 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3051768i32;
                } else if (__value__ == (3051768i32)) {
                    if (((_i_3051760 < (_s.length) : Bool) && (_i_3051760 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3051804i32;
                    } else {
                        _gotoNext = 3052193i32;
                    };
                } else if (__value__ == (3051804i32)) {
                    _sr_3051808 = _s[(_i_3051760 : stdgo.GoInt)];
                    _tr_3051821 = _t[(_i_3051760 : stdgo.GoInt)];
                    if (((_sr_3051808 | _tr_3051821 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3051860i32;
                    } else {
                        _gotoNext = 3051904i32;
                    };
                } else if (__value__ == (3051860i32)) {
                    _gotoNext = 3052218i32;
                } else if (__value__ == (3051904i32)) {
                    if (_tr_3051821 == (_sr_3051808)) {
                        _gotoNext = 3051916i32;
                    } else {
                        _gotoNext = 3051981i32;
                    };
                } else if (__value__ == (3051916i32)) {
                    _i_3051760++;
                    _gotoNext = 3051768i32;
                } else if (__value__ == (3051981i32)) {
                    if ((_tr_3051821 < _sr_3051808 : Bool)) {
                        _gotoNext = 3051992i32;
                    } else {
                        _gotoNext = 3052067i32;
                    };
                } else if (__value__ == (3051992i32)) {
                    {
                        final __tmp__0 = _sr_3051808;
                        final __tmp__1 = _tr_3051821;
                        _tr_3051821 = __tmp__0;
                        _sr_3051808 = __tmp__1;
                    };
                    _gotoNext = 3052067i32;
                } else if (__value__ == (3052067i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3051808 : Bool) && (_sr_3051808 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3051821 == ((_sr_3051808 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3052113i32;
                    } else {
                        _gotoNext = 3052133i32;
                    };
                } else if (__value__ == (3052113i32)) {
                    _i_3051760++;
                    _gotoNext = 3051768i32;
                } else if (__value__ == (3052133i32)) {
                    return false;
                    _i_3051760++;
                    _gotoNext = 3051768i32;
                } else if (__value__ == (3052193i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3052218i32;
                } else if (__value__ == (3052218i32)) {
                    _s = (_s.__slice__(_i_3051760) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3051760) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3052253i32;
                } else if (__value__ == (3052253i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3052284i32;
                    } else {
                        _gotoNext = 3053259i32;
                    };
                } else if (__value__ == (3052284i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3052365i32;
                    } else {
                        _gotoNext = 3052405i32;
                    };
                } else if (__value__ == (3052365i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3052327 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3052469i32;
                } else if (__value__ == (3052405i32)) {
                    _gotoNext = 3052405i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3052410 = @:tmpset0 __tmp__._0;
                        _size_3052413 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3052410;
                        final __tmp__1 = (_s.__slice__(_size_3052413) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3052327 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3052469i32;
                } else if (__value__ == (3052469i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3052493i32;
                    } else {
                        _gotoNext = 3052533i32;
                    };
                } else if (__value__ == (3052493i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3052331 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3052669i32;
                } else if (__value__ == (3052533i32)) {
                    _gotoNext = 3052533i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3052538 = @:tmpset0 __tmp__._0;
                        _size_3052541 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3052538;
                        final __tmp__1 = (_t.__slice__(_size_3052541) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3052331 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3052669i32;
                } else if (__value__ == (3052669i32)) {
                    if (_tr_3052331 == (_sr_3052327)) {
                        _gotoNext = 3052681i32;
                    } else {
                        _gotoNext = 3052746i32;
                    };
                } else if (__value__ == (3052681i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3052253i32;
                } else if (__value__ == (3052746i32)) {
                    if ((_tr_3052331 < _sr_3052327 : Bool)) {
                        _gotoNext = 3052757i32;
                    } else {
                        _gotoNext = 3052811i32;
                    };
                } else if (__value__ == (3052757i32)) {
                    {
                        final __tmp__0 = _sr_3052327;
                        final __tmp__1 = _tr_3052331;
                        _tr_3052331 = __tmp__0;
                        _sr_3052327 = __tmp__1;
                    };
                    _gotoNext = 3052811i32;
                } else if (__value__ == (3052811i32)) {
                    if ((_tr_3052331 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3052833i32;
                    } else {
                        _gotoNext = 3053086i32;
                    };
                } else if (__value__ == (3052833i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3052327 : Bool) && (_sr_3052327 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3052331 == ((_sr_3052327 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3052933i32;
                    } else {
                        _gotoNext = 3052956i32;
                    };
                } else if (__value__ == (3052933i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3052253i32;
                } else if (__value__ == (3052956i32)) {
                    return false;
                    _gotoNext = 3053086i32;
                } else if (__value__ == (3053086i32)) {
                    _r_3053086 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3052327);
                    var __blank__ = 0i32;
                    _gotoNext = 3053116i32;
                } else if (__value__ == (3053116i32)) {
                    if (((_r_3053086 != _sr_3052327) && (_r_3053086 < _tr_3052331 : Bool) : Bool)) {
                        _gotoNext = 3053138i32;
                    } else {
                        _gotoNext = 3053175i32;
                    };
                } else if (__value__ == (3053138i32)) {
                    _r_3053086 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3053086);
                    _gotoNext = 3053116i32;
                } else if (__value__ == (3053175i32)) {
                    if (_r_3053086 == (_tr_3052331)) {
                        _gotoNext = 3053186i32;
                    } else {
                        _gotoNext = 3053206i32;
                    };
                } else if (__value__ == (3053186i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3052253i32;
                } else if (__value__ == (3053206i32)) {
                    return false;
                    _gotoNext = 3052253i32;
                } else if (__value__ == (3053259i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
