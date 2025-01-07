package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2904151:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2903606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2903392:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2902886:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2903478:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2903475:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2903396:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2902873:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2902825:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2903603:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2902825 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2902833i32;
                } else if (__value__ == (2902833i32)) {
                    if (((_i_2902825 < (_s.length) : Bool) && (_i_2902825 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2902869i32;
                    } else {
                        _gotoNext = 2903258i32;
                    };
                } else if (__value__ == (2902869i32)) {
                    _sr_2902873 = _s[(_i_2902825 : stdgo.GoInt)];
                    _tr_2902886 = _t[(_i_2902825 : stdgo.GoInt)];
                    if (((_sr_2902873 | _tr_2902886 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2902925i32;
                    } else {
                        _gotoNext = 2902969i32;
                    };
                } else if (__value__ == (2902925i32)) {
                    _gotoNext = 2903283i32;
                } else if (__value__ == (2902969i32)) {
                    if (_tr_2902886 == (_sr_2902873)) {
                        _gotoNext = 2902981i32;
                    } else {
                        _gotoNext = 2903046i32;
                    };
                } else if (__value__ == (2902981i32)) {
                    _i_2902825++;
                    _gotoNext = 2902833i32;
                } else if (__value__ == (2903046i32)) {
                    if ((_tr_2902886 < _sr_2902873 : Bool)) {
                        _gotoNext = 2903057i32;
                    } else {
                        _gotoNext = 2903132i32;
                    };
                } else if (__value__ == (2903057i32)) {
                    {
                        final __tmp__0 = _sr_2902873;
                        final __tmp__1 = _tr_2902886;
                        _tr_2902886 = __tmp__0;
                        _sr_2902873 = __tmp__1;
                    };
                    _gotoNext = 2903132i32;
                } else if (__value__ == (2903132i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2902873 : Bool) && (_sr_2902873 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2902886 == ((_sr_2902873 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2903178i32;
                    } else {
                        _gotoNext = 2903198i32;
                    };
                } else if (__value__ == (2903178i32)) {
                    _i_2902825++;
                    _gotoNext = 2902833i32;
                } else if (__value__ == (2903198i32)) {
                    return false;
                    _i_2902825++;
                    _gotoNext = 2902833i32;
                } else if (__value__ == (2903258i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2903283i32;
                } else if (__value__ == (2903283i32)) {
                    _s = (_s.__slice__(_i_2902825) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2902825) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2903318i32;
                } else if (__value__ == (2903318i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2903349i32;
                    } else {
                        _gotoNext = 2904324i32;
                    };
                } else if (__value__ == (2903349i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2903430i32;
                    } else {
                        _gotoNext = 2903470i32;
                    };
                } else if (__value__ == (2903430i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2903392 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2903534i32;
                } else if (__value__ == (2903470i32)) {
                    _gotoNext = 2903470i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2903475 = __tmp__._0;
                        _size_2903478 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2903475;
                        final __tmp__1 = (_s.__slice__(_size_2903478) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2903392 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2903534i32;
                } else if (__value__ == (2903534i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2903558i32;
                    } else {
                        _gotoNext = 2903598i32;
                    };
                } else if (__value__ == (2903558i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2903396 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2903734i32;
                } else if (__value__ == (2903598i32)) {
                    _gotoNext = 2903598i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2903603 = __tmp__._0;
                        _size_2903606 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2903603;
                        final __tmp__1 = (_t.__slice__(_size_2903606) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2903396 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2903734i32;
                } else if (__value__ == (2903734i32)) {
                    if (_tr_2903396 == (_sr_2903392)) {
                        _gotoNext = 2903746i32;
                    } else {
                        _gotoNext = 2903811i32;
                    };
                } else if (__value__ == (2903746i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2903318i32;
                } else if (__value__ == (2903811i32)) {
                    if ((_tr_2903396 < _sr_2903392 : Bool)) {
                        _gotoNext = 2903822i32;
                    } else {
                        _gotoNext = 2903876i32;
                    };
                } else if (__value__ == (2903822i32)) {
                    {
                        final __tmp__0 = _sr_2903392;
                        final __tmp__1 = _tr_2903396;
                        _tr_2903396 = __tmp__0;
                        _sr_2903392 = __tmp__1;
                    };
                    _gotoNext = 2903876i32;
                } else if (__value__ == (2903876i32)) {
                    if ((_tr_2903396 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2903898i32;
                    } else {
                        _gotoNext = 2904151i32;
                    };
                } else if (__value__ == (2903898i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2903392 : Bool) && (_sr_2903392 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2903396 == ((_sr_2903392 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2903998i32;
                    } else {
                        _gotoNext = 2904021i32;
                    };
                } else if (__value__ == (2903998i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2903318i32;
                } else if (__value__ == (2904021i32)) {
                    return false;
                    _gotoNext = 2904151i32;
                } else if (__value__ == (2904151i32)) {
                    _r_2904151 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2903392);
                    var __blank__ = 0i32;
                    _gotoNext = 2904181i32;
                } else if (__value__ == (2904181i32)) {
                    if (((_r_2904151 != _sr_2903392) && (_r_2904151 < _tr_2903396 : Bool) : Bool)) {
                        _gotoNext = 2904203i32;
                    } else {
                        _gotoNext = 2904240i32;
                    };
                } else if (__value__ == (2904203i32)) {
                    _r_2904151 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2904151);
                    _gotoNext = 2904181i32;
                } else if (__value__ == (2904240i32)) {
                    if (_r_2904151 == (_tr_2903396)) {
                        _gotoNext = 2904251i32;
                    } else {
                        _gotoNext = 2904271i32;
                    };
                } else if (__value__ == (2904251i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2903318i32;
                } else if (__value__ == (2904271i32)) {
                    return false;
                    _gotoNext = 2903318i32;
                } else if (__value__ == (2904324i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
