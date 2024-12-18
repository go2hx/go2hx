package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2987606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2987603:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2987001:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2987524:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2987520:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2987014:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2986953:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2988279:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2987734:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2987731:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2986953 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2986961i32;
                } else if (__value__ == (2986961i32)) {
                    if (((_i_2986953 < (_s.length) : Bool) && (_i_2986953 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2986997i32;
                    } else {
                        _gotoNext = 2987386i32;
                    };
                } else if (__value__ == (2986997i32)) {
                    _sr_2987001 = _s[(_i_2986953 : stdgo.GoInt)];
                    _tr_2987014 = _t[(_i_2986953 : stdgo.GoInt)];
                    if (((_sr_2987001 | _tr_2987014 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2987053i32;
                    } else {
                        _gotoNext = 2987097i32;
                    };
                } else if (__value__ == (2987053i32)) {
                    _gotoNext = 2987411i32;
                } else if (__value__ == (2987097i32)) {
                    if (_tr_2987014 == (_sr_2987001)) {
                        _gotoNext = 2987109i32;
                    } else {
                        _gotoNext = 2987174i32;
                    };
                } else if (__value__ == (2987109i32)) {
                    _i_2986953++;
                    _gotoNext = 2986961i32;
                } else if (__value__ == (2987174i32)) {
                    if ((_tr_2987014 < _sr_2987001 : Bool)) {
                        _gotoNext = 2987185i32;
                    } else {
                        _gotoNext = 2987260i32;
                    };
                } else if (__value__ == (2987185i32)) {
                    {
                        final __tmp__0 = _sr_2987001;
                        final __tmp__1 = _tr_2987014;
                        _tr_2987014 = __tmp__0;
                        _sr_2987001 = __tmp__1;
                    };
                    _gotoNext = 2987260i32;
                } else if (__value__ == (2987260i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2987001 : Bool) && (_sr_2987001 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2987014 == ((_sr_2987001 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2987306i32;
                    } else {
                        _gotoNext = 2987326i32;
                    };
                } else if (__value__ == (2987306i32)) {
                    _i_2986953++;
                    _gotoNext = 2986961i32;
                } else if (__value__ == (2987326i32)) {
                    return false;
                    _i_2986953++;
                    _gotoNext = 2986961i32;
                } else if (__value__ == (2987386i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2987411i32;
                } else if (__value__ == (2987411i32)) {
                    _s = (_s.__slice__(_i_2986953) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2986953) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2987446i32;
                } else if (__value__ == (2987446i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2987477i32;
                    } else {
                        _gotoNext = 2988452i32;
                    };
                } else if (__value__ == (2987477i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2987558i32;
                    } else {
                        _gotoNext = 2987598i32;
                    };
                } else if (__value__ == (2987558i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2987520 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2987662i32;
                } else if (__value__ == (2987598i32)) {
                    _gotoNext = 2987598i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2987603 = __tmp__._0;
                        _size_2987606 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2987603;
                        final __tmp__1 = (_s.__slice__(_size_2987606) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2987520 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2987662i32;
                } else if (__value__ == (2987662i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2987686i32;
                    } else {
                        _gotoNext = 2987726i32;
                    };
                } else if (__value__ == (2987686i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2987524 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2987862i32;
                } else if (__value__ == (2987726i32)) {
                    _gotoNext = 2987726i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2987731 = __tmp__._0;
                        _size_2987734 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2987731;
                        final __tmp__1 = (_t.__slice__(_size_2987734) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2987524 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2987862i32;
                } else if (__value__ == (2987862i32)) {
                    if (_tr_2987524 == (_sr_2987520)) {
                        _gotoNext = 2987874i32;
                    } else {
                        _gotoNext = 2987939i32;
                    };
                } else if (__value__ == (2987874i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2987446i32;
                } else if (__value__ == (2987939i32)) {
                    if ((_tr_2987524 < _sr_2987520 : Bool)) {
                        _gotoNext = 2987950i32;
                    } else {
                        _gotoNext = 2988004i32;
                    };
                } else if (__value__ == (2987950i32)) {
                    {
                        final __tmp__0 = _sr_2987520;
                        final __tmp__1 = _tr_2987524;
                        _tr_2987524 = __tmp__0;
                        _sr_2987520 = __tmp__1;
                    };
                    _gotoNext = 2988004i32;
                } else if (__value__ == (2988004i32)) {
                    if ((_tr_2987524 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2988026i32;
                    } else {
                        _gotoNext = 2988279i32;
                    };
                } else if (__value__ == (2988026i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2987520 : Bool) && (_sr_2987520 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2987524 == ((_sr_2987520 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2988126i32;
                    } else {
                        _gotoNext = 2988149i32;
                    };
                } else if (__value__ == (2988126i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2987446i32;
                } else if (__value__ == (2988149i32)) {
                    return false;
                    _gotoNext = 2988279i32;
                } else if (__value__ == (2988279i32)) {
                    _r_2988279 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2987520);
                    var __blank__ = 0i32;
                    _gotoNext = 2988309i32;
                } else if (__value__ == (2988309i32)) {
                    if (((_r_2988279 != _sr_2987520) && (_r_2988279 < _tr_2987524 : Bool) : Bool)) {
                        _gotoNext = 2988331i32;
                    } else {
                        _gotoNext = 2988368i32;
                    };
                } else if (__value__ == (2988331i32)) {
                    _r_2988279 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2988279);
                    _gotoNext = 2988309i32;
                } else if (__value__ == (2988368i32)) {
                    if (_r_2988279 == (_tr_2987524)) {
                        _gotoNext = 2988379i32;
                    } else {
                        _gotoNext = 2988399i32;
                    };
                } else if (__value__ == (2988379i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2987446i32;
                } else if (__value__ == (2988399i32)) {
                    return false;
                    _gotoNext = 2987446i32;
                } else if (__value__ == (2988452i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
