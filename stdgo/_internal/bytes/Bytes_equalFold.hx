package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3048987:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3049720:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3049592:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3049589:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3049510:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3049000:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3048939:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3050265:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3049717:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3049506:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3048939 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3048947i32;
                } else if (__value__ == (3048947i32)) {
                    if (((_i_3048939 < (_s.length) : Bool) && (_i_3048939 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3048983i32;
                    } else {
                        _gotoNext = 3049372i32;
                    };
                } else if (__value__ == (3048983i32)) {
                    _sr_3048987 = _s[(_i_3048939 : stdgo.GoInt)];
                    _tr_3049000 = _t[(_i_3048939 : stdgo.GoInt)];
                    if (((_sr_3048987 | _tr_3049000 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3049039i32;
                    } else {
                        _gotoNext = 3049083i32;
                    };
                } else if (__value__ == (3049039i32)) {
                    _gotoNext = 3049397i32;
                } else if (__value__ == (3049083i32)) {
                    if (_tr_3049000 == (_sr_3048987)) {
                        _gotoNext = 3049095i32;
                    } else {
                        _gotoNext = 3049160i32;
                    };
                } else if (__value__ == (3049095i32)) {
                    _i_3048939++;
                    _gotoNext = 3048947i32;
                } else if (__value__ == (3049160i32)) {
                    if ((_tr_3049000 < _sr_3048987 : Bool)) {
                        _gotoNext = 3049171i32;
                    } else {
                        _gotoNext = 3049246i32;
                    };
                } else if (__value__ == (3049171i32)) {
                    {
                        final __tmp__0 = _sr_3048987;
                        final __tmp__1 = _tr_3049000;
                        _tr_3049000 = __tmp__0;
                        _sr_3048987 = __tmp__1;
                    };
                    _gotoNext = 3049246i32;
                } else if (__value__ == (3049246i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3048987 : Bool) && (_sr_3048987 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3049000 == ((_sr_3048987 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3049292i32;
                    } else {
                        _gotoNext = 3049312i32;
                    };
                } else if (__value__ == (3049292i32)) {
                    _i_3048939++;
                    _gotoNext = 3048947i32;
                } else if (__value__ == (3049312i32)) {
                    return false;
                    _i_3048939++;
                    _gotoNext = 3048947i32;
                } else if (__value__ == (3049372i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3049397i32;
                } else if (__value__ == (3049397i32)) {
                    _s = (_s.__slice__(_i_3048939) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3048939) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3049432i32;
                } else if (__value__ == (3049432i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3049463i32;
                    } else {
                        _gotoNext = 3050438i32;
                    };
                } else if (__value__ == (3049463i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3049544i32;
                    } else {
                        _gotoNext = 3049584i32;
                    };
                } else if (__value__ == (3049544i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3049506 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3049648i32;
                } else if (__value__ == (3049584i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3049589 = __tmp__._0;
                        _size_3049592 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3049589;
                        final __tmp__1 = (_s.__slice__(_size_3049592) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3049506 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3049648i32;
                } else if (__value__ == (3049648i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3049672i32;
                    } else {
                        _gotoNext = 3049712i32;
                    };
                } else if (__value__ == (3049672i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3049510 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3049848i32;
                } else if (__value__ == (3049712i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3049717 = __tmp__._0;
                        _size_3049720 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3049717;
                        final __tmp__1 = (_t.__slice__(_size_3049720) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3049510 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3049848i32;
                } else if (__value__ == (3049848i32)) {
                    if (_tr_3049510 == (_sr_3049506)) {
                        _gotoNext = 3049860i32;
                    } else {
                        _gotoNext = 3049925i32;
                    };
                } else if (__value__ == (3049860i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3049432i32;
                } else if (__value__ == (3049925i32)) {
                    if ((_tr_3049510 < _sr_3049506 : Bool)) {
                        _gotoNext = 3049936i32;
                    } else {
                        _gotoNext = 3049990i32;
                    };
                } else if (__value__ == (3049936i32)) {
                    {
                        final __tmp__0 = _sr_3049506;
                        final __tmp__1 = _tr_3049510;
                        _tr_3049510 = __tmp__0;
                        _sr_3049506 = __tmp__1;
                    };
                    _gotoNext = 3049990i32;
                } else if (__value__ == (3049990i32)) {
                    if ((_tr_3049510 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3050012i32;
                    } else {
                        _gotoNext = 3050265i32;
                    };
                } else if (__value__ == (3050012i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3049506 : Bool) && (_sr_3049506 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3049510 == ((_sr_3049506 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3050112i32;
                    } else {
                        _gotoNext = 3050135i32;
                    };
                } else if (__value__ == (3050112i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3049432i32;
                } else if (__value__ == (3050135i32)) {
                    return false;
                    _gotoNext = 3050265i32;
                } else if (__value__ == (3050265i32)) {
                    _r_3050265 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3049506);
                    var __blank__ = 0i32;
                    _gotoNext = 3050295i32;
                } else if (__value__ == (3050295i32)) {
                    if (((_r_3050265 != _sr_3049506) && (_r_3050265 < _tr_3049510 : Bool) : Bool)) {
                        _gotoNext = 3050317i32;
                    } else {
                        _gotoNext = 3050354i32;
                    };
                } else if (__value__ == (3050317i32)) {
                    _r_3050265 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3050265);
                    _gotoNext = 3050295i32;
                } else if (__value__ == (3050354i32)) {
                    if (_r_3050265 == (_tr_3049510)) {
                        _gotoNext = 3050365i32;
                    } else {
                        _gotoNext = 3050385i32;
                    };
                } else if (__value__ == (3050365i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3049432i32;
                } else if (__value__ == (3050385i32)) {
                    return false;
                    _gotoNext = 3049432i32;
                } else if (__value__ == (3050438i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
