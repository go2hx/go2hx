package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2781978:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2781433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2781430:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2781223:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2780652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2781305:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2781302:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2781219:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2780713:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2780700:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2780652 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2780660i32;
                } else if (__value__ == (2780660i32)) {
                    if (((_i_2780652 < (_s.length) : Bool) && (_i_2780652 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2780696i32;
                    } else {
                        _gotoNext = 2781085i32;
                    };
                } else if (__value__ == (2780696i32)) {
                    _sr_2780700 = _s[(_i_2780652 : stdgo.GoInt)];
                    _tr_2780713 = _t[(_i_2780652 : stdgo.GoInt)];
                    if (((_sr_2780700 | _tr_2780713 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2780752i32;
                    } else {
                        _gotoNext = 2780796i32;
                    };
                } else if (__value__ == (2780752i32)) {
                    _gotoNext = 2781110i32;
                } else if (__value__ == (2780796i32)) {
                    if (_tr_2780713 == (_sr_2780700)) {
                        _gotoNext = 2780808i32;
                    } else {
                        _gotoNext = 2780873i32;
                    };
                } else if (__value__ == (2780808i32)) {
                    _i_2780652++;
                    _gotoNext = 2780660i32;
                } else if (__value__ == (2780873i32)) {
                    if ((_tr_2780713 < _sr_2780700 : Bool)) {
                        _gotoNext = 2780884i32;
                    } else {
                        _gotoNext = 2780959i32;
                    };
                } else if (__value__ == (2780884i32)) {
                    {
                        final __tmp__0 = _sr_2780700;
                        final __tmp__1 = _tr_2780713;
                        _tr_2780713 = __tmp__0;
                        _sr_2780700 = __tmp__1;
                    };
                    _gotoNext = 2780959i32;
                } else if (__value__ == (2780959i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2780700 : Bool) && (_sr_2780700 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2780713 == ((_sr_2780700 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2781005i32;
                    } else {
                        _gotoNext = 2781025i32;
                    };
                } else if (__value__ == (2781005i32)) {
                    _i_2780652++;
                    _gotoNext = 2780660i32;
                } else if (__value__ == (2781025i32)) {
                    return false;
                    _i_2780652++;
                    _gotoNext = 2780660i32;
                } else if (__value__ == (2781085i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2781110i32;
                } else if (__value__ == (2781110i32)) {
                    _s = (_s.__slice__(_i_2780652) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2780652) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2781145i32;
                } else if (__value__ == (2781145i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2781176i32;
                    } else {
                        _gotoNext = 2782151i32;
                    };
                } else if (__value__ == (2781176i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2781257i32;
                    } else {
                        _gotoNext = 2781297i32;
                    };
                } else if (__value__ == (2781257i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2781219 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2781361i32;
                } else if (__value__ == (2781297i32)) {
                    _gotoNext = 2781297i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2781302 = __tmp__._0;
                        _size_2781305 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2781302;
                        final __tmp__1 = (_s.__slice__(_size_2781305) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2781219 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2781361i32;
                } else if (__value__ == (2781361i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2781385i32;
                    } else {
                        _gotoNext = 2781425i32;
                    };
                } else if (__value__ == (2781385i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2781223 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2781561i32;
                } else if (__value__ == (2781425i32)) {
                    _gotoNext = 2781425i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2781430 = __tmp__._0;
                        _size_2781433 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2781430;
                        final __tmp__1 = (_t.__slice__(_size_2781433) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2781223 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2781561i32;
                } else if (__value__ == (2781561i32)) {
                    if (_tr_2781223 == (_sr_2781219)) {
                        _gotoNext = 2781573i32;
                    } else {
                        _gotoNext = 2781638i32;
                    };
                } else if (__value__ == (2781573i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2781145i32;
                } else if (__value__ == (2781638i32)) {
                    if ((_tr_2781223 < _sr_2781219 : Bool)) {
                        _gotoNext = 2781649i32;
                    } else {
                        _gotoNext = 2781703i32;
                    };
                } else if (__value__ == (2781649i32)) {
                    {
                        final __tmp__0 = _sr_2781219;
                        final __tmp__1 = _tr_2781223;
                        _tr_2781223 = __tmp__0;
                        _sr_2781219 = __tmp__1;
                    };
                    _gotoNext = 2781703i32;
                } else if (__value__ == (2781703i32)) {
                    if ((_tr_2781223 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2781725i32;
                    } else {
                        _gotoNext = 2781978i32;
                    };
                } else if (__value__ == (2781725i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2781219 : Bool) && (_sr_2781219 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2781223 == ((_sr_2781219 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2781825i32;
                    } else {
                        _gotoNext = 2781848i32;
                    };
                } else if (__value__ == (2781825i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2781145i32;
                } else if (__value__ == (2781848i32)) {
                    return false;
                    _gotoNext = 2781978i32;
                } else if (__value__ == (2781978i32)) {
                    _r_2781978 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2781219);
                    var __blank__ = 0i32;
                    _gotoNext = 2782008i32;
                } else if (__value__ == (2782008i32)) {
                    if (((_r_2781978 != _sr_2781219) && (_r_2781978 < _tr_2781223 : Bool) : Bool)) {
                        _gotoNext = 2782030i32;
                    } else {
                        _gotoNext = 2782067i32;
                    };
                } else if (__value__ == (2782030i32)) {
                    _r_2781978 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2781978);
                    _gotoNext = 2782008i32;
                } else if (__value__ == (2782067i32)) {
                    if (_r_2781978 == (_tr_2781223)) {
                        _gotoNext = 2782078i32;
                    } else {
                        _gotoNext = 2782098i32;
                    };
                } else if (__value__ == (2782078i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2781145i32;
                } else if (__value__ == (2782098i32)) {
                    return false;
                    _gotoNext = 2781145i32;
                } else if (__value__ == (2782151i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
