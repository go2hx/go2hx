package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3119736:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3119529:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3119525:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3119611:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3119608:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3119019:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3119006:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3118958:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3120284:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3119739:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3118958 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3118966i32;
                } else if (__value__ == (3118966i32)) {
                    if (((_i_3118958 < (_s.length) : Bool) && (_i_3118958 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3119002i32;
                    } else {
                        _gotoNext = 3119391i32;
                    };
                } else if (__value__ == (3119002i32)) {
                    _sr_3119006 = _s[(_i_3118958 : stdgo.GoInt)];
                    _tr_3119019 = _t[(_i_3118958 : stdgo.GoInt)];
                    if (((_sr_3119006 | _tr_3119019 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3119058i32;
                    } else {
                        _gotoNext = 3119102i32;
                    };
                } else if (__value__ == (3119058i32)) {
                    _gotoNext = 3119416i32;
                } else if (__value__ == (3119102i32)) {
                    if (_tr_3119019 == (_sr_3119006)) {
                        _gotoNext = 3119114i32;
                    } else {
                        _gotoNext = 3119179i32;
                    };
                } else if (__value__ == (3119114i32)) {
                    _i_3118958++;
                    _gotoNext = 3118966i32;
                } else if (__value__ == (3119179i32)) {
                    if ((_tr_3119019 < _sr_3119006 : Bool)) {
                        _gotoNext = 3119190i32;
                    } else {
                        _gotoNext = 3119265i32;
                    };
                } else if (__value__ == (3119190i32)) {
                    {
                        final __tmp__0 = _sr_3119006;
                        final __tmp__1 = _tr_3119019;
                        _tr_3119019 = __tmp__0;
                        _sr_3119006 = __tmp__1;
                    };
                    _gotoNext = 3119265i32;
                } else if (__value__ == (3119265i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3119006 : Bool) && (_sr_3119006 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3119019 == ((_sr_3119006 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3119311i32;
                    } else {
                        _gotoNext = 3119331i32;
                    };
                } else if (__value__ == (3119311i32)) {
                    _i_3118958++;
                    _gotoNext = 3118966i32;
                } else if (__value__ == (3119331i32)) {
                    return false;
                    _i_3118958++;
                    _gotoNext = 3118966i32;
                } else if (__value__ == (3119391i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3119416i32;
                } else if (__value__ == (3119416i32)) {
                    _s = (_s.__slice__(_i_3118958) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3118958) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3119451i32;
                } else if (__value__ == (3119451i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3119482i32;
                    } else {
                        _gotoNext = 3120457i32;
                    };
                } else if (__value__ == (3119482i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3119563i32;
                    } else {
                        _gotoNext = 3119603i32;
                    };
                } else if (__value__ == (3119563i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3119525 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3119667i32;
                } else if (__value__ == (3119603i32)) {
                    _gotoNext = 3119603i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3119608 = @:tmpset0 __tmp__._0;
                        _size_3119611 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3119608;
                        final __tmp__1 = (_s.__slice__(_size_3119611) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3119525 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3119667i32;
                } else if (__value__ == (3119667i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3119691i32;
                    } else {
                        _gotoNext = 3119731i32;
                    };
                } else if (__value__ == (3119691i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3119529 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3119867i32;
                } else if (__value__ == (3119731i32)) {
                    _gotoNext = 3119731i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3119736 = @:tmpset0 __tmp__._0;
                        _size_3119739 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3119736;
                        final __tmp__1 = (_t.__slice__(_size_3119739) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3119529 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3119867i32;
                } else if (__value__ == (3119867i32)) {
                    if (_tr_3119529 == (_sr_3119525)) {
                        _gotoNext = 3119879i32;
                    } else {
                        _gotoNext = 3119944i32;
                    };
                } else if (__value__ == (3119879i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3119451i32;
                } else if (__value__ == (3119944i32)) {
                    if ((_tr_3119529 < _sr_3119525 : Bool)) {
                        _gotoNext = 3119955i32;
                    } else {
                        _gotoNext = 3120009i32;
                    };
                } else if (__value__ == (3119955i32)) {
                    {
                        final __tmp__0 = _sr_3119525;
                        final __tmp__1 = _tr_3119529;
                        _tr_3119529 = __tmp__0;
                        _sr_3119525 = __tmp__1;
                    };
                    _gotoNext = 3120009i32;
                } else if (__value__ == (3120009i32)) {
                    if ((_tr_3119529 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3120031i32;
                    } else {
                        _gotoNext = 3120284i32;
                    };
                } else if (__value__ == (3120031i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3119525 : Bool) && (_sr_3119525 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3119529 == ((_sr_3119525 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3120131i32;
                    } else {
                        _gotoNext = 3120154i32;
                    };
                } else if (__value__ == (3120131i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3119451i32;
                } else if (__value__ == (3120154i32)) {
                    return false;
                    _gotoNext = 3120284i32;
                } else if (__value__ == (3120284i32)) {
                    _r_3120284 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3119525);
                    var __blank__ = 0i32;
                    _gotoNext = 3120314i32;
                } else if (__value__ == (3120314i32)) {
                    if (((_r_3120284 != _sr_3119525) && (_r_3120284 < _tr_3119529 : Bool) : Bool)) {
                        _gotoNext = 3120336i32;
                    } else {
                        _gotoNext = 3120373i32;
                    };
                } else if (__value__ == (3120336i32)) {
                    _r_3120284 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3120284);
                    _gotoNext = 3120314i32;
                } else if (__value__ == (3120373i32)) {
                    if (_r_3120284 == (_tr_3119529)) {
                        _gotoNext = 3120384i32;
                    } else {
                        _gotoNext = 3120404i32;
                    };
                } else if (__value__ == (3120384i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3119451i32;
                } else if (__value__ == (3120404i32)) {
                    return false;
                    _gotoNext = 3119451i32;
                } else if (__value__ == (3120457i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
