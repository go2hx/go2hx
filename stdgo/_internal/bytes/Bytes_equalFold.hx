package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2973602:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2972926:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2972847:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2972843:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2972337:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2972276:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2973057:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2973054:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2972929:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2972324:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2972276 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2972284i32;
                } else if (__value__ == (2972284i32)) {
                    if (((_i_2972276 < (_s.length) : Bool) && (_i_2972276 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2972320i32;
                    } else {
                        _gotoNext = 2972709i32;
                    };
                } else if (__value__ == (2972320i32)) {
                    _sr_2972324 = _s[(_i_2972276 : stdgo.GoInt)];
                    _tr_2972337 = _t[(_i_2972276 : stdgo.GoInt)];
                    if (((_sr_2972324 | _tr_2972337 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2972376i32;
                    } else {
                        _gotoNext = 2972420i32;
                    };
                } else if (__value__ == (2972376i32)) {
                    _gotoNext = 2972734i32;
                } else if (__value__ == (2972420i32)) {
                    if (_tr_2972337 == (_sr_2972324)) {
                        _gotoNext = 2972432i32;
                    } else {
                        _gotoNext = 2972497i32;
                    };
                } else if (__value__ == (2972432i32)) {
                    _i_2972276++;
                    _gotoNext = 2972284i32;
                } else if (__value__ == (2972497i32)) {
                    if ((_tr_2972337 < _sr_2972324 : Bool)) {
                        _gotoNext = 2972508i32;
                    } else {
                        _gotoNext = 2972583i32;
                    };
                } else if (__value__ == (2972508i32)) {
                    {
                        final __tmp__0 = _sr_2972324;
                        final __tmp__1 = _tr_2972337;
                        _tr_2972337 = __tmp__0;
                        _sr_2972324 = __tmp__1;
                    };
                    _gotoNext = 2972583i32;
                } else if (__value__ == (2972583i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2972324 : Bool) && (_sr_2972324 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2972337 == ((_sr_2972324 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2972629i32;
                    } else {
                        _gotoNext = 2972649i32;
                    };
                } else if (__value__ == (2972629i32)) {
                    _i_2972276++;
                    _gotoNext = 2972284i32;
                } else if (__value__ == (2972649i32)) {
                    return false;
                    _i_2972276++;
                    _gotoNext = 2972284i32;
                } else if (__value__ == (2972709i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2972734i32;
                } else if (__value__ == (2972734i32)) {
                    _s = (_s.__slice__(_i_2972276) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2972276) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2972769i32;
                } else if (__value__ == (2972769i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2972800i32;
                    } else {
                        _gotoNext = 2973775i32;
                    };
                } else if (__value__ == (2972800i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2972881i32;
                    } else {
                        _gotoNext = 2972921i32;
                    };
                } else if (__value__ == (2972881i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2972843 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2972985i32;
                } else if (__value__ == (2972921i32)) {
                    _gotoNext = 2972921i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2972926 = @:tmpset0 __tmp__._0;
                        _size_2972929 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2972926;
                        final __tmp__1 = (_s.__slice__(_size_2972929) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2972843 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2972985i32;
                } else if (__value__ == (2972985i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2973009i32;
                    } else {
                        _gotoNext = 2973049i32;
                    };
                } else if (__value__ == (2973009i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2972847 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2973185i32;
                } else if (__value__ == (2973049i32)) {
                    _gotoNext = 2973049i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2973054 = @:tmpset0 __tmp__._0;
                        _size_2973057 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2973054;
                        final __tmp__1 = (_t.__slice__(_size_2973057) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2972847 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2973185i32;
                } else if (__value__ == (2973185i32)) {
                    if (_tr_2972847 == (_sr_2972843)) {
                        _gotoNext = 2973197i32;
                    } else {
                        _gotoNext = 2973262i32;
                    };
                } else if (__value__ == (2973197i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2972769i32;
                } else if (__value__ == (2973262i32)) {
                    if ((_tr_2972847 < _sr_2972843 : Bool)) {
                        _gotoNext = 2973273i32;
                    } else {
                        _gotoNext = 2973327i32;
                    };
                } else if (__value__ == (2973273i32)) {
                    {
                        final __tmp__0 = _sr_2972843;
                        final __tmp__1 = _tr_2972847;
                        _tr_2972847 = __tmp__0;
                        _sr_2972843 = __tmp__1;
                    };
                    _gotoNext = 2973327i32;
                } else if (__value__ == (2973327i32)) {
                    if ((_tr_2972847 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2973349i32;
                    } else {
                        _gotoNext = 2973602i32;
                    };
                } else if (__value__ == (2973349i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2972843 : Bool) && (_sr_2972843 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2972847 == ((_sr_2972843 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2973449i32;
                    } else {
                        _gotoNext = 2973472i32;
                    };
                } else if (__value__ == (2973449i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2972769i32;
                } else if (__value__ == (2973472i32)) {
                    return false;
                    _gotoNext = 2973602i32;
                } else if (__value__ == (2973602i32)) {
                    _r_2973602 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2972843);
                    var __blank__ = 0i32;
                    _gotoNext = 2973632i32;
                } else if (__value__ == (2973632i32)) {
                    if (((_r_2973602 != _sr_2972843) && (_r_2973602 < _tr_2972847 : Bool) : Bool)) {
                        _gotoNext = 2973654i32;
                    } else {
                        _gotoNext = 2973691i32;
                    };
                } else if (__value__ == (2973654i32)) {
                    _r_2973602 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2973602);
                    _gotoNext = 2973632i32;
                } else if (__value__ == (2973691i32)) {
                    if (_r_2973602 == (_tr_2972847)) {
                        _gotoNext = 2973702i32;
                    } else {
                        _gotoNext = 2973722i32;
                    };
                } else if (__value__ == (2973702i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2972769i32;
                } else if (__value__ == (2973722i32)) {
                    return false;
                    _gotoNext = 2972769i32;
                } else if (__value__ == (2973775i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
