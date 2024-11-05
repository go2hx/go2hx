package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2848409:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2847864:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2847733:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2847654:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2847144:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2847861:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2847736:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2847650:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2847131:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2847083:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2847083 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2847091i32;
                } else if (__value__ == (2847091i32)) {
                    if (((_i_2847083 < (_s.length) : Bool) && (_i_2847083 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2847127i32;
                    } else {
                        _gotoNext = 2847516i32;
                    };
                } else if (__value__ == (2847127i32)) {
                    _sr_2847131 = _s[(_i_2847083 : stdgo.GoInt)];
                    _tr_2847144 = _t[(_i_2847083 : stdgo.GoInt)];
                    if (((_sr_2847131 | _tr_2847144 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2847183i32;
                    } else {
                        _gotoNext = 2847227i32;
                    };
                } else if (__value__ == (2847183i32)) {
                    _gotoNext = 2847541i32;
                } else if (__value__ == (2847227i32)) {
                    if (_tr_2847144 == (_sr_2847131)) {
                        _gotoNext = 2847239i32;
                    } else {
                        _gotoNext = 2847304i32;
                    };
                } else if (__value__ == (2847239i32)) {
                    _i_2847083++;
                    _gotoNext = 2847091i32;
                } else if (__value__ == (2847304i32)) {
                    if ((_tr_2847144 < _sr_2847131 : Bool)) {
                        _gotoNext = 2847315i32;
                    } else {
                        _gotoNext = 2847390i32;
                    };
                } else if (__value__ == (2847315i32)) {
                    {
                        final __tmp__0 = _sr_2847131;
                        final __tmp__1 = _tr_2847144;
                        _tr_2847144 = __tmp__0;
                        _sr_2847131 = __tmp__1;
                    };
                    _gotoNext = 2847390i32;
                } else if (__value__ == (2847390i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2847131 : Bool) && (_sr_2847131 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2847144 == ((_sr_2847131 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2847436i32;
                    } else {
                        _gotoNext = 2847456i32;
                    };
                } else if (__value__ == (2847436i32)) {
                    _i_2847083++;
                    _gotoNext = 2847091i32;
                } else if (__value__ == (2847456i32)) {
                    return false;
                    _i_2847083++;
                    _gotoNext = 2847091i32;
                } else if (__value__ == (2847516i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2847541i32;
                } else if (__value__ == (2847541i32)) {
                    _s = (_s.__slice__(_i_2847083) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2847083) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2847576i32;
                } else if (__value__ == (2847576i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2847607i32;
                    } else {
                        _gotoNext = 2848582i32;
                    };
                } else if (__value__ == (2847607i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2847688i32;
                    } else {
                        _gotoNext = 2847728i32;
                    };
                } else if (__value__ == (2847688i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2847650 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2847792i32;
                } else if (__value__ == (2847728i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2847733 = __tmp__._0;
                        _size_2847736 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2847733;
                        final __tmp__1 = (_s.__slice__(_size_2847736) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2847650 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2847792i32;
                } else if (__value__ == (2847792i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2847816i32;
                    } else {
                        _gotoNext = 2847856i32;
                    };
                } else if (__value__ == (2847816i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2847654 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2847992i32;
                } else if (__value__ == (2847856i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2847861 = __tmp__._0;
                        _size_2847864 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2847861;
                        final __tmp__1 = (_t.__slice__(_size_2847864) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2847654 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2847992i32;
                } else if (__value__ == (2847992i32)) {
                    if (_tr_2847654 == (_sr_2847650)) {
                        _gotoNext = 2848004i32;
                    } else {
                        _gotoNext = 2848069i32;
                    };
                } else if (__value__ == (2848004i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2847576i32;
                } else if (__value__ == (2848069i32)) {
                    if ((_tr_2847654 < _sr_2847650 : Bool)) {
                        _gotoNext = 2848080i32;
                    } else {
                        _gotoNext = 2848134i32;
                    };
                } else if (__value__ == (2848080i32)) {
                    {
                        final __tmp__0 = _sr_2847650;
                        final __tmp__1 = _tr_2847654;
                        _tr_2847654 = __tmp__0;
                        _sr_2847650 = __tmp__1;
                    };
                    _gotoNext = 2848134i32;
                } else if (__value__ == (2848134i32)) {
                    if ((_tr_2847654 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2848156i32;
                    } else {
                        _gotoNext = 2848409i32;
                    };
                } else if (__value__ == (2848156i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2847650 : Bool) && (_sr_2847650 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2847654 == ((_sr_2847650 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2848256i32;
                    } else {
                        _gotoNext = 2848279i32;
                    };
                } else if (__value__ == (2848256i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2847576i32;
                } else if (__value__ == (2848279i32)) {
                    return false;
                    _gotoNext = 2848409i32;
                } else if (__value__ == (2848409i32)) {
                    _r_2848409 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2847650);
                    var __blank__ = 0i32;
                    _gotoNext = 2848439i32;
                } else if (__value__ == (2848439i32)) {
                    if (((_r_2848409 != _sr_2847650) && (_r_2848409 < _tr_2847654 : Bool) : Bool)) {
                        _gotoNext = 2848461i32;
                    } else {
                        _gotoNext = 2848498i32;
                    };
                } else if (__value__ == (2848461i32)) {
                    _r_2848409 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2848409);
                    _gotoNext = 2848439i32;
                } else if (__value__ == (2848498i32)) {
                    if (_r_2848409 == (_tr_2847654)) {
                        _gotoNext = 2848509i32;
                    } else {
                        _gotoNext = 2848529i32;
                    };
                } else if (__value__ == (2848509i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2847576i32;
                } else if (__value__ == (2848529i32)) {
                    return false;
                    _gotoNext = 2847576i32;
                } else if (__value__ == (2848582i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
