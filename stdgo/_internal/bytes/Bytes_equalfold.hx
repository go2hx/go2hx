package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2905413:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2906005:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2905919:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2905352:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2906678:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2906133:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2906130:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2906002:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2905923:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2905400:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2905352 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2905360i32;
                } else if (__value__ == (2905360i32)) {
                    if (((_i_2905352 < (_s.length) : Bool) && (_i_2905352 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2905396i32;
                    } else {
                        _gotoNext = 2905785i32;
                    };
                } else if (__value__ == (2905396i32)) {
                    _sr_2905400 = _s[(_i_2905352 : stdgo.GoInt)];
                    _tr_2905413 = _t[(_i_2905352 : stdgo.GoInt)];
                    if (((_sr_2905400 | _tr_2905413 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905452i32;
                    } else {
                        _gotoNext = 2905496i32;
                    };
                } else if (__value__ == (2905452i32)) {
                    _gotoNext = 2905810i32;
                } else if (__value__ == (2905496i32)) {
                    if (_tr_2905413 == (_sr_2905400)) {
                        _gotoNext = 2905508i32;
                    } else {
                        _gotoNext = 2905573i32;
                    };
                } else if (__value__ == (2905508i32)) {
                    _i_2905352++;
                    _gotoNext = 2905360i32;
                } else if (__value__ == (2905573i32)) {
                    if ((_tr_2905413 < _sr_2905400 : Bool)) {
                        _gotoNext = 2905584i32;
                    } else {
                        _gotoNext = 2905659i32;
                    };
                } else if (__value__ == (2905584i32)) {
                    {
                        final __tmp__0 = _sr_2905400;
                        final __tmp__1 = _tr_2905413;
                        _tr_2905413 = __tmp__0;
                        _sr_2905400 = __tmp__1;
                    };
                    _gotoNext = 2905659i32;
                } else if (__value__ == (2905659i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2905400 : Bool) && (_sr_2905400 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2905413 == ((_sr_2905400 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2905705i32;
                    } else {
                        _gotoNext = 2905725i32;
                    };
                } else if (__value__ == (2905705i32)) {
                    _i_2905352++;
                    _gotoNext = 2905360i32;
                } else if (__value__ == (2905725i32)) {
                    return false;
                    _i_2905352++;
                    _gotoNext = 2905360i32;
                } else if (__value__ == (2905785i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2905810i32;
                } else if (__value__ == (2905810i32)) {
                    _s = (_s.__slice__(_i_2905352) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2905352) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2905845i32;
                } else if (__value__ == (2905845i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2905876i32;
                    } else {
                        _gotoNext = 2906851i32;
                    };
                } else if (__value__ == (2905876i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905957i32;
                    } else {
                        _gotoNext = 2905997i32;
                    };
                } else if (__value__ == (2905957i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2905919 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2906061i32;
                } else if (__value__ == (2905997i32)) {
                    _gotoNext = 2905997i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2906002 = @:tmpset0 __tmp__._0;
                        _size_2906005 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2906002;
                        final __tmp__1 = (_s.__slice__(_size_2906005) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2905919 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2906061i32;
                } else if (__value__ == (2906061i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2906085i32;
                    } else {
                        _gotoNext = 2906125i32;
                    };
                } else if (__value__ == (2906085i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2905923 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2906261i32;
                } else if (__value__ == (2906125i32)) {
                    _gotoNext = 2906125i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2906130 = @:tmpset0 __tmp__._0;
                        _size_2906133 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2906130;
                        final __tmp__1 = (_t.__slice__(_size_2906133) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2905923 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2906261i32;
                } else if (__value__ == (2906261i32)) {
                    if (_tr_2905923 == (_sr_2905919)) {
                        _gotoNext = 2906273i32;
                    } else {
                        _gotoNext = 2906338i32;
                    };
                } else if (__value__ == (2906273i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905845i32;
                } else if (__value__ == (2906338i32)) {
                    if ((_tr_2905923 < _sr_2905919 : Bool)) {
                        _gotoNext = 2906349i32;
                    } else {
                        _gotoNext = 2906403i32;
                    };
                } else if (__value__ == (2906349i32)) {
                    {
                        final __tmp__0 = _sr_2905919;
                        final __tmp__1 = _tr_2905923;
                        _tr_2905923 = __tmp__0;
                        _sr_2905919 = __tmp__1;
                    };
                    _gotoNext = 2906403i32;
                } else if (__value__ == (2906403i32)) {
                    if ((_tr_2905923 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2906425i32;
                    } else {
                        _gotoNext = 2906678i32;
                    };
                } else if (__value__ == (2906425i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2905919 : Bool) && (_sr_2905919 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2905923 == ((_sr_2905919 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2906525i32;
                    } else {
                        _gotoNext = 2906548i32;
                    };
                } else if (__value__ == (2906525i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905845i32;
                } else if (__value__ == (2906548i32)) {
                    return false;
                    _gotoNext = 2906678i32;
                } else if (__value__ == (2906678i32)) {
                    _r_2906678 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2905919);
                    var __blank__ = 0i32;
                    _gotoNext = 2906708i32;
                } else if (__value__ == (2906708i32)) {
                    if (((_r_2906678 != _sr_2905919) && (_r_2906678 < _tr_2905923 : Bool) : Bool)) {
                        _gotoNext = 2906730i32;
                    } else {
                        _gotoNext = 2906767i32;
                    };
                } else if (__value__ == (2906730i32)) {
                    _r_2906678 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2906678);
                    _gotoNext = 2906708i32;
                } else if (__value__ == (2906767i32)) {
                    if (_r_2906678 == (_tr_2905923)) {
                        _gotoNext = 2906778i32;
                    } else {
                        _gotoNext = 2906798i32;
                    };
                } else if (__value__ == (2906778i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2905845i32;
                } else if (__value__ == (2906798i32)) {
                    return false;
                    _gotoNext = 2905845i32;
                } else if (__value__ == (2906851i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
