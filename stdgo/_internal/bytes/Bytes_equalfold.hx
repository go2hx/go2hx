package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2856509i32;
                } else if (__value__ == (2856509i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2856545i32;
                    } else {
                        _gotoNext = 2856934i32;
                    };
                } else if (__value__ == (2856545i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2856601i32;
                    } else {
                        _gotoNext = 2856645i32;
                    };
                } else if (__value__ == (2856601i32)) {
                    _gotoNext = 2856959i32;
                } else if (__value__ == (2856645i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2856657i32;
                    } else {
                        _gotoNext = 2856722i32;
                    };
                } else if (__value__ == (2856657i32)) {
                    _i_0++;
                    _gotoNext = 2856509i32;
                } else if (__value__ == (2856722i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2856733i32;
                    } else {
                        _gotoNext = 2856808i32;
                    };
                } else if (__value__ == (2856733i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2856808i32;
                } else if (__value__ == (2856808i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2856854i32;
                    } else {
                        _gotoNext = 2856874i32;
                    };
                } else if (__value__ == (2856854i32)) {
                    _i_0++;
                    _gotoNext = 2856509i32;
                } else if (__value__ == (2856874i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2856509i32;
                } else if (__value__ == (2856934i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2856959i32;
                } else if (__value__ == (2856959i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2856994i32;
                } else if (__value__ == (2856994i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2857025i32;
                    } else {
                        _gotoNext = 2858000i32;
                    };
                } else if (__value__ == (2857025i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2857106i32;
                    } else {
                        _gotoNext = 2857146i32;
                    };
                } else if (__value__ == (2857106i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2857210i32;
                } else if (__value__ == (2857146i32)) {
                    _gotoNext = 2857146i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_s.__slice__(_size_6) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2857210i32;
                } else if (__value__ == (2857210i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2857234i32;
                    } else {
                        _gotoNext = 2857274i32;
                    };
                } else if (__value__ == (2857234i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2857410i32;
                } else if (__value__ == (2857274i32)) {
                    _gotoNext = 2857274i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_7 = @:tmpset0 __tmp__._0;
                        _size_8 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_7;
                        final __tmp__1 = (_t.__slice__(_size_8) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2857410i32;
                } else if (__value__ == (2857410i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2857422i32;
                    } else {
                        _gotoNext = 2857487i32;
                    };
                } else if (__value__ == (2857422i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2856994i32;
                } else if (__value__ == (2857487i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2857498i32;
                    } else {
                        _gotoNext = 2857552i32;
                    };
                } else if (__value__ == (2857498i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2857552i32;
                } else if (__value__ == (2857552i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2857574i32;
                    } else {
                        _gotoNext = 2857827i32;
                    };
                } else if (__value__ == (2857574i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2857674i32;
                    } else {
                        _gotoNext = 2857697i32;
                    };
                } else if (__value__ == (2857674i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2856994i32;
                } else if (__value__ == (2857697i32)) {
                    return false;
                    _gotoNext = 2857827i32;
                } else if (__value__ == (2857827i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2857857i32;
                } else if (__value__ == (2857857i32)) {
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2857879i32;
                    } else {
                        _gotoNext = 2857916i32;
                    };
                } else if (__value__ == (2857879i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 2857857i32;
                } else if (__value__ == (2857916i32)) {
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 2857927i32;
                    } else {
                        _gotoNext = 2857947i32;
                    };
                } else if (__value__ == (2857927i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2856994i32;
                } else if (__value__ == (2857947i32)) {
                    return false;
                    _gotoNext = 2856994i32;
                } else if (__value__ == (2858000i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
