package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3069948i32;
                } else if (__value__ == (3069948i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3069984i32;
                    } else {
                        _gotoNext = 3070373i32;
                    };
                } else if (__value__ == (3069984i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3070040i32;
                    } else {
                        _gotoNext = 3070084i32;
                    };
                } else if (__value__ == (3070040i32)) {
                    _gotoNext = 3070398i32;
                } else if (__value__ == (3070084i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 3070096i32;
                    } else {
                        _gotoNext = 3070161i32;
                    };
                } else if (__value__ == (3070096i32)) {
                    _i_0++;
                    _gotoNext = 3069948i32;
                } else if (__value__ == (3070161i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 3070172i32;
                    } else {
                        _gotoNext = 3070247i32;
                    };
                } else if (__value__ == (3070172i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 3070247i32;
                } else if (__value__ == (3070247i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3070293i32;
                    } else {
                        _gotoNext = 3070313i32;
                    };
                } else if (__value__ == (3070293i32)) {
                    _i_0++;
                    _gotoNext = 3069948i32;
                } else if (__value__ == (3070313i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 3069948i32;
                } else if (__value__ == (3070373i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3070398i32;
                } else if (__value__ == (3070398i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3070433i32;
                } else if (__value__ == (3070433i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3070464i32;
                    } else {
                        _gotoNext = 3071439i32;
                    };
                } else if (__value__ == (3070464i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3070545i32;
                    } else {
                        _gotoNext = 3070585i32;
                    };
                } else if (__value__ == (3070545i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3070649i32;
                } else if (__value__ == (3070585i32)) {
                    _gotoNext = 3070585i32;
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
                    _gotoNext = 3070649i32;
                } else if (__value__ == (3070649i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3070673i32;
                    } else {
                        _gotoNext = 3070713i32;
                    };
                } else if (__value__ == (3070673i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3070849i32;
                } else if (__value__ == (3070713i32)) {
                    _gotoNext = 3070713i32;
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
                    _gotoNext = 3070849i32;
                } else if (__value__ == (3070849i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 3070861i32;
                    } else {
                        _gotoNext = 3070926i32;
                    };
                } else if (__value__ == (3070861i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3070433i32;
                } else if (__value__ == (3070926i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 3070937i32;
                    } else {
                        _gotoNext = 3070991i32;
                    };
                } else if (__value__ == (3070937i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 3070991i32;
                } else if (__value__ == (3070991i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3071013i32;
                    } else {
                        _gotoNext = 3071266i32;
                    };
                } else if (__value__ == (3071013i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3071113i32;
                    } else {
                        _gotoNext = 3071136i32;
                    };
                } else if (__value__ == (3071113i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3070433i32;
                } else if (__value__ == (3071136i32)) {
                    return false;
                    _gotoNext = 3071266i32;
                } else if (__value__ == (3071266i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 3071296i32;
                } else if (__value__ == (3071296i32)) {
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 3071318i32;
                    } else {
                        _gotoNext = 3071355i32;
                    };
                } else if (__value__ == (3071318i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 3071296i32;
                } else if (__value__ == (3071355i32)) {
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 3071366i32;
                    } else {
                        _gotoNext = 3071386i32;
                    };
                } else if (__value__ == (3071366i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3070433i32;
                } else if (__value__ == (3071386i32)) {
                    return false;
                    _gotoNext = 3070433i32;
                } else if (__value__ == (3071439i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
