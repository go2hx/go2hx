package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2919649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2919646:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2919057:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2919044:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2920322:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2919777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2919774:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2919567:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2919563:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2918996:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2918996 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2919004i32;
                } else if (__value__ == (2919004i32)) {
                    if (((_i_2918996 < (_s.length) : Bool) && (_i_2918996 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2919040i32;
                    } else {
                        _gotoNext = 2919429i32;
                    };
                } else if (__value__ == (2919040i32)) {
                    _sr_2919044 = _s[(_i_2918996 : stdgo.GoInt)];
                    _tr_2919057 = _t[(_i_2918996 : stdgo.GoInt)];
                    if (((_sr_2919044 | _tr_2919057 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2919096i32;
                    } else {
                        _gotoNext = 2919140i32;
                    };
                } else if (__value__ == (2919096i32)) {
                    _gotoNext = 2919454i32;
                } else if (__value__ == (2919140i32)) {
                    if (_tr_2919057 == (_sr_2919044)) {
                        _gotoNext = 2919152i32;
                    } else {
                        _gotoNext = 2919217i32;
                    };
                } else if (__value__ == (2919152i32)) {
                    _i_2918996++;
                    _gotoNext = 2919004i32;
                } else if (__value__ == (2919217i32)) {
                    if ((_tr_2919057 < _sr_2919044 : Bool)) {
                        _gotoNext = 2919228i32;
                    } else {
                        _gotoNext = 2919303i32;
                    };
                } else if (__value__ == (2919228i32)) {
                    {
                        final __tmp__0 = _sr_2919044;
                        final __tmp__1 = _tr_2919057;
                        _tr_2919057 = __tmp__0;
                        _sr_2919044 = __tmp__1;
                    };
                    _gotoNext = 2919303i32;
                } else if (__value__ == (2919303i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2919044 : Bool) && (_sr_2919044 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2919057 == ((_sr_2919044 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2919349i32;
                    } else {
                        _gotoNext = 2919369i32;
                    };
                } else if (__value__ == (2919349i32)) {
                    _i_2918996++;
                    _gotoNext = 2919004i32;
                } else if (__value__ == (2919369i32)) {
                    return false;
                    _i_2918996++;
                    _gotoNext = 2919004i32;
                } else if (__value__ == (2919429i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2919454i32;
                } else if (__value__ == (2919454i32)) {
                    _s = (_s.__slice__(_i_2918996) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2918996) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2919489i32;
                } else if (__value__ == (2919489i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2919520i32;
                    } else {
                        _gotoNext = 2920495i32;
                    };
                } else if (__value__ == (2919520i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2919601i32;
                    } else {
                        _gotoNext = 2919641i32;
                    };
                } else if (__value__ == (2919601i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2919563 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2919705i32;
                } else if (__value__ == (2919641i32)) {
                    _gotoNext = 2919641i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2919646 = __tmp__._0;
                        _size_2919649 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2919646;
                        final __tmp__1 = (_s.__slice__(_size_2919649) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2919563 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2919705i32;
                } else if (__value__ == (2919705i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2919729i32;
                    } else {
                        _gotoNext = 2919769i32;
                    };
                } else if (__value__ == (2919729i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2919567 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2919905i32;
                } else if (__value__ == (2919769i32)) {
                    _gotoNext = 2919769i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2919774 = __tmp__._0;
                        _size_2919777 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2919774;
                        final __tmp__1 = (_t.__slice__(_size_2919777) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2919567 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2919905i32;
                } else if (__value__ == (2919905i32)) {
                    if (_tr_2919567 == (_sr_2919563)) {
                        _gotoNext = 2919917i32;
                    } else {
                        _gotoNext = 2919982i32;
                    };
                } else if (__value__ == (2919917i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2919489i32;
                } else if (__value__ == (2919982i32)) {
                    if ((_tr_2919567 < _sr_2919563 : Bool)) {
                        _gotoNext = 2919993i32;
                    } else {
                        _gotoNext = 2920047i32;
                    };
                } else if (__value__ == (2919993i32)) {
                    {
                        final __tmp__0 = _sr_2919563;
                        final __tmp__1 = _tr_2919567;
                        _tr_2919567 = __tmp__0;
                        _sr_2919563 = __tmp__1;
                    };
                    _gotoNext = 2920047i32;
                } else if (__value__ == (2920047i32)) {
                    if ((_tr_2919567 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2920069i32;
                    } else {
                        _gotoNext = 2920322i32;
                    };
                } else if (__value__ == (2920069i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2919563 : Bool) && (_sr_2919563 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2919567 == ((_sr_2919563 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2920169i32;
                    } else {
                        _gotoNext = 2920192i32;
                    };
                } else if (__value__ == (2920169i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2919489i32;
                } else if (__value__ == (2920192i32)) {
                    return false;
                    _gotoNext = 2920322i32;
                } else if (__value__ == (2920322i32)) {
                    _r_2920322 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2919563);
                    var __blank__ = 0i32;
                    _gotoNext = 2920352i32;
                } else if (__value__ == (2920352i32)) {
                    if (((_r_2920322 != _sr_2919563) && (_r_2920322 < _tr_2919567 : Bool) : Bool)) {
                        _gotoNext = 2920374i32;
                    } else {
                        _gotoNext = 2920411i32;
                    };
                } else if (__value__ == (2920374i32)) {
                    _r_2920322 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2920322);
                    _gotoNext = 2920352i32;
                } else if (__value__ == (2920411i32)) {
                    if (_r_2920322 == (_tr_2919567)) {
                        _gotoNext = 2920422i32;
                    } else {
                        _gotoNext = 2920442i32;
                    };
                } else if (__value__ == (2920422i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2919489i32;
                } else if (__value__ == (2920442i32)) {
                    return false;
                    _gotoNext = 2919489i32;
                } else if (__value__ == (2920495i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
