package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2870582:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2870500:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2870496:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2869990:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2869929:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2871255:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2870710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2870707:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2870579:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2869977:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2869929 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2869937i32;
                } else if (__value__ == (2869937i32)) {
                    if (((_i_2869929 < (_s.length) : Bool) && (_i_2869929 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2869973i32;
                    } else {
                        _gotoNext = 2870362i32;
                    };
                } else if (__value__ == (2869973i32)) {
                    _sr_2869977 = _s[(_i_2869929 : stdgo.GoInt)];
                    _tr_2869990 = _t[(_i_2869929 : stdgo.GoInt)];
                    if (((_sr_2869977 | _tr_2869990 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2870029i32;
                    } else {
                        _gotoNext = 2870073i32;
                    };
                } else if (__value__ == (2870029i32)) {
                    _gotoNext = 2870387i32;
                } else if (__value__ == (2870073i32)) {
                    if (_tr_2869990 == (_sr_2869977)) {
                        _gotoNext = 2870085i32;
                    } else {
                        _gotoNext = 2870150i32;
                    };
                } else if (__value__ == (2870085i32)) {
                    _i_2869929++;
                    _gotoNext = 2869937i32;
                } else if (__value__ == (2870150i32)) {
                    if ((_tr_2869990 < _sr_2869977 : Bool)) {
                        _gotoNext = 2870161i32;
                    } else {
                        _gotoNext = 2870236i32;
                    };
                } else if (__value__ == (2870161i32)) {
                    {
                        final __tmp__0 = _sr_2869977;
                        final __tmp__1 = _tr_2869990;
                        _tr_2869990 = __tmp__0;
                        _sr_2869977 = __tmp__1;
                    };
                    _gotoNext = 2870236i32;
                } else if (__value__ == (2870236i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2869977 : Bool) && (_sr_2869977 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2869990 == ((_sr_2869977 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2870282i32;
                    } else {
                        _gotoNext = 2870302i32;
                    };
                } else if (__value__ == (2870282i32)) {
                    _i_2869929++;
                    _gotoNext = 2869937i32;
                } else if (__value__ == (2870302i32)) {
                    return false;
                    _i_2869929++;
                    _gotoNext = 2869937i32;
                } else if (__value__ == (2870362i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2870387i32;
                } else if (__value__ == (2870387i32)) {
                    _s = (_s.__slice__(_i_2869929) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2869929) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2870422i32;
                } else if (__value__ == (2870422i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2870453i32;
                    } else {
                        _gotoNext = 2871428i32;
                    };
                } else if (__value__ == (2870453i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2870534i32;
                    } else {
                        _gotoNext = 2870574i32;
                    };
                } else if (__value__ == (2870534i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2870496 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2870638i32;
                } else if (__value__ == (2870574i32)) {
                    _gotoNext = 2870574i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2870579 = __tmp__._0;
                        _size_2870582 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2870579;
                        final __tmp__1 = (_s.__slice__(_size_2870582) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2870496 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2870638i32;
                } else if (__value__ == (2870638i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2870662i32;
                    } else {
                        _gotoNext = 2870702i32;
                    };
                } else if (__value__ == (2870662i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2870500 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2870838i32;
                } else if (__value__ == (2870702i32)) {
                    _gotoNext = 2870702i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2870707 = __tmp__._0;
                        _size_2870710 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2870707;
                        final __tmp__1 = (_t.__slice__(_size_2870710) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2870500 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2870838i32;
                } else if (__value__ == (2870838i32)) {
                    if (_tr_2870500 == (_sr_2870496)) {
                        _gotoNext = 2870850i32;
                    } else {
                        _gotoNext = 2870915i32;
                    };
                } else if (__value__ == (2870850i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2870422i32;
                } else if (__value__ == (2870915i32)) {
                    if ((_tr_2870500 < _sr_2870496 : Bool)) {
                        _gotoNext = 2870926i32;
                    } else {
                        _gotoNext = 2870980i32;
                    };
                } else if (__value__ == (2870926i32)) {
                    {
                        final __tmp__0 = _sr_2870496;
                        final __tmp__1 = _tr_2870500;
                        _tr_2870500 = __tmp__0;
                        _sr_2870496 = __tmp__1;
                    };
                    _gotoNext = 2870980i32;
                } else if (__value__ == (2870980i32)) {
                    if ((_tr_2870500 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2871002i32;
                    } else {
                        _gotoNext = 2871255i32;
                    };
                } else if (__value__ == (2871002i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2870496 : Bool) && (_sr_2870496 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2870500 == ((_sr_2870496 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2871102i32;
                    } else {
                        _gotoNext = 2871125i32;
                    };
                } else if (__value__ == (2871102i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2870422i32;
                } else if (__value__ == (2871125i32)) {
                    return false;
                    _gotoNext = 2871255i32;
                } else if (__value__ == (2871255i32)) {
                    _r_2871255 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2870496);
                    var __blank__ = 0i32;
                    _gotoNext = 2871285i32;
                } else if (__value__ == (2871285i32)) {
                    if (((_r_2871255 != _sr_2870496) && (_r_2871255 < _tr_2870500 : Bool) : Bool)) {
                        _gotoNext = 2871307i32;
                    } else {
                        _gotoNext = 2871344i32;
                    };
                } else if (__value__ == (2871307i32)) {
                    _r_2871255 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2871255);
                    _gotoNext = 2871285i32;
                } else if (__value__ == (2871344i32)) {
                    if (_r_2871255 == (_tr_2870500)) {
                        _gotoNext = 2871355i32;
                    } else {
                        _gotoNext = 2871375i32;
                    };
                } else if (__value__ == (2871355i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2870422i32;
                } else if (__value__ == (2871375i32)) {
                    return false;
                    _gotoNext = 2870422i32;
                } else if (__value__ == (2871428i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
