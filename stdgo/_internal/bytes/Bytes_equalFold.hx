package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3085893:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3085243:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3086569:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3086024:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3086021:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3085304:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3085291:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3085896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3085814:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3085810:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3085243 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3085251i32;
                } else if (__value__ == (3085251i32)) {
                    if (((_i_3085243 < (_s.length) : Bool) && (_i_3085243 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3085287i32;
                    } else {
                        _gotoNext = 3085676i32;
                    };
                } else if (__value__ == (3085287i32)) {
                    _sr_3085291 = _s[(_i_3085243 : stdgo.GoInt)];
                    _tr_3085304 = _t[(_i_3085243 : stdgo.GoInt)];
                    if (((_sr_3085291 | _tr_3085304 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3085343i32;
                    } else {
                        _gotoNext = 3085387i32;
                    };
                } else if (__value__ == (3085343i32)) {
                    _gotoNext = 3085701i32;
                } else if (__value__ == (3085387i32)) {
                    if (_tr_3085304 == (_sr_3085291)) {
                        _gotoNext = 3085399i32;
                    } else {
                        _gotoNext = 3085464i32;
                    };
                } else if (__value__ == (3085399i32)) {
                    _i_3085243++;
                    _gotoNext = 3085251i32;
                } else if (__value__ == (3085464i32)) {
                    if ((_tr_3085304 < _sr_3085291 : Bool)) {
                        _gotoNext = 3085475i32;
                    } else {
                        _gotoNext = 3085550i32;
                    };
                } else if (__value__ == (3085475i32)) {
                    {
                        final __tmp__0 = _sr_3085291;
                        final __tmp__1 = _tr_3085304;
                        _tr_3085304 = __tmp__0;
                        _sr_3085291 = __tmp__1;
                    };
                    _gotoNext = 3085550i32;
                } else if (__value__ == (3085550i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3085291 : Bool) && (_sr_3085291 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3085304 == ((_sr_3085291 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3085596i32;
                    } else {
                        _gotoNext = 3085616i32;
                    };
                } else if (__value__ == (3085596i32)) {
                    _i_3085243++;
                    _gotoNext = 3085251i32;
                } else if (__value__ == (3085616i32)) {
                    return false;
                    _i_3085243++;
                    _gotoNext = 3085251i32;
                } else if (__value__ == (3085676i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3085701i32;
                } else if (__value__ == (3085701i32)) {
                    _s = (_s.__slice__(_i_3085243) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3085243) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3085736i32;
                } else if (__value__ == (3085736i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3085767i32;
                    } else {
                        _gotoNext = 3086742i32;
                    };
                } else if (__value__ == (3085767i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3085848i32;
                    } else {
                        _gotoNext = 3085888i32;
                    };
                } else if (__value__ == (3085848i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3085810 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3085952i32;
                } else if (__value__ == (3085888i32)) {
                    _gotoNext = 3085888i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3085893 = __tmp__._0;
                        _size_3085896 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3085893;
                        final __tmp__1 = (_s.__slice__(_size_3085896) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3085810 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3085952i32;
                } else if (__value__ == (3085952i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3085976i32;
                    } else {
                        _gotoNext = 3086016i32;
                    };
                } else if (__value__ == (3085976i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3085814 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3086152i32;
                } else if (__value__ == (3086016i32)) {
                    _gotoNext = 3086016i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3086021 = __tmp__._0;
                        _size_3086024 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3086021;
                        final __tmp__1 = (_t.__slice__(_size_3086024) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3085814 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3086152i32;
                } else if (__value__ == (3086152i32)) {
                    if (_tr_3085814 == (_sr_3085810)) {
                        _gotoNext = 3086164i32;
                    } else {
                        _gotoNext = 3086229i32;
                    };
                } else if (__value__ == (3086164i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3085736i32;
                } else if (__value__ == (3086229i32)) {
                    if ((_tr_3085814 < _sr_3085810 : Bool)) {
                        _gotoNext = 3086240i32;
                    } else {
                        _gotoNext = 3086294i32;
                    };
                } else if (__value__ == (3086240i32)) {
                    {
                        final __tmp__0 = _sr_3085810;
                        final __tmp__1 = _tr_3085814;
                        _tr_3085814 = __tmp__0;
                        _sr_3085810 = __tmp__1;
                    };
                    _gotoNext = 3086294i32;
                } else if (__value__ == (3086294i32)) {
                    if ((_tr_3085814 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3086316i32;
                    } else {
                        _gotoNext = 3086569i32;
                    };
                } else if (__value__ == (3086316i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3085810 : Bool) && (_sr_3085810 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3085814 == ((_sr_3085810 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3086416i32;
                    } else {
                        _gotoNext = 3086439i32;
                    };
                } else if (__value__ == (3086416i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3085736i32;
                } else if (__value__ == (3086439i32)) {
                    return false;
                    _gotoNext = 3086569i32;
                } else if (__value__ == (3086569i32)) {
                    _r_3086569 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3085810);
                    var __blank__ = 0i32;
                    _gotoNext = 3086599i32;
                } else if (__value__ == (3086599i32)) {
                    if (((_r_3086569 != _sr_3085810) && (_r_3086569 < _tr_3085814 : Bool) : Bool)) {
                        _gotoNext = 3086621i32;
                    } else {
                        _gotoNext = 3086658i32;
                    };
                } else if (__value__ == (3086621i32)) {
                    _r_3086569 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3086569);
                    _gotoNext = 3086599i32;
                } else if (__value__ == (3086658i32)) {
                    if (_r_3086569 == (_tr_3085814)) {
                        _gotoNext = 3086669i32;
                    } else {
                        _gotoNext = 3086689i32;
                    };
                } else if (__value__ == (3086669i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3085736i32;
                } else if (__value__ == (3086689i32)) {
                    return false;
                    _gotoNext = 3085736i32;
                } else if (__value__ == (3086742i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
