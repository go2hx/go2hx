package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3026602:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3026598:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3026079:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3026031:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3026812:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3026809:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3026684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3027357:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3026681:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3026092:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3026031 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3026039i32;
                } else if (__value__ == (3026039i32)) {
                    if (((_i_3026031 < (_s.length) : Bool) && (_i_3026031 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3026075i32;
                    } else {
                        _gotoNext = 3026464i32;
                    };
                } else if (__value__ == (3026075i32)) {
                    _sr_3026079 = _s[(_i_3026031 : stdgo.GoInt)];
                    _tr_3026092 = _t[(_i_3026031 : stdgo.GoInt)];
                    if (((_sr_3026079 | _tr_3026092 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3026131i32;
                    } else {
                        _gotoNext = 3026175i32;
                    };
                } else if (__value__ == (3026131i32)) {
                    _gotoNext = 3026489i32;
                } else if (__value__ == (3026175i32)) {
                    if (_tr_3026092 == (_sr_3026079)) {
                        _gotoNext = 3026187i32;
                    } else {
                        _gotoNext = 3026252i32;
                    };
                } else if (__value__ == (3026187i32)) {
                    _i_3026031++;
                    _gotoNext = 3026039i32;
                } else if (__value__ == (3026252i32)) {
                    if ((_tr_3026092 < _sr_3026079 : Bool)) {
                        _gotoNext = 3026263i32;
                    } else {
                        _gotoNext = 3026338i32;
                    };
                } else if (__value__ == (3026263i32)) {
                    {
                        final __tmp__0 = _sr_3026079;
                        final __tmp__1 = _tr_3026092;
                        _tr_3026092 = __tmp__0;
                        _sr_3026079 = __tmp__1;
                    };
                    _gotoNext = 3026338i32;
                } else if (__value__ == (3026338i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3026079 : Bool) && (_sr_3026079 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3026092 == ((_sr_3026079 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3026384i32;
                    } else {
                        _gotoNext = 3026404i32;
                    };
                } else if (__value__ == (3026384i32)) {
                    _i_3026031++;
                    _gotoNext = 3026039i32;
                } else if (__value__ == (3026404i32)) {
                    return false;
                    _i_3026031++;
                    _gotoNext = 3026039i32;
                } else if (__value__ == (3026464i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3026489i32;
                } else if (__value__ == (3026489i32)) {
                    _s = (_s.__slice__(_i_3026031) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3026031) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3026524i32;
                } else if (__value__ == (3026524i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3026555i32;
                    } else {
                        _gotoNext = 3027530i32;
                    };
                } else if (__value__ == (3026555i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3026636i32;
                    } else {
                        _gotoNext = 3026676i32;
                    };
                } else if (__value__ == (3026636i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3026598 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3026740i32;
                } else if (__value__ == (3026676i32)) {
                    _gotoNext = 3026676i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3026681 = __tmp__._0;
                        _size_3026684 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3026681;
                        final __tmp__1 = (_s.__slice__(_size_3026684) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3026598 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3026740i32;
                } else if (__value__ == (3026740i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3026764i32;
                    } else {
                        _gotoNext = 3026804i32;
                    };
                } else if (__value__ == (3026764i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3026602 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3026940i32;
                } else if (__value__ == (3026804i32)) {
                    _gotoNext = 3026804i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3026809 = __tmp__._0;
                        _size_3026812 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3026809;
                        final __tmp__1 = (_t.__slice__(_size_3026812) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3026602 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3026940i32;
                } else if (__value__ == (3026940i32)) {
                    if (_tr_3026602 == (_sr_3026598)) {
                        _gotoNext = 3026952i32;
                    } else {
                        _gotoNext = 3027017i32;
                    };
                } else if (__value__ == (3026952i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3026524i32;
                } else if (__value__ == (3027017i32)) {
                    if ((_tr_3026602 < _sr_3026598 : Bool)) {
                        _gotoNext = 3027028i32;
                    } else {
                        _gotoNext = 3027082i32;
                    };
                } else if (__value__ == (3027028i32)) {
                    {
                        final __tmp__0 = _sr_3026598;
                        final __tmp__1 = _tr_3026602;
                        _tr_3026602 = __tmp__0;
                        _sr_3026598 = __tmp__1;
                    };
                    _gotoNext = 3027082i32;
                } else if (__value__ == (3027082i32)) {
                    if ((_tr_3026602 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3027104i32;
                    } else {
                        _gotoNext = 3027357i32;
                    };
                } else if (__value__ == (3027104i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3026598 : Bool) && (_sr_3026598 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3026602 == ((_sr_3026598 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3027204i32;
                    } else {
                        _gotoNext = 3027227i32;
                    };
                } else if (__value__ == (3027204i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3026524i32;
                } else if (__value__ == (3027227i32)) {
                    return false;
                    _gotoNext = 3027357i32;
                } else if (__value__ == (3027357i32)) {
                    _r_3027357 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3026598);
                    var __blank__ = 0i32;
                    _gotoNext = 3027387i32;
                } else if (__value__ == (3027387i32)) {
                    if (((_r_3027357 != _sr_3026598) && (_r_3027357 < _tr_3026602 : Bool) : Bool)) {
                        _gotoNext = 3027409i32;
                    } else {
                        _gotoNext = 3027446i32;
                    };
                } else if (__value__ == (3027409i32)) {
                    _r_3027357 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3027357);
                    _gotoNext = 3027387i32;
                } else if (__value__ == (3027446i32)) {
                    if (_r_3027357 == (_tr_3026602)) {
                        _gotoNext = 3027457i32;
                    } else {
                        _gotoNext = 3027477i32;
                    };
                } else if (__value__ == (3027457i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3026524i32;
                } else if (__value__ == (3027477i32)) {
                    return false;
                    _gotoNext = 3026524i32;
                } else if (__value__ == (3027530i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
