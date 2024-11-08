package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _i_2904300:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2905626:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2904361:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2904348:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2905081:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2905078:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2904953:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2904950:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2904871:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2904867:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2904300 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2904308i32;
                } else if (__value__ == (2904308i32)) {
                    if (((_i_2904300 < (_s.length) : Bool) && (_i_2904300 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2904344i32;
                    } else {
                        _gotoNext = 2904733i32;
                    };
                } else if (__value__ == (2904344i32)) {
                    _sr_2904348 = _s[(_i_2904300 : stdgo.GoInt)];
                    _tr_2904361 = _t[(_i_2904300 : stdgo.GoInt)];
                    if (((_sr_2904348 | _tr_2904361 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2904400i32;
                    } else {
                        _gotoNext = 2904444i32;
                    };
                } else if (__value__ == (2904400i32)) {
                    _gotoNext = 2904758i32;
                } else if (__value__ == (2904444i32)) {
                    if (_tr_2904361 == (_sr_2904348)) {
                        _gotoNext = 2904456i32;
                    } else {
                        _gotoNext = 2904521i32;
                    };
                } else if (__value__ == (2904456i32)) {
                    _i_2904300++;
                    _gotoNext = 2904308i32;
                } else if (__value__ == (2904521i32)) {
                    if ((_tr_2904361 < _sr_2904348 : Bool)) {
                        _gotoNext = 2904532i32;
                    } else {
                        _gotoNext = 2904607i32;
                    };
                } else if (__value__ == (2904532i32)) {
                    {
                        final __tmp__0 = _sr_2904348;
                        final __tmp__1 = _tr_2904361;
                        _tr_2904361 = __tmp__0;
                        _sr_2904348 = __tmp__1;
                    };
                    _gotoNext = 2904607i32;
                } else if (__value__ == (2904607i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2904348 : Bool) && (_sr_2904348 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2904361 == ((_sr_2904348 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2904653i32;
                    } else {
                        _gotoNext = 2904673i32;
                    };
                } else if (__value__ == (2904653i32)) {
                    _i_2904300++;
                    _gotoNext = 2904308i32;
                } else if (__value__ == (2904673i32)) {
                    return false;
                    _i_2904300++;
                    _gotoNext = 2904308i32;
                } else if (__value__ == (2904733i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2904758i32;
                } else if (__value__ == (2904758i32)) {
                    _s = (_s.__slice__(_i_2904300) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2904300) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2904793i32;
                } else if (__value__ == (2904793i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2904824i32;
                    } else {
                        _gotoNext = 2905799i32;
                    };
                } else if (__value__ == (2904824i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2904905i32;
                    } else {
                        _gotoNext = 2904945i32;
                    };
                } else if (__value__ == (2904905i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2904867 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2905009i32;
                } else if (__value__ == (2904945i32)) {
                    _gotoNext = 2904945i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2904950 = __tmp__._0;
                        _size_2904953 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2904950;
                        final __tmp__1 = (_s.__slice__(_size_2904953) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2904867 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2905009i32;
                } else if (__value__ == (2905009i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905033i32;
                    } else {
                        _gotoNext = 2905073i32;
                    };
                } else if (__value__ == (2905033i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2904871 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2905209i32;
                } else if (__value__ == (2905073i32)) {
                    _gotoNext = 2905073i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2905078 = __tmp__._0;
                        _size_2905081 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2905078;
                        final __tmp__1 = (_t.__slice__(_size_2905081) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2904871 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2905209i32;
                } else if (__value__ == (2905209i32)) {
                    if (_tr_2904871 == (_sr_2904867)) {
                        _gotoNext = 2905221i32;
                    } else {
                        _gotoNext = 2905286i32;
                    };
                } else if (__value__ == (2905221i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2904793i32;
                } else if (__value__ == (2905286i32)) {
                    if ((_tr_2904871 < _sr_2904867 : Bool)) {
                        _gotoNext = 2905297i32;
                    } else {
                        _gotoNext = 2905351i32;
                    };
                } else if (__value__ == (2905297i32)) {
                    {
                        final __tmp__0 = _sr_2904867;
                        final __tmp__1 = _tr_2904871;
                        _tr_2904871 = __tmp__0;
                        _sr_2904867 = __tmp__1;
                    };
                    _gotoNext = 2905351i32;
                } else if (__value__ == (2905351i32)) {
                    if ((_tr_2904871 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2905373i32;
                    } else {
                        _gotoNext = 2905626i32;
                    };
                } else if (__value__ == (2905373i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2904867 : Bool) && (_sr_2904867 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2904871 == ((_sr_2904867 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2905473i32;
                    } else {
                        _gotoNext = 2905496i32;
                    };
                } else if (__value__ == (2905473i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2904793i32;
                } else if (__value__ == (2905496i32)) {
                    return false;
                    _gotoNext = 2905626i32;
                } else if (__value__ == (2905626i32)) {
                    _r_2905626 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2904867);
                    var __blank__ = 0i32;
                    _gotoNext = 2905656i32;
                } else if (__value__ == (2905656i32)) {
                    if (((_r_2905626 != _sr_2904867) && (_r_2905626 < _tr_2904871 : Bool) : Bool)) {
                        _gotoNext = 2905678i32;
                    } else {
                        _gotoNext = 2905715i32;
                    };
                } else if (__value__ == (2905678i32)) {
                    _r_2905626 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2905626);
                    _gotoNext = 2905656i32;
                } else if (__value__ == (2905715i32)) {
                    if (_r_2905626 == (_tr_2904871)) {
                        _gotoNext = 2905726i32;
                    } else {
                        _gotoNext = 2905746i32;
                    };
                } else if (__value__ == (2905726i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2904793i32;
                } else if (__value__ == (2905746i32)) {
                    return false;
                    _gotoNext = 2904793i32;
                } else if (__value__ == (2905799i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
