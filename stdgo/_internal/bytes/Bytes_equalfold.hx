package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3007361:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3007357:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3006851:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3006838:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3007571:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3007568:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3007443:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3007440:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3008116:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3006790:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3006790 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3006798i32;
                } else if (__value__ == (3006798i32)) {
                    if (((_i_3006790 < (_s.length) : Bool) && (_i_3006790 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3006834i32;
                    } else {
                        _gotoNext = 3007223i32;
                    };
                } else if (__value__ == (3006834i32)) {
                    _sr_3006838 = _s[(_i_3006790 : stdgo.GoInt)];
                    _tr_3006851 = _t[(_i_3006790 : stdgo.GoInt)];
                    if (((_sr_3006838 | _tr_3006851 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3006890i32;
                    } else {
                        _gotoNext = 3006934i32;
                    };
                } else if (__value__ == (3006890i32)) {
                    _gotoNext = 3007248i32;
                } else if (__value__ == (3006934i32)) {
                    if (_tr_3006851 == (_sr_3006838)) {
                        _gotoNext = 3006946i32;
                    } else {
                        _gotoNext = 3007011i32;
                    };
                } else if (__value__ == (3006946i32)) {
                    _i_3006790++;
                    _gotoNext = 3006798i32;
                } else if (__value__ == (3007011i32)) {
                    if ((_tr_3006851 < _sr_3006838 : Bool)) {
                        _gotoNext = 3007022i32;
                    } else {
                        _gotoNext = 3007097i32;
                    };
                } else if (__value__ == (3007022i32)) {
                    {
                        final __tmp__0 = _sr_3006838;
                        final __tmp__1 = _tr_3006851;
                        _tr_3006851 = __tmp__0;
                        _sr_3006838 = __tmp__1;
                    };
                    _gotoNext = 3007097i32;
                } else if (__value__ == (3007097i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3006838 : Bool) && (_sr_3006838 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3006851 == ((_sr_3006838 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3007143i32;
                    } else {
                        _gotoNext = 3007163i32;
                    };
                } else if (__value__ == (3007143i32)) {
                    _i_3006790++;
                    _gotoNext = 3006798i32;
                } else if (__value__ == (3007163i32)) {
                    return false;
                    _i_3006790++;
                    _gotoNext = 3006798i32;
                } else if (__value__ == (3007223i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3007248i32;
                } else if (__value__ == (3007248i32)) {
                    _s = (_s.__slice__(_i_3006790) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3006790) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3007283i32;
                } else if (__value__ == (3007283i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3007314i32;
                    } else {
                        _gotoNext = 3008289i32;
                    };
                } else if (__value__ == (3007314i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3007395i32;
                    } else {
                        _gotoNext = 3007435i32;
                    };
                } else if (__value__ == (3007395i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3007357 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3007499i32;
                } else if (__value__ == (3007435i32)) {
                    _gotoNext = 3007435i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3007440 = @:tmpset0 __tmp__._0;
                        _size_3007443 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3007440;
                        final __tmp__1 = (_s.__slice__(_size_3007443) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3007357 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3007499i32;
                } else if (__value__ == (3007499i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3007523i32;
                    } else {
                        _gotoNext = 3007563i32;
                    };
                } else if (__value__ == (3007523i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3007361 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3007699i32;
                } else if (__value__ == (3007563i32)) {
                    _gotoNext = 3007563i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3007568 = @:tmpset0 __tmp__._0;
                        _size_3007571 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3007568;
                        final __tmp__1 = (_t.__slice__(_size_3007571) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3007361 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3007699i32;
                } else if (__value__ == (3007699i32)) {
                    if (_tr_3007361 == (_sr_3007357)) {
                        _gotoNext = 3007711i32;
                    } else {
                        _gotoNext = 3007776i32;
                    };
                } else if (__value__ == (3007711i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007283i32;
                } else if (__value__ == (3007776i32)) {
                    if ((_tr_3007361 < _sr_3007357 : Bool)) {
                        _gotoNext = 3007787i32;
                    } else {
                        _gotoNext = 3007841i32;
                    };
                } else if (__value__ == (3007787i32)) {
                    {
                        final __tmp__0 = _sr_3007357;
                        final __tmp__1 = _tr_3007361;
                        _tr_3007361 = __tmp__0;
                        _sr_3007357 = __tmp__1;
                    };
                    _gotoNext = 3007841i32;
                } else if (__value__ == (3007841i32)) {
                    if ((_tr_3007361 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3007863i32;
                    } else {
                        _gotoNext = 3008116i32;
                    };
                } else if (__value__ == (3007863i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3007357 : Bool) && (_sr_3007357 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3007361 == ((_sr_3007357 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3007963i32;
                    } else {
                        _gotoNext = 3007986i32;
                    };
                } else if (__value__ == (3007963i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007283i32;
                } else if (__value__ == (3007986i32)) {
                    return false;
                    _gotoNext = 3008116i32;
                } else if (__value__ == (3008116i32)) {
                    _r_3008116 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3007357);
                    var __blank__ = 0i32;
                    _gotoNext = 3008146i32;
                } else if (__value__ == (3008146i32)) {
                    if (((_r_3008116 != _sr_3007357) && (_r_3008116 < _tr_3007361 : Bool) : Bool)) {
                        _gotoNext = 3008168i32;
                    } else {
                        _gotoNext = 3008205i32;
                    };
                } else if (__value__ == (3008168i32)) {
                    _r_3008116 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3008116);
                    _gotoNext = 3008146i32;
                } else if (__value__ == (3008205i32)) {
                    if (_r_3008116 == (_tr_3007361)) {
                        _gotoNext = 3008216i32;
                    } else {
                        _gotoNext = 3008236i32;
                    };
                } else if (__value__ == (3008216i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3007283i32;
                } else if (__value__ == (3008236i32)) {
                    return false;
                    _gotoNext = 3007283i32;
                } else if (__value__ == (3008289i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
