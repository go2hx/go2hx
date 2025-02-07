package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2907834:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2907831:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2907748:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2907242:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2908507:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2907962:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2907959:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2907752:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2907229:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2907181:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2907181 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2907189i32;
                } else if (__value__ == (2907189i32)) {
                    if (((_i_2907181 < (_s.length) : Bool) && (_i_2907181 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2907225i32;
                    } else {
                        _gotoNext = 2907614i32;
                    };
                } else if (__value__ == (2907225i32)) {
                    _sr_2907229 = _s[(_i_2907181 : stdgo.GoInt)];
                    _tr_2907242 = _t[(_i_2907181 : stdgo.GoInt)];
                    if (((_sr_2907229 | _tr_2907242 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907281i32;
                    } else {
                        _gotoNext = 2907325i32;
                    };
                } else if (__value__ == (2907281i32)) {
                    _gotoNext = 2907639i32;
                } else if (__value__ == (2907325i32)) {
                    if (_tr_2907242 == (_sr_2907229)) {
                        _gotoNext = 2907337i32;
                    } else {
                        _gotoNext = 2907402i32;
                    };
                } else if (__value__ == (2907337i32)) {
                    _i_2907181++;
                    _gotoNext = 2907189i32;
                } else if (__value__ == (2907402i32)) {
                    if ((_tr_2907242 < _sr_2907229 : Bool)) {
                        _gotoNext = 2907413i32;
                    } else {
                        _gotoNext = 2907488i32;
                    };
                } else if (__value__ == (2907413i32)) {
                    {
                        final __tmp__0 = _sr_2907229;
                        final __tmp__1 = _tr_2907242;
                        _tr_2907242 = __tmp__0;
                        _sr_2907229 = __tmp__1;
                    };
                    _gotoNext = 2907488i32;
                } else if (__value__ == (2907488i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2907229 : Bool) && (_sr_2907229 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2907242 == ((_sr_2907229 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2907534i32;
                    } else {
                        _gotoNext = 2907554i32;
                    };
                } else if (__value__ == (2907534i32)) {
                    _i_2907181++;
                    _gotoNext = 2907189i32;
                } else if (__value__ == (2907554i32)) {
                    return false;
                    _i_2907181++;
                    _gotoNext = 2907189i32;
                } else if (__value__ == (2907614i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2907639i32;
                } else if (__value__ == (2907639i32)) {
                    _s = (_s.__slice__(_i_2907181) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2907181) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2907674i32;
                } else if (__value__ == (2907674i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2907705i32;
                    } else {
                        _gotoNext = 2908680i32;
                    };
                } else if (__value__ == (2907705i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907786i32;
                    } else {
                        _gotoNext = 2907826i32;
                    };
                } else if (__value__ == (2907786i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2907748 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2907890i32;
                } else if (__value__ == (2907826i32)) {
                    _gotoNext = 2907826i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2907831 = @:tmpset0 __tmp__._0;
                        _size_2907834 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2907831;
                        final __tmp__1 = (_s.__slice__(_size_2907834) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2907748 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2907890i32;
                } else if (__value__ == (2907890i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907914i32;
                    } else {
                        _gotoNext = 2907954i32;
                    };
                } else if (__value__ == (2907914i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2907752 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2908090i32;
                } else if (__value__ == (2907954i32)) {
                    _gotoNext = 2907954i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2907959 = @:tmpset0 __tmp__._0;
                        _size_2907962 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2907959;
                        final __tmp__1 = (_t.__slice__(_size_2907962) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2907752 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2908090i32;
                } else if (__value__ == (2908090i32)) {
                    if (_tr_2907752 == (_sr_2907748)) {
                        _gotoNext = 2908102i32;
                    } else {
                        _gotoNext = 2908167i32;
                    };
                } else if (__value__ == (2908102i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2907674i32;
                } else if (__value__ == (2908167i32)) {
                    if ((_tr_2907752 < _sr_2907748 : Bool)) {
                        _gotoNext = 2908178i32;
                    } else {
                        _gotoNext = 2908232i32;
                    };
                } else if (__value__ == (2908178i32)) {
                    {
                        final __tmp__0 = _sr_2907748;
                        final __tmp__1 = _tr_2907752;
                        _tr_2907752 = __tmp__0;
                        _sr_2907748 = __tmp__1;
                    };
                    _gotoNext = 2908232i32;
                } else if (__value__ == (2908232i32)) {
                    if ((_tr_2907752 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2908254i32;
                    } else {
                        _gotoNext = 2908507i32;
                    };
                } else if (__value__ == (2908254i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2907748 : Bool) && (_sr_2907748 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2907752 == ((_sr_2907748 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2908354i32;
                    } else {
                        _gotoNext = 2908377i32;
                    };
                } else if (__value__ == (2908354i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2907674i32;
                } else if (__value__ == (2908377i32)) {
                    return false;
                    _gotoNext = 2908507i32;
                } else if (__value__ == (2908507i32)) {
                    _r_2908507 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2907748);
                    var __blank__ = 0i32;
                    _gotoNext = 2908537i32;
                } else if (__value__ == (2908537i32)) {
                    if (((_r_2908507 != _sr_2907748) && (_r_2908507 < _tr_2907752 : Bool) : Bool)) {
                        _gotoNext = 2908559i32;
                    } else {
                        _gotoNext = 2908596i32;
                    };
                } else if (__value__ == (2908559i32)) {
                    _r_2908507 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2908507);
                    _gotoNext = 2908537i32;
                } else if (__value__ == (2908596i32)) {
                    if (_r_2908507 == (_tr_2907752)) {
                        _gotoNext = 2908607i32;
                    } else {
                        _gotoNext = 2908627i32;
                    };
                } else if (__value__ == (2908607i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2907674i32;
                } else if (__value__ == (2908627i32)) {
                    return false;
                    _gotoNext = 2907674i32;
                } else if (__value__ == (2908680i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
