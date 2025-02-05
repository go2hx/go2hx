package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2874994:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2874427:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2875208:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875205:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2875080:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875077:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2874998:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2874488:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2874475:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2875753:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2874427 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2874435i32;
                } else if (__value__ == (2874435i32)) {
                    if (((_i_2874427 < (_s.length) : Bool) && (_i_2874427 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2874471i32;
                    } else {
                        _gotoNext = 2874860i32;
                    };
                } else if (__value__ == (2874471i32)) {
                    _sr_2874475 = _s[(_i_2874427 : stdgo.GoInt)];
                    _tr_2874488 = _t[(_i_2874427 : stdgo.GoInt)];
                    if (((_sr_2874475 | _tr_2874488 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874527i32;
                    } else {
                        _gotoNext = 2874571i32;
                    };
                } else if (__value__ == (2874527i32)) {
                    _gotoNext = 2874885i32;
                } else if (__value__ == (2874571i32)) {
                    if (_tr_2874488 == (_sr_2874475)) {
                        _gotoNext = 2874583i32;
                    } else {
                        _gotoNext = 2874648i32;
                    };
                } else if (__value__ == (2874583i32)) {
                    _i_2874427++;
                    _gotoNext = 2874435i32;
                } else if (__value__ == (2874648i32)) {
                    if ((_tr_2874488 < _sr_2874475 : Bool)) {
                        _gotoNext = 2874659i32;
                    } else {
                        _gotoNext = 2874734i32;
                    };
                } else if (__value__ == (2874659i32)) {
                    {
                        final __tmp__0 = _sr_2874475;
                        final __tmp__1 = _tr_2874488;
                        _tr_2874488 = __tmp__0;
                        _sr_2874475 = __tmp__1;
                    };
                    _gotoNext = 2874734i32;
                } else if (__value__ == (2874734i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2874475 : Bool) && (_sr_2874475 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2874488 == ((_sr_2874475 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2874780i32;
                    } else {
                        _gotoNext = 2874800i32;
                    };
                } else if (__value__ == (2874780i32)) {
                    _i_2874427++;
                    _gotoNext = 2874435i32;
                } else if (__value__ == (2874800i32)) {
                    return false;
                    _i_2874427++;
                    _gotoNext = 2874435i32;
                } else if (__value__ == (2874860i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2874885i32;
                } else if (__value__ == (2874885i32)) {
                    _s = (_s.__slice__(_i_2874427) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2874427) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2874920i32;
                } else if (__value__ == (2874920i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2874951i32;
                    } else {
                        _gotoNext = 2875926i32;
                    };
                } else if (__value__ == (2874951i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875032i32;
                    } else {
                        _gotoNext = 2875072i32;
                    };
                } else if (__value__ == (2875032i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2874994 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2875136i32;
                } else if (__value__ == (2875072i32)) {
                    _gotoNext = 2875072i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2875077 = @:tmpset0 __tmp__._0;
                        _size_2875080 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2875077;
                        final __tmp__1 = (_s.__slice__(_size_2875080) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2874994 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2875136i32;
                } else if (__value__ == (2875136i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875160i32;
                    } else {
                        _gotoNext = 2875200i32;
                    };
                } else if (__value__ == (2875160i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2874998 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2875336i32;
                } else if (__value__ == (2875200i32)) {
                    _gotoNext = 2875200i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2875205 = @:tmpset0 __tmp__._0;
                        _size_2875208 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2875205;
                        final __tmp__1 = (_t.__slice__(_size_2875208) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2874998 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2875336i32;
                } else if (__value__ == (2875336i32)) {
                    if (_tr_2874998 == (_sr_2874994)) {
                        _gotoNext = 2875348i32;
                    } else {
                        _gotoNext = 2875413i32;
                    };
                } else if (__value__ == (2875348i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874920i32;
                } else if (__value__ == (2875413i32)) {
                    if ((_tr_2874998 < _sr_2874994 : Bool)) {
                        _gotoNext = 2875424i32;
                    } else {
                        _gotoNext = 2875478i32;
                    };
                } else if (__value__ == (2875424i32)) {
                    {
                        final __tmp__0 = _sr_2874994;
                        final __tmp__1 = _tr_2874998;
                        _tr_2874998 = __tmp__0;
                        _sr_2874994 = __tmp__1;
                    };
                    _gotoNext = 2875478i32;
                } else if (__value__ == (2875478i32)) {
                    if ((_tr_2874998 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2875500i32;
                    } else {
                        _gotoNext = 2875753i32;
                    };
                } else if (__value__ == (2875500i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2874994 : Bool) && (_sr_2874994 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2874998 == ((_sr_2874994 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2875600i32;
                    } else {
                        _gotoNext = 2875623i32;
                    };
                } else if (__value__ == (2875600i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874920i32;
                } else if (__value__ == (2875623i32)) {
                    return false;
                    _gotoNext = 2875753i32;
                } else if (__value__ == (2875753i32)) {
                    _r_2875753 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2874994);
                    var __blank__ = 0i32;
                    _gotoNext = 2875783i32;
                } else if (__value__ == (2875783i32)) {
                    if (((_r_2875753 != _sr_2874994) && (_r_2875753 < _tr_2874998 : Bool) : Bool)) {
                        _gotoNext = 2875805i32;
                    } else {
                        _gotoNext = 2875842i32;
                    };
                } else if (__value__ == (2875805i32)) {
                    _r_2875753 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2875753);
                    _gotoNext = 2875783i32;
                } else if (__value__ == (2875842i32)) {
                    if (_r_2875753 == (_tr_2874998)) {
                        _gotoNext = 2875853i32;
                    } else {
                        _gotoNext = 2875873i32;
                    };
                } else if (__value__ == (2875853i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874920i32;
                } else if (__value__ == (2875873i32)) {
                    return false;
                    _gotoNext = 2874920i32;
                } else if (__value__ == (2875926i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
