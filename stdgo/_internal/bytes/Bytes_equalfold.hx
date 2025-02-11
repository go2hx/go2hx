package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2851759:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2851680:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2851109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2851890:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2851887:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2851676:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2851170:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2851157:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2852435:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2851762:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2851109 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2851117i32;
                } else if (__value__ == (2851117i32)) {
                    if (((_i_2851109 < (_s.length) : Bool) && (_i_2851109 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2851153i32;
                    } else {
                        _gotoNext = 2851542i32;
                    };
                } else if (__value__ == (2851153i32)) {
                    _sr_2851157 = _s[(_i_2851109 : stdgo.GoInt)];
                    _tr_2851170 = _t[(_i_2851109 : stdgo.GoInt)];
                    if (((_sr_2851157 | _tr_2851170 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2851209i32;
                    } else {
                        _gotoNext = 2851253i32;
                    };
                } else if (__value__ == (2851209i32)) {
                    _gotoNext = 2851567i32;
                } else if (__value__ == (2851253i32)) {
                    if (_tr_2851170 == (_sr_2851157)) {
                        _gotoNext = 2851265i32;
                    } else {
                        _gotoNext = 2851330i32;
                    };
                } else if (__value__ == (2851265i32)) {
                    _i_2851109++;
                    _gotoNext = 2851117i32;
                } else if (__value__ == (2851330i32)) {
                    if ((_tr_2851170 < _sr_2851157 : Bool)) {
                        _gotoNext = 2851341i32;
                    } else {
                        _gotoNext = 2851416i32;
                    };
                } else if (__value__ == (2851341i32)) {
                    {
                        final __tmp__0 = _sr_2851157;
                        final __tmp__1 = _tr_2851170;
                        _tr_2851170 = __tmp__0;
                        _sr_2851157 = __tmp__1;
                    };
                    _gotoNext = 2851416i32;
                } else if (__value__ == (2851416i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2851157 : Bool) && (_sr_2851157 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2851170 == ((_sr_2851157 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2851462i32;
                    } else {
                        _gotoNext = 2851482i32;
                    };
                } else if (__value__ == (2851462i32)) {
                    _i_2851109++;
                    _gotoNext = 2851117i32;
                } else if (__value__ == (2851482i32)) {
                    return false;
                    _i_2851109++;
                    _gotoNext = 2851117i32;
                } else if (__value__ == (2851542i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2851567i32;
                } else if (__value__ == (2851567i32)) {
                    _s = (_s.__slice__(_i_2851109) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2851109) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2851602i32;
                } else if (__value__ == (2851602i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2851633i32;
                    } else {
                        _gotoNext = 2852608i32;
                    };
                } else if (__value__ == (2851633i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2851714i32;
                    } else {
                        _gotoNext = 2851754i32;
                    };
                } else if (__value__ == (2851714i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2851676 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2851818i32;
                } else if (__value__ == (2851754i32)) {
                    _gotoNext = 2851754i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2851759 = @:tmpset0 __tmp__._0;
                        _size_2851762 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2851759;
                        final __tmp__1 = (_s.__slice__(_size_2851762) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2851676 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2851818i32;
                } else if (__value__ == (2851818i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2851842i32;
                    } else {
                        _gotoNext = 2851882i32;
                    };
                } else if (__value__ == (2851842i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2851680 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2852018i32;
                } else if (__value__ == (2851882i32)) {
                    _gotoNext = 2851882i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2851887 = @:tmpset0 __tmp__._0;
                        _size_2851890 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2851887;
                        final __tmp__1 = (_t.__slice__(_size_2851890) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2851680 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2852018i32;
                } else if (__value__ == (2852018i32)) {
                    if (_tr_2851680 == (_sr_2851676)) {
                        _gotoNext = 2852030i32;
                    } else {
                        _gotoNext = 2852095i32;
                    };
                } else if (__value__ == (2852030i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2851602i32;
                } else if (__value__ == (2852095i32)) {
                    if ((_tr_2851680 < _sr_2851676 : Bool)) {
                        _gotoNext = 2852106i32;
                    } else {
                        _gotoNext = 2852160i32;
                    };
                } else if (__value__ == (2852106i32)) {
                    {
                        final __tmp__0 = _sr_2851676;
                        final __tmp__1 = _tr_2851680;
                        _tr_2851680 = __tmp__0;
                        _sr_2851676 = __tmp__1;
                    };
                    _gotoNext = 2852160i32;
                } else if (__value__ == (2852160i32)) {
                    if ((_tr_2851680 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2852182i32;
                    } else {
                        _gotoNext = 2852435i32;
                    };
                } else if (__value__ == (2852182i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2851676 : Bool) && (_sr_2851676 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2851680 == ((_sr_2851676 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2852282i32;
                    } else {
                        _gotoNext = 2852305i32;
                    };
                } else if (__value__ == (2852282i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2851602i32;
                } else if (__value__ == (2852305i32)) {
                    return false;
                    _gotoNext = 2852435i32;
                } else if (__value__ == (2852435i32)) {
                    _r_2852435 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2851676);
                    var __blank__ = 0i32;
                    _gotoNext = 2852465i32;
                } else if (__value__ == (2852465i32)) {
                    if (((_r_2852435 != _sr_2851676) && (_r_2852435 < _tr_2851680 : Bool) : Bool)) {
                        _gotoNext = 2852487i32;
                    } else {
                        _gotoNext = 2852524i32;
                    };
                } else if (__value__ == (2852487i32)) {
                    _r_2852435 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2852435);
                    _gotoNext = 2852465i32;
                } else if (__value__ == (2852524i32)) {
                    if (_r_2852435 == (_tr_2851680)) {
                        _gotoNext = 2852535i32;
                    } else {
                        _gotoNext = 2852555i32;
                    };
                } else if (__value__ == (2852535i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2851602i32;
                } else if (__value__ == (2852555i32)) {
                    return false;
                    _gotoNext = 2851602i32;
                } else if (__value__ == (2852608i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
