package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3009876:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3008611:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3008598:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3009331:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3009328:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3009203:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3009200:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3009121:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3009117:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3008550:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3008550 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3008558i32;
                } else if (__value__ == (3008558i32)) {
                    if (((_i_3008550 < (_s.length) : Bool) && (_i_3008550 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3008594i32;
                    } else {
                        _gotoNext = 3008983i32;
                    };
                } else if (__value__ == (3008594i32)) {
                    _sr_3008598 = _s[(_i_3008550 : stdgo.GoInt)];
                    _tr_3008611 = _t[(_i_3008550 : stdgo.GoInt)];
                    if (((_sr_3008598 | _tr_3008611 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3008650i32;
                    } else {
                        _gotoNext = 3008694i32;
                    };
                } else if (__value__ == (3008650i32)) {
                    _gotoNext = 3009008i32;
                } else if (__value__ == (3008694i32)) {
                    if (_tr_3008611 == (_sr_3008598)) {
                        _gotoNext = 3008706i32;
                    } else {
                        _gotoNext = 3008771i32;
                    };
                } else if (__value__ == (3008706i32)) {
                    _i_3008550++;
                    _gotoNext = 3008558i32;
                } else if (__value__ == (3008771i32)) {
                    if ((_tr_3008611 < _sr_3008598 : Bool)) {
                        _gotoNext = 3008782i32;
                    } else {
                        _gotoNext = 3008857i32;
                    };
                } else if (__value__ == (3008782i32)) {
                    {
                        final __tmp__0 = _sr_3008598;
                        final __tmp__1 = _tr_3008611;
                        _tr_3008611 = __tmp__0;
                        _sr_3008598 = __tmp__1;
                    };
                    _gotoNext = 3008857i32;
                } else if (__value__ == (3008857i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3008598 : Bool) && (_sr_3008598 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3008611 == ((_sr_3008598 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3008903i32;
                    } else {
                        _gotoNext = 3008923i32;
                    };
                } else if (__value__ == (3008903i32)) {
                    _i_3008550++;
                    _gotoNext = 3008558i32;
                } else if (__value__ == (3008923i32)) {
                    return false;
                    _i_3008550++;
                    _gotoNext = 3008558i32;
                } else if (__value__ == (3008983i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3009008i32;
                } else if (__value__ == (3009008i32)) {
                    _s = (_s.__slice__(_i_3008550) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3008550) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3009043i32;
                } else if (__value__ == (3009043i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3009074i32;
                    } else {
                        _gotoNext = 3010049i32;
                    };
                } else if (__value__ == (3009074i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3009155i32;
                    } else {
                        _gotoNext = 3009195i32;
                    };
                } else if (__value__ == (3009155i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3009117 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3009259i32;
                } else if (__value__ == (3009195i32)) {
                    _gotoNext = 3009195i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3009200 = __tmp__._0;
                        _size_3009203 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3009200;
                        final __tmp__1 = (_s.__slice__(_size_3009203) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3009117 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3009259i32;
                } else if (__value__ == (3009259i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3009283i32;
                    } else {
                        _gotoNext = 3009323i32;
                    };
                } else if (__value__ == (3009283i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3009121 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3009459i32;
                } else if (__value__ == (3009323i32)) {
                    _gotoNext = 3009323i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3009328 = __tmp__._0;
                        _size_3009331 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3009328;
                        final __tmp__1 = (_t.__slice__(_size_3009331) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3009121 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3009459i32;
                } else if (__value__ == (3009459i32)) {
                    if (_tr_3009121 == (_sr_3009117)) {
                        _gotoNext = 3009471i32;
                    } else {
                        _gotoNext = 3009536i32;
                    };
                } else if (__value__ == (3009471i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3009043i32;
                } else if (__value__ == (3009536i32)) {
                    if ((_tr_3009121 < _sr_3009117 : Bool)) {
                        _gotoNext = 3009547i32;
                    } else {
                        _gotoNext = 3009601i32;
                    };
                } else if (__value__ == (3009547i32)) {
                    {
                        final __tmp__0 = _sr_3009117;
                        final __tmp__1 = _tr_3009121;
                        _tr_3009121 = __tmp__0;
                        _sr_3009117 = __tmp__1;
                    };
                    _gotoNext = 3009601i32;
                } else if (__value__ == (3009601i32)) {
                    if ((_tr_3009121 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3009623i32;
                    } else {
                        _gotoNext = 3009876i32;
                    };
                } else if (__value__ == (3009623i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3009117 : Bool) && (_sr_3009117 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3009121 == ((_sr_3009117 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3009723i32;
                    } else {
                        _gotoNext = 3009746i32;
                    };
                } else if (__value__ == (3009723i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3009043i32;
                } else if (__value__ == (3009746i32)) {
                    return false;
                    _gotoNext = 3009876i32;
                } else if (__value__ == (3009876i32)) {
                    _r_3009876 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3009117);
                    var __blank__ = 0i32;
                    _gotoNext = 3009906i32;
                } else if (__value__ == (3009906i32)) {
                    if (((_r_3009876 != _sr_3009117) && (_r_3009876 < _tr_3009121 : Bool) : Bool)) {
                        _gotoNext = 3009928i32;
                    } else {
                        _gotoNext = 3009965i32;
                    };
                } else if (__value__ == (3009928i32)) {
                    _r_3009876 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3009876);
                    _gotoNext = 3009906i32;
                } else if (__value__ == (3009965i32)) {
                    if (_r_3009876 == (_tr_3009121)) {
                        _gotoNext = 3009976i32;
                    } else {
                        _gotoNext = 3009996i32;
                    };
                } else if (__value__ == (3009976i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3009043i32;
                } else if (__value__ == (3009996i32)) {
                    return false;
                    _gotoNext = 3009043i32;
                } else if (__value__ == (3010049i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
