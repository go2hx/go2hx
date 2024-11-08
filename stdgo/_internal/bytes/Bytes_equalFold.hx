package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2959489:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2959441:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2960767:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2960219:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2960012:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2959502:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2960091:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2960008:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2960222:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2960094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2959441 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2959449i32;
                } else if (__value__ == (2959449i32)) {
                    if (((_i_2959441 < (_s.length) : Bool) && (_i_2959441 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2959485i32;
                    } else {
                        _gotoNext = 2959874i32;
                    };
                } else if (__value__ == (2959485i32)) {
                    _sr_2959489 = _s[(_i_2959441 : stdgo.GoInt)];
                    _tr_2959502 = _t[(_i_2959441 : stdgo.GoInt)];
                    if (((_sr_2959489 | _tr_2959502 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2959541i32;
                    } else {
                        _gotoNext = 2959585i32;
                    };
                } else if (__value__ == (2959541i32)) {
                    _gotoNext = 2959899i32;
                } else if (__value__ == (2959585i32)) {
                    if (_tr_2959502 == (_sr_2959489)) {
                        _gotoNext = 2959597i32;
                    } else {
                        _gotoNext = 2959662i32;
                    };
                } else if (__value__ == (2959597i32)) {
                    _i_2959441++;
                    _gotoNext = 2959449i32;
                } else if (__value__ == (2959662i32)) {
                    if ((_tr_2959502 < _sr_2959489 : Bool)) {
                        _gotoNext = 2959673i32;
                    } else {
                        _gotoNext = 2959748i32;
                    };
                } else if (__value__ == (2959673i32)) {
                    {
                        final __tmp__0 = _sr_2959489;
                        final __tmp__1 = _tr_2959502;
                        _tr_2959502 = __tmp__0;
                        _sr_2959489 = __tmp__1;
                    };
                    _gotoNext = 2959748i32;
                } else if (__value__ == (2959748i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2959489 : Bool) && (_sr_2959489 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2959502 == ((_sr_2959489 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2959794i32;
                    } else {
                        _gotoNext = 2959814i32;
                    };
                } else if (__value__ == (2959794i32)) {
                    _i_2959441++;
                    _gotoNext = 2959449i32;
                } else if (__value__ == (2959814i32)) {
                    return false;
                    _i_2959441++;
                    _gotoNext = 2959449i32;
                } else if (__value__ == (2959874i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2959899i32;
                } else if (__value__ == (2959899i32)) {
                    _s = (_s.__slice__(_i_2959441) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2959441) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2959934i32;
                } else if (__value__ == (2959934i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2959965i32;
                    } else {
                        _gotoNext = 2960940i32;
                    };
                } else if (__value__ == (2959965i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2960046i32;
                    } else {
                        _gotoNext = 2960086i32;
                    };
                } else if (__value__ == (2960046i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2960008 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2960150i32;
                } else if (__value__ == (2960086i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2960091 = __tmp__._0;
                        _size_2960094 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2960091;
                        final __tmp__1 = (_s.__slice__(_size_2960094) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2960008 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2960150i32;
                } else if (__value__ == (2960150i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2960174i32;
                    } else {
                        _gotoNext = 2960214i32;
                    };
                } else if (__value__ == (2960174i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2960012 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2960350i32;
                } else if (__value__ == (2960214i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2960219 = __tmp__._0;
                        _size_2960222 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2960219;
                        final __tmp__1 = (_t.__slice__(_size_2960222) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2960012 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2960350i32;
                } else if (__value__ == (2960350i32)) {
                    if (_tr_2960012 == (_sr_2960008)) {
                        _gotoNext = 2960362i32;
                    } else {
                        _gotoNext = 2960427i32;
                    };
                } else if (__value__ == (2960362i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2959934i32;
                } else if (__value__ == (2960427i32)) {
                    if ((_tr_2960012 < _sr_2960008 : Bool)) {
                        _gotoNext = 2960438i32;
                    } else {
                        _gotoNext = 2960492i32;
                    };
                } else if (__value__ == (2960438i32)) {
                    {
                        final __tmp__0 = _sr_2960008;
                        final __tmp__1 = _tr_2960012;
                        _tr_2960012 = __tmp__0;
                        _sr_2960008 = __tmp__1;
                    };
                    _gotoNext = 2960492i32;
                } else if (__value__ == (2960492i32)) {
                    if ((_tr_2960012 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2960514i32;
                    } else {
                        _gotoNext = 2960767i32;
                    };
                } else if (__value__ == (2960514i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2960008 : Bool) && (_sr_2960008 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2960012 == ((_sr_2960008 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2960614i32;
                    } else {
                        _gotoNext = 2960637i32;
                    };
                } else if (__value__ == (2960614i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2959934i32;
                } else if (__value__ == (2960637i32)) {
                    return false;
                    _gotoNext = 2960767i32;
                } else if (__value__ == (2960767i32)) {
                    _r_2960767 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2960008);
                    var __blank__ = 0i32;
                    _gotoNext = 2960797i32;
                } else if (__value__ == (2960797i32)) {
                    if (((_r_2960767 != _sr_2960008) && (_r_2960767 < _tr_2960012 : Bool) : Bool)) {
                        _gotoNext = 2960819i32;
                    } else {
                        _gotoNext = 2960856i32;
                    };
                } else if (__value__ == (2960819i32)) {
                    _r_2960767 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2960767);
                    _gotoNext = 2960797i32;
                } else if (__value__ == (2960856i32)) {
                    if (_r_2960767 == (_tr_2960012)) {
                        _gotoNext = 2960867i32;
                    } else {
                        _gotoNext = 2960887i32;
                    };
                } else if (__value__ == (2960867i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2959934i32;
                } else if (__value__ == (2960887i32)) {
                    return false;
                    _gotoNext = 2959934i32;
                } else if (__value__ == (2960940i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
