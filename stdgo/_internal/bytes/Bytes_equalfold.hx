package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3014633:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3015363:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3015238:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3015156:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3015152:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3014646:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3014585:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3015911:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3015366:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3015235:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3014585 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3014593i32;
                } else if (__value__ == (3014593i32)) {
                    if (((_i_3014585 < (_s.length) : Bool) && (_i_3014585 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3014629i32;
                    } else {
                        _gotoNext = 3015018i32;
                    };
                } else if (__value__ == (3014629i32)) {
                    _sr_3014633 = _s[(_i_3014585 : stdgo.GoInt)];
                    _tr_3014646 = _t[(_i_3014585 : stdgo.GoInt)];
                    if (((_sr_3014633 | _tr_3014646 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3014685i32;
                    } else {
                        _gotoNext = 3014729i32;
                    };
                } else if (__value__ == (3014685i32)) {
                    _gotoNext = 3015043i32;
                } else if (__value__ == (3014729i32)) {
                    if (_tr_3014646 == (_sr_3014633)) {
                        _gotoNext = 3014741i32;
                    } else {
                        _gotoNext = 3014806i32;
                    };
                } else if (__value__ == (3014741i32)) {
                    _i_3014585++;
                    _gotoNext = 3014593i32;
                } else if (__value__ == (3014806i32)) {
                    if ((_tr_3014646 < _sr_3014633 : Bool)) {
                        _gotoNext = 3014817i32;
                    } else {
                        _gotoNext = 3014892i32;
                    };
                } else if (__value__ == (3014817i32)) {
                    {
                        final __tmp__0 = _sr_3014633;
                        final __tmp__1 = _tr_3014646;
                        _tr_3014646 = __tmp__0;
                        _sr_3014633 = __tmp__1;
                    };
                    _gotoNext = 3014892i32;
                } else if (__value__ == (3014892i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3014633 : Bool) && (_sr_3014633 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3014646 == ((_sr_3014633 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3014938i32;
                    } else {
                        _gotoNext = 3014958i32;
                    };
                } else if (__value__ == (3014938i32)) {
                    _i_3014585++;
                    _gotoNext = 3014593i32;
                } else if (__value__ == (3014958i32)) {
                    return false;
                    _i_3014585++;
                    _gotoNext = 3014593i32;
                } else if (__value__ == (3015018i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3015043i32;
                } else if (__value__ == (3015043i32)) {
                    _s = (_s.__slice__(_i_3014585) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3014585) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3015078i32;
                } else if (__value__ == (3015078i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3015109i32;
                    } else {
                        _gotoNext = 3016084i32;
                    };
                } else if (__value__ == (3015109i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3015190i32;
                    } else {
                        _gotoNext = 3015230i32;
                    };
                } else if (__value__ == (3015190i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3015152 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3015294i32;
                } else if (__value__ == (3015230i32)) {
                    _gotoNext = 3015230i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3015235 = @:tmpset0 __tmp__._0;
                        _size_3015238 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3015235;
                        final __tmp__1 = (_s.__slice__(_size_3015238) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3015152 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3015294i32;
                } else if (__value__ == (3015294i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3015318i32;
                    } else {
                        _gotoNext = 3015358i32;
                    };
                } else if (__value__ == (3015318i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3015156 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3015494i32;
                } else if (__value__ == (3015358i32)) {
                    _gotoNext = 3015358i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3015363 = @:tmpset0 __tmp__._0;
                        _size_3015366 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3015363;
                        final __tmp__1 = (_t.__slice__(_size_3015366) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3015156 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3015494i32;
                } else if (__value__ == (3015494i32)) {
                    if (_tr_3015156 == (_sr_3015152)) {
                        _gotoNext = 3015506i32;
                    } else {
                        _gotoNext = 3015571i32;
                    };
                } else if (__value__ == (3015506i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3015078i32;
                } else if (__value__ == (3015571i32)) {
                    if ((_tr_3015156 < _sr_3015152 : Bool)) {
                        _gotoNext = 3015582i32;
                    } else {
                        _gotoNext = 3015636i32;
                    };
                } else if (__value__ == (3015582i32)) {
                    {
                        final __tmp__0 = _sr_3015152;
                        final __tmp__1 = _tr_3015156;
                        _tr_3015156 = __tmp__0;
                        _sr_3015152 = __tmp__1;
                    };
                    _gotoNext = 3015636i32;
                } else if (__value__ == (3015636i32)) {
                    if ((_tr_3015156 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3015658i32;
                    } else {
                        _gotoNext = 3015911i32;
                    };
                } else if (__value__ == (3015658i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3015152 : Bool) && (_sr_3015152 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3015156 == ((_sr_3015152 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3015758i32;
                    } else {
                        _gotoNext = 3015781i32;
                    };
                } else if (__value__ == (3015758i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3015078i32;
                } else if (__value__ == (3015781i32)) {
                    return false;
                    _gotoNext = 3015911i32;
                } else if (__value__ == (3015911i32)) {
                    _r_3015911 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3015152);
                    var __blank__ = 0i32;
                    _gotoNext = 3015941i32;
                } else if (__value__ == (3015941i32)) {
                    if (((_r_3015911 != _sr_3015152) && (_r_3015911 < _tr_3015156 : Bool) : Bool)) {
                        _gotoNext = 3015963i32;
                    } else {
                        _gotoNext = 3016000i32;
                    };
                } else if (__value__ == (3015963i32)) {
                    _r_3015911 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3015911);
                    _gotoNext = 3015941i32;
                } else if (__value__ == (3016000i32)) {
                    if (_r_3015911 == (_tr_3015156)) {
                        _gotoNext = 3016011i32;
                    } else {
                        _gotoNext = 3016031i32;
                    };
                } else if (__value__ == (3016011i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3015078i32;
                } else if (__value__ == (3016031i32)) {
                    return false;
                    _gotoNext = 3015078i32;
                } else if (__value__ == (3016084i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
