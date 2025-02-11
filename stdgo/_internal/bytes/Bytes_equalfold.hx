package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _i_2936615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2937941:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2937393:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2937265:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2937186:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2936676:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2936663:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2937182:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2937396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2937268:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2936615 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2936623i32;
                } else if (__value__ == (2936623i32)) {
                    if (((_i_2936615 < (_s.length) : Bool) && (_i_2936615 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2936659i32;
                    } else {
                        _gotoNext = 2937048i32;
                    };
                } else if (__value__ == (2936659i32)) {
                    _sr_2936663 = _s[(_i_2936615 : stdgo.GoInt)];
                    _tr_2936676 = _t[(_i_2936615 : stdgo.GoInt)];
                    if (((_sr_2936663 | _tr_2936676 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2936715i32;
                    } else {
                        _gotoNext = 2936759i32;
                    };
                } else if (__value__ == (2936715i32)) {
                    _gotoNext = 2937073i32;
                } else if (__value__ == (2936759i32)) {
                    if (_tr_2936676 == (_sr_2936663)) {
                        _gotoNext = 2936771i32;
                    } else {
                        _gotoNext = 2936836i32;
                    };
                } else if (__value__ == (2936771i32)) {
                    _i_2936615++;
                    _gotoNext = 2936623i32;
                } else if (__value__ == (2936836i32)) {
                    if ((_tr_2936676 < _sr_2936663 : Bool)) {
                        _gotoNext = 2936847i32;
                    } else {
                        _gotoNext = 2936922i32;
                    };
                } else if (__value__ == (2936847i32)) {
                    {
                        final __tmp__0 = _sr_2936663;
                        final __tmp__1 = _tr_2936676;
                        _tr_2936676 = __tmp__0;
                        _sr_2936663 = __tmp__1;
                    };
                    _gotoNext = 2936922i32;
                } else if (__value__ == (2936922i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2936663 : Bool) && (_sr_2936663 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2936676 == ((_sr_2936663 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2936968i32;
                    } else {
                        _gotoNext = 2936988i32;
                    };
                } else if (__value__ == (2936968i32)) {
                    _i_2936615++;
                    _gotoNext = 2936623i32;
                } else if (__value__ == (2936988i32)) {
                    return false;
                    _i_2936615++;
                    _gotoNext = 2936623i32;
                } else if (__value__ == (2937048i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2937073i32;
                } else if (__value__ == (2937073i32)) {
                    _s = (_s.__slice__(_i_2936615) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2936615) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2937108i32;
                } else if (__value__ == (2937108i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2937139i32;
                    } else {
                        _gotoNext = 2938114i32;
                    };
                } else if (__value__ == (2937139i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2937220i32;
                    } else {
                        _gotoNext = 2937260i32;
                    };
                } else if (__value__ == (2937220i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2937182 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2937324i32;
                } else if (__value__ == (2937260i32)) {
                    _gotoNext = 2937260i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2937265 = @:tmpset0 __tmp__._0;
                        _size_2937268 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2937265;
                        final __tmp__1 = (_s.__slice__(_size_2937268) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2937182 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2937324i32;
                } else if (__value__ == (2937324i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2937348i32;
                    } else {
                        _gotoNext = 2937388i32;
                    };
                } else if (__value__ == (2937348i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2937186 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2937524i32;
                } else if (__value__ == (2937388i32)) {
                    _gotoNext = 2937388i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2937393 = @:tmpset0 __tmp__._0;
                        _size_2937396 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2937393;
                        final __tmp__1 = (_t.__slice__(_size_2937396) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2937186 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2937524i32;
                } else if (__value__ == (2937524i32)) {
                    if (_tr_2937186 == (_sr_2937182)) {
                        _gotoNext = 2937536i32;
                    } else {
                        _gotoNext = 2937601i32;
                    };
                } else if (__value__ == (2937536i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2937108i32;
                } else if (__value__ == (2937601i32)) {
                    if ((_tr_2937186 < _sr_2937182 : Bool)) {
                        _gotoNext = 2937612i32;
                    } else {
                        _gotoNext = 2937666i32;
                    };
                } else if (__value__ == (2937612i32)) {
                    {
                        final __tmp__0 = _sr_2937182;
                        final __tmp__1 = _tr_2937186;
                        _tr_2937186 = __tmp__0;
                        _sr_2937182 = __tmp__1;
                    };
                    _gotoNext = 2937666i32;
                } else if (__value__ == (2937666i32)) {
                    if ((_tr_2937186 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2937688i32;
                    } else {
                        _gotoNext = 2937941i32;
                    };
                } else if (__value__ == (2937688i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2937182 : Bool) && (_sr_2937182 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2937186 == ((_sr_2937182 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2937788i32;
                    } else {
                        _gotoNext = 2937811i32;
                    };
                } else if (__value__ == (2937788i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2937108i32;
                } else if (__value__ == (2937811i32)) {
                    return false;
                    _gotoNext = 2937941i32;
                } else if (__value__ == (2937941i32)) {
                    _r_2937941 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2937182);
                    var __blank__ = 0i32;
                    _gotoNext = 2937971i32;
                } else if (__value__ == (2937971i32)) {
                    if (((_r_2937941 != _sr_2937182) && (_r_2937941 < _tr_2937186 : Bool) : Bool)) {
                        _gotoNext = 2937993i32;
                    } else {
                        _gotoNext = 2938030i32;
                    };
                } else if (__value__ == (2937993i32)) {
                    _r_2937941 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2937941);
                    _gotoNext = 2937971i32;
                } else if (__value__ == (2938030i32)) {
                    if (_r_2937941 == (_tr_2937186)) {
                        _gotoNext = 2938041i32;
                    } else {
                        _gotoNext = 2938061i32;
                    };
                } else if (__value__ == (2938041i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2937108i32;
                } else if (__value__ == (2938061i32)) {
                    return false;
                    _gotoNext = 2937108i32;
                } else if (__value__ == (2938114i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
