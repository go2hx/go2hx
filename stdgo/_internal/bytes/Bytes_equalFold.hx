package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_3129654:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3129572:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3129062:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3129049:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3129001:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3129782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3129779:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3130327:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3129651:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3129568:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3129001 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3129009i32;
                } else if (__value__ == (3129009i32)) {
                    if (((_i_3129001 < (_s.length) : Bool) && (_i_3129001 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3129045i32;
                    } else {
                        _gotoNext = 3129434i32;
                    };
                } else if (__value__ == (3129045i32)) {
                    _sr_3129049 = _s[(_i_3129001 : stdgo.GoInt)];
                    _tr_3129062 = _t[(_i_3129001 : stdgo.GoInt)];
                    if (((_sr_3129049 | _tr_3129062 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3129101i32;
                    } else {
                        _gotoNext = 3129145i32;
                    };
                } else if (__value__ == (3129101i32)) {
                    _gotoNext = 3129459i32;
                } else if (__value__ == (3129145i32)) {
                    if (_tr_3129062 == (_sr_3129049)) {
                        _gotoNext = 3129157i32;
                    } else {
                        _gotoNext = 3129222i32;
                    };
                } else if (__value__ == (3129157i32)) {
                    _i_3129001++;
                    _gotoNext = 3129009i32;
                } else if (__value__ == (3129222i32)) {
                    if ((_tr_3129062 < _sr_3129049 : Bool)) {
                        _gotoNext = 3129233i32;
                    } else {
                        _gotoNext = 3129308i32;
                    };
                } else if (__value__ == (3129233i32)) {
                    {
                        final __tmp__0 = _sr_3129049;
                        final __tmp__1 = _tr_3129062;
                        _tr_3129062 = __tmp__0;
                        _sr_3129049 = __tmp__1;
                    };
                    _gotoNext = 3129308i32;
                } else if (__value__ == (3129308i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3129049 : Bool) && (_sr_3129049 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3129062 == ((_sr_3129049 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3129354i32;
                    } else {
                        _gotoNext = 3129374i32;
                    };
                } else if (__value__ == (3129354i32)) {
                    _i_3129001++;
                    _gotoNext = 3129009i32;
                } else if (__value__ == (3129374i32)) {
                    return false;
                    _i_3129001++;
                    _gotoNext = 3129009i32;
                } else if (__value__ == (3129434i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3129459i32;
                } else if (__value__ == (3129459i32)) {
                    _s = (_s.__slice__(_i_3129001) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3129001) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3129494i32;
                } else if (__value__ == (3129494i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3129525i32;
                    } else {
                        _gotoNext = 3130500i32;
                    };
                } else if (__value__ == (3129525i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3129606i32;
                    } else {
                        _gotoNext = 3129646i32;
                    };
                } else if (__value__ == (3129606i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3129568 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3129710i32;
                } else if (__value__ == (3129646i32)) {
                    _gotoNext = 3129646i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3129651 = __tmp__._0;
                        _size_3129654 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3129651;
                        final __tmp__1 = (_s.__slice__(_size_3129654) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3129568 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3129710i32;
                } else if (__value__ == (3129710i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3129734i32;
                    } else {
                        _gotoNext = 3129774i32;
                    };
                } else if (__value__ == (3129734i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3129572 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3129910i32;
                } else if (__value__ == (3129774i32)) {
                    _gotoNext = 3129774i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3129779 = __tmp__._0;
                        _size_3129782 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3129779;
                        final __tmp__1 = (_t.__slice__(_size_3129782) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3129572 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3129910i32;
                } else if (__value__ == (3129910i32)) {
                    if (_tr_3129572 == (_sr_3129568)) {
                        _gotoNext = 3129922i32;
                    } else {
                        _gotoNext = 3129987i32;
                    };
                } else if (__value__ == (3129922i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3129494i32;
                } else if (__value__ == (3129987i32)) {
                    if ((_tr_3129572 < _sr_3129568 : Bool)) {
                        _gotoNext = 3129998i32;
                    } else {
                        _gotoNext = 3130052i32;
                    };
                } else if (__value__ == (3129998i32)) {
                    {
                        final __tmp__0 = _sr_3129568;
                        final __tmp__1 = _tr_3129572;
                        _tr_3129572 = __tmp__0;
                        _sr_3129568 = __tmp__1;
                    };
                    _gotoNext = 3130052i32;
                } else if (__value__ == (3130052i32)) {
                    if ((_tr_3129572 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3130074i32;
                    } else {
                        _gotoNext = 3130327i32;
                    };
                } else if (__value__ == (3130074i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3129568 : Bool) && (_sr_3129568 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3129572 == ((_sr_3129568 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3130174i32;
                    } else {
                        _gotoNext = 3130197i32;
                    };
                } else if (__value__ == (3130174i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3129494i32;
                } else if (__value__ == (3130197i32)) {
                    return false;
                    _gotoNext = 3130327i32;
                } else if (__value__ == (3130327i32)) {
                    _r_3130327 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3129568);
                    var __blank__ = 0i32;
                    _gotoNext = 3130357i32;
                } else if (__value__ == (3130357i32)) {
                    if (((_r_3130327 != _sr_3129568) && (_r_3130327 < _tr_3129572 : Bool) : Bool)) {
                        _gotoNext = 3130379i32;
                    } else {
                        _gotoNext = 3130416i32;
                    };
                } else if (__value__ == (3130379i32)) {
                    _r_3130327 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3130327);
                    _gotoNext = 3130357i32;
                } else if (__value__ == (3130416i32)) {
                    if (_r_3130327 == (_tr_3129572)) {
                        _gotoNext = 3130427i32;
                    } else {
                        _gotoNext = 3130447i32;
                    };
                } else if (__value__ == (3130427i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3129494i32;
                } else if (__value__ == (3130447i32)) {
                    return false;
                    _gotoNext = 3129494i32;
                } else if (__value__ == (3130500i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
