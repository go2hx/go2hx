package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2906355:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2906565:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2906562:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2905784:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2907110:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2906437:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2906434:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2906351:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2905845:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2905832:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2905784 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2905792i32;
                } else if (__value__ == (2905792i32)) {
                    if (((_i_2905784 < (_s.length) : Bool) && (_i_2905784 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2905828i32;
                    } else {
                        _gotoNext = 2906217i32;
                    };
                } else if (__value__ == (2905828i32)) {
                    _sr_2905832 = _s[(_i_2905784 : stdgo.GoInt)];
                    _tr_2905845 = _t[(_i_2905784 : stdgo.GoInt)];
                    if (((_sr_2905832 | _tr_2905845 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905884i32;
                    } else {
                        _gotoNext = 2905928i32;
                    };
                } else if (__value__ == (2905884i32)) {
                    _gotoNext = 2906242i32;
                } else if (__value__ == (2905928i32)) {
                    if (_tr_2905845 == (_sr_2905832)) {
                        _gotoNext = 2905940i32;
                    } else {
                        _gotoNext = 2906005i32;
                    };
                } else if (__value__ == (2905940i32)) {
                    _i_2905784++;
                    _gotoNext = 2905792i32;
                } else if (__value__ == (2906005i32)) {
                    if ((_tr_2905845 < _sr_2905832 : Bool)) {
                        _gotoNext = 2906016i32;
                    } else {
                        _gotoNext = 2906091i32;
                    };
                } else if (__value__ == (2906016i32)) {
                    {
                        final __tmp__0 = _sr_2905832;
                        final __tmp__1 = _tr_2905845;
                        _tr_2905845 = __tmp__0;
                        _sr_2905832 = __tmp__1;
                    };
                    _gotoNext = 2906091i32;
                } else if (__value__ == (2906091i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2905832 : Bool) && (_sr_2905832 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2905845 == ((_sr_2905832 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2906137i32;
                    } else {
                        _gotoNext = 2906157i32;
                    };
                } else if (__value__ == (2906137i32)) {
                    _i_2905784++;
                    _gotoNext = 2905792i32;
                } else if (__value__ == (2906157i32)) {
                    return false;
                    _i_2905784++;
                    _gotoNext = 2905792i32;
                } else if (__value__ == (2906217i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2906242i32;
                } else if (__value__ == (2906242i32)) {
                    _s = (_s.__slice__(_i_2905784) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2905784) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2906277i32;
                } else if (__value__ == (2906277i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2906308i32;
                    } else {
                        _gotoNext = 2907283i32;
                    };
                } else if (__value__ == (2906308i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2906389i32;
                    } else {
                        _gotoNext = 2906429i32;
                    };
                } else if (__value__ == (2906389i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2906351 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2906493i32;
                } else if (__value__ == (2906429i32)) {
                    _gotoNext = 2906429i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2906434 = __tmp__._0;
                        _size_2906437 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2906434;
                        final __tmp__1 = (_s.__slice__(_size_2906437) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2906351 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2906493i32;
                } else if (__value__ == (2906493i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2906517i32;
                    } else {
                        _gotoNext = 2906557i32;
                    };
                } else if (__value__ == (2906517i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2906355 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2906693i32;
                } else if (__value__ == (2906557i32)) {
                    _gotoNext = 2906557i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2906562 = __tmp__._0;
                        _size_2906565 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2906562;
                        final __tmp__1 = (_t.__slice__(_size_2906565) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2906355 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2906693i32;
                } else if (__value__ == (2906693i32)) {
                    if (_tr_2906355 == (_sr_2906351)) {
                        _gotoNext = 2906705i32;
                    } else {
                        _gotoNext = 2906770i32;
                    };
                } else if (__value__ == (2906705i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2906277i32;
                } else if (__value__ == (2906770i32)) {
                    if ((_tr_2906355 < _sr_2906351 : Bool)) {
                        _gotoNext = 2906781i32;
                    } else {
                        _gotoNext = 2906835i32;
                    };
                } else if (__value__ == (2906781i32)) {
                    {
                        final __tmp__0 = _sr_2906351;
                        final __tmp__1 = _tr_2906355;
                        _tr_2906355 = __tmp__0;
                        _sr_2906351 = __tmp__1;
                    };
                    _gotoNext = 2906835i32;
                } else if (__value__ == (2906835i32)) {
                    if ((_tr_2906355 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2906857i32;
                    } else {
                        _gotoNext = 2907110i32;
                    };
                } else if (__value__ == (2906857i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2906351 : Bool) && (_sr_2906351 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2906355 == ((_sr_2906351 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2906957i32;
                    } else {
                        _gotoNext = 2906980i32;
                    };
                } else if (__value__ == (2906957i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2906277i32;
                } else if (__value__ == (2906980i32)) {
                    return false;
                    _gotoNext = 2907110i32;
                } else if (__value__ == (2907110i32)) {
                    _r_2907110 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2906351);
                    var __blank__ = 0i32;
                    _gotoNext = 2907140i32;
                } else if (__value__ == (2907140i32)) {
                    if (((_r_2907110 != _sr_2906351) && (_r_2907110 < _tr_2906355 : Bool) : Bool)) {
                        _gotoNext = 2907162i32;
                    } else {
                        _gotoNext = 2907199i32;
                    };
                } else if (__value__ == (2907162i32)) {
                    _r_2907110 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2907110);
                    _gotoNext = 2907140i32;
                } else if (__value__ == (2907199i32)) {
                    if (_r_2907110 == (_tr_2906355)) {
                        _gotoNext = 2907210i32;
                    } else {
                        _gotoNext = 2907230i32;
                    };
                } else if (__value__ == (2907210i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2906277i32;
                } else if (__value__ == (2907230i32)) {
                    return false;
                    _gotoNext = 2906277i32;
                } else if (__value__ == (2907283i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
