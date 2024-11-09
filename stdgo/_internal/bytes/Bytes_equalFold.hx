package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2876266:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2876999:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2876996:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2876868:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2876218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2877544:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2876871:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2876789:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2876785:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2876279:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2876218 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2876226i32;
                } else if (__value__ == (2876226i32)) {
                    if (((_i_2876218 < (_s.length) : Bool) && (_i_2876218 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2876262i32;
                    } else {
                        _gotoNext = 2876651i32;
                    };
                } else if (__value__ == (2876262i32)) {
                    _sr_2876266 = _s[(_i_2876218 : stdgo.GoInt)];
                    _tr_2876279 = _t[(_i_2876218 : stdgo.GoInt)];
                    if (((_sr_2876266 | _tr_2876279 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876318i32;
                    } else {
                        _gotoNext = 2876362i32;
                    };
                } else if (__value__ == (2876318i32)) {
                    _gotoNext = 2876676i32;
                } else if (__value__ == (2876362i32)) {
                    if (_tr_2876279 == (_sr_2876266)) {
                        _gotoNext = 2876374i32;
                    } else {
                        _gotoNext = 2876439i32;
                    };
                } else if (__value__ == (2876374i32)) {
                    _i_2876218++;
                    _gotoNext = 2876226i32;
                } else if (__value__ == (2876439i32)) {
                    if ((_tr_2876279 < _sr_2876266 : Bool)) {
                        _gotoNext = 2876450i32;
                    } else {
                        _gotoNext = 2876525i32;
                    };
                } else if (__value__ == (2876450i32)) {
                    {
                        final __tmp__0 = _sr_2876266;
                        final __tmp__1 = _tr_2876279;
                        _tr_2876279 = __tmp__0;
                        _sr_2876266 = __tmp__1;
                    };
                    _gotoNext = 2876525i32;
                } else if (__value__ == (2876525i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2876266 : Bool) && (_sr_2876266 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2876279 == ((_sr_2876266 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2876571i32;
                    } else {
                        _gotoNext = 2876591i32;
                    };
                } else if (__value__ == (2876571i32)) {
                    _i_2876218++;
                    _gotoNext = 2876226i32;
                } else if (__value__ == (2876591i32)) {
                    return false;
                    _i_2876218++;
                    _gotoNext = 2876226i32;
                } else if (__value__ == (2876651i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2876676i32;
                } else if (__value__ == (2876676i32)) {
                    _s = (_s.__slice__(_i_2876218) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2876218) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2876711i32;
                } else if (__value__ == (2876711i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2876742i32;
                    } else {
                        _gotoNext = 2877717i32;
                    };
                } else if (__value__ == (2876742i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876823i32;
                    } else {
                        _gotoNext = 2876863i32;
                    };
                } else if (__value__ == (2876823i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2876785 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2876927i32;
                } else if (__value__ == (2876863i32)) {
                    _gotoNext = 2876863i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2876868 = __tmp__._0;
                        _size_2876871 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2876868;
                        final __tmp__1 = (_s.__slice__(_size_2876871) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2876785 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2876927i32;
                } else if (__value__ == (2876927i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876951i32;
                    } else {
                        _gotoNext = 2876991i32;
                    };
                } else if (__value__ == (2876951i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2876789 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2877127i32;
                } else if (__value__ == (2876991i32)) {
                    _gotoNext = 2876991i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2876996 = __tmp__._0;
                        _size_2876999 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2876996;
                        final __tmp__1 = (_t.__slice__(_size_2876999) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2876789 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2877127i32;
                } else if (__value__ == (2877127i32)) {
                    if (_tr_2876789 == (_sr_2876785)) {
                        _gotoNext = 2877139i32;
                    } else {
                        _gotoNext = 2877204i32;
                    };
                } else if (__value__ == (2877139i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2876711i32;
                } else if (__value__ == (2877204i32)) {
                    if ((_tr_2876789 < _sr_2876785 : Bool)) {
                        _gotoNext = 2877215i32;
                    } else {
                        _gotoNext = 2877269i32;
                    };
                } else if (__value__ == (2877215i32)) {
                    {
                        final __tmp__0 = _sr_2876785;
                        final __tmp__1 = _tr_2876789;
                        _tr_2876789 = __tmp__0;
                        _sr_2876785 = __tmp__1;
                    };
                    _gotoNext = 2877269i32;
                } else if (__value__ == (2877269i32)) {
                    if ((_tr_2876789 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2877291i32;
                    } else {
                        _gotoNext = 2877544i32;
                    };
                } else if (__value__ == (2877291i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2876785 : Bool) && (_sr_2876785 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2876789 == ((_sr_2876785 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2877391i32;
                    } else {
                        _gotoNext = 2877414i32;
                    };
                } else if (__value__ == (2877391i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2876711i32;
                } else if (__value__ == (2877414i32)) {
                    return false;
                    _gotoNext = 2877544i32;
                } else if (__value__ == (2877544i32)) {
                    _r_2877544 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2876785);
                    var __blank__ = 0i32;
                    _gotoNext = 2877574i32;
                } else if (__value__ == (2877574i32)) {
                    if (((_r_2877544 != _sr_2876785) && (_r_2877544 < _tr_2876789 : Bool) : Bool)) {
                        _gotoNext = 2877596i32;
                    } else {
                        _gotoNext = 2877633i32;
                    };
                } else if (__value__ == (2877596i32)) {
                    _r_2877544 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2877544);
                    _gotoNext = 2877574i32;
                } else if (__value__ == (2877633i32)) {
                    if (_r_2877544 == (_tr_2876789)) {
                        _gotoNext = 2877644i32;
                    } else {
                        _gotoNext = 2877664i32;
                    };
                } else if (__value__ == (2877644i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2876711i32;
                } else if (__value__ == (2877664i32)) {
                    return false;
                    _gotoNext = 2876711i32;
                } else if (__value__ == (2877717i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
