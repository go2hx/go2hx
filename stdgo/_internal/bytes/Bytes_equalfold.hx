package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2755626:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2755116:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2755103:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2755055:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2756381:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2755833:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2755708:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2755705:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2755622:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2755836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2755055 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2755063i32;
                } else if (__value__ == (2755063i32)) {
                    if (((_i_2755055 < (_s.length) : Bool) && (_i_2755055 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2755099i32;
                    } else {
                        _gotoNext = 2755488i32;
                    };
                } else if (__value__ == (2755099i32)) {
                    _sr_2755103 = _s[(_i_2755055 : stdgo.GoInt)];
                    _tr_2755116 = _t[(_i_2755055 : stdgo.GoInt)];
                    if (((_sr_2755103 | _tr_2755116 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2755155i32;
                    } else {
                        _gotoNext = 2755199i32;
                    };
                } else if (__value__ == (2755155i32)) {
                    _gotoNext = 2755513i32;
                } else if (__value__ == (2755199i32)) {
                    if (_tr_2755116 == (_sr_2755103)) {
                        _gotoNext = 2755211i32;
                    } else {
                        _gotoNext = 2755276i32;
                    };
                } else if (__value__ == (2755211i32)) {
                    _i_2755055++;
                    _gotoNext = 2755063i32;
                } else if (__value__ == (2755276i32)) {
                    if ((_tr_2755116 < _sr_2755103 : Bool)) {
                        _gotoNext = 2755287i32;
                    } else {
                        _gotoNext = 2755362i32;
                    };
                } else if (__value__ == (2755287i32)) {
                    {
                        final __tmp__0 = _sr_2755103;
                        final __tmp__1 = _tr_2755116;
                        _tr_2755116 = __tmp__0;
                        _sr_2755103 = __tmp__1;
                    };
                    _gotoNext = 2755362i32;
                } else if (__value__ == (2755362i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2755103 : Bool) && (_sr_2755103 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2755116 == ((_sr_2755103 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2755408i32;
                    } else {
                        _gotoNext = 2755428i32;
                    };
                } else if (__value__ == (2755408i32)) {
                    _i_2755055++;
                    _gotoNext = 2755063i32;
                } else if (__value__ == (2755428i32)) {
                    return false;
                    _i_2755055++;
                    _gotoNext = 2755063i32;
                } else if (__value__ == (2755488i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2755513i32;
                } else if (__value__ == (2755513i32)) {
                    _s = (_s.__slice__(_i_2755055) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2755055) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2755548i32;
                } else if (__value__ == (2755548i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2755579i32;
                    } else {
                        _gotoNext = 2756554i32;
                    };
                } else if (__value__ == (2755579i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2755660i32;
                    } else {
                        _gotoNext = 2755700i32;
                    };
                } else if (__value__ == (2755660i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2755622 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2755764i32;
                } else if (__value__ == (2755700i32)) {
                    _gotoNext = 2755700i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2755705 = @:tmpset0 __tmp__._0;
                        _size_2755708 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2755705;
                        final __tmp__1 = (_s.__slice__(_size_2755708) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2755622 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2755764i32;
                } else if (__value__ == (2755764i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2755788i32;
                    } else {
                        _gotoNext = 2755828i32;
                    };
                } else if (__value__ == (2755788i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2755626 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2755964i32;
                } else if (__value__ == (2755828i32)) {
                    _gotoNext = 2755828i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2755833 = @:tmpset0 __tmp__._0;
                        _size_2755836 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2755833;
                        final __tmp__1 = (_t.__slice__(_size_2755836) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2755626 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2755964i32;
                } else if (__value__ == (2755964i32)) {
                    if (_tr_2755626 == (_sr_2755622)) {
                        _gotoNext = 2755976i32;
                    } else {
                        _gotoNext = 2756041i32;
                    };
                } else if (__value__ == (2755976i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2755548i32;
                } else if (__value__ == (2756041i32)) {
                    if ((_tr_2755626 < _sr_2755622 : Bool)) {
                        _gotoNext = 2756052i32;
                    } else {
                        _gotoNext = 2756106i32;
                    };
                } else if (__value__ == (2756052i32)) {
                    {
                        final __tmp__0 = _sr_2755622;
                        final __tmp__1 = _tr_2755626;
                        _tr_2755626 = __tmp__0;
                        _sr_2755622 = __tmp__1;
                    };
                    _gotoNext = 2756106i32;
                } else if (__value__ == (2756106i32)) {
                    if ((_tr_2755626 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2756128i32;
                    } else {
                        _gotoNext = 2756381i32;
                    };
                } else if (__value__ == (2756128i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2755622 : Bool) && (_sr_2755622 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2755626 == ((_sr_2755622 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2756228i32;
                    } else {
                        _gotoNext = 2756251i32;
                    };
                } else if (__value__ == (2756228i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2755548i32;
                } else if (__value__ == (2756251i32)) {
                    return false;
                    _gotoNext = 2756381i32;
                } else if (__value__ == (2756381i32)) {
                    _r_2756381 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2755622);
                    var __blank__ = 0i32;
                    _gotoNext = 2756411i32;
                } else if (__value__ == (2756411i32)) {
                    if (((_r_2756381 != _sr_2755622) && (_r_2756381 < _tr_2755626 : Bool) : Bool)) {
                        _gotoNext = 2756433i32;
                    } else {
                        _gotoNext = 2756470i32;
                    };
                } else if (__value__ == (2756433i32)) {
                    _r_2756381 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2756381);
                    _gotoNext = 2756411i32;
                } else if (__value__ == (2756470i32)) {
                    if (_r_2756381 == (_tr_2755626)) {
                        _gotoNext = 2756481i32;
                    } else {
                        _gotoNext = 2756501i32;
                    };
                } else if (__value__ == (2756481i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2755548i32;
                } else if (__value__ == (2756501i32)) {
                    return false;
                    _gotoNext = 2755548i32;
                } else if (__value__ == (2756554i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
