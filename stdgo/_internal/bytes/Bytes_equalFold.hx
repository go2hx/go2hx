package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2821723:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2821640:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2822399:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2821854:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2821121:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2821073:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2821851:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2821726:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2821644:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2821134:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2821073 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2821081i32;
                } else if (__value__ == (2821081i32)) {
                    if (((_i_2821073 < (_s.length) : Bool) && (_i_2821073 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2821117i32;
                    } else {
                        _gotoNext = 2821506i32;
                    };
                } else if (__value__ == (2821117i32)) {
                    _sr_2821121 = _s[(_i_2821073 : stdgo.GoInt)];
                    _tr_2821134 = _t[(_i_2821073 : stdgo.GoInt)];
                    if (((_sr_2821121 | _tr_2821134 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2821173i32;
                    } else {
                        _gotoNext = 2821217i32;
                    };
                } else if (__value__ == (2821173i32)) {
                    _gotoNext = 2821531i32;
                } else if (__value__ == (2821217i32)) {
                    if (_tr_2821134 == (_sr_2821121)) {
                        _gotoNext = 2821229i32;
                    } else {
                        _gotoNext = 2821294i32;
                    };
                } else if (__value__ == (2821229i32)) {
                    _i_2821073++;
                    _gotoNext = 2821081i32;
                } else if (__value__ == (2821294i32)) {
                    if ((_tr_2821134 < _sr_2821121 : Bool)) {
                        _gotoNext = 2821305i32;
                    } else {
                        _gotoNext = 2821380i32;
                    };
                } else if (__value__ == (2821305i32)) {
                    {
                        final __tmp__0 = _sr_2821121;
                        final __tmp__1 = _tr_2821134;
                        _tr_2821134 = __tmp__0;
                        _sr_2821121 = __tmp__1;
                    };
                    _gotoNext = 2821380i32;
                } else if (__value__ == (2821380i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2821121 : Bool) && (_sr_2821121 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2821134 == ((_sr_2821121 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2821426i32;
                    } else {
                        _gotoNext = 2821446i32;
                    };
                } else if (__value__ == (2821426i32)) {
                    _i_2821073++;
                    _gotoNext = 2821081i32;
                } else if (__value__ == (2821446i32)) {
                    return false;
                    _i_2821073++;
                    _gotoNext = 2821081i32;
                } else if (__value__ == (2821506i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2821531i32;
                } else if (__value__ == (2821531i32)) {
                    _s = (_s.__slice__(_i_2821073) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2821073) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2821566i32;
                } else if (__value__ == (2821566i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2821597i32;
                    } else {
                        _gotoNext = 2822572i32;
                    };
                } else if (__value__ == (2821597i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2821678i32;
                    } else {
                        _gotoNext = 2821718i32;
                    };
                } else if (__value__ == (2821678i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2821640 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2821782i32;
                } else if (__value__ == (2821718i32)) {
                    _gotoNext = 2821718i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2821723 = __tmp__._0;
                        _size_2821726 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2821723;
                        final __tmp__1 = (_s.__slice__(_size_2821726) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2821640 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2821782i32;
                } else if (__value__ == (2821782i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2821806i32;
                    } else {
                        _gotoNext = 2821846i32;
                    };
                } else if (__value__ == (2821806i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2821644 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2821982i32;
                } else if (__value__ == (2821846i32)) {
                    _gotoNext = 2821846i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2821851 = __tmp__._0;
                        _size_2821854 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2821851;
                        final __tmp__1 = (_t.__slice__(_size_2821854) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2821644 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2821982i32;
                } else if (__value__ == (2821982i32)) {
                    if (_tr_2821644 == (_sr_2821640)) {
                        _gotoNext = 2821994i32;
                    } else {
                        _gotoNext = 2822059i32;
                    };
                } else if (__value__ == (2821994i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2821566i32;
                } else if (__value__ == (2822059i32)) {
                    if ((_tr_2821644 < _sr_2821640 : Bool)) {
                        _gotoNext = 2822070i32;
                    } else {
                        _gotoNext = 2822124i32;
                    };
                } else if (__value__ == (2822070i32)) {
                    {
                        final __tmp__0 = _sr_2821640;
                        final __tmp__1 = _tr_2821644;
                        _tr_2821644 = __tmp__0;
                        _sr_2821640 = __tmp__1;
                    };
                    _gotoNext = 2822124i32;
                } else if (__value__ == (2822124i32)) {
                    if ((_tr_2821644 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2822146i32;
                    } else {
                        _gotoNext = 2822399i32;
                    };
                } else if (__value__ == (2822146i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2821640 : Bool) && (_sr_2821640 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2821644 == ((_sr_2821640 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2822246i32;
                    } else {
                        _gotoNext = 2822269i32;
                    };
                } else if (__value__ == (2822246i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2821566i32;
                } else if (__value__ == (2822269i32)) {
                    return false;
                    _gotoNext = 2822399i32;
                } else if (__value__ == (2822399i32)) {
                    _r_2822399 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2821640);
                    var __blank__ = 0i32;
                    _gotoNext = 2822429i32;
                } else if (__value__ == (2822429i32)) {
                    if (((_r_2822399 != _sr_2821640) && (_r_2822399 < _tr_2821644 : Bool) : Bool)) {
                        _gotoNext = 2822451i32;
                    } else {
                        _gotoNext = 2822488i32;
                    };
                } else if (__value__ == (2822451i32)) {
                    _r_2822399 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2822399);
                    _gotoNext = 2822429i32;
                } else if (__value__ == (2822488i32)) {
                    if (_r_2822399 == (_tr_2821644)) {
                        _gotoNext = 2822499i32;
                    } else {
                        _gotoNext = 2822519i32;
                    };
                } else if (__value__ == (2822499i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2821566i32;
                } else if (__value__ == (2822519i32)) {
                    return false;
                    _gotoNext = 2821566i32;
                } else if (__value__ == (2822572i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
