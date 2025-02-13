package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3007122:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3006599:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3006551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3007877:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3007329:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3007204:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3007201:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3007118:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3006612:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3007332:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3006551 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3006559i32;
                } else if (__value__ == (3006559i32)) {
                    if (((_i_3006551 < (_s.length) : Bool) && (_i_3006551 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3006595i32;
                    } else {
                        _gotoNext = 3006984i32;
                    };
                } else if (__value__ == (3006595i32)) {
                    _sr_3006599 = _s[(_i_3006551 : stdgo.GoInt)];
                    _tr_3006612 = _t[(_i_3006551 : stdgo.GoInt)];
                    if (((_sr_3006599 | _tr_3006612 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3006651i32;
                    } else {
                        _gotoNext = 3006695i32;
                    };
                } else if (__value__ == (3006651i32)) {
                    _gotoNext = 3007009i32;
                } else if (__value__ == (3006695i32)) {
                    if (_tr_3006612 == (_sr_3006599)) {
                        _gotoNext = 3006707i32;
                    } else {
                        _gotoNext = 3006772i32;
                    };
                } else if (__value__ == (3006707i32)) {
                    _i_3006551++;
                    _gotoNext = 3006559i32;
                } else if (__value__ == (3006772i32)) {
                    if ((_tr_3006612 < _sr_3006599 : Bool)) {
                        _gotoNext = 3006783i32;
                    } else {
                        _gotoNext = 3006858i32;
                    };
                } else if (__value__ == (3006783i32)) {
                    {
                        final __tmp__0 = _sr_3006599;
                        final __tmp__1 = _tr_3006612;
                        _tr_3006612 = __tmp__0;
                        _sr_3006599 = __tmp__1;
                    };
                    _gotoNext = 3006858i32;
                } else if (__value__ == (3006858i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3006599 : Bool) && (_sr_3006599 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3006612 == ((_sr_3006599 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3006904i32;
                    } else {
                        _gotoNext = 3006924i32;
                    };
                } else if (__value__ == (3006904i32)) {
                    _i_3006551++;
                    _gotoNext = 3006559i32;
                } else if (__value__ == (3006924i32)) {
                    return false;
                    _i_3006551++;
                    _gotoNext = 3006559i32;
                } else if (__value__ == (3006984i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3007009i32;
                } else if (__value__ == (3007009i32)) {
                    _s = (_s.__slice__(_i_3006551) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3006551) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3007044i32;
                } else if (__value__ == (3007044i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3007075i32;
                    } else {
                        _gotoNext = 3008050i32;
                    };
                } else if (__value__ == (3007075i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3007156i32;
                    } else {
                        _gotoNext = 3007196i32;
                    };
                } else if (__value__ == (3007156i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3007118 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3007260i32;
                } else if (__value__ == (3007196i32)) {
                    _gotoNext = 3007196i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3007201 = @:tmpset0 __tmp__._0;
                        _size_3007204 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3007201;
                        final __tmp__1 = (_s.__slice__(_size_3007204) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3007118 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3007260i32;
                } else if (__value__ == (3007260i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3007284i32;
                    } else {
                        _gotoNext = 3007324i32;
                    };
                } else if (__value__ == (3007284i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3007122 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3007460i32;
                } else if (__value__ == (3007324i32)) {
                    _gotoNext = 3007324i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3007329 = @:tmpset0 __tmp__._0;
                        _size_3007332 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3007329;
                        final __tmp__1 = (_t.__slice__(_size_3007332) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3007122 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3007460i32;
                } else if (__value__ == (3007460i32)) {
                    if (_tr_3007122 == (_sr_3007118)) {
                        _gotoNext = 3007472i32;
                    } else {
                        _gotoNext = 3007537i32;
                    };
                } else if (__value__ == (3007472i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007044i32;
                } else if (__value__ == (3007537i32)) {
                    if ((_tr_3007122 < _sr_3007118 : Bool)) {
                        _gotoNext = 3007548i32;
                    } else {
                        _gotoNext = 3007602i32;
                    };
                } else if (__value__ == (3007548i32)) {
                    {
                        final __tmp__0 = _sr_3007118;
                        final __tmp__1 = _tr_3007122;
                        _tr_3007122 = __tmp__0;
                        _sr_3007118 = __tmp__1;
                    };
                    _gotoNext = 3007602i32;
                } else if (__value__ == (3007602i32)) {
                    if ((_tr_3007122 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3007624i32;
                    } else {
                        _gotoNext = 3007877i32;
                    };
                } else if (__value__ == (3007624i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3007118 : Bool) && (_sr_3007118 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3007122 == ((_sr_3007118 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3007724i32;
                    } else {
                        _gotoNext = 3007747i32;
                    };
                } else if (__value__ == (3007724i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007044i32;
                } else if (__value__ == (3007747i32)) {
                    return false;
                    _gotoNext = 3007877i32;
                } else if (__value__ == (3007877i32)) {
                    _r_3007877 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3007118);
                    var __blank__ = 0i32;
                    _gotoNext = 3007907i32;
                } else if (__value__ == (3007907i32)) {
                    if (((_r_3007877 != _sr_3007118) && (_r_3007877 < _tr_3007122 : Bool) : Bool)) {
                        _gotoNext = 3007929i32;
                    } else {
                        _gotoNext = 3007966i32;
                    };
                } else if (__value__ == (3007929i32)) {
                    _r_3007877 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3007877);
                    _gotoNext = 3007907i32;
                } else if (__value__ == (3007966i32)) {
                    if (_r_3007877 == (_tr_3007122)) {
                        _gotoNext = 3007977i32;
                    } else {
                        _gotoNext = 3007997i32;
                    };
                } else if (__value__ == (3007977i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007044i32;
                } else if (__value__ == (3007997i32)) {
                    return false;
                    _gotoNext = 3007044i32;
                } else if (__value__ == (3008050i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
