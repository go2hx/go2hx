package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3005076:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3004951:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3004948:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3004869:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3004359:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3004346:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3004298:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3005624:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3005079:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3004865:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3004298 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3004306i32;
                } else if (__value__ == (3004306i32)) {
                    if (((_i_3004298 < (_s.length) : Bool) && (_i_3004298 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3004342i32;
                    } else {
                        _gotoNext = 3004731i32;
                    };
                } else if (__value__ == (3004342i32)) {
                    _sr_3004346 = _s[(_i_3004298 : stdgo.GoInt)];
                    _tr_3004359 = _t[(_i_3004298 : stdgo.GoInt)];
                    if (((_sr_3004346 | _tr_3004359 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3004398i32;
                    } else {
                        _gotoNext = 3004442i32;
                    };
                } else if (__value__ == (3004398i32)) {
                    _gotoNext = 3004756i32;
                } else if (__value__ == (3004442i32)) {
                    if (_tr_3004359 == (_sr_3004346)) {
                        _gotoNext = 3004454i32;
                    } else {
                        _gotoNext = 3004519i32;
                    };
                } else if (__value__ == (3004454i32)) {
                    _i_3004298++;
                    _gotoNext = 3004306i32;
                } else if (__value__ == (3004519i32)) {
                    if ((_tr_3004359 < _sr_3004346 : Bool)) {
                        _gotoNext = 3004530i32;
                    } else {
                        _gotoNext = 3004605i32;
                    };
                } else if (__value__ == (3004530i32)) {
                    {
                        final __tmp__0 = _sr_3004346;
                        final __tmp__1 = _tr_3004359;
                        _tr_3004359 = __tmp__0;
                        _sr_3004346 = __tmp__1;
                    };
                    _gotoNext = 3004605i32;
                } else if (__value__ == (3004605i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3004346 : Bool) && (_sr_3004346 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3004359 == ((_sr_3004346 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3004651i32;
                    } else {
                        _gotoNext = 3004671i32;
                    };
                } else if (__value__ == (3004651i32)) {
                    _i_3004298++;
                    _gotoNext = 3004306i32;
                } else if (__value__ == (3004671i32)) {
                    return false;
                    _i_3004298++;
                    _gotoNext = 3004306i32;
                } else if (__value__ == (3004731i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3004756i32;
                } else if (__value__ == (3004756i32)) {
                    _s = (_s.__slice__(_i_3004298) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3004298) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3004791i32;
                } else if (__value__ == (3004791i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3004822i32;
                    } else {
                        _gotoNext = 3005797i32;
                    };
                } else if (__value__ == (3004822i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3004903i32;
                    } else {
                        _gotoNext = 3004943i32;
                    };
                } else if (__value__ == (3004903i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3004865 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3005007i32;
                } else if (__value__ == (3004943i32)) {
                    _gotoNext = 3004943i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3004948 = __tmp__._0;
                        _size_3004951 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3004948;
                        final __tmp__1 = (_s.__slice__(_size_3004951) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3004865 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3005007i32;
                } else if (__value__ == (3005007i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3005031i32;
                    } else {
                        _gotoNext = 3005071i32;
                    };
                } else if (__value__ == (3005031i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3004869 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3005207i32;
                } else if (__value__ == (3005071i32)) {
                    _gotoNext = 3005071i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3005076 = __tmp__._0;
                        _size_3005079 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3005076;
                        final __tmp__1 = (_t.__slice__(_size_3005079) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3004869 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3005207i32;
                } else if (__value__ == (3005207i32)) {
                    if (_tr_3004869 == (_sr_3004865)) {
                        _gotoNext = 3005219i32;
                    } else {
                        _gotoNext = 3005284i32;
                    };
                } else if (__value__ == (3005219i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3004791i32;
                } else if (__value__ == (3005284i32)) {
                    if ((_tr_3004869 < _sr_3004865 : Bool)) {
                        _gotoNext = 3005295i32;
                    } else {
                        _gotoNext = 3005349i32;
                    };
                } else if (__value__ == (3005295i32)) {
                    {
                        final __tmp__0 = _sr_3004865;
                        final __tmp__1 = _tr_3004869;
                        _tr_3004869 = __tmp__0;
                        _sr_3004865 = __tmp__1;
                    };
                    _gotoNext = 3005349i32;
                } else if (__value__ == (3005349i32)) {
                    if ((_tr_3004869 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3005371i32;
                    } else {
                        _gotoNext = 3005624i32;
                    };
                } else if (__value__ == (3005371i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3004865 : Bool) && (_sr_3004865 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3004869 == ((_sr_3004865 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3005471i32;
                    } else {
                        _gotoNext = 3005494i32;
                    };
                } else if (__value__ == (3005471i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3004791i32;
                } else if (__value__ == (3005494i32)) {
                    return false;
                    _gotoNext = 3005624i32;
                } else if (__value__ == (3005624i32)) {
                    _r_3005624 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3004865);
                    var __blank__ = 0i32;
                    _gotoNext = 3005654i32;
                } else if (__value__ == (3005654i32)) {
                    if (((_r_3005624 != _sr_3004865) && (_r_3005624 < _tr_3004869 : Bool) : Bool)) {
                        _gotoNext = 3005676i32;
                    } else {
                        _gotoNext = 3005713i32;
                    };
                } else if (__value__ == (3005676i32)) {
                    _r_3005624 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3005624);
                    _gotoNext = 3005654i32;
                } else if (__value__ == (3005713i32)) {
                    if (_r_3005624 == (_tr_3004869)) {
                        _gotoNext = 3005724i32;
                    } else {
                        _gotoNext = 3005744i32;
                    };
                } else if (__value__ == (3005724i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3004791i32;
                } else if (__value__ == (3005744i32)) {
                    return false;
                    _gotoNext = 3004791i32;
                } else if (__value__ == (3005797i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
