package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2824917:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2824350:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2825676:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2825003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2825000:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2824921:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2824411:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2824398:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2825131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2825128:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2824350 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2824358i32;
                } else if (__value__ == (2824358i32)) {
                    if (((_i_2824350 < (_s.length) : Bool) && (_i_2824350 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2824394i32;
                    } else {
                        _gotoNext = 2824783i32;
                    };
                } else if (__value__ == (2824394i32)) {
                    _sr_2824398 = _s[(_i_2824350 : stdgo.GoInt)];
                    _tr_2824411 = _t[(_i_2824350 : stdgo.GoInt)];
                    if (((_sr_2824398 | _tr_2824411 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2824450i32;
                    } else {
                        _gotoNext = 2824494i32;
                    };
                } else if (__value__ == (2824450i32)) {
                    _gotoNext = 2824808i32;
                } else if (__value__ == (2824494i32)) {
                    if (_tr_2824411 == (_sr_2824398)) {
                        _gotoNext = 2824506i32;
                    } else {
                        _gotoNext = 2824571i32;
                    };
                } else if (__value__ == (2824506i32)) {
                    _i_2824350++;
                    _gotoNext = 2824358i32;
                } else if (__value__ == (2824571i32)) {
                    if ((_tr_2824411 < _sr_2824398 : Bool)) {
                        _gotoNext = 2824582i32;
                    } else {
                        _gotoNext = 2824657i32;
                    };
                } else if (__value__ == (2824582i32)) {
                    {
                        final __tmp__0 = _sr_2824398;
                        final __tmp__1 = _tr_2824411;
                        _tr_2824411 = __tmp__0;
                        _sr_2824398 = __tmp__1;
                    };
                    _gotoNext = 2824657i32;
                } else if (__value__ == (2824657i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2824398 : Bool) && (_sr_2824398 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2824411 == ((_sr_2824398 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2824703i32;
                    } else {
                        _gotoNext = 2824723i32;
                    };
                } else if (__value__ == (2824703i32)) {
                    _i_2824350++;
                    _gotoNext = 2824358i32;
                } else if (__value__ == (2824723i32)) {
                    return false;
                    _i_2824350++;
                    _gotoNext = 2824358i32;
                } else if (__value__ == (2824783i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2824808i32;
                } else if (__value__ == (2824808i32)) {
                    _s = (_s.__slice__(_i_2824350) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2824350) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2824843i32;
                } else if (__value__ == (2824843i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2824874i32;
                    } else {
                        _gotoNext = 2825849i32;
                    };
                } else if (__value__ == (2824874i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2824955i32;
                    } else {
                        _gotoNext = 2824995i32;
                    };
                } else if (__value__ == (2824955i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2824917 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2825059i32;
                } else if (__value__ == (2824995i32)) {
                    _gotoNext = 2824995i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2825000 = __tmp__._0;
                        _size_2825003 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2825000;
                        final __tmp__1 = (_s.__slice__(_size_2825003) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2824917 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2825059i32;
                } else if (__value__ == (2825059i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2825083i32;
                    } else {
                        _gotoNext = 2825123i32;
                    };
                } else if (__value__ == (2825083i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2824921 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2825259i32;
                } else if (__value__ == (2825123i32)) {
                    _gotoNext = 2825123i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2825128 = __tmp__._0;
                        _size_2825131 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2825128;
                        final __tmp__1 = (_t.__slice__(_size_2825131) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2824921 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2825259i32;
                } else if (__value__ == (2825259i32)) {
                    if (_tr_2824921 == (_sr_2824917)) {
                        _gotoNext = 2825271i32;
                    } else {
                        _gotoNext = 2825336i32;
                    };
                } else if (__value__ == (2825271i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2824843i32;
                } else if (__value__ == (2825336i32)) {
                    if ((_tr_2824921 < _sr_2824917 : Bool)) {
                        _gotoNext = 2825347i32;
                    } else {
                        _gotoNext = 2825401i32;
                    };
                } else if (__value__ == (2825347i32)) {
                    {
                        final __tmp__0 = _sr_2824917;
                        final __tmp__1 = _tr_2824921;
                        _tr_2824921 = __tmp__0;
                        _sr_2824917 = __tmp__1;
                    };
                    _gotoNext = 2825401i32;
                } else if (__value__ == (2825401i32)) {
                    if ((_tr_2824921 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2825423i32;
                    } else {
                        _gotoNext = 2825676i32;
                    };
                } else if (__value__ == (2825423i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2824917 : Bool) && (_sr_2824917 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2824921 == ((_sr_2824917 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2825523i32;
                    } else {
                        _gotoNext = 2825546i32;
                    };
                } else if (__value__ == (2825523i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2824843i32;
                } else if (__value__ == (2825546i32)) {
                    return false;
                    _gotoNext = 2825676i32;
                } else if (__value__ == (2825676i32)) {
                    _r_2825676 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2824917);
                    var __blank__ = 0i32;
                    _gotoNext = 2825706i32;
                } else if (__value__ == (2825706i32)) {
                    if (((_r_2825676 != _sr_2824917) && (_r_2825676 < _tr_2824921 : Bool) : Bool)) {
                        _gotoNext = 2825728i32;
                    } else {
                        _gotoNext = 2825765i32;
                    };
                } else if (__value__ == (2825728i32)) {
                    _r_2825676 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2825676);
                    _gotoNext = 2825706i32;
                } else if (__value__ == (2825765i32)) {
                    if (_r_2825676 == (_tr_2824921)) {
                        _gotoNext = 2825776i32;
                    } else {
                        _gotoNext = 2825796i32;
                    };
                } else if (__value__ == (2825776i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2824843i32;
                } else if (__value__ == (2825796i32)) {
                    return false;
                    _gotoNext = 2824843i32;
                } else if (__value__ == (2825849i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
