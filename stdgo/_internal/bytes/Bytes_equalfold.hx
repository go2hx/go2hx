package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2954413:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2954410:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2954327:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2953821:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2955086:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2954538:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2954331:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2953808:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2953760:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2954541:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2953760 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2953768i32;
                } else if (__value__ == (2953768i32)) {
                    if (((_i_2953760 < (_s.length) : Bool) && (_i_2953760 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2953804i32;
                    } else {
                        _gotoNext = 2954193i32;
                    };
                } else if (__value__ == (2953804i32)) {
                    _sr_2953808 = _s[(_i_2953760 : stdgo.GoInt)];
                    _tr_2953821 = _t[(_i_2953760 : stdgo.GoInt)];
                    if (((_sr_2953808 | _tr_2953821 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2953860i32;
                    } else {
                        _gotoNext = 2953904i32;
                    };
                } else if (__value__ == (2953860i32)) {
                    _gotoNext = 2954218i32;
                } else if (__value__ == (2953904i32)) {
                    if (_tr_2953821 == (_sr_2953808)) {
                        _gotoNext = 2953916i32;
                    } else {
                        _gotoNext = 2953981i32;
                    };
                } else if (__value__ == (2953916i32)) {
                    _i_2953760++;
                    _gotoNext = 2953768i32;
                } else if (__value__ == (2953981i32)) {
                    if ((_tr_2953821 < _sr_2953808 : Bool)) {
                        _gotoNext = 2953992i32;
                    } else {
                        _gotoNext = 2954067i32;
                    };
                } else if (__value__ == (2953992i32)) {
                    {
                        final __tmp__0 = _sr_2953808;
                        final __tmp__1 = _tr_2953821;
                        _tr_2953821 = __tmp__0;
                        _sr_2953808 = __tmp__1;
                    };
                    _gotoNext = 2954067i32;
                } else if (__value__ == (2954067i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2953808 : Bool) && (_sr_2953808 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2953821 == ((_sr_2953808 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2954113i32;
                    } else {
                        _gotoNext = 2954133i32;
                    };
                } else if (__value__ == (2954113i32)) {
                    _i_2953760++;
                    _gotoNext = 2953768i32;
                } else if (__value__ == (2954133i32)) {
                    return false;
                    _i_2953760++;
                    _gotoNext = 2953768i32;
                } else if (__value__ == (2954193i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2954218i32;
                } else if (__value__ == (2954218i32)) {
                    _s = (_s.__slice__(_i_2953760) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2953760) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2954253i32;
                } else if (__value__ == (2954253i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2954284i32;
                    } else {
                        _gotoNext = 2955259i32;
                    };
                } else if (__value__ == (2954284i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2954365i32;
                    } else {
                        _gotoNext = 2954405i32;
                    };
                } else if (__value__ == (2954365i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2954327 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2954469i32;
                } else if (__value__ == (2954405i32)) {
                    _gotoNext = 2954405i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2954410 = @:tmpset0 __tmp__._0;
                        _size_2954413 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2954410;
                        final __tmp__1 = (_s.__slice__(_size_2954413) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2954327 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2954469i32;
                } else if (__value__ == (2954469i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2954493i32;
                    } else {
                        _gotoNext = 2954533i32;
                    };
                } else if (__value__ == (2954493i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2954331 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2954669i32;
                } else if (__value__ == (2954533i32)) {
                    _gotoNext = 2954533i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2954538 = @:tmpset0 __tmp__._0;
                        _size_2954541 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2954538;
                        final __tmp__1 = (_t.__slice__(_size_2954541) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2954331 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2954669i32;
                } else if (__value__ == (2954669i32)) {
                    if (_tr_2954331 == (_sr_2954327)) {
                        _gotoNext = 2954681i32;
                    } else {
                        _gotoNext = 2954746i32;
                    };
                } else if (__value__ == (2954681i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2954253i32;
                } else if (__value__ == (2954746i32)) {
                    if ((_tr_2954331 < _sr_2954327 : Bool)) {
                        _gotoNext = 2954757i32;
                    } else {
                        _gotoNext = 2954811i32;
                    };
                } else if (__value__ == (2954757i32)) {
                    {
                        final __tmp__0 = _sr_2954327;
                        final __tmp__1 = _tr_2954331;
                        _tr_2954331 = __tmp__0;
                        _sr_2954327 = __tmp__1;
                    };
                    _gotoNext = 2954811i32;
                } else if (__value__ == (2954811i32)) {
                    if ((_tr_2954331 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2954833i32;
                    } else {
                        _gotoNext = 2955086i32;
                    };
                } else if (__value__ == (2954833i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2954327 : Bool) && (_sr_2954327 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2954331 == ((_sr_2954327 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2954933i32;
                    } else {
                        _gotoNext = 2954956i32;
                    };
                } else if (__value__ == (2954933i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2954253i32;
                } else if (__value__ == (2954956i32)) {
                    return false;
                    _gotoNext = 2955086i32;
                } else if (__value__ == (2955086i32)) {
                    _r_2955086 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2954327);
                    var __blank__ = 0i32;
                    _gotoNext = 2955116i32;
                } else if (__value__ == (2955116i32)) {
                    if (((_r_2955086 != _sr_2954327) && (_r_2955086 < _tr_2954331 : Bool) : Bool)) {
                        _gotoNext = 2955138i32;
                    } else {
                        _gotoNext = 2955175i32;
                    };
                } else if (__value__ == (2955138i32)) {
                    _r_2955086 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2955086);
                    _gotoNext = 2955116i32;
                } else if (__value__ == (2955175i32)) {
                    if (_r_2955086 == (_tr_2954331)) {
                        _gotoNext = 2955186i32;
                    } else {
                        _gotoNext = 2955206i32;
                    };
                } else if (__value__ == (2955186i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2954253i32;
                } else if (__value__ == (2955206i32)) {
                    return false;
                    _gotoNext = 2954253i32;
                } else if (__value__ == (2955259i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
