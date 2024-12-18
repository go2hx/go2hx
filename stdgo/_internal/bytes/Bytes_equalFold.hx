package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2904499:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2904374:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2904371:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2904288:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2903782:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2903769:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2903721:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2904502:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2905047:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2904292:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2903721 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2903729i32;
                } else if (__value__ == (2903729i32)) {
                    if (((_i_2903721 < (_s.length) : Bool) && (_i_2903721 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2903765i32;
                    } else {
                        _gotoNext = 2904154i32;
                    };
                } else if (__value__ == (2903765i32)) {
                    _sr_2903769 = _s[(_i_2903721 : stdgo.GoInt)];
                    _tr_2903782 = _t[(_i_2903721 : stdgo.GoInt)];
                    if (((_sr_2903769 | _tr_2903782 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2903821i32;
                    } else {
                        _gotoNext = 2903865i32;
                    };
                } else if (__value__ == (2903821i32)) {
                    _gotoNext = 2904179i32;
                } else if (__value__ == (2903865i32)) {
                    if (_tr_2903782 == (_sr_2903769)) {
                        _gotoNext = 2903877i32;
                    } else {
                        _gotoNext = 2903942i32;
                    };
                } else if (__value__ == (2903877i32)) {
                    _i_2903721++;
                    _gotoNext = 2903729i32;
                } else if (__value__ == (2903942i32)) {
                    if ((_tr_2903782 < _sr_2903769 : Bool)) {
                        _gotoNext = 2903953i32;
                    } else {
                        _gotoNext = 2904028i32;
                    };
                } else if (__value__ == (2903953i32)) {
                    {
                        final __tmp__0 = _sr_2903769;
                        final __tmp__1 = _tr_2903782;
                        _tr_2903782 = __tmp__0;
                        _sr_2903769 = __tmp__1;
                    };
                    _gotoNext = 2904028i32;
                } else if (__value__ == (2904028i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2903769 : Bool) && (_sr_2903769 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2903782 == ((_sr_2903769 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2904074i32;
                    } else {
                        _gotoNext = 2904094i32;
                    };
                } else if (__value__ == (2904074i32)) {
                    _i_2903721++;
                    _gotoNext = 2903729i32;
                } else if (__value__ == (2904094i32)) {
                    return false;
                    _i_2903721++;
                    _gotoNext = 2903729i32;
                } else if (__value__ == (2904154i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2904179i32;
                } else if (__value__ == (2904179i32)) {
                    _s = (_s.__slice__(_i_2903721) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2903721) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2904214i32;
                } else if (__value__ == (2904214i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2904245i32;
                    } else {
                        _gotoNext = 2905220i32;
                    };
                } else if (__value__ == (2904245i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2904326i32;
                    } else {
                        _gotoNext = 2904366i32;
                    };
                } else if (__value__ == (2904326i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2904288 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2904430i32;
                } else if (__value__ == (2904366i32)) {
                    _gotoNext = 2904366i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2904371 = __tmp__._0;
                        _size_2904374 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2904371;
                        final __tmp__1 = (_s.__slice__(_size_2904374) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2904288 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2904430i32;
                } else if (__value__ == (2904430i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2904454i32;
                    } else {
                        _gotoNext = 2904494i32;
                    };
                } else if (__value__ == (2904454i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2904292 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2904630i32;
                } else if (__value__ == (2904494i32)) {
                    _gotoNext = 2904494i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2904499 = __tmp__._0;
                        _size_2904502 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2904499;
                        final __tmp__1 = (_t.__slice__(_size_2904502) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2904292 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2904630i32;
                } else if (__value__ == (2904630i32)) {
                    if (_tr_2904292 == (_sr_2904288)) {
                        _gotoNext = 2904642i32;
                    } else {
                        _gotoNext = 2904707i32;
                    };
                } else if (__value__ == (2904642i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2904214i32;
                } else if (__value__ == (2904707i32)) {
                    if ((_tr_2904292 < _sr_2904288 : Bool)) {
                        _gotoNext = 2904718i32;
                    } else {
                        _gotoNext = 2904772i32;
                    };
                } else if (__value__ == (2904718i32)) {
                    {
                        final __tmp__0 = _sr_2904288;
                        final __tmp__1 = _tr_2904292;
                        _tr_2904292 = __tmp__0;
                        _sr_2904288 = __tmp__1;
                    };
                    _gotoNext = 2904772i32;
                } else if (__value__ == (2904772i32)) {
                    if ((_tr_2904292 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2904794i32;
                    } else {
                        _gotoNext = 2905047i32;
                    };
                } else if (__value__ == (2904794i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2904288 : Bool) && (_sr_2904288 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2904292 == ((_sr_2904288 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2904894i32;
                    } else {
                        _gotoNext = 2904917i32;
                    };
                } else if (__value__ == (2904894i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2904214i32;
                } else if (__value__ == (2904917i32)) {
                    return false;
                    _gotoNext = 2905047i32;
                } else if (__value__ == (2905047i32)) {
                    _r_2905047 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2904288);
                    var __blank__ = 0i32;
                    _gotoNext = 2905077i32;
                } else if (__value__ == (2905077i32)) {
                    if (((_r_2905047 != _sr_2904288) && (_r_2905047 < _tr_2904292 : Bool) : Bool)) {
                        _gotoNext = 2905099i32;
                    } else {
                        _gotoNext = 2905136i32;
                    };
                } else if (__value__ == (2905099i32)) {
                    _r_2905047 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2905047);
                    _gotoNext = 2905077i32;
                } else if (__value__ == (2905136i32)) {
                    if (_r_2905047 == (_tr_2904292)) {
                        _gotoNext = 2905147i32;
                    } else {
                        _gotoNext = 2905167i32;
                    };
                } else if (__value__ == (2905147i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2904214i32;
                } else if (__value__ == (2905167i32)) {
                    return false;
                    _gotoNext = 2904214i32;
                } else if (__value__ == (2905220i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
