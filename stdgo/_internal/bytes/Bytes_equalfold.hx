package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3217347:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3216828:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3216780:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3217561:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3217558:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3217430:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3217351:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3218106:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3217433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3216841:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3216780 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3216788i32;
                } else if (__value__ == (3216788i32)) {
                    if (((_i_3216780 < (_s.length) : Bool) && (_i_3216780 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3216824i32;
                    } else {
                        _gotoNext = 3217213i32;
                    };
                } else if (__value__ == (3216824i32)) {
                    _sr_3216828 = _s[(_i_3216780 : stdgo.GoInt)];
                    _tr_3216841 = _t[(_i_3216780 : stdgo.GoInt)];
                    if (((_sr_3216828 | _tr_3216841 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3216880i32;
                    } else {
                        _gotoNext = 3216924i32;
                    };
                } else if (__value__ == (3216880i32)) {
                    _gotoNext = 3217238i32;
                } else if (__value__ == (3216924i32)) {
                    if (_tr_3216841 == (_sr_3216828)) {
                        _gotoNext = 3216936i32;
                    } else {
                        _gotoNext = 3217001i32;
                    };
                } else if (__value__ == (3216936i32)) {
                    _i_3216780++;
                    _gotoNext = 3216788i32;
                } else if (__value__ == (3217001i32)) {
                    if ((_tr_3216841 < _sr_3216828 : Bool)) {
                        _gotoNext = 3217012i32;
                    } else {
                        _gotoNext = 3217087i32;
                    };
                } else if (__value__ == (3217012i32)) {
                    {
                        final __tmp__0 = _sr_3216828;
                        final __tmp__1 = _tr_3216841;
                        _tr_3216841 = __tmp__0;
                        _sr_3216828 = __tmp__1;
                    };
                    _gotoNext = 3217087i32;
                } else if (__value__ == (3217087i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3216828 : Bool) && (_sr_3216828 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3216841 == ((_sr_3216828 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3217133i32;
                    } else {
                        _gotoNext = 3217153i32;
                    };
                } else if (__value__ == (3217133i32)) {
                    _i_3216780++;
                    _gotoNext = 3216788i32;
                } else if (__value__ == (3217153i32)) {
                    return false;
                    _i_3216780++;
                    _gotoNext = 3216788i32;
                } else if (__value__ == (3217213i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3217238i32;
                } else if (__value__ == (3217238i32)) {
                    _s = (_s.__slice__(_i_3216780) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3216780) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3217273i32;
                } else if (__value__ == (3217273i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3217304i32;
                    } else {
                        _gotoNext = 3218279i32;
                    };
                } else if (__value__ == (3217304i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3217385i32;
                    } else {
                        _gotoNext = 3217425i32;
                    };
                } else if (__value__ == (3217385i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3217347 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3217489i32;
                } else if (__value__ == (3217425i32)) {
                    _gotoNext = 3217425i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3217430 = @:tmpset0 __tmp__._0;
                        _size_3217433 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3217430;
                        final __tmp__1 = (_s.__slice__(_size_3217433) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3217347 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3217489i32;
                } else if (__value__ == (3217489i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3217513i32;
                    } else {
                        _gotoNext = 3217553i32;
                    };
                } else if (__value__ == (3217513i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3217351 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3217689i32;
                } else if (__value__ == (3217553i32)) {
                    _gotoNext = 3217553i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3217558 = @:tmpset0 __tmp__._0;
                        _size_3217561 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3217558;
                        final __tmp__1 = (_t.__slice__(_size_3217561) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3217351 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3217689i32;
                } else if (__value__ == (3217689i32)) {
                    if (_tr_3217351 == (_sr_3217347)) {
                        _gotoNext = 3217701i32;
                    } else {
                        _gotoNext = 3217766i32;
                    };
                } else if (__value__ == (3217701i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3217273i32;
                } else if (__value__ == (3217766i32)) {
                    if ((_tr_3217351 < _sr_3217347 : Bool)) {
                        _gotoNext = 3217777i32;
                    } else {
                        _gotoNext = 3217831i32;
                    };
                } else if (__value__ == (3217777i32)) {
                    {
                        final __tmp__0 = _sr_3217347;
                        final __tmp__1 = _tr_3217351;
                        _tr_3217351 = __tmp__0;
                        _sr_3217347 = __tmp__1;
                    };
                    _gotoNext = 3217831i32;
                } else if (__value__ == (3217831i32)) {
                    if ((_tr_3217351 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3217853i32;
                    } else {
                        _gotoNext = 3218106i32;
                    };
                } else if (__value__ == (3217853i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3217347 : Bool) && (_sr_3217347 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3217351 == ((_sr_3217347 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3217953i32;
                    } else {
                        _gotoNext = 3217976i32;
                    };
                } else if (__value__ == (3217953i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3217273i32;
                } else if (__value__ == (3217976i32)) {
                    return false;
                    _gotoNext = 3218106i32;
                } else if (__value__ == (3218106i32)) {
                    _r_3218106 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3217347);
                    var __blank__ = 0i32;
                    _gotoNext = 3218136i32;
                } else if (__value__ == (3218136i32)) {
                    if (((_r_3218106 != _sr_3217347) && (_r_3218106 < _tr_3217351 : Bool) : Bool)) {
                        _gotoNext = 3218158i32;
                    } else {
                        _gotoNext = 3218195i32;
                    };
                } else if (__value__ == (3218158i32)) {
                    _r_3218106 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3218106);
                    _gotoNext = 3218136i32;
                } else if (__value__ == (3218195i32)) {
                    if (_r_3218106 == (_tr_3217351)) {
                        _gotoNext = 3218206i32;
                    } else {
                        _gotoNext = 3218226i32;
                    };
                } else if (__value__ == (3218206i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3217273i32;
                } else if (__value__ == (3218226i32)) {
                    return false;
                    _gotoNext = 3217273i32;
                } else if (__value__ == (3218279i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
