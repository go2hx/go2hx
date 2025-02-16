package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2855467i32;
                } else if (__value__ == (2855467i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2855503i32;
                    } else {
                        _gotoNext = 2855892i32;
                    };
                } else if (__value__ == (2855503i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2855559i32;
                    } else {
                        _gotoNext = 2855603i32;
                    };
                } else if (__value__ == (2855559i32)) {
                    _gotoNext = 2855917i32;
                } else if (__value__ == (2855603i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2855615i32;
                    } else {
                        _gotoNext = 2855680i32;
                    };
                } else if (__value__ == (2855615i32)) {
                    _i_0++;
                    _gotoNext = 2855467i32;
                } else if (__value__ == (2855680i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2855691i32;
                    } else {
                        _gotoNext = 2855766i32;
                    };
                } else if (__value__ == (2855691i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2855766i32;
                } else if (__value__ == (2855766i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2855812i32;
                    } else {
                        _gotoNext = 2855832i32;
                    };
                } else if (__value__ == (2855812i32)) {
                    _i_0++;
                    _gotoNext = 2855467i32;
                } else if (__value__ == (2855832i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2855467i32;
                } else if (__value__ == (2855892i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2855917i32;
                } else if (__value__ == (2855917i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2855952i32;
                } else if (__value__ == (2855952i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2855983i32;
                    } else {
                        _gotoNext = 2856958i32;
                    };
                } else if (__value__ == (2855983i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2856064i32;
                    } else {
                        _gotoNext = 2856104i32;
                    };
                } else if (__value__ == (2856064i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2856168i32;
                } else if (__value__ == (2856104i32)) {
                    _gotoNext = 2856104i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_s.__slice__(_size_6) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2856168i32;
                } else if (__value__ == (2856168i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2856192i32;
                    } else {
                        _gotoNext = 2856232i32;
                    };
                } else if (__value__ == (2856192i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2856368i32;
                } else if (__value__ == (2856232i32)) {
                    _gotoNext = 2856232i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_7 = @:tmpset0 __tmp__._0;
                        _size_8 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_7;
                        final __tmp__1 = (_t.__slice__(_size_8) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2856368i32;
                } else if (__value__ == (2856368i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2856380i32;
                    } else {
                        _gotoNext = 2856445i32;
                    };
                } else if (__value__ == (2856380i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855952i32;
                } else if (__value__ == (2856445i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2856456i32;
                    } else {
                        _gotoNext = 2856510i32;
                    };
                } else if (__value__ == (2856456i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2856510i32;
                } else if (__value__ == (2856510i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2856532i32;
                    } else {
                        _gotoNext = 2856785i32;
                    };
                } else if (__value__ == (2856532i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2856632i32;
                    } else {
                        _gotoNext = 2856655i32;
                    };
                } else if (__value__ == (2856632i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855952i32;
                } else if (__value__ == (2856655i32)) {
                    return false;
                    _gotoNext = 2856785i32;
                } else if (__value__ == (2856785i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2856815i32;
                } else if (__value__ == (2856815i32)) {
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2856837i32;
                    } else {
                        _gotoNext = 2856874i32;
                    };
                } else if (__value__ == (2856837i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 2856815i32;
                } else if (__value__ == (2856874i32)) {
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 2856885i32;
                    } else {
                        _gotoNext = 2856905i32;
                    };
                } else if (__value__ == (2856885i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855952i32;
                } else if (__value__ == (2856905i32)) {
                    return false;
                    _gotoNext = 2855952i32;
                } else if (__value__ == (2856958i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
