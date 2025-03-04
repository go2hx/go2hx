package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2865846i32;
                } else if (__value__ == (2865846i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2865882i32;
                    } else {
                        _gotoNext = 2866271i32;
                    };
                } else if (__value__ == (2865882i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2865938i32;
                    } else {
                        _gotoNext = 2865982i32;
                    };
                } else if (__value__ == (2865938i32)) {
                    _gotoNext = 2866296i32;
                } else if (__value__ == (2865982i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2865994i32;
                    } else {
                        _gotoNext = 2866059i32;
                    };
                } else if (__value__ == (2865994i32)) {
                    _i_0++;
                    _gotoNext = 2865846i32;
                } else if (__value__ == (2866059i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2866070i32;
                    } else {
                        _gotoNext = 2866145i32;
                    };
                } else if (__value__ == (2866070i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2866145i32;
                } else if (__value__ == (2866145i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2866191i32;
                    } else {
                        _gotoNext = 2866211i32;
                    };
                } else if (__value__ == (2866191i32)) {
                    _i_0++;
                    _gotoNext = 2865846i32;
                } else if (__value__ == (2866211i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2865846i32;
                } else if (__value__ == (2866271i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2866296i32;
                } else if (__value__ == (2866296i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2866331i32;
                } else if (__value__ == (2866331i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2866362i32;
                    } else {
                        _gotoNext = 2867337i32;
                    };
                } else if (__value__ == (2866362i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2866443i32;
                    } else {
                        _gotoNext = 2866483i32;
                    };
                } else if (__value__ == (2866443i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2866547i32;
                } else if (__value__ == (2866483i32)) {
                    _gotoNext = 2866483i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_s.__slice__(_size_6) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2866547i32;
                } else if (__value__ == (2866547i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2866571i32;
                    } else {
                        _gotoNext = 2866611i32;
                    };
                } else if (__value__ == (2866571i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2866747i32;
                } else if (__value__ == (2866611i32)) {
                    _gotoNext = 2866611i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_7 = @:tmpset0 __tmp__._0;
                        _size_8 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_7;
                        final __tmp__1 = (_t.__slice__(_size_8) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2866747i32;
                } else if (__value__ == (2866747i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2866759i32;
                    } else {
                        _gotoNext = 2866824i32;
                    };
                } else if (__value__ == (2866759i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2866331i32;
                } else if (__value__ == (2866824i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2866835i32;
                    } else {
                        _gotoNext = 2866889i32;
                    };
                } else if (__value__ == (2866835i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2866889i32;
                } else if (__value__ == (2866889i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2866911i32;
                    } else {
                        _gotoNext = 2867164i32;
                    };
                } else if (__value__ == (2866911i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2867011i32;
                    } else {
                        _gotoNext = 2867034i32;
                    };
                } else if (__value__ == (2867011i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2866331i32;
                } else if (__value__ == (2867034i32)) {
                    return false;
                    _gotoNext = 2867164i32;
                } else if (__value__ == (2867164i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2867194i32;
                } else if (__value__ == (2867194i32)) {
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2867216i32;
                    } else {
                        _gotoNext = 2867253i32;
                    };
                } else if (__value__ == (2867216i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 2867194i32;
                } else if (__value__ == (2867253i32)) {
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 2867264i32;
                    } else {
                        _gotoNext = 2867284i32;
                    };
                } else if (__value__ == (2867264i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2866331i32;
                } else if (__value__ == (2867284i32)) {
                    return false;
                    _gotoNext = 2866331i32;
                } else if (__value__ == (2867337i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
