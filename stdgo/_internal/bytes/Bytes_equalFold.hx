package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2949697:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2950975:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2950302:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2950299:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2950220:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2949649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2950430:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2950427:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2950216:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2949710:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2949649 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2949657i32;
                } else if (__value__ == (2949657i32)) {
                    if (((_i_2949649 < (_s.length) : Bool) && (_i_2949649 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2949693i32;
                    } else {
                        _gotoNext = 2950082i32;
                    };
                } else if (__value__ == (2949693i32)) {
                    _sr_2949697 = _s[(_i_2949649 : stdgo.GoInt)];
                    _tr_2949710 = _t[(_i_2949649 : stdgo.GoInt)];
                    if (((_sr_2949697 | _tr_2949710 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2949749i32;
                    } else {
                        _gotoNext = 2949793i32;
                    };
                } else if (__value__ == (2949749i32)) {
                    _gotoNext = 2950107i32;
                } else if (__value__ == (2949793i32)) {
                    if (_tr_2949710 == (_sr_2949697)) {
                        _gotoNext = 2949805i32;
                    } else {
                        _gotoNext = 2949870i32;
                    };
                } else if (__value__ == (2949805i32)) {
                    _i_2949649++;
                    _gotoNext = 2949657i32;
                } else if (__value__ == (2949870i32)) {
                    if ((_tr_2949710 < _sr_2949697 : Bool)) {
                        _gotoNext = 2949881i32;
                    } else {
                        _gotoNext = 2949956i32;
                    };
                } else if (__value__ == (2949881i32)) {
                    {
                        final __tmp__0 = _sr_2949697;
                        final __tmp__1 = _tr_2949710;
                        _tr_2949710 = __tmp__0;
                        _sr_2949697 = __tmp__1;
                    };
                    _gotoNext = 2949956i32;
                } else if (__value__ == (2949956i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2949697 : Bool) && (_sr_2949697 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2949710 == ((_sr_2949697 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2950002i32;
                    } else {
                        _gotoNext = 2950022i32;
                    };
                } else if (__value__ == (2950002i32)) {
                    _i_2949649++;
                    _gotoNext = 2949657i32;
                } else if (__value__ == (2950022i32)) {
                    return false;
                    _i_2949649++;
                    _gotoNext = 2949657i32;
                } else if (__value__ == (2950082i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2950107i32;
                } else if (__value__ == (2950107i32)) {
                    _s = (_s.__slice__(_i_2949649) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2949649) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2950142i32;
                } else if (__value__ == (2950142i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2950173i32;
                    } else {
                        _gotoNext = 2951148i32;
                    };
                } else if (__value__ == (2950173i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2950254i32;
                    } else {
                        _gotoNext = 2950294i32;
                    };
                } else if (__value__ == (2950254i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2950216 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2950358i32;
                } else if (__value__ == (2950294i32)) {
                    _gotoNext = 2950294i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2950299 = __tmp__._0;
                        _size_2950302 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2950299;
                        final __tmp__1 = (_s.__slice__(_size_2950302) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2950216 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2950358i32;
                } else if (__value__ == (2950358i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2950382i32;
                    } else {
                        _gotoNext = 2950422i32;
                    };
                } else if (__value__ == (2950382i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2950220 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2950558i32;
                } else if (__value__ == (2950422i32)) {
                    _gotoNext = 2950422i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2950427 = __tmp__._0;
                        _size_2950430 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2950427;
                        final __tmp__1 = (_t.__slice__(_size_2950430) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2950220 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2950558i32;
                } else if (__value__ == (2950558i32)) {
                    if (_tr_2950220 == (_sr_2950216)) {
                        _gotoNext = 2950570i32;
                    } else {
                        _gotoNext = 2950635i32;
                    };
                } else if (__value__ == (2950570i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2950142i32;
                } else if (__value__ == (2950635i32)) {
                    if ((_tr_2950220 < _sr_2950216 : Bool)) {
                        _gotoNext = 2950646i32;
                    } else {
                        _gotoNext = 2950700i32;
                    };
                } else if (__value__ == (2950646i32)) {
                    {
                        final __tmp__0 = _sr_2950216;
                        final __tmp__1 = _tr_2950220;
                        _tr_2950220 = __tmp__0;
                        _sr_2950216 = __tmp__1;
                    };
                    _gotoNext = 2950700i32;
                } else if (__value__ == (2950700i32)) {
                    if ((_tr_2950220 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2950722i32;
                    } else {
                        _gotoNext = 2950975i32;
                    };
                } else if (__value__ == (2950722i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2950216 : Bool) && (_sr_2950216 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2950220 == ((_sr_2950216 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2950822i32;
                    } else {
                        _gotoNext = 2950845i32;
                    };
                } else if (__value__ == (2950822i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2950142i32;
                } else if (__value__ == (2950845i32)) {
                    return false;
                    _gotoNext = 2950975i32;
                } else if (__value__ == (2950975i32)) {
                    _r_2950975 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2950216);
                    var __blank__ = 0i32;
                    _gotoNext = 2951005i32;
                } else if (__value__ == (2951005i32)) {
                    if (((_r_2950975 != _sr_2950216) && (_r_2950975 < _tr_2950220 : Bool) : Bool)) {
                        _gotoNext = 2951027i32;
                    } else {
                        _gotoNext = 2951064i32;
                    };
                } else if (__value__ == (2951027i32)) {
                    _r_2950975 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2950975);
                    _gotoNext = 2951005i32;
                } else if (__value__ == (2951064i32)) {
                    if (_r_2950975 == (_tr_2950220)) {
                        _gotoNext = 2951075i32;
                    } else {
                        _gotoNext = 2951095i32;
                    };
                } else if (__value__ == (2951075i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2950142i32;
                } else if (__value__ == (2951095i32)) {
                    return false;
                    _gotoNext = 2950142i32;
                } else if (__value__ == (2951148i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
