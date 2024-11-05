package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2983916:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2983243:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2982590:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2983371:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2983368:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2983240:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2983161:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2983157:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2982651:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2982638:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2982590 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2982598i32;
                } else if (__value__ == (2982598i32)) {
                    if (((_i_2982590 < (_s.length) : Bool) && (_i_2982590 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2982634i32;
                    } else {
                        _gotoNext = 2983023i32;
                    };
                } else if (__value__ == (2982634i32)) {
                    _sr_2982638 = _s[(_i_2982590 : stdgo.GoInt)];
                    _tr_2982651 = _t[(_i_2982590 : stdgo.GoInt)];
                    if (((_sr_2982638 | _tr_2982651 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2982690i32;
                    } else {
                        _gotoNext = 2982734i32;
                    };
                } else if (__value__ == (2982690i32)) {
                    _gotoNext = 2983048i32;
                } else if (__value__ == (2982734i32)) {
                    if (_tr_2982651 == (_sr_2982638)) {
                        _gotoNext = 2982746i32;
                    } else {
                        _gotoNext = 2982811i32;
                    };
                } else if (__value__ == (2982746i32)) {
                    _i_2982590++;
                    _gotoNext = 2982598i32;
                } else if (__value__ == (2982811i32)) {
                    if ((_tr_2982651 < _sr_2982638 : Bool)) {
                        _gotoNext = 2982822i32;
                    } else {
                        _gotoNext = 2982897i32;
                    };
                } else if (__value__ == (2982822i32)) {
                    {
                        final __tmp__0 = _sr_2982638;
                        final __tmp__1 = _tr_2982651;
                        _tr_2982651 = __tmp__0;
                        _sr_2982638 = __tmp__1;
                    };
                    _gotoNext = 2982897i32;
                } else if (__value__ == (2982897i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2982638 : Bool) && (_sr_2982638 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2982651 == ((_sr_2982638 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2982943i32;
                    } else {
                        _gotoNext = 2982963i32;
                    };
                } else if (__value__ == (2982943i32)) {
                    _i_2982590++;
                    _gotoNext = 2982598i32;
                } else if (__value__ == (2982963i32)) {
                    return false;
                    _i_2982590++;
                    _gotoNext = 2982598i32;
                } else if (__value__ == (2983023i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2983048i32;
                } else if (__value__ == (2983048i32)) {
                    _s = (_s.__slice__(_i_2982590) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2982590) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2983083i32;
                } else if (__value__ == (2983083i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2983114i32;
                    } else {
                        _gotoNext = 2984089i32;
                    };
                } else if (__value__ == (2983114i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2983195i32;
                    } else {
                        _gotoNext = 2983235i32;
                    };
                } else if (__value__ == (2983195i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2983157 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2983299i32;
                } else if (__value__ == (2983235i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2983240 = __tmp__._0;
                        _size_2983243 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2983240;
                        final __tmp__1 = (_s.__slice__(_size_2983243) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2983157 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2983299i32;
                } else if (__value__ == (2983299i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2983323i32;
                    } else {
                        _gotoNext = 2983363i32;
                    };
                } else if (__value__ == (2983323i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2983161 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2983499i32;
                } else if (__value__ == (2983363i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2983368 = __tmp__._0;
                        _size_2983371 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2983368;
                        final __tmp__1 = (_t.__slice__(_size_2983371) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2983161 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2983499i32;
                } else if (__value__ == (2983499i32)) {
                    if (_tr_2983161 == (_sr_2983157)) {
                        _gotoNext = 2983511i32;
                    } else {
                        _gotoNext = 2983576i32;
                    };
                } else if (__value__ == (2983511i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2983083i32;
                } else if (__value__ == (2983576i32)) {
                    if ((_tr_2983161 < _sr_2983157 : Bool)) {
                        _gotoNext = 2983587i32;
                    } else {
                        _gotoNext = 2983641i32;
                    };
                } else if (__value__ == (2983587i32)) {
                    {
                        final __tmp__0 = _sr_2983157;
                        final __tmp__1 = _tr_2983161;
                        _tr_2983161 = __tmp__0;
                        _sr_2983157 = __tmp__1;
                    };
                    _gotoNext = 2983641i32;
                } else if (__value__ == (2983641i32)) {
                    if ((_tr_2983161 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2983663i32;
                    } else {
                        _gotoNext = 2983916i32;
                    };
                } else if (__value__ == (2983663i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2983157 : Bool) && (_sr_2983157 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2983161 == ((_sr_2983157 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2983763i32;
                    } else {
                        _gotoNext = 2983786i32;
                    };
                } else if (__value__ == (2983763i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2983083i32;
                } else if (__value__ == (2983786i32)) {
                    return false;
                    _gotoNext = 2983916i32;
                } else if (__value__ == (2983916i32)) {
                    _r_2983916 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2983157);
                    var __blank__ = 0i32;
                    _gotoNext = 2983946i32;
                } else if (__value__ == (2983946i32)) {
                    if (((_r_2983916 != _sr_2983157) && (_r_2983916 < _tr_2983161 : Bool) : Bool)) {
                        _gotoNext = 2983968i32;
                    } else {
                        _gotoNext = 2984005i32;
                    };
                } else if (__value__ == (2983968i32)) {
                    _r_2983916 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2983916);
                    _gotoNext = 2983946i32;
                } else if (__value__ == (2984005i32)) {
                    if (_r_2983916 == (_tr_2983161)) {
                        _gotoNext = 2984016i32;
                    } else {
                        _gotoNext = 2984036i32;
                    };
                } else if (__value__ == (2984016i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2983083i32;
                } else if (__value__ == (2984036i32)) {
                    return false;
                    _gotoNext = 2983083i32;
                } else if (__value__ == (2984089i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
