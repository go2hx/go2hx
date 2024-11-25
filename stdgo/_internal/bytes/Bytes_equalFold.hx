package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2935139:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2935744:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2935741:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2935662:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2935152:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2935091:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2936417:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2935872:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2935869:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2935658:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2935091 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2935099i32;
                } else if (__value__ == (2935099i32)) {
                    if (((_i_2935091 < (_s.length) : Bool) && (_i_2935091 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2935135i32;
                    } else {
                        _gotoNext = 2935524i32;
                    };
                } else if (__value__ == (2935135i32)) {
                    _sr_2935139 = _s[(_i_2935091 : stdgo.GoInt)];
                    _tr_2935152 = _t[(_i_2935091 : stdgo.GoInt)];
                    if (((_sr_2935139 | _tr_2935152 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935191i32;
                    } else {
                        _gotoNext = 2935235i32;
                    };
                } else if (__value__ == (2935191i32)) {
                    _gotoNext = 2935549i32;
                } else if (__value__ == (2935235i32)) {
                    if (_tr_2935152 == (_sr_2935139)) {
                        _gotoNext = 2935247i32;
                    } else {
                        _gotoNext = 2935312i32;
                    };
                } else if (__value__ == (2935247i32)) {
                    _i_2935091++;
                    _gotoNext = 2935099i32;
                } else if (__value__ == (2935312i32)) {
                    if ((_tr_2935152 < _sr_2935139 : Bool)) {
                        _gotoNext = 2935323i32;
                    } else {
                        _gotoNext = 2935398i32;
                    };
                } else if (__value__ == (2935323i32)) {
                    {
                        final __tmp__0 = _sr_2935139;
                        final __tmp__1 = _tr_2935152;
                        _tr_2935152 = __tmp__0;
                        _sr_2935139 = __tmp__1;
                    };
                    _gotoNext = 2935398i32;
                } else if (__value__ == (2935398i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2935139 : Bool) && (_sr_2935139 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2935152 == ((_sr_2935139 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2935444i32;
                    } else {
                        _gotoNext = 2935464i32;
                    };
                } else if (__value__ == (2935444i32)) {
                    _i_2935091++;
                    _gotoNext = 2935099i32;
                } else if (__value__ == (2935464i32)) {
                    return false;
                    _i_2935091++;
                    _gotoNext = 2935099i32;
                } else if (__value__ == (2935524i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2935549i32;
                } else if (__value__ == (2935549i32)) {
                    _s = (_s.__slice__(_i_2935091) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2935091) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2935584i32;
                } else if (__value__ == (2935584i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2935615i32;
                    } else {
                        _gotoNext = 2936590i32;
                    };
                } else if (__value__ == (2935615i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935696i32;
                    } else {
                        _gotoNext = 2935736i32;
                    };
                } else if (__value__ == (2935696i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2935658 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2935800i32;
                } else if (__value__ == (2935736i32)) {
                    _gotoNext = 2935736i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2935741 = __tmp__._0;
                        _size_2935744 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2935741;
                        final __tmp__1 = (_s.__slice__(_size_2935744) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2935658 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2935800i32;
                } else if (__value__ == (2935800i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935824i32;
                    } else {
                        _gotoNext = 2935864i32;
                    };
                } else if (__value__ == (2935824i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2935662 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2936000i32;
                } else if (__value__ == (2935864i32)) {
                    _gotoNext = 2935864i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2935869 = __tmp__._0;
                        _size_2935872 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2935869;
                        final __tmp__1 = (_t.__slice__(_size_2935872) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2935662 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2936000i32;
                } else if (__value__ == (2936000i32)) {
                    if (_tr_2935662 == (_sr_2935658)) {
                        _gotoNext = 2936012i32;
                    } else {
                        _gotoNext = 2936077i32;
                    };
                } else if (__value__ == (2936012i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2935584i32;
                } else if (__value__ == (2936077i32)) {
                    if ((_tr_2935662 < _sr_2935658 : Bool)) {
                        _gotoNext = 2936088i32;
                    } else {
                        _gotoNext = 2936142i32;
                    };
                } else if (__value__ == (2936088i32)) {
                    {
                        final __tmp__0 = _sr_2935658;
                        final __tmp__1 = _tr_2935662;
                        _tr_2935662 = __tmp__0;
                        _sr_2935658 = __tmp__1;
                    };
                    _gotoNext = 2936142i32;
                } else if (__value__ == (2936142i32)) {
                    if ((_tr_2935662 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2936164i32;
                    } else {
                        _gotoNext = 2936417i32;
                    };
                } else if (__value__ == (2936164i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2935658 : Bool) && (_sr_2935658 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2935662 == ((_sr_2935658 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2936264i32;
                    } else {
                        _gotoNext = 2936287i32;
                    };
                } else if (__value__ == (2936264i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2935584i32;
                } else if (__value__ == (2936287i32)) {
                    return false;
                    _gotoNext = 2936417i32;
                } else if (__value__ == (2936417i32)) {
                    _r_2936417 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2935658);
                    var __blank__ = 0i32;
                    _gotoNext = 2936447i32;
                } else if (__value__ == (2936447i32)) {
                    if (((_r_2936417 != _sr_2935658) && (_r_2936417 < _tr_2935662 : Bool) : Bool)) {
                        _gotoNext = 2936469i32;
                    } else {
                        _gotoNext = 2936506i32;
                    };
                } else if (__value__ == (2936469i32)) {
                    _r_2936417 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2936417);
                    _gotoNext = 2936447i32;
                } else if (__value__ == (2936506i32)) {
                    if (_r_2936417 == (_tr_2935662)) {
                        _gotoNext = 2936517i32;
                    } else {
                        _gotoNext = 2936537i32;
                    };
                } else if (__value__ == (2936517i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2935584i32;
                } else if (__value__ == (2936537i32)) {
                    return false;
                    _gotoNext = 2935584i32;
                } else if (__value__ == (2936590i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
