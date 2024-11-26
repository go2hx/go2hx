package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2854735:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2854722:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2854674:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2856000:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2855324:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2855245:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2855241:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2855455:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2855452:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2855327:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2854674 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2854682i32;
                } else if (__value__ == (2854682i32)) {
                    if (((_i_2854674 < (_s.length) : Bool) && (_i_2854674 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2854718i32;
                    } else {
                        _gotoNext = 2855107i32;
                    };
                } else if (__value__ == (2854718i32)) {
                    _sr_2854722 = _s[(_i_2854674 : stdgo.GoInt)];
                    _tr_2854735 = _t[(_i_2854674 : stdgo.GoInt)];
                    if (((_sr_2854722 | _tr_2854735 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2854774i32;
                    } else {
                        _gotoNext = 2854818i32;
                    };
                } else if (__value__ == (2854774i32)) {
                    _gotoNext = 2855132i32;
                } else if (__value__ == (2854818i32)) {
                    if (_tr_2854735 == (_sr_2854722)) {
                        _gotoNext = 2854830i32;
                    } else {
                        _gotoNext = 2854895i32;
                    };
                } else if (__value__ == (2854830i32)) {
                    _i_2854674++;
                    _gotoNext = 2854682i32;
                } else if (__value__ == (2854895i32)) {
                    if ((_tr_2854735 < _sr_2854722 : Bool)) {
                        _gotoNext = 2854906i32;
                    } else {
                        _gotoNext = 2854981i32;
                    };
                } else if (__value__ == (2854906i32)) {
                    {
                        final __tmp__0 = _sr_2854722;
                        final __tmp__1 = _tr_2854735;
                        _tr_2854735 = __tmp__0;
                        _sr_2854722 = __tmp__1;
                    };
                    _gotoNext = 2854981i32;
                } else if (__value__ == (2854981i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2854722 : Bool) && (_sr_2854722 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2854735 == ((_sr_2854722 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2855027i32;
                    } else {
                        _gotoNext = 2855047i32;
                    };
                } else if (__value__ == (2855027i32)) {
                    _i_2854674++;
                    _gotoNext = 2854682i32;
                } else if (__value__ == (2855047i32)) {
                    return false;
                    _i_2854674++;
                    _gotoNext = 2854682i32;
                } else if (__value__ == (2855107i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2855132i32;
                } else if (__value__ == (2855132i32)) {
                    _s = (_s.__slice__(_i_2854674) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2854674) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2855167i32;
                } else if (__value__ == (2855167i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2855198i32;
                    } else {
                        _gotoNext = 2856173i32;
                    };
                } else if (__value__ == (2855198i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2855279i32;
                    } else {
                        _gotoNext = 2855319i32;
                    };
                } else if (__value__ == (2855279i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2855241 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2855383i32;
                } else if (__value__ == (2855319i32)) {
                    _gotoNext = 2855319i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2855324 = __tmp__._0;
                        _size_2855327 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2855324;
                        final __tmp__1 = (_s.__slice__(_size_2855327) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2855241 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2855383i32;
                } else if (__value__ == (2855383i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2855407i32;
                    } else {
                        _gotoNext = 2855447i32;
                    };
                } else if (__value__ == (2855407i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2855245 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2855583i32;
                } else if (__value__ == (2855447i32)) {
                    _gotoNext = 2855447i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2855452 = __tmp__._0;
                        _size_2855455 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2855452;
                        final __tmp__1 = (_t.__slice__(_size_2855455) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2855245 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2855583i32;
                } else if (__value__ == (2855583i32)) {
                    if (_tr_2855245 == (_sr_2855241)) {
                        _gotoNext = 2855595i32;
                    } else {
                        _gotoNext = 2855660i32;
                    };
                } else if (__value__ == (2855595i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855167i32;
                } else if (__value__ == (2855660i32)) {
                    if ((_tr_2855245 < _sr_2855241 : Bool)) {
                        _gotoNext = 2855671i32;
                    } else {
                        _gotoNext = 2855725i32;
                    };
                } else if (__value__ == (2855671i32)) {
                    {
                        final __tmp__0 = _sr_2855241;
                        final __tmp__1 = _tr_2855245;
                        _tr_2855245 = __tmp__0;
                        _sr_2855241 = __tmp__1;
                    };
                    _gotoNext = 2855725i32;
                } else if (__value__ == (2855725i32)) {
                    if ((_tr_2855245 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2855747i32;
                    } else {
                        _gotoNext = 2856000i32;
                    };
                } else if (__value__ == (2855747i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2855241 : Bool) && (_sr_2855241 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2855245 == ((_sr_2855241 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2855847i32;
                    } else {
                        _gotoNext = 2855870i32;
                    };
                } else if (__value__ == (2855847i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855167i32;
                } else if (__value__ == (2855870i32)) {
                    return false;
                    _gotoNext = 2856000i32;
                } else if (__value__ == (2856000i32)) {
                    _r_2856000 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2855241);
                    var __blank__ = 0i32;
                    _gotoNext = 2856030i32;
                } else if (__value__ == (2856030i32)) {
                    if (((_r_2856000 != _sr_2855241) && (_r_2856000 < _tr_2855245 : Bool) : Bool)) {
                        _gotoNext = 2856052i32;
                    } else {
                        _gotoNext = 2856089i32;
                    };
                } else if (__value__ == (2856052i32)) {
                    _r_2856000 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2856000);
                    _gotoNext = 2856030i32;
                } else if (__value__ == (2856089i32)) {
                    if (_r_2856000 == (_tr_2855245)) {
                        _gotoNext = 2856100i32;
                    } else {
                        _gotoNext = 2856120i32;
                    };
                } else if (__value__ == (2856100i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855167i32;
                } else if (__value__ == (2856120i32)) {
                    return false;
                    _gotoNext = 2855167i32;
                } else if (__value__ == (2856173i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
