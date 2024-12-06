package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2874777:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2874652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2874570:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2874566:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2874780:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2874649:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2874060:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2874047:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2873999:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875325:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2873999 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2874007i32;
                } else if (__value__ == (2874007i32)) {
                    if (((_i_2873999 < (_s.length) : Bool) && (_i_2873999 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2874043i32;
                    } else {
                        _gotoNext = 2874432i32;
                    };
                } else if (__value__ == (2874043i32)) {
                    _sr_2874047 = _s[(_i_2873999 : stdgo.GoInt)];
                    _tr_2874060 = _t[(_i_2873999 : stdgo.GoInt)];
                    if (((_sr_2874047 | _tr_2874060 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874099i32;
                    } else {
                        _gotoNext = 2874143i32;
                    };
                } else if (__value__ == (2874099i32)) {
                    _gotoNext = 2874457i32;
                } else if (__value__ == (2874143i32)) {
                    if (_tr_2874060 == (_sr_2874047)) {
                        _gotoNext = 2874155i32;
                    } else {
                        _gotoNext = 2874220i32;
                    };
                } else if (__value__ == (2874155i32)) {
                    _i_2873999++;
                    _gotoNext = 2874007i32;
                } else if (__value__ == (2874220i32)) {
                    if ((_tr_2874060 < _sr_2874047 : Bool)) {
                        _gotoNext = 2874231i32;
                    } else {
                        _gotoNext = 2874306i32;
                    };
                } else if (__value__ == (2874231i32)) {
                    {
                        final __tmp__0 = _sr_2874047;
                        final __tmp__1 = _tr_2874060;
                        _tr_2874060 = __tmp__0;
                        _sr_2874047 = __tmp__1;
                    };
                    _gotoNext = 2874306i32;
                } else if (__value__ == (2874306i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2874047 : Bool) && (_sr_2874047 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2874060 == ((_sr_2874047 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2874352i32;
                    } else {
                        _gotoNext = 2874372i32;
                    };
                } else if (__value__ == (2874352i32)) {
                    _i_2873999++;
                    _gotoNext = 2874007i32;
                } else if (__value__ == (2874372i32)) {
                    return false;
                    _i_2873999++;
                    _gotoNext = 2874007i32;
                } else if (__value__ == (2874432i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2874457i32;
                } else if (__value__ == (2874457i32)) {
                    _s = (_s.__slice__(_i_2873999) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2873999) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2874492i32;
                } else if (__value__ == (2874492i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2874523i32;
                    } else {
                        _gotoNext = 2875498i32;
                    };
                } else if (__value__ == (2874523i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874604i32;
                    } else {
                        _gotoNext = 2874644i32;
                    };
                } else if (__value__ == (2874604i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2874566 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2874708i32;
                } else if (__value__ == (2874644i32)) {
                    _gotoNext = 2874644i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2874649 = __tmp__._0;
                        _size_2874652 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2874649;
                        final __tmp__1 = (_s.__slice__(_size_2874652) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2874566 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2874708i32;
                } else if (__value__ == (2874708i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874732i32;
                    } else {
                        _gotoNext = 2874772i32;
                    };
                } else if (__value__ == (2874732i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2874570 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2874908i32;
                } else if (__value__ == (2874772i32)) {
                    _gotoNext = 2874772i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2874777 = __tmp__._0;
                        _size_2874780 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2874777;
                        final __tmp__1 = (_t.__slice__(_size_2874780) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2874570 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2874908i32;
                } else if (__value__ == (2874908i32)) {
                    if (_tr_2874570 == (_sr_2874566)) {
                        _gotoNext = 2874920i32;
                    } else {
                        _gotoNext = 2874985i32;
                    };
                } else if (__value__ == (2874920i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874492i32;
                } else if (__value__ == (2874985i32)) {
                    if ((_tr_2874570 < _sr_2874566 : Bool)) {
                        _gotoNext = 2874996i32;
                    } else {
                        _gotoNext = 2875050i32;
                    };
                } else if (__value__ == (2874996i32)) {
                    {
                        final __tmp__0 = _sr_2874566;
                        final __tmp__1 = _tr_2874570;
                        _tr_2874570 = __tmp__0;
                        _sr_2874566 = __tmp__1;
                    };
                    _gotoNext = 2875050i32;
                } else if (__value__ == (2875050i32)) {
                    if ((_tr_2874570 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2875072i32;
                    } else {
                        _gotoNext = 2875325i32;
                    };
                } else if (__value__ == (2875072i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2874566 : Bool) && (_sr_2874566 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2874570 == ((_sr_2874566 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2875172i32;
                    } else {
                        _gotoNext = 2875195i32;
                    };
                } else if (__value__ == (2875172i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874492i32;
                } else if (__value__ == (2875195i32)) {
                    return false;
                    _gotoNext = 2875325i32;
                } else if (__value__ == (2875325i32)) {
                    _r_2875325 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2874566);
                    var __blank__ = 0i32;
                    _gotoNext = 2875355i32;
                } else if (__value__ == (2875355i32)) {
                    if (((_r_2875325 != _sr_2874566) && (_r_2875325 < _tr_2874570 : Bool) : Bool)) {
                        _gotoNext = 2875377i32;
                    } else {
                        _gotoNext = 2875414i32;
                    };
                } else if (__value__ == (2875377i32)) {
                    _r_2875325 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2875325);
                    _gotoNext = 2875355i32;
                } else if (__value__ == (2875414i32)) {
                    if (_r_2875325 == (_tr_2874570)) {
                        _gotoNext = 2875425i32;
                    } else {
                        _gotoNext = 2875445i32;
                    };
                } else if (__value__ == (2875425i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874492i32;
                } else if (__value__ == (2875445i32)) {
                    return false;
                    _gotoNext = 2874492i32;
                } else if (__value__ == (2875498i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
