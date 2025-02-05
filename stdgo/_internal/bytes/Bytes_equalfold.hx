package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3003617:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3002862:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3002352:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3002291:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3003072:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3003069:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3002944:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3002941:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3002858:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3002339:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3002291 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3002299i32;
                } else if (__value__ == (3002299i32)) {
                    if (((_i_3002291 < (_s.length) : Bool) && (_i_3002291 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3002335i32;
                    } else {
                        _gotoNext = 3002724i32;
                    };
                } else if (__value__ == (3002335i32)) {
                    _sr_3002339 = _s[(_i_3002291 : stdgo.GoInt)];
                    _tr_3002352 = _t[(_i_3002291 : stdgo.GoInt)];
                    if (((_sr_3002339 | _tr_3002352 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3002391i32;
                    } else {
                        _gotoNext = 3002435i32;
                    };
                } else if (__value__ == (3002391i32)) {
                    _gotoNext = 3002749i32;
                } else if (__value__ == (3002435i32)) {
                    if (_tr_3002352 == (_sr_3002339)) {
                        _gotoNext = 3002447i32;
                    } else {
                        _gotoNext = 3002512i32;
                    };
                } else if (__value__ == (3002447i32)) {
                    _i_3002291++;
                    _gotoNext = 3002299i32;
                } else if (__value__ == (3002512i32)) {
                    if ((_tr_3002352 < _sr_3002339 : Bool)) {
                        _gotoNext = 3002523i32;
                    } else {
                        _gotoNext = 3002598i32;
                    };
                } else if (__value__ == (3002523i32)) {
                    {
                        final __tmp__0 = _sr_3002339;
                        final __tmp__1 = _tr_3002352;
                        _tr_3002352 = __tmp__0;
                        _sr_3002339 = __tmp__1;
                    };
                    _gotoNext = 3002598i32;
                } else if (__value__ == (3002598i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3002339 : Bool) && (_sr_3002339 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3002352 == ((_sr_3002339 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3002644i32;
                    } else {
                        _gotoNext = 3002664i32;
                    };
                } else if (__value__ == (3002644i32)) {
                    _i_3002291++;
                    _gotoNext = 3002299i32;
                } else if (__value__ == (3002664i32)) {
                    return false;
                    _i_3002291++;
                    _gotoNext = 3002299i32;
                } else if (__value__ == (3002724i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3002749i32;
                } else if (__value__ == (3002749i32)) {
                    _s = (_s.__slice__(_i_3002291) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3002291) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3002784i32;
                } else if (__value__ == (3002784i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3002815i32;
                    } else {
                        _gotoNext = 3003790i32;
                    };
                } else if (__value__ == (3002815i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3002896i32;
                    } else {
                        _gotoNext = 3002936i32;
                    };
                } else if (__value__ == (3002896i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3002858 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3003000i32;
                } else if (__value__ == (3002936i32)) {
                    _gotoNext = 3002936i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3002941 = @:tmpset0 __tmp__._0;
                        _size_3002944 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3002941;
                        final __tmp__1 = (_s.__slice__(_size_3002944) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3002858 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3003000i32;
                } else if (__value__ == (3003000i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3003024i32;
                    } else {
                        _gotoNext = 3003064i32;
                    };
                } else if (__value__ == (3003024i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3002862 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3003200i32;
                } else if (__value__ == (3003064i32)) {
                    _gotoNext = 3003064i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3003069 = @:tmpset0 __tmp__._0;
                        _size_3003072 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3003069;
                        final __tmp__1 = (_t.__slice__(_size_3003072) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3002862 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3003200i32;
                } else if (__value__ == (3003200i32)) {
                    if (_tr_3002862 == (_sr_3002858)) {
                        _gotoNext = 3003212i32;
                    } else {
                        _gotoNext = 3003277i32;
                    };
                } else if (__value__ == (3003212i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3002784i32;
                } else if (__value__ == (3003277i32)) {
                    if ((_tr_3002862 < _sr_3002858 : Bool)) {
                        _gotoNext = 3003288i32;
                    } else {
                        _gotoNext = 3003342i32;
                    };
                } else if (__value__ == (3003288i32)) {
                    {
                        final __tmp__0 = _sr_3002858;
                        final __tmp__1 = _tr_3002862;
                        _tr_3002862 = __tmp__0;
                        _sr_3002858 = __tmp__1;
                    };
                    _gotoNext = 3003342i32;
                } else if (__value__ == (3003342i32)) {
                    if ((_tr_3002862 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3003364i32;
                    } else {
                        _gotoNext = 3003617i32;
                    };
                } else if (__value__ == (3003364i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3002858 : Bool) && (_sr_3002858 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3002862 == ((_sr_3002858 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3003464i32;
                    } else {
                        _gotoNext = 3003487i32;
                    };
                } else if (__value__ == (3003464i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3002784i32;
                } else if (__value__ == (3003487i32)) {
                    return false;
                    _gotoNext = 3003617i32;
                } else if (__value__ == (3003617i32)) {
                    _r_3003617 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3002858);
                    var __blank__ = 0i32;
                    _gotoNext = 3003647i32;
                } else if (__value__ == (3003647i32)) {
                    if (((_r_3003617 != _sr_3002858) && (_r_3003617 < _tr_3002862 : Bool) : Bool)) {
                        _gotoNext = 3003669i32;
                    } else {
                        _gotoNext = 3003706i32;
                    };
                } else if (__value__ == (3003669i32)) {
                    _r_3003617 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3003617);
                    _gotoNext = 3003647i32;
                } else if (__value__ == (3003706i32)) {
                    if (_r_3003617 == (_tr_3002862)) {
                        _gotoNext = 3003717i32;
                    } else {
                        _gotoNext = 3003737i32;
                    };
                } else if (__value__ == (3003717i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3002784i32;
                } else if (__value__ == (3003737i32)) {
                    return false;
                    _gotoNext = 3002784i32;
                } else if (__value__ == (3003790i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
