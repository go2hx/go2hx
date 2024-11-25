package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2974131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2974128:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2973921:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2973917:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2973411:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2974676:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2974003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2974000:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2973398:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2973350:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2973350 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2973358i32;
                } else if (__value__ == (2973358i32)) {
                    if (((_i_2973350 < (_s.length) : Bool) && (_i_2973350 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2973394i32;
                    } else {
                        _gotoNext = 2973783i32;
                    };
                } else if (__value__ == (2973394i32)) {
                    _sr_2973398 = _s[(_i_2973350 : stdgo.GoInt)];
                    _tr_2973411 = _t[(_i_2973350 : stdgo.GoInt)];
                    if (((_sr_2973398 | _tr_2973411 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2973450i32;
                    } else {
                        _gotoNext = 2973494i32;
                    };
                } else if (__value__ == (2973450i32)) {
                    _gotoNext = 2973808i32;
                } else if (__value__ == (2973494i32)) {
                    if (_tr_2973411 == (_sr_2973398)) {
                        _gotoNext = 2973506i32;
                    } else {
                        _gotoNext = 2973571i32;
                    };
                } else if (__value__ == (2973506i32)) {
                    _i_2973350++;
                    _gotoNext = 2973358i32;
                } else if (__value__ == (2973571i32)) {
                    if ((_tr_2973411 < _sr_2973398 : Bool)) {
                        _gotoNext = 2973582i32;
                    } else {
                        _gotoNext = 2973657i32;
                    };
                } else if (__value__ == (2973582i32)) {
                    {
                        final __tmp__0 = _sr_2973398;
                        final __tmp__1 = _tr_2973411;
                        _tr_2973411 = __tmp__0;
                        _sr_2973398 = __tmp__1;
                    };
                    _gotoNext = 2973657i32;
                } else if (__value__ == (2973657i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2973398 : Bool) && (_sr_2973398 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2973411 == ((_sr_2973398 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2973703i32;
                    } else {
                        _gotoNext = 2973723i32;
                    };
                } else if (__value__ == (2973703i32)) {
                    _i_2973350++;
                    _gotoNext = 2973358i32;
                } else if (__value__ == (2973723i32)) {
                    return false;
                    _i_2973350++;
                    _gotoNext = 2973358i32;
                } else if (__value__ == (2973783i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2973808i32;
                } else if (__value__ == (2973808i32)) {
                    _s = (_s.__slice__(_i_2973350) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2973350) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2973843i32;
                } else if (__value__ == (2973843i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2973874i32;
                    } else {
                        _gotoNext = 2974849i32;
                    };
                } else if (__value__ == (2973874i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2973955i32;
                    } else {
                        _gotoNext = 2973995i32;
                    };
                } else if (__value__ == (2973955i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2973917 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2974059i32;
                } else if (__value__ == (2973995i32)) {
                    _gotoNext = 2973995i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2974000 = __tmp__._0;
                        _size_2974003 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2974000;
                        final __tmp__1 = (_s.__slice__(_size_2974003) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2973917 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2974059i32;
                } else if (__value__ == (2974059i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2974083i32;
                    } else {
                        _gotoNext = 2974123i32;
                    };
                } else if (__value__ == (2974083i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2973921 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2974259i32;
                } else if (__value__ == (2974123i32)) {
                    _gotoNext = 2974123i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2974128 = __tmp__._0;
                        _size_2974131 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2974128;
                        final __tmp__1 = (_t.__slice__(_size_2974131) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2973921 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2974259i32;
                } else if (__value__ == (2974259i32)) {
                    if (_tr_2973921 == (_sr_2973917)) {
                        _gotoNext = 2974271i32;
                    } else {
                        _gotoNext = 2974336i32;
                    };
                } else if (__value__ == (2974271i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2973843i32;
                } else if (__value__ == (2974336i32)) {
                    if ((_tr_2973921 < _sr_2973917 : Bool)) {
                        _gotoNext = 2974347i32;
                    } else {
                        _gotoNext = 2974401i32;
                    };
                } else if (__value__ == (2974347i32)) {
                    {
                        final __tmp__0 = _sr_2973917;
                        final __tmp__1 = _tr_2973921;
                        _tr_2973921 = __tmp__0;
                        _sr_2973917 = __tmp__1;
                    };
                    _gotoNext = 2974401i32;
                } else if (__value__ == (2974401i32)) {
                    if ((_tr_2973921 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2974423i32;
                    } else {
                        _gotoNext = 2974676i32;
                    };
                } else if (__value__ == (2974423i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2973917 : Bool) && (_sr_2973917 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2973921 == ((_sr_2973917 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2974523i32;
                    } else {
                        _gotoNext = 2974546i32;
                    };
                } else if (__value__ == (2974523i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2973843i32;
                } else if (__value__ == (2974546i32)) {
                    return false;
                    _gotoNext = 2974676i32;
                } else if (__value__ == (2974676i32)) {
                    _r_2974676 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2973917);
                    var __blank__ = 0i32;
                    _gotoNext = 2974706i32;
                } else if (__value__ == (2974706i32)) {
                    if (((_r_2974676 != _sr_2973917) && (_r_2974676 < _tr_2973921 : Bool) : Bool)) {
                        _gotoNext = 2974728i32;
                    } else {
                        _gotoNext = 2974765i32;
                    };
                } else if (__value__ == (2974728i32)) {
                    _r_2974676 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2974676);
                    _gotoNext = 2974706i32;
                } else if (__value__ == (2974765i32)) {
                    if (_r_2974676 == (_tr_2973921)) {
                        _gotoNext = 2974776i32;
                    } else {
                        _gotoNext = 2974796i32;
                    };
                } else if (__value__ == (2974776i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2973843i32;
                } else if (__value__ == (2974796i32)) {
                    return false;
                    _gotoNext = 2973843i32;
                } else if (__value__ == (2974849i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
