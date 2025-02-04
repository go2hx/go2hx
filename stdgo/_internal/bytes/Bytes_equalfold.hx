package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_3005449:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3005446:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3005318:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3005239:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3004716:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3005994:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3005321:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3005235:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3004729:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3004668:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3004668 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3004676i32;
                } else if (__value__ == (3004676i32)) {
                    if (((_i_3004668 < (_s.length) : Bool) && (_i_3004668 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3004712i32;
                    } else {
                        _gotoNext = 3005101i32;
                    };
                } else if (__value__ == (3004712i32)) {
                    _sr_3004716 = _s[(_i_3004668 : stdgo.GoInt)];
                    _tr_3004729 = _t[(_i_3004668 : stdgo.GoInt)];
                    if (((_sr_3004716 | _tr_3004729 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3004768i32;
                    } else {
                        _gotoNext = 3004812i32;
                    };
                } else if (__value__ == (3004768i32)) {
                    _gotoNext = 3005126i32;
                } else if (__value__ == (3004812i32)) {
                    if (_tr_3004729 == (_sr_3004716)) {
                        _gotoNext = 3004824i32;
                    } else {
                        _gotoNext = 3004889i32;
                    };
                } else if (__value__ == (3004824i32)) {
                    _i_3004668++;
                    _gotoNext = 3004676i32;
                } else if (__value__ == (3004889i32)) {
                    if ((_tr_3004729 < _sr_3004716 : Bool)) {
                        _gotoNext = 3004900i32;
                    } else {
                        _gotoNext = 3004975i32;
                    };
                } else if (__value__ == (3004900i32)) {
                    {
                        final __tmp__0 = _sr_3004716;
                        final __tmp__1 = _tr_3004729;
                        _tr_3004729 = __tmp__0;
                        _sr_3004716 = __tmp__1;
                    };
                    _gotoNext = 3004975i32;
                } else if (__value__ == (3004975i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3004716 : Bool) && (_sr_3004716 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3004729 == ((_sr_3004716 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3005021i32;
                    } else {
                        _gotoNext = 3005041i32;
                    };
                } else if (__value__ == (3005021i32)) {
                    _i_3004668++;
                    _gotoNext = 3004676i32;
                } else if (__value__ == (3005041i32)) {
                    return false;
                    _i_3004668++;
                    _gotoNext = 3004676i32;
                } else if (__value__ == (3005101i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3005126i32;
                } else if (__value__ == (3005126i32)) {
                    _s = (_s.__slice__(_i_3004668) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3004668) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3005161i32;
                } else if (__value__ == (3005161i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3005192i32;
                    } else {
                        _gotoNext = 3006167i32;
                    };
                } else if (__value__ == (3005192i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3005273i32;
                    } else {
                        _gotoNext = 3005313i32;
                    };
                } else if (__value__ == (3005273i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3005235 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3005377i32;
                } else if (__value__ == (3005313i32)) {
                    _gotoNext = 3005313i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3005318 = @:tmpset0 __tmp__._0;
                        _size_3005321 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3005318;
                        final __tmp__1 = (_s.__slice__(_size_3005321) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3005235 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3005377i32;
                } else if (__value__ == (3005377i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3005401i32;
                    } else {
                        _gotoNext = 3005441i32;
                    };
                } else if (__value__ == (3005401i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3005239 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3005577i32;
                } else if (__value__ == (3005441i32)) {
                    _gotoNext = 3005441i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3005446 = @:tmpset0 __tmp__._0;
                        _size_3005449 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3005446;
                        final __tmp__1 = (_t.__slice__(_size_3005449) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3005239 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3005577i32;
                } else if (__value__ == (3005577i32)) {
                    if (_tr_3005239 == (_sr_3005235)) {
                        _gotoNext = 3005589i32;
                    } else {
                        _gotoNext = 3005654i32;
                    };
                } else if (__value__ == (3005589i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3005161i32;
                } else if (__value__ == (3005654i32)) {
                    if ((_tr_3005239 < _sr_3005235 : Bool)) {
                        _gotoNext = 3005665i32;
                    } else {
                        _gotoNext = 3005719i32;
                    };
                } else if (__value__ == (3005665i32)) {
                    {
                        final __tmp__0 = _sr_3005235;
                        final __tmp__1 = _tr_3005239;
                        _tr_3005239 = __tmp__0;
                        _sr_3005235 = __tmp__1;
                    };
                    _gotoNext = 3005719i32;
                } else if (__value__ == (3005719i32)) {
                    if ((_tr_3005239 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3005741i32;
                    } else {
                        _gotoNext = 3005994i32;
                    };
                } else if (__value__ == (3005741i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3005235 : Bool) && (_sr_3005235 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3005239 == ((_sr_3005235 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3005841i32;
                    } else {
                        _gotoNext = 3005864i32;
                    };
                } else if (__value__ == (3005841i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3005161i32;
                } else if (__value__ == (3005864i32)) {
                    return false;
                    _gotoNext = 3005994i32;
                } else if (__value__ == (3005994i32)) {
                    _r_3005994 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3005235);
                    var __blank__ = 0i32;
                    _gotoNext = 3006024i32;
                } else if (__value__ == (3006024i32)) {
                    if (((_r_3005994 != _sr_3005235) && (_r_3005994 < _tr_3005239 : Bool) : Bool)) {
                        _gotoNext = 3006046i32;
                    } else {
                        _gotoNext = 3006083i32;
                    };
                } else if (__value__ == (3006046i32)) {
                    _r_3005994 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3005994);
                    _gotoNext = 3006024i32;
                } else if (__value__ == (3006083i32)) {
                    if (_r_3005994 == (_tr_3005239)) {
                        _gotoNext = 3006094i32;
                    } else {
                        _gotoNext = 3006114i32;
                    };
                } else if (__value__ == (3006094i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3005161i32;
                } else if (__value__ == (3006114i32)) {
                    return false;
                    _gotoNext = 3005161i32;
                } else if (__value__ == (3006167i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
