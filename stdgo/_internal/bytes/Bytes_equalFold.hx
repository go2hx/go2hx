package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2875295:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2874789:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2874728:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2875509:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875506:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2875381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875378:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2875299:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2874776:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2876054:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2874728 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2874736i32;
                } else if (__value__ == (2874736i32)) {
                    if (((_i_2874728 < (_s.length) : Bool) && (_i_2874728 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2874772i32;
                    } else {
                        _gotoNext = 2875161i32;
                    };
                } else if (__value__ == (2874772i32)) {
                    _sr_2874776 = _s[(_i_2874728 : stdgo.GoInt)];
                    _tr_2874789 = _t[(_i_2874728 : stdgo.GoInt)];
                    if (((_sr_2874776 | _tr_2874789 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874828i32;
                    } else {
                        _gotoNext = 2874872i32;
                    };
                } else if (__value__ == (2874828i32)) {
                    _gotoNext = 2875186i32;
                } else if (__value__ == (2874872i32)) {
                    if (_tr_2874789 == (_sr_2874776)) {
                        _gotoNext = 2874884i32;
                    } else {
                        _gotoNext = 2874949i32;
                    };
                } else if (__value__ == (2874884i32)) {
                    _i_2874728++;
                    _gotoNext = 2874736i32;
                } else if (__value__ == (2874949i32)) {
                    if ((_tr_2874789 < _sr_2874776 : Bool)) {
                        _gotoNext = 2874960i32;
                    } else {
                        _gotoNext = 2875035i32;
                    };
                } else if (__value__ == (2874960i32)) {
                    {
                        final __tmp__0 = _sr_2874776;
                        final __tmp__1 = _tr_2874789;
                        _tr_2874789 = __tmp__0;
                        _sr_2874776 = __tmp__1;
                    };
                    _gotoNext = 2875035i32;
                } else if (__value__ == (2875035i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2874776 : Bool) && (_sr_2874776 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2874789 == ((_sr_2874776 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2875081i32;
                    } else {
                        _gotoNext = 2875101i32;
                    };
                } else if (__value__ == (2875081i32)) {
                    _i_2874728++;
                    _gotoNext = 2874736i32;
                } else if (__value__ == (2875101i32)) {
                    return false;
                    _i_2874728++;
                    _gotoNext = 2874736i32;
                } else if (__value__ == (2875161i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2875186i32;
                } else if (__value__ == (2875186i32)) {
                    _s = (_s.__slice__(_i_2874728) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2874728) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2875221i32;
                } else if (__value__ == (2875221i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2875252i32;
                    } else {
                        _gotoNext = 2876227i32;
                    };
                } else if (__value__ == (2875252i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875333i32;
                    } else {
                        _gotoNext = 2875373i32;
                    };
                } else if (__value__ == (2875333i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2875295 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2875437i32;
                } else if (__value__ == (2875373i32)) {
                    _gotoNext = 2875373i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2875378 = __tmp__._0;
                        _size_2875381 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2875378;
                        final __tmp__1 = (_s.__slice__(_size_2875381) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2875295 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2875437i32;
                } else if (__value__ == (2875437i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875461i32;
                    } else {
                        _gotoNext = 2875501i32;
                    };
                } else if (__value__ == (2875461i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2875299 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2875637i32;
                } else if (__value__ == (2875501i32)) {
                    _gotoNext = 2875501i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2875506 = __tmp__._0;
                        _size_2875509 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2875506;
                        final __tmp__1 = (_t.__slice__(_size_2875509) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2875299 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2875637i32;
                } else if (__value__ == (2875637i32)) {
                    if (_tr_2875299 == (_sr_2875295)) {
                        _gotoNext = 2875649i32;
                    } else {
                        _gotoNext = 2875714i32;
                    };
                } else if (__value__ == (2875649i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875221i32;
                } else if (__value__ == (2875714i32)) {
                    if ((_tr_2875299 < _sr_2875295 : Bool)) {
                        _gotoNext = 2875725i32;
                    } else {
                        _gotoNext = 2875779i32;
                    };
                } else if (__value__ == (2875725i32)) {
                    {
                        final __tmp__0 = _sr_2875295;
                        final __tmp__1 = _tr_2875299;
                        _tr_2875299 = __tmp__0;
                        _sr_2875295 = __tmp__1;
                    };
                    _gotoNext = 2875779i32;
                } else if (__value__ == (2875779i32)) {
                    if ((_tr_2875299 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2875801i32;
                    } else {
                        _gotoNext = 2876054i32;
                    };
                } else if (__value__ == (2875801i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2875295 : Bool) && (_sr_2875295 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2875299 == ((_sr_2875295 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2875901i32;
                    } else {
                        _gotoNext = 2875924i32;
                    };
                } else if (__value__ == (2875901i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875221i32;
                } else if (__value__ == (2875924i32)) {
                    return false;
                    _gotoNext = 2876054i32;
                } else if (__value__ == (2876054i32)) {
                    _r_2876054 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2875295);
                    var __blank__ = 0i32;
                    _gotoNext = 2876084i32;
                } else if (__value__ == (2876084i32)) {
                    if (((_r_2876054 != _sr_2875295) && (_r_2876054 < _tr_2875299 : Bool) : Bool)) {
                        _gotoNext = 2876106i32;
                    } else {
                        _gotoNext = 2876143i32;
                    };
                } else if (__value__ == (2876106i32)) {
                    _r_2876054 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2876054);
                    _gotoNext = 2876084i32;
                } else if (__value__ == (2876143i32)) {
                    if (_r_2876054 == (_tr_2875299)) {
                        _gotoNext = 2876154i32;
                    } else {
                        _gotoNext = 2876174i32;
                    };
                } else if (__value__ == (2876154i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2875221i32;
                } else if (__value__ == (2876174i32)) {
                    return false;
                    _gotoNext = 2875221i32;
                } else if (__value__ == (2876227i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
