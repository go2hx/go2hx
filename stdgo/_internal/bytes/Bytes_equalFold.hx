package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3258241:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3258237:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3257731:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3257718:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3258996:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3258451:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3258448:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3258323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3258320:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3257670:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3257670 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3257678i32;
                } else if (__value__ == (3257678i32)) {
                    if (((_i_3257670 < (_s.length) : Bool) && (_i_3257670 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3257714i32;
                    } else {
                        _gotoNext = 3258103i32;
                    };
                } else if (__value__ == (3257714i32)) {
                    _sr_3257718 = _s[(_i_3257670 : stdgo.GoInt)];
                    _tr_3257731 = _t[(_i_3257670 : stdgo.GoInt)];
                    if (((_sr_3257718 | _tr_3257731 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3257770i32;
                    } else {
                        _gotoNext = 3257814i32;
                    };
                } else if (__value__ == (3257770i32)) {
                    _gotoNext = 3258128i32;
                } else if (__value__ == (3257814i32)) {
                    if (_tr_3257731 == (_sr_3257718)) {
                        _gotoNext = 3257826i32;
                    } else {
                        _gotoNext = 3257891i32;
                    };
                } else if (__value__ == (3257826i32)) {
                    _i_3257670++;
                    _gotoNext = 3257678i32;
                } else if (__value__ == (3257891i32)) {
                    if ((_tr_3257731 < _sr_3257718 : Bool)) {
                        _gotoNext = 3257902i32;
                    } else {
                        _gotoNext = 3257977i32;
                    };
                } else if (__value__ == (3257902i32)) {
                    {
                        final __tmp__0 = _sr_3257718;
                        final __tmp__1 = _tr_3257731;
                        _tr_3257731 = __tmp__0;
                        _sr_3257718 = __tmp__1;
                    };
                    _gotoNext = 3257977i32;
                } else if (__value__ == (3257977i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3257718 : Bool) && (_sr_3257718 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3257731 == ((_sr_3257718 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3258023i32;
                    } else {
                        _gotoNext = 3258043i32;
                    };
                } else if (__value__ == (3258023i32)) {
                    _i_3257670++;
                    _gotoNext = 3257678i32;
                } else if (__value__ == (3258043i32)) {
                    return false;
                    _i_3257670++;
                    _gotoNext = 3257678i32;
                } else if (__value__ == (3258103i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3258128i32;
                } else if (__value__ == (3258128i32)) {
                    _s = (_s.__slice__(_i_3257670) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3257670) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3258163i32;
                } else if (__value__ == (3258163i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3258194i32;
                    } else {
                        _gotoNext = 3259169i32;
                    };
                } else if (__value__ == (3258194i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3258275i32;
                    } else {
                        _gotoNext = 3258315i32;
                    };
                } else if (__value__ == (3258275i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3258237 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3258379i32;
                } else if (__value__ == (3258315i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3258320 = __tmp__._0;
                        _size_3258323 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3258320;
                        final __tmp__1 = (_s.__slice__(_size_3258323) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3258237 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3258379i32;
                } else if (__value__ == (3258379i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3258403i32;
                    } else {
                        _gotoNext = 3258443i32;
                    };
                } else if (__value__ == (3258403i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3258241 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3258579i32;
                } else if (__value__ == (3258443i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3258448 = __tmp__._0;
                        _size_3258451 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3258448;
                        final __tmp__1 = (_t.__slice__(_size_3258451) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3258241 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3258579i32;
                } else if (__value__ == (3258579i32)) {
                    if (_tr_3258241 == (_sr_3258237)) {
                        _gotoNext = 3258591i32;
                    } else {
                        _gotoNext = 3258656i32;
                    };
                } else if (__value__ == (3258591i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3258163i32;
                } else if (__value__ == (3258656i32)) {
                    if ((_tr_3258241 < _sr_3258237 : Bool)) {
                        _gotoNext = 3258667i32;
                    } else {
                        _gotoNext = 3258721i32;
                    };
                } else if (__value__ == (3258667i32)) {
                    {
                        final __tmp__0 = _sr_3258237;
                        final __tmp__1 = _tr_3258241;
                        _tr_3258241 = __tmp__0;
                        _sr_3258237 = __tmp__1;
                    };
                    _gotoNext = 3258721i32;
                } else if (__value__ == (3258721i32)) {
                    if ((_tr_3258241 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3258743i32;
                    } else {
                        _gotoNext = 3258996i32;
                    };
                } else if (__value__ == (3258743i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3258237 : Bool) && (_sr_3258237 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3258241 == ((_sr_3258237 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3258843i32;
                    } else {
                        _gotoNext = 3258866i32;
                    };
                } else if (__value__ == (3258843i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3258163i32;
                } else if (__value__ == (3258866i32)) {
                    return false;
                    _gotoNext = 3258996i32;
                } else if (__value__ == (3258996i32)) {
                    _r_3258996 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3258237);
                    var __blank__ = 0i32;
                    _gotoNext = 3259026i32;
                } else if (__value__ == (3259026i32)) {
                    if (((_r_3258996 != _sr_3258237) && (_r_3258996 < _tr_3258241 : Bool) : Bool)) {
                        _gotoNext = 3259048i32;
                    } else {
                        _gotoNext = 3259085i32;
                    };
                } else if (__value__ == (3259048i32)) {
                    _r_3258996 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3258996);
                    _gotoNext = 3259026i32;
                } else if (__value__ == (3259085i32)) {
                    if (_r_3258996 == (_tr_3258241)) {
                        _gotoNext = 3259096i32;
                    } else {
                        _gotoNext = 3259116i32;
                    };
                } else if (__value__ == (3259096i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3258163i32;
                } else if (__value__ == (3259116i32)) {
                    return false;
                    _gotoNext = 3258163i32;
                } else if (__value__ == (3259169i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
