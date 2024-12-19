package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_3091382:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3090777:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3090729:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3091510:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3091300:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3091296:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3090790:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3092055:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3091507:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3091379:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3090729 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3090737i32;
                } else if (__value__ == (3090737i32)) {
                    if (((_i_3090729 < (_s.length) : Bool) && (_i_3090729 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3090773i32;
                    } else {
                        _gotoNext = 3091162i32;
                    };
                } else if (__value__ == (3090773i32)) {
                    _sr_3090777 = _s[(_i_3090729 : stdgo.GoInt)];
                    _tr_3090790 = _t[(_i_3090729 : stdgo.GoInt)];
                    if (((_sr_3090777 | _tr_3090790 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3090829i32;
                    } else {
                        _gotoNext = 3090873i32;
                    };
                } else if (__value__ == (3090829i32)) {
                    _gotoNext = 3091187i32;
                } else if (__value__ == (3090873i32)) {
                    if (_tr_3090790 == (_sr_3090777)) {
                        _gotoNext = 3090885i32;
                    } else {
                        _gotoNext = 3090950i32;
                    };
                } else if (__value__ == (3090885i32)) {
                    _i_3090729++;
                    _gotoNext = 3090737i32;
                } else if (__value__ == (3090950i32)) {
                    if ((_tr_3090790 < _sr_3090777 : Bool)) {
                        _gotoNext = 3090961i32;
                    } else {
                        _gotoNext = 3091036i32;
                    };
                } else if (__value__ == (3090961i32)) {
                    {
                        final __tmp__0 = _sr_3090777;
                        final __tmp__1 = _tr_3090790;
                        _tr_3090790 = __tmp__0;
                        _sr_3090777 = __tmp__1;
                    };
                    _gotoNext = 3091036i32;
                } else if (__value__ == (3091036i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3090777 : Bool) && (_sr_3090777 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3090790 == ((_sr_3090777 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3091082i32;
                    } else {
                        _gotoNext = 3091102i32;
                    };
                } else if (__value__ == (3091082i32)) {
                    _i_3090729++;
                    _gotoNext = 3090737i32;
                } else if (__value__ == (3091102i32)) {
                    return false;
                    _i_3090729++;
                    _gotoNext = 3090737i32;
                } else if (__value__ == (3091162i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3091187i32;
                } else if (__value__ == (3091187i32)) {
                    _s = (_s.__slice__(_i_3090729) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3090729) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3091222i32;
                } else if (__value__ == (3091222i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3091253i32;
                    } else {
                        _gotoNext = 3092228i32;
                    };
                } else if (__value__ == (3091253i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3091334i32;
                    } else {
                        _gotoNext = 3091374i32;
                    };
                } else if (__value__ == (3091334i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3091296 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3091438i32;
                } else if (__value__ == (3091374i32)) {
                    _gotoNext = 3091374i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3091379 = __tmp__._0;
                        _size_3091382 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3091379;
                        final __tmp__1 = (_s.__slice__(_size_3091382) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3091296 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3091438i32;
                } else if (__value__ == (3091438i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3091462i32;
                    } else {
                        _gotoNext = 3091502i32;
                    };
                } else if (__value__ == (3091462i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3091300 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3091638i32;
                } else if (__value__ == (3091502i32)) {
                    _gotoNext = 3091502i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3091507 = __tmp__._0;
                        _size_3091510 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3091507;
                        final __tmp__1 = (_t.__slice__(_size_3091510) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3091300 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3091638i32;
                } else if (__value__ == (3091638i32)) {
                    if (_tr_3091300 == (_sr_3091296)) {
                        _gotoNext = 3091650i32;
                    } else {
                        _gotoNext = 3091715i32;
                    };
                } else if (__value__ == (3091650i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3091222i32;
                } else if (__value__ == (3091715i32)) {
                    if ((_tr_3091300 < _sr_3091296 : Bool)) {
                        _gotoNext = 3091726i32;
                    } else {
                        _gotoNext = 3091780i32;
                    };
                } else if (__value__ == (3091726i32)) {
                    {
                        final __tmp__0 = _sr_3091296;
                        final __tmp__1 = _tr_3091300;
                        _tr_3091300 = __tmp__0;
                        _sr_3091296 = __tmp__1;
                    };
                    _gotoNext = 3091780i32;
                } else if (__value__ == (3091780i32)) {
                    if ((_tr_3091300 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3091802i32;
                    } else {
                        _gotoNext = 3092055i32;
                    };
                } else if (__value__ == (3091802i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3091296 : Bool) && (_sr_3091296 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3091300 == ((_sr_3091296 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3091902i32;
                    } else {
                        _gotoNext = 3091925i32;
                    };
                } else if (__value__ == (3091902i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3091222i32;
                } else if (__value__ == (3091925i32)) {
                    return false;
                    _gotoNext = 3092055i32;
                } else if (__value__ == (3092055i32)) {
                    _r_3092055 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3091296);
                    var __blank__ = 0i32;
                    _gotoNext = 3092085i32;
                } else if (__value__ == (3092085i32)) {
                    if (((_r_3092055 != _sr_3091296) && (_r_3092055 < _tr_3091300 : Bool) : Bool)) {
                        _gotoNext = 3092107i32;
                    } else {
                        _gotoNext = 3092144i32;
                    };
                } else if (__value__ == (3092107i32)) {
                    _r_3092055 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3092055);
                    _gotoNext = 3092085i32;
                } else if (__value__ == (3092144i32)) {
                    if (_r_3092055 == (_tr_3091300)) {
                        _gotoNext = 3092155i32;
                    } else {
                        _gotoNext = 3092175i32;
                    };
                } else if (__value__ == (3092155i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3091222i32;
                } else if (__value__ == (3092175i32)) {
                    return false;
                    _gotoNext = 3091222i32;
                } else if (__value__ == (3092228i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
