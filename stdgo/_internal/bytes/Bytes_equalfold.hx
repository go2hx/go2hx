package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2942893i64;
                } else if (__value__ == (2942893i64)) {
                    //"file://#L0"
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2942929i64;
                    } else {
                        _gotoNext = 2943318i64;
                    };
                } else if (__value__ == (2942929i64)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1184"
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942985i64;
                    } else {
                        _gotoNext = 2943029i64;
                    };
                } else if (__value__ == (2942985i64)) {
                    _gotoNext = 2943343i64;
                } else if (__value__ == (2943029i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1189"
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2943041i64;
                    } else {
                        _gotoNext = 2943106i64;
                    };
                } else if (__value__ == (2943041i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1181"
                    _i_0++;
                    _gotoNext = 2942893i64;
                } else if (__value__ == (2943106i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1194"
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2943117i64;
                    } else {
                        _gotoNext = 2943192i64;
                    };
                } else if (__value__ == (2943117i64)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2943192i64;
                } else if (__value__ == (2943192i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1198"
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2943238i64;
                    } else {
                        _gotoNext = 2943258i64;
                    };
                } else if (__value__ == (2943238i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1181"
                    _i_0++;
                    _gotoNext = 2942893i64;
                } else if (__value__ == (2943258i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1201"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1181"
                    _i_0++;
                    _gotoNext = 2942893i64;
                } else if (__value__ == (2943318i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1204"
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2943343i64;
                } else if (__value__ == (2943343i64)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    0i64;
                    _gotoNext = 2943378i64;
                } else if (__value__ == (2943378i64)) {
                    //"file://#L0"
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2943409i64;
                    } else {
                        _gotoNext = 2944384i64;
                    };
                } else if (__value__ == (2943409i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1212"
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2943490i64;
                    } else {
                        _gotoNext = 2943530i64;
                    };
                } else if (__value__ == (2943490i64)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2943594i64;
                } else if (__value__ == (2943530i64)) {
                    _gotoNext = 2943530i64;
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
                    0i64;
                    _gotoNext = 2943594i64;
                } else if (__value__ == (2943594i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1218"
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2943618i64;
                    } else {
                        _gotoNext = 2943658i64;
                    };
                } else if (__value__ == (2943618i64)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2943794i64;
                } else if (__value__ == (2943658i64)) {
                    _gotoNext = 2943658i64;
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
                    0i64;
                    _gotoNext = 2943794i64;
                } else if (__value__ == (2943794i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1228"
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2943806i64;
                    } else {
                        _gotoNext = 2943871i64;
                    };
                } else if (__value__ == (2943806i64)) {
                    0i64;
                    _gotoNext = 2943378i64;
                } else if (__value__ == (2943871i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1233"
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2943882i64;
                    } else {
                        _gotoNext = 2943936i64;
                    };
                } else if (__value__ == (2943882i64)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2943936i64;
                } else if (__value__ == (2943936i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1237"
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2943958i64;
                    } else {
                        _gotoNext = 2944211i64;
                    };
                } else if (__value__ == (2943958i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1239"
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2944058i64;
                    } else {
                        _gotoNext = 2944081i64;
                    };
                } else if (__value__ == (2944058i64)) {
                    0i64;
                    _gotoNext = 2943378i64;
                } else if (__value__ == (2944081i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1242"
                    return false;
                    _gotoNext = 2944211i64;
                } else if (__value__ == (2944211i64)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i64;
                    _gotoNext = 2944241i64;
                } else if (__value__ == (2944241i64)) {
                    //"file://#L0"
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2944263i64;
                    } else {
                        _gotoNext = 2944300i64;
                    };
                } else if (__value__ == (2944263i64)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 2944241i64;
                } else if (__value__ == (2944300i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1251"
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 2944311i64;
                    } else {
                        _gotoNext = 2944331i64;
                    };
                } else if (__value__ == (2944311i64)) {
                    0i64;
                    _gotoNext = 2943378i64;
                } else if (__value__ == (2944331i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1254"
                    return false;
                    _gotoNext = 2943378i64;
                } else if (__value__ == (2944384i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1258"
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
