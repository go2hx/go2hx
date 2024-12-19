package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2949426:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2948878:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2948667:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2948161:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2948148:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2948100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2948881:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2948753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2948750:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2948671:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2948100 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2948108i32;
                } else if (__value__ == (2948108i32)) {
                    if (((_i_2948100 < (_s.length) : Bool) && (_i_2948100 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2948144i32;
                    } else {
                        _gotoNext = 2948533i32;
                    };
                } else if (__value__ == (2948144i32)) {
                    _sr_2948148 = _s[(_i_2948100 : stdgo.GoInt)];
                    _tr_2948161 = _t[(_i_2948100 : stdgo.GoInt)];
                    if (((_sr_2948148 | _tr_2948161 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2948200i32;
                    } else {
                        _gotoNext = 2948244i32;
                    };
                } else if (__value__ == (2948200i32)) {
                    _gotoNext = 2948558i32;
                } else if (__value__ == (2948244i32)) {
                    if (_tr_2948161 == (_sr_2948148)) {
                        _gotoNext = 2948256i32;
                    } else {
                        _gotoNext = 2948321i32;
                    };
                } else if (__value__ == (2948256i32)) {
                    _i_2948100++;
                    _gotoNext = 2948108i32;
                } else if (__value__ == (2948321i32)) {
                    if ((_tr_2948161 < _sr_2948148 : Bool)) {
                        _gotoNext = 2948332i32;
                    } else {
                        _gotoNext = 2948407i32;
                    };
                } else if (__value__ == (2948332i32)) {
                    {
                        final __tmp__0 = _sr_2948148;
                        final __tmp__1 = _tr_2948161;
                        _tr_2948161 = __tmp__0;
                        _sr_2948148 = __tmp__1;
                    };
                    _gotoNext = 2948407i32;
                } else if (__value__ == (2948407i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2948148 : Bool) && (_sr_2948148 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2948161 == ((_sr_2948148 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2948453i32;
                    } else {
                        _gotoNext = 2948473i32;
                    };
                } else if (__value__ == (2948453i32)) {
                    _i_2948100++;
                    _gotoNext = 2948108i32;
                } else if (__value__ == (2948473i32)) {
                    return false;
                    _i_2948100++;
                    _gotoNext = 2948108i32;
                } else if (__value__ == (2948533i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2948558i32;
                } else if (__value__ == (2948558i32)) {
                    _s = (_s.__slice__(_i_2948100) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2948100) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2948593i32;
                } else if (__value__ == (2948593i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2948624i32;
                    } else {
                        _gotoNext = 2949599i32;
                    };
                } else if (__value__ == (2948624i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2948705i32;
                    } else {
                        _gotoNext = 2948745i32;
                    };
                } else if (__value__ == (2948705i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2948667 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2948809i32;
                } else if (__value__ == (2948745i32)) {
                    _gotoNext = 2948745i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2948750 = __tmp__._0;
                        _size_2948753 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2948750;
                        final __tmp__1 = (_s.__slice__(_size_2948753) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2948667 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2948809i32;
                } else if (__value__ == (2948809i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2948833i32;
                    } else {
                        _gotoNext = 2948873i32;
                    };
                } else if (__value__ == (2948833i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2948671 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2949009i32;
                } else if (__value__ == (2948873i32)) {
                    _gotoNext = 2948873i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2948878 = __tmp__._0;
                        _size_2948881 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2948878;
                        final __tmp__1 = (_t.__slice__(_size_2948881) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2948671 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2949009i32;
                } else if (__value__ == (2949009i32)) {
                    if (_tr_2948671 == (_sr_2948667)) {
                        _gotoNext = 2949021i32;
                    } else {
                        _gotoNext = 2949086i32;
                    };
                } else if (__value__ == (2949021i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2948593i32;
                } else if (__value__ == (2949086i32)) {
                    if ((_tr_2948671 < _sr_2948667 : Bool)) {
                        _gotoNext = 2949097i32;
                    } else {
                        _gotoNext = 2949151i32;
                    };
                } else if (__value__ == (2949097i32)) {
                    {
                        final __tmp__0 = _sr_2948667;
                        final __tmp__1 = _tr_2948671;
                        _tr_2948671 = __tmp__0;
                        _sr_2948667 = __tmp__1;
                    };
                    _gotoNext = 2949151i32;
                } else if (__value__ == (2949151i32)) {
                    if ((_tr_2948671 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2949173i32;
                    } else {
                        _gotoNext = 2949426i32;
                    };
                } else if (__value__ == (2949173i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2948667 : Bool) && (_sr_2948667 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2948671 == ((_sr_2948667 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2949273i32;
                    } else {
                        _gotoNext = 2949296i32;
                    };
                } else if (__value__ == (2949273i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2948593i32;
                } else if (__value__ == (2949296i32)) {
                    return false;
                    _gotoNext = 2949426i32;
                } else if (__value__ == (2949426i32)) {
                    _r_2949426 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2948667);
                    var __blank__ = 0i32;
                    _gotoNext = 2949456i32;
                } else if (__value__ == (2949456i32)) {
                    if (((_r_2949426 != _sr_2948667) && (_r_2949426 < _tr_2948671 : Bool) : Bool)) {
                        _gotoNext = 2949478i32;
                    } else {
                        _gotoNext = 2949515i32;
                    };
                } else if (__value__ == (2949478i32)) {
                    _r_2949426 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2949426);
                    _gotoNext = 2949456i32;
                } else if (__value__ == (2949515i32)) {
                    if (_r_2949426 == (_tr_2948671)) {
                        _gotoNext = 2949526i32;
                    } else {
                        _gotoNext = 2949546i32;
                    };
                } else if (__value__ == (2949526i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2948593i32;
                } else if (__value__ == (2949546i32)) {
                    return false;
                    _gotoNext = 2948593i32;
                } else if (__value__ == (2949599i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
