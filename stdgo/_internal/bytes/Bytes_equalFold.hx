package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2911323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2911241:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2911237:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2910731:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2910718:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2911451:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2911448:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2911996:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2911320:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2910670:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2910670 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2910678i32;
                } else if (__value__ == (2910678i32)) {
                    if (((_i_2910670 < (_s.length) : Bool) && (_i_2910670 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2910714i32;
                    } else {
                        _gotoNext = 2911103i32;
                    };
                } else if (__value__ == (2910714i32)) {
                    _sr_2910718 = _s[(_i_2910670 : stdgo.GoInt)];
                    _tr_2910731 = _t[(_i_2910670 : stdgo.GoInt)];
                    if (((_sr_2910718 | _tr_2910731 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2910770i32;
                    } else {
                        _gotoNext = 2910814i32;
                    };
                } else if (__value__ == (2910770i32)) {
                    _gotoNext = 2911128i32;
                } else if (__value__ == (2910814i32)) {
                    if (_tr_2910731 == (_sr_2910718)) {
                        _gotoNext = 2910826i32;
                    } else {
                        _gotoNext = 2910891i32;
                    };
                } else if (__value__ == (2910826i32)) {
                    _i_2910670++;
                    _gotoNext = 2910678i32;
                } else if (__value__ == (2910891i32)) {
                    if ((_tr_2910731 < _sr_2910718 : Bool)) {
                        _gotoNext = 2910902i32;
                    } else {
                        _gotoNext = 2910977i32;
                    };
                } else if (__value__ == (2910902i32)) {
                    {
                        final __tmp__0 = _sr_2910718;
                        final __tmp__1 = _tr_2910731;
                        _tr_2910731 = __tmp__0;
                        _sr_2910718 = __tmp__1;
                    };
                    _gotoNext = 2910977i32;
                } else if (__value__ == (2910977i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2910718 : Bool) && (_sr_2910718 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2910731 == ((_sr_2910718 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2911023i32;
                    } else {
                        _gotoNext = 2911043i32;
                    };
                } else if (__value__ == (2911023i32)) {
                    _i_2910670++;
                    _gotoNext = 2910678i32;
                } else if (__value__ == (2911043i32)) {
                    return false;
                    _i_2910670++;
                    _gotoNext = 2910678i32;
                } else if (__value__ == (2911103i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2911128i32;
                } else if (__value__ == (2911128i32)) {
                    _s = (_s.__slice__(_i_2910670) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2910670) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2911163i32;
                } else if (__value__ == (2911163i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2911194i32;
                    } else {
                        _gotoNext = 2912169i32;
                    };
                } else if (__value__ == (2911194i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2911275i32;
                    } else {
                        _gotoNext = 2911315i32;
                    };
                } else if (__value__ == (2911275i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2911237 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2911379i32;
                } else if (__value__ == (2911315i32)) {
                    _gotoNext = 2911315i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2911320 = @:tmpset0 __tmp__._0;
                        _size_2911323 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2911320;
                        final __tmp__1 = (_s.__slice__(_size_2911323) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2911237 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2911379i32;
                } else if (__value__ == (2911379i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2911403i32;
                    } else {
                        _gotoNext = 2911443i32;
                    };
                } else if (__value__ == (2911403i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2911241 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2911579i32;
                } else if (__value__ == (2911443i32)) {
                    _gotoNext = 2911443i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2911448 = @:tmpset0 __tmp__._0;
                        _size_2911451 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2911448;
                        final __tmp__1 = (_t.__slice__(_size_2911451) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2911241 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2911579i32;
                } else if (__value__ == (2911579i32)) {
                    if (_tr_2911241 == (_sr_2911237)) {
                        _gotoNext = 2911591i32;
                    } else {
                        _gotoNext = 2911656i32;
                    };
                } else if (__value__ == (2911591i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2911163i32;
                } else if (__value__ == (2911656i32)) {
                    if ((_tr_2911241 < _sr_2911237 : Bool)) {
                        _gotoNext = 2911667i32;
                    } else {
                        _gotoNext = 2911721i32;
                    };
                } else if (__value__ == (2911667i32)) {
                    {
                        final __tmp__0 = _sr_2911237;
                        final __tmp__1 = _tr_2911241;
                        _tr_2911241 = __tmp__0;
                        _sr_2911237 = __tmp__1;
                    };
                    _gotoNext = 2911721i32;
                } else if (__value__ == (2911721i32)) {
                    if ((_tr_2911241 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2911743i32;
                    } else {
                        _gotoNext = 2911996i32;
                    };
                } else if (__value__ == (2911743i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2911237 : Bool) && (_sr_2911237 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2911241 == ((_sr_2911237 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2911843i32;
                    } else {
                        _gotoNext = 2911866i32;
                    };
                } else if (__value__ == (2911843i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2911163i32;
                } else if (__value__ == (2911866i32)) {
                    return false;
                    _gotoNext = 2911996i32;
                } else if (__value__ == (2911996i32)) {
                    _r_2911996 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2911237);
                    var __blank__ = 0i32;
                    _gotoNext = 2912026i32;
                } else if (__value__ == (2912026i32)) {
                    if (((_r_2911996 != _sr_2911237) && (_r_2911996 < _tr_2911241 : Bool) : Bool)) {
                        _gotoNext = 2912048i32;
                    } else {
                        _gotoNext = 2912085i32;
                    };
                } else if (__value__ == (2912048i32)) {
                    _r_2911996 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2911996);
                    _gotoNext = 2912026i32;
                } else if (__value__ == (2912085i32)) {
                    if (_r_2911996 == (_tr_2911241)) {
                        _gotoNext = 2912096i32;
                    } else {
                        _gotoNext = 2912116i32;
                    };
                } else if (__value__ == (2912096i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2911163i32;
                } else if (__value__ == (2912116i32)) {
                    return false;
                    _gotoNext = 2911163i32;
                } else if (__value__ == (2912169i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
