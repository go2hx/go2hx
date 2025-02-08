package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2934343:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2933833:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2933820:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2935098:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2934550:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2934422:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2934425:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2934339:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2933772:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2934553:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2933772 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2933780i32;
                } else if (__value__ == (2933780i32)) {
                    if (((_i_2933772 < (_s.length) : Bool) && (_i_2933772 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2933816i32;
                    } else {
                        _gotoNext = 2934205i32;
                    };
                } else if (__value__ == (2933816i32)) {
                    _sr_2933820 = _s[(_i_2933772 : stdgo.GoInt)];
                    _tr_2933833 = _t[(_i_2933772 : stdgo.GoInt)];
                    if (((_sr_2933820 | _tr_2933833 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2933872i32;
                    } else {
                        _gotoNext = 2933916i32;
                    };
                } else if (__value__ == (2933872i32)) {
                    _gotoNext = 2934230i32;
                } else if (__value__ == (2933916i32)) {
                    if (_tr_2933833 == (_sr_2933820)) {
                        _gotoNext = 2933928i32;
                    } else {
                        _gotoNext = 2933993i32;
                    };
                } else if (__value__ == (2933928i32)) {
                    _i_2933772++;
                    _gotoNext = 2933780i32;
                } else if (__value__ == (2933993i32)) {
                    if ((_tr_2933833 < _sr_2933820 : Bool)) {
                        _gotoNext = 2934004i32;
                    } else {
                        _gotoNext = 2934079i32;
                    };
                } else if (__value__ == (2934004i32)) {
                    {
                        final __tmp__0 = _sr_2933820;
                        final __tmp__1 = _tr_2933833;
                        _tr_2933833 = __tmp__0;
                        _sr_2933820 = __tmp__1;
                    };
                    _gotoNext = 2934079i32;
                } else if (__value__ == (2934079i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2933820 : Bool) && (_sr_2933820 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2933833 == ((_sr_2933820 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2934125i32;
                    } else {
                        _gotoNext = 2934145i32;
                    };
                } else if (__value__ == (2934125i32)) {
                    _i_2933772++;
                    _gotoNext = 2933780i32;
                } else if (__value__ == (2934145i32)) {
                    return false;
                    _i_2933772++;
                    _gotoNext = 2933780i32;
                } else if (__value__ == (2934205i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2934230i32;
                } else if (__value__ == (2934230i32)) {
                    _s = (_s.__slice__(_i_2933772) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2933772) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2934265i32;
                } else if (__value__ == (2934265i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2934296i32;
                    } else {
                        _gotoNext = 2935271i32;
                    };
                } else if (__value__ == (2934296i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934377i32;
                    } else {
                        _gotoNext = 2934417i32;
                    };
                } else if (__value__ == (2934377i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2934339 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2934481i32;
                } else if (__value__ == (2934417i32)) {
                    _gotoNext = 2934417i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2934422 = @:tmpset0 __tmp__._0;
                        _size_2934425 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2934422;
                        final __tmp__1 = (_s.__slice__(_size_2934425) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2934339 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2934481i32;
                } else if (__value__ == (2934481i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934505i32;
                    } else {
                        _gotoNext = 2934545i32;
                    };
                } else if (__value__ == (2934505i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2934343 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2934681i32;
                } else if (__value__ == (2934545i32)) {
                    _gotoNext = 2934545i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2934550 = @:tmpset0 __tmp__._0;
                        _size_2934553 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2934550;
                        final __tmp__1 = (_t.__slice__(_size_2934553) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2934343 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2934681i32;
                } else if (__value__ == (2934681i32)) {
                    if (_tr_2934343 == (_sr_2934339)) {
                        _gotoNext = 2934693i32;
                    } else {
                        _gotoNext = 2934758i32;
                    };
                } else if (__value__ == (2934693i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2934265i32;
                } else if (__value__ == (2934758i32)) {
                    if ((_tr_2934343 < _sr_2934339 : Bool)) {
                        _gotoNext = 2934769i32;
                    } else {
                        _gotoNext = 2934823i32;
                    };
                } else if (__value__ == (2934769i32)) {
                    {
                        final __tmp__0 = _sr_2934339;
                        final __tmp__1 = _tr_2934343;
                        _tr_2934343 = __tmp__0;
                        _sr_2934339 = __tmp__1;
                    };
                    _gotoNext = 2934823i32;
                } else if (__value__ == (2934823i32)) {
                    if ((_tr_2934343 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2934845i32;
                    } else {
                        _gotoNext = 2935098i32;
                    };
                } else if (__value__ == (2934845i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2934339 : Bool) && (_sr_2934339 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2934343 == ((_sr_2934339 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2934945i32;
                    } else {
                        _gotoNext = 2934968i32;
                    };
                } else if (__value__ == (2934945i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2934265i32;
                } else if (__value__ == (2934968i32)) {
                    return false;
                    _gotoNext = 2935098i32;
                } else if (__value__ == (2935098i32)) {
                    _r_2935098 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2934339);
                    var __blank__ = 0i32;
                    _gotoNext = 2935128i32;
                } else if (__value__ == (2935128i32)) {
                    if (((_r_2935098 != _sr_2934339) && (_r_2935098 < _tr_2934343 : Bool) : Bool)) {
                        _gotoNext = 2935150i32;
                    } else {
                        _gotoNext = 2935187i32;
                    };
                } else if (__value__ == (2935150i32)) {
                    _r_2935098 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2935098);
                    _gotoNext = 2935128i32;
                } else if (__value__ == (2935187i32)) {
                    if (_r_2935098 == (_tr_2934343)) {
                        _gotoNext = 2935198i32;
                    } else {
                        _gotoNext = 2935218i32;
                    };
                } else if (__value__ == (2935198i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2934265i32;
                } else if (__value__ == (2935218i32)) {
                    return false;
                    _gotoNext = 2934265i32;
                } else if (__value__ == (2935271i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
