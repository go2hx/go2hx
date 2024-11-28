package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3106174:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3106113:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3106894:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3106763:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3106684:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3106680:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3106766:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3106161:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3107439:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3106891:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3106113 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3106121i32;
                } else if (__value__ == (3106121i32)) {
                    if (((_i_3106113 < (_s.length) : Bool) && (_i_3106113 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3106157i32;
                    } else {
                        _gotoNext = 3106546i32;
                    };
                } else if (__value__ == (3106157i32)) {
                    _sr_3106161 = _s[(_i_3106113 : stdgo.GoInt)];
                    _tr_3106174 = _t[(_i_3106113 : stdgo.GoInt)];
                    if (((_sr_3106161 | _tr_3106174 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3106213i32;
                    } else {
                        _gotoNext = 3106257i32;
                    };
                } else if (__value__ == (3106213i32)) {
                    _gotoNext = 3106571i32;
                } else if (__value__ == (3106257i32)) {
                    if (_tr_3106174 == (_sr_3106161)) {
                        _gotoNext = 3106269i32;
                    } else {
                        _gotoNext = 3106334i32;
                    };
                } else if (__value__ == (3106269i32)) {
                    _i_3106113++;
                    _gotoNext = 3106121i32;
                } else if (__value__ == (3106334i32)) {
                    if ((_tr_3106174 < _sr_3106161 : Bool)) {
                        _gotoNext = 3106345i32;
                    } else {
                        _gotoNext = 3106420i32;
                    };
                } else if (__value__ == (3106345i32)) {
                    {
                        final __tmp__0 = _sr_3106161;
                        final __tmp__1 = _tr_3106174;
                        _tr_3106174 = __tmp__0;
                        _sr_3106161 = __tmp__1;
                    };
                    _gotoNext = 3106420i32;
                } else if (__value__ == (3106420i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3106161 : Bool) && (_sr_3106161 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3106174 == ((_sr_3106161 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3106466i32;
                    } else {
                        _gotoNext = 3106486i32;
                    };
                } else if (__value__ == (3106466i32)) {
                    _i_3106113++;
                    _gotoNext = 3106121i32;
                } else if (__value__ == (3106486i32)) {
                    return false;
                    _i_3106113++;
                    _gotoNext = 3106121i32;
                } else if (__value__ == (3106546i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3106571i32;
                } else if (__value__ == (3106571i32)) {
                    _s = (_s.__slice__(_i_3106113) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3106113) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3106606i32;
                } else if (__value__ == (3106606i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3106637i32;
                    } else {
                        _gotoNext = 3107612i32;
                    };
                } else if (__value__ == (3106637i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3106718i32;
                    } else {
                        _gotoNext = 3106758i32;
                    };
                } else if (__value__ == (3106718i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3106680 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3106822i32;
                } else if (__value__ == (3106758i32)) {
                    _gotoNext = 3106758i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3106763 = __tmp__._0;
                        _size_3106766 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3106763;
                        final __tmp__1 = (_s.__slice__(_size_3106766) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3106680 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3106822i32;
                } else if (__value__ == (3106822i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3106846i32;
                    } else {
                        _gotoNext = 3106886i32;
                    };
                } else if (__value__ == (3106846i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3106684 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3107022i32;
                } else if (__value__ == (3106886i32)) {
                    _gotoNext = 3106886i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3106891 = __tmp__._0;
                        _size_3106894 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3106891;
                        final __tmp__1 = (_t.__slice__(_size_3106894) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3106684 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3107022i32;
                } else if (__value__ == (3107022i32)) {
                    if (_tr_3106684 == (_sr_3106680)) {
                        _gotoNext = 3107034i32;
                    } else {
                        _gotoNext = 3107099i32;
                    };
                } else if (__value__ == (3107034i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3106606i32;
                } else if (__value__ == (3107099i32)) {
                    if ((_tr_3106684 < _sr_3106680 : Bool)) {
                        _gotoNext = 3107110i32;
                    } else {
                        _gotoNext = 3107164i32;
                    };
                } else if (__value__ == (3107110i32)) {
                    {
                        final __tmp__0 = _sr_3106680;
                        final __tmp__1 = _tr_3106684;
                        _tr_3106684 = __tmp__0;
                        _sr_3106680 = __tmp__1;
                    };
                    _gotoNext = 3107164i32;
                } else if (__value__ == (3107164i32)) {
                    if ((_tr_3106684 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3107186i32;
                    } else {
                        _gotoNext = 3107439i32;
                    };
                } else if (__value__ == (3107186i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3106680 : Bool) && (_sr_3106680 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3106684 == ((_sr_3106680 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3107286i32;
                    } else {
                        _gotoNext = 3107309i32;
                    };
                } else if (__value__ == (3107286i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3106606i32;
                } else if (__value__ == (3107309i32)) {
                    return false;
                    _gotoNext = 3107439i32;
                } else if (__value__ == (3107439i32)) {
                    _r_3107439 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3106680);
                    var __blank__ = 0i32;
                    _gotoNext = 3107469i32;
                } else if (__value__ == (3107469i32)) {
                    if (((_r_3107439 != _sr_3106680) && (_r_3107439 < _tr_3106684 : Bool) : Bool)) {
                        _gotoNext = 3107491i32;
                    } else {
                        _gotoNext = 3107528i32;
                    };
                } else if (__value__ == (3107491i32)) {
                    _r_3107439 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3107439);
                    _gotoNext = 3107469i32;
                } else if (__value__ == (3107528i32)) {
                    if (_r_3107439 == (_tr_3106684)) {
                        _gotoNext = 3107539i32;
                    } else {
                        _gotoNext = 3107559i32;
                    };
                } else if (__value__ == (3107539i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3106606i32;
                } else if (__value__ == (3107559i32)) {
                    return false;
                    _gotoNext = 3106606i32;
                } else if (__value__ == (3107612i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
