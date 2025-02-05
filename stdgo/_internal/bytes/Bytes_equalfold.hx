package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2801509:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2801506:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2800789:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2800728:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2802054:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2801381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2801378:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2801299:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2801295:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2800776:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2800728 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2800736i32;
                } else if (__value__ == (2800736i32)) {
                    if (((_i_2800728 < (_s.length) : Bool) && (_i_2800728 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2800772i32;
                    } else {
                        _gotoNext = 2801161i32;
                    };
                } else if (__value__ == (2800772i32)) {
                    _sr_2800776 = _s[(_i_2800728 : stdgo.GoInt)];
                    _tr_2800789 = _t[(_i_2800728 : stdgo.GoInt)];
                    if (((_sr_2800776 | _tr_2800789 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2800828i32;
                    } else {
                        _gotoNext = 2800872i32;
                    };
                } else if (__value__ == (2800828i32)) {
                    _gotoNext = 2801186i32;
                } else if (__value__ == (2800872i32)) {
                    if (_tr_2800789 == (_sr_2800776)) {
                        _gotoNext = 2800884i32;
                    } else {
                        _gotoNext = 2800949i32;
                    };
                } else if (__value__ == (2800884i32)) {
                    _i_2800728++;
                    _gotoNext = 2800736i32;
                } else if (__value__ == (2800949i32)) {
                    if ((_tr_2800789 < _sr_2800776 : Bool)) {
                        _gotoNext = 2800960i32;
                    } else {
                        _gotoNext = 2801035i32;
                    };
                } else if (__value__ == (2800960i32)) {
                    {
                        final __tmp__0 = _sr_2800776;
                        final __tmp__1 = _tr_2800789;
                        _tr_2800789 = __tmp__0;
                        _sr_2800776 = __tmp__1;
                    };
                    _gotoNext = 2801035i32;
                } else if (__value__ == (2801035i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2800776 : Bool) && (_sr_2800776 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2800789 == ((_sr_2800776 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2801081i32;
                    } else {
                        _gotoNext = 2801101i32;
                    };
                } else if (__value__ == (2801081i32)) {
                    _i_2800728++;
                    _gotoNext = 2800736i32;
                } else if (__value__ == (2801101i32)) {
                    return false;
                    _i_2800728++;
                    _gotoNext = 2800736i32;
                } else if (__value__ == (2801161i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2801186i32;
                } else if (__value__ == (2801186i32)) {
                    _s = (_s.__slice__(_i_2800728) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2800728) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2801221i32;
                } else if (__value__ == (2801221i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2801252i32;
                    } else {
                        _gotoNext = 2802227i32;
                    };
                } else if (__value__ == (2801252i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2801333i32;
                    } else {
                        _gotoNext = 2801373i32;
                    };
                } else if (__value__ == (2801333i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2801295 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2801437i32;
                } else if (__value__ == (2801373i32)) {
                    _gotoNext = 2801373i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2801378 = @:tmpset0 __tmp__._0;
                        _size_2801381 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2801378;
                        final __tmp__1 = (_s.__slice__(_size_2801381) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2801295 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2801437i32;
                } else if (__value__ == (2801437i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2801461i32;
                    } else {
                        _gotoNext = 2801501i32;
                    };
                } else if (__value__ == (2801461i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2801299 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2801637i32;
                } else if (__value__ == (2801501i32)) {
                    _gotoNext = 2801501i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2801506 = @:tmpset0 __tmp__._0;
                        _size_2801509 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2801506;
                        final __tmp__1 = (_t.__slice__(_size_2801509) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2801299 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2801637i32;
                } else if (__value__ == (2801637i32)) {
                    if (_tr_2801299 == (_sr_2801295)) {
                        _gotoNext = 2801649i32;
                    } else {
                        _gotoNext = 2801714i32;
                    };
                } else if (__value__ == (2801649i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2801221i32;
                } else if (__value__ == (2801714i32)) {
                    if ((_tr_2801299 < _sr_2801295 : Bool)) {
                        _gotoNext = 2801725i32;
                    } else {
                        _gotoNext = 2801779i32;
                    };
                } else if (__value__ == (2801725i32)) {
                    {
                        final __tmp__0 = _sr_2801295;
                        final __tmp__1 = _tr_2801299;
                        _tr_2801299 = __tmp__0;
                        _sr_2801295 = __tmp__1;
                    };
                    _gotoNext = 2801779i32;
                } else if (__value__ == (2801779i32)) {
                    if ((_tr_2801299 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2801801i32;
                    } else {
                        _gotoNext = 2802054i32;
                    };
                } else if (__value__ == (2801801i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2801295 : Bool) && (_sr_2801295 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2801299 == ((_sr_2801295 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2801901i32;
                    } else {
                        _gotoNext = 2801924i32;
                    };
                } else if (__value__ == (2801901i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2801221i32;
                } else if (__value__ == (2801924i32)) {
                    return false;
                    _gotoNext = 2802054i32;
                } else if (__value__ == (2802054i32)) {
                    _r_2802054 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2801295);
                    var __blank__ = 0i32;
                    _gotoNext = 2802084i32;
                } else if (__value__ == (2802084i32)) {
                    if (((_r_2802054 != _sr_2801295) && (_r_2802054 < _tr_2801299 : Bool) : Bool)) {
                        _gotoNext = 2802106i32;
                    } else {
                        _gotoNext = 2802143i32;
                    };
                } else if (__value__ == (2802106i32)) {
                    _r_2802054 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2802054);
                    _gotoNext = 2802084i32;
                } else if (__value__ == (2802143i32)) {
                    if (_r_2802054 == (_tr_2801299)) {
                        _gotoNext = 2802154i32;
                    } else {
                        _gotoNext = 2802174i32;
                    };
                } else if (__value__ == (2802154i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2801221i32;
                } else if (__value__ == (2802174i32)) {
                    return false;
                    _gotoNext = 2801221i32;
                } else if (__value__ == (2802227i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
