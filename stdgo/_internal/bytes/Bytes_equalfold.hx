package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3020968:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3020449:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3020401:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3021727:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3021182:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3021179:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3021051:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3020972:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3021054:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3020462:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3020401 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3020409i32;
                } else if (__value__ == (3020409i32)) {
                    if (((_i_3020401 < (_s.length) : Bool) && (_i_3020401 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3020445i32;
                    } else {
                        _gotoNext = 3020834i32;
                    };
                } else if (__value__ == (3020445i32)) {
                    _sr_3020449 = _s[(_i_3020401 : stdgo.GoInt)];
                    _tr_3020462 = _t[(_i_3020401 : stdgo.GoInt)];
                    if (((_sr_3020449 | _tr_3020462 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020501i32;
                    } else {
                        _gotoNext = 3020545i32;
                    };
                } else if (__value__ == (3020501i32)) {
                    _gotoNext = 3020859i32;
                } else if (__value__ == (3020545i32)) {
                    if (_tr_3020462 == (_sr_3020449)) {
                        _gotoNext = 3020557i32;
                    } else {
                        _gotoNext = 3020622i32;
                    };
                } else if (__value__ == (3020557i32)) {
                    _i_3020401++;
                    _gotoNext = 3020409i32;
                } else if (__value__ == (3020622i32)) {
                    if ((_tr_3020462 < _sr_3020449 : Bool)) {
                        _gotoNext = 3020633i32;
                    } else {
                        _gotoNext = 3020708i32;
                    };
                } else if (__value__ == (3020633i32)) {
                    {
                        final __tmp__0 = _sr_3020449;
                        final __tmp__1 = _tr_3020462;
                        _tr_3020462 = __tmp__0;
                        _sr_3020449 = __tmp__1;
                    };
                    _gotoNext = 3020708i32;
                } else if (__value__ == (3020708i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3020449 : Bool) && (_sr_3020449 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3020462 == ((_sr_3020449 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3020754i32;
                    } else {
                        _gotoNext = 3020774i32;
                    };
                } else if (__value__ == (3020754i32)) {
                    _i_3020401++;
                    _gotoNext = 3020409i32;
                } else if (__value__ == (3020774i32)) {
                    return false;
                    _i_3020401++;
                    _gotoNext = 3020409i32;
                } else if (__value__ == (3020834i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3020859i32;
                } else if (__value__ == (3020859i32)) {
                    _s = (_s.__slice__(_i_3020401) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3020401) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3020894i32;
                } else if (__value__ == (3020894i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3020925i32;
                    } else {
                        _gotoNext = 3021900i32;
                    };
                } else if (__value__ == (3020925i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3021006i32;
                    } else {
                        _gotoNext = 3021046i32;
                    };
                } else if (__value__ == (3021006i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3020968 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3021110i32;
                } else if (__value__ == (3021046i32)) {
                    _gotoNext = 3021046i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3021051 = @:tmpset0 __tmp__._0;
                        _size_3021054 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3021051;
                        final __tmp__1 = (_s.__slice__(_size_3021054) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3020968 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3021110i32;
                } else if (__value__ == (3021110i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3021134i32;
                    } else {
                        _gotoNext = 3021174i32;
                    };
                } else if (__value__ == (3021134i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3020972 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3021310i32;
                } else if (__value__ == (3021174i32)) {
                    _gotoNext = 3021174i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3021179 = @:tmpset0 __tmp__._0;
                        _size_3021182 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3021179;
                        final __tmp__1 = (_t.__slice__(_size_3021182) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3020972 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3021310i32;
                } else if (__value__ == (3021310i32)) {
                    if (_tr_3020972 == (_sr_3020968)) {
                        _gotoNext = 3021322i32;
                    } else {
                        _gotoNext = 3021387i32;
                    };
                } else if (__value__ == (3021322i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020894i32;
                } else if (__value__ == (3021387i32)) {
                    if ((_tr_3020972 < _sr_3020968 : Bool)) {
                        _gotoNext = 3021398i32;
                    } else {
                        _gotoNext = 3021452i32;
                    };
                } else if (__value__ == (3021398i32)) {
                    {
                        final __tmp__0 = _sr_3020968;
                        final __tmp__1 = _tr_3020972;
                        _tr_3020972 = __tmp__0;
                        _sr_3020968 = __tmp__1;
                    };
                    _gotoNext = 3021452i32;
                } else if (__value__ == (3021452i32)) {
                    if ((_tr_3020972 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3021474i32;
                    } else {
                        _gotoNext = 3021727i32;
                    };
                } else if (__value__ == (3021474i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3020968 : Bool) && (_sr_3020968 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3020972 == ((_sr_3020968 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3021574i32;
                    } else {
                        _gotoNext = 3021597i32;
                    };
                } else if (__value__ == (3021574i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020894i32;
                } else if (__value__ == (3021597i32)) {
                    return false;
                    _gotoNext = 3021727i32;
                } else if (__value__ == (3021727i32)) {
                    _r_3021727 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3020968);
                    var __blank__ = 0i32;
                    _gotoNext = 3021757i32;
                } else if (__value__ == (3021757i32)) {
                    if (((_r_3021727 != _sr_3020968) && (_r_3021727 < _tr_3020972 : Bool) : Bool)) {
                        _gotoNext = 3021779i32;
                    } else {
                        _gotoNext = 3021816i32;
                    };
                } else if (__value__ == (3021779i32)) {
                    _r_3021727 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3021727);
                    _gotoNext = 3021757i32;
                } else if (__value__ == (3021816i32)) {
                    if (_r_3021727 == (_tr_3020972)) {
                        _gotoNext = 3021827i32;
                    } else {
                        _gotoNext = 3021847i32;
                    };
                } else if (__value__ == (3021827i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020894i32;
                } else if (__value__ == (3021847i32)) {
                    return false;
                    _gotoNext = 3020894i32;
                } else if (__value__ == (3021900i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
