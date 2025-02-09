package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2880644:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2880096:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2879971:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2879968:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2879889:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2879379:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2879318:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2880099:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2879885:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2879366:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2879318 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2879326i32;
                } else if (__value__ == (2879326i32)) {
                    if (((_i_2879318 < (_s.length) : Bool) && (_i_2879318 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2879362i32;
                    } else {
                        _gotoNext = 2879751i32;
                    };
                } else if (__value__ == (2879362i32)) {
                    _sr_2879366 = _s[(_i_2879318 : stdgo.GoInt)];
                    _tr_2879379 = _t[(_i_2879318 : stdgo.GoInt)];
                    if (((_sr_2879366 | _tr_2879379 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2879418i32;
                    } else {
                        _gotoNext = 2879462i32;
                    };
                } else if (__value__ == (2879418i32)) {
                    _gotoNext = 2879776i32;
                } else if (__value__ == (2879462i32)) {
                    if (_tr_2879379 == (_sr_2879366)) {
                        _gotoNext = 2879474i32;
                    } else {
                        _gotoNext = 2879539i32;
                    };
                } else if (__value__ == (2879474i32)) {
                    _i_2879318++;
                    _gotoNext = 2879326i32;
                } else if (__value__ == (2879539i32)) {
                    if ((_tr_2879379 < _sr_2879366 : Bool)) {
                        _gotoNext = 2879550i32;
                    } else {
                        _gotoNext = 2879625i32;
                    };
                } else if (__value__ == (2879550i32)) {
                    {
                        final __tmp__0 = _sr_2879366;
                        final __tmp__1 = _tr_2879379;
                        _tr_2879379 = __tmp__0;
                        _sr_2879366 = __tmp__1;
                    };
                    _gotoNext = 2879625i32;
                } else if (__value__ == (2879625i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2879366 : Bool) && (_sr_2879366 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2879379 == ((_sr_2879366 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2879671i32;
                    } else {
                        _gotoNext = 2879691i32;
                    };
                } else if (__value__ == (2879671i32)) {
                    _i_2879318++;
                    _gotoNext = 2879326i32;
                } else if (__value__ == (2879691i32)) {
                    return false;
                    _i_2879318++;
                    _gotoNext = 2879326i32;
                } else if (__value__ == (2879751i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2879776i32;
                } else if (__value__ == (2879776i32)) {
                    _s = (_s.__slice__(_i_2879318) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2879318) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2879811i32;
                } else if (__value__ == (2879811i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2879842i32;
                    } else {
                        _gotoNext = 2880817i32;
                    };
                } else if (__value__ == (2879842i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2879923i32;
                    } else {
                        _gotoNext = 2879963i32;
                    };
                } else if (__value__ == (2879923i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2879885 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2880027i32;
                } else if (__value__ == (2879963i32)) {
                    _gotoNext = 2879963i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2879968 = @:tmpset0 __tmp__._0;
                        _size_2879971 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2879968;
                        final __tmp__1 = (_s.__slice__(_size_2879971) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2879885 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2880027i32;
                } else if (__value__ == (2880027i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2880051i32;
                    } else {
                        _gotoNext = 2880091i32;
                    };
                } else if (__value__ == (2880051i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2879889 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2880227i32;
                } else if (__value__ == (2880091i32)) {
                    _gotoNext = 2880091i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2880096 = @:tmpset0 __tmp__._0;
                        _size_2880099 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2880096;
                        final __tmp__1 = (_t.__slice__(_size_2880099) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2879889 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2880227i32;
                } else if (__value__ == (2880227i32)) {
                    if (_tr_2879889 == (_sr_2879885)) {
                        _gotoNext = 2880239i32;
                    } else {
                        _gotoNext = 2880304i32;
                    };
                } else if (__value__ == (2880239i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2879811i32;
                } else if (__value__ == (2880304i32)) {
                    if ((_tr_2879889 < _sr_2879885 : Bool)) {
                        _gotoNext = 2880315i32;
                    } else {
                        _gotoNext = 2880369i32;
                    };
                } else if (__value__ == (2880315i32)) {
                    {
                        final __tmp__0 = _sr_2879885;
                        final __tmp__1 = _tr_2879889;
                        _tr_2879889 = __tmp__0;
                        _sr_2879885 = __tmp__1;
                    };
                    _gotoNext = 2880369i32;
                } else if (__value__ == (2880369i32)) {
                    if ((_tr_2879889 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2880391i32;
                    } else {
                        _gotoNext = 2880644i32;
                    };
                } else if (__value__ == (2880391i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2879885 : Bool) && (_sr_2879885 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2879889 == ((_sr_2879885 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2880491i32;
                    } else {
                        _gotoNext = 2880514i32;
                    };
                } else if (__value__ == (2880491i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2879811i32;
                } else if (__value__ == (2880514i32)) {
                    return false;
                    _gotoNext = 2880644i32;
                } else if (__value__ == (2880644i32)) {
                    _r_2880644 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2879885);
                    var __blank__ = 0i32;
                    _gotoNext = 2880674i32;
                } else if (__value__ == (2880674i32)) {
                    if (((_r_2880644 != _sr_2879885) && (_r_2880644 < _tr_2879889 : Bool) : Bool)) {
                        _gotoNext = 2880696i32;
                    } else {
                        _gotoNext = 2880733i32;
                    };
                } else if (__value__ == (2880696i32)) {
                    _r_2880644 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2880644);
                    _gotoNext = 2880674i32;
                } else if (__value__ == (2880733i32)) {
                    if (_r_2880644 == (_tr_2879889)) {
                        _gotoNext = 2880744i32;
                    } else {
                        _gotoNext = 2880764i32;
                    };
                } else if (__value__ == (2880744i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2879811i32;
                } else if (__value__ == (2880764i32)) {
                    return false;
                    _gotoNext = 2879811i32;
                } else if (__value__ == (2880817i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
