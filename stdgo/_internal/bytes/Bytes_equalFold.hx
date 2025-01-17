package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2905221:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2906499:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2905954:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2905951:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2905740:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2905173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2905826:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2905823:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2905744:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2905234:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2905173 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2905181i32;
                } else if (__value__ == (2905181i32)) {
                    if (((_i_2905173 < (_s.length) : Bool) && (_i_2905173 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2905217i32;
                    } else {
                        _gotoNext = 2905606i32;
                    };
                } else if (__value__ == (2905217i32)) {
                    _sr_2905221 = _s[(_i_2905173 : stdgo.GoInt)];
                    _tr_2905234 = _t[(_i_2905173 : stdgo.GoInt)];
                    if (((_sr_2905221 | _tr_2905234 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905273i32;
                    } else {
                        _gotoNext = 2905317i32;
                    };
                } else if (__value__ == (2905273i32)) {
                    _gotoNext = 2905631i32;
                } else if (__value__ == (2905317i32)) {
                    if (_tr_2905234 == (_sr_2905221)) {
                        _gotoNext = 2905329i32;
                    } else {
                        _gotoNext = 2905394i32;
                    };
                } else if (__value__ == (2905329i32)) {
                    _i_2905173++;
                    _gotoNext = 2905181i32;
                } else if (__value__ == (2905394i32)) {
                    if ((_tr_2905234 < _sr_2905221 : Bool)) {
                        _gotoNext = 2905405i32;
                    } else {
                        _gotoNext = 2905480i32;
                    };
                } else if (__value__ == (2905405i32)) {
                    {
                        final __tmp__0 = _sr_2905221;
                        final __tmp__1 = _tr_2905234;
                        _tr_2905234 = __tmp__0;
                        _sr_2905221 = __tmp__1;
                    };
                    _gotoNext = 2905480i32;
                } else if (__value__ == (2905480i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2905221 : Bool) && (_sr_2905221 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2905234 == ((_sr_2905221 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2905526i32;
                    } else {
                        _gotoNext = 2905546i32;
                    };
                } else if (__value__ == (2905526i32)) {
                    _i_2905173++;
                    _gotoNext = 2905181i32;
                } else if (__value__ == (2905546i32)) {
                    return false;
                    _i_2905173++;
                    _gotoNext = 2905181i32;
                } else if (__value__ == (2905606i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2905631i32;
                } else if (__value__ == (2905631i32)) {
                    _s = (_s.__slice__(_i_2905173) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2905173) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2905666i32;
                } else if (__value__ == (2905666i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2905697i32;
                    } else {
                        _gotoNext = 2906672i32;
                    };
                } else if (__value__ == (2905697i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905778i32;
                    } else {
                        _gotoNext = 2905818i32;
                    };
                } else if (__value__ == (2905778i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2905740 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2905882i32;
                } else if (__value__ == (2905818i32)) {
                    _gotoNext = 2905818i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2905823 = @:tmpset0 __tmp__._0;
                        _size_2905826 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2905823;
                        final __tmp__1 = (_s.__slice__(_size_2905826) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2905740 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2905882i32;
                } else if (__value__ == (2905882i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905906i32;
                    } else {
                        _gotoNext = 2905946i32;
                    };
                } else if (__value__ == (2905906i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2905744 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2906082i32;
                } else if (__value__ == (2905946i32)) {
                    _gotoNext = 2905946i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2905951 = @:tmpset0 __tmp__._0;
                        _size_2905954 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2905951;
                        final __tmp__1 = (_t.__slice__(_size_2905954) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2905744 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2906082i32;
                } else if (__value__ == (2906082i32)) {
                    if (_tr_2905744 == (_sr_2905740)) {
                        _gotoNext = 2906094i32;
                    } else {
                        _gotoNext = 2906159i32;
                    };
                } else if (__value__ == (2906094i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905666i32;
                } else if (__value__ == (2906159i32)) {
                    if ((_tr_2905744 < _sr_2905740 : Bool)) {
                        _gotoNext = 2906170i32;
                    } else {
                        _gotoNext = 2906224i32;
                    };
                } else if (__value__ == (2906170i32)) {
                    {
                        final __tmp__0 = _sr_2905740;
                        final __tmp__1 = _tr_2905744;
                        _tr_2905744 = __tmp__0;
                        _sr_2905740 = __tmp__1;
                    };
                    _gotoNext = 2906224i32;
                } else if (__value__ == (2906224i32)) {
                    if ((_tr_2905744 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2906246i32;
                    } else {
                        _gotoNext = 2906499i32;
                    };
                } else if (__value__ == (2906246i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2905740 : Bool) && (_sr_2905740 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2905744 == ((_sr_2905740 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2906346i32;
                    } else {
                        _gotoNext = 2906369i32;
                    };
                } else if (__value__ == (2906346i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905666i32;
                } else if (__value__ == (2906369i32)) {
                    return false;
                    _gotoNext = 2906499i32;
                } else if (__value__ == (2906499i32)) {
                    _r_2906499 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2905740);
                    var __blank__ = 0i32;
                    _gotoNext = 2906529i32;
                } else if (__value__ == (2906529i32)) {
                    if (((_r_2906499 != _sr_2905740) && (_r_2906499 < _tr_2905744 : Bool) : Bool)) {
                        _gotoNext = 2906551i32;
                    } else {
                        _gotoNext = 2906588i32;
                    };
                } else if (__value__ == (2906551i32)) {
                    _r_2906499 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2906499);
                    _gotoNext = 2906529i32;
                } else if (__value__ == (2906588i32)) {
                    if (_r_2906499 == (_tr_2905744)) {
                        _gotoNext = 2906599i32;
                    } else {
                        _gotoNext = 2906619i32;
                    };
                } else if (__value__ == (2906599i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905666i32;
                } else if (__value__ == (2906619i32)) {
                    return false;
                    _gotoNext = 2905666i32;
                } else if (__value__ == (2906672i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
