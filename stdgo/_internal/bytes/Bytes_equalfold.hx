package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2907476i32;
                } else if (__value__ == (2907476i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2907512i32;
                    } else {
                        _gotoNext = 2907901i32;
                    };
                } else if (__value__ == (2907512i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907568i32;
                    } else {
                        _gotoNext = 2907612i32;
                    };
                } else if (__value__ == (2907568i32)) {
                    _gotoNext = 2907926i32;
                } else if (__value__ == (2907612i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2907624i32;
                    } else {
                        _gotoNext = 2907689i32;
                    };
                } else if (__value__ == (2907624i32)) {
                    _i_0++;
                    _gotoNext = 2907476i32;
                } else if (__value__ == (2907689i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2907700i32;
                    } else {
                        _gotoNext = 2907775i32;
                    };
                } else if (__value__ == (2907700i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907775i32;
                } else if (__value__ == (2907775i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2907821i32;
                    } else {
                        _gotoNext = 2907841i32;
                    };
                } else if (__value__ == (2907821i32)) {
                    _i_0++;
                    _gotoNext = 2907476i32;
                } else if (__value__ == (2907841i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2907476i32;
                } else if (__value__ == (2907901i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2907926i32;
                } else if (__value__ == (2907926i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    0i32;
                    _gotoNext = 2907961i32;
                } else if (__value__ == (2907961i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2907992i32;
                    } else {
                        _gotoNext = 2908967i32;
                    };
                } else if (__value__ == (2907992i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2908073i32;
                    } else {
                        _gotoNext = 2908113i32;
                    };
                } else if (__value__ == (2908073i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2908177i32;
                } else if (__value__ == (2908113i32)) {
                    _gotoNext = 2908113i32;
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
                    0i32;
                    _gotoNext = 2908177i32;
                } else if (__value__ == (2908177i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2908201i32;
                    } else {
                        _gotoNext = 2908241i32;
                    };
                } else if (__value__ == (2908201i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2908377i32;
                } else if (__value__ == (2908241i32)) {
                    _gotoNext = 2908241i32;
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
                    0i32;
                    _gotoNext = 2908377i32;
                } else if (__value__ == (2908377i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2908389i32;
                    } else {
                        _gotoNext = 2908454i32;
                    };
                } else if (__value__ == (2908389i32)) {
                    0i32;
                    _gotoNext = 2907961i32;
                } else if (__value__ == (2908454i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2908465i32;
                    } else {
                        _gotoNext = 2908519i32;
                    };
                } else if (__value__ == (2908465i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2908519i32;
                } else if (__value__ == (2908519i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2908541i32;
                    } else {
                        _gotoNext = 2908794i32;
                    };
                } else if (__value__ == (2908541i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2908641i32;
                    } else {
                        _gotoNext = 2908664i32;
                    };
                } else if (__value__ == (2908641i32)) {
                    0i32;
                    _gotoNext = 2907961i32;
                } else if (__value__ == (2908664i32)) {
                    return false;
                    _gotoNext = 2908794i32;
                } else if (__value__ == (2908794i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2908824i32;
                } else if (__value__ == (2908824i32)) {
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2908846i32;
                    } else {
                        _gotoNext = 2908883i32;
                    };
                } else if (__value__ == (2908846i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 2908824i32;
                } else if (__value__ == (2908883i32)) {
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 2908894i32;
                    } else {
                        _gotoNext = 2908914i32;
                    };
                } else if (__value__ == (2908894i32)) {
                    0i32;
                    _gotoNext = 2907961i32;
                } else if (__value__ == (2908914i32)) {
                    return false;
                    _gotoNext = 2907961i32;
                } else if (__value__ == (2908967i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
