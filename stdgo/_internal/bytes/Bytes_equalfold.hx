package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3067690:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3067180:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3068445:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3067772:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3067769:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3067167:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3067119:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3067900:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3067897:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3067686:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3067119 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3067127i32;
                } else if (__value__ == (3067127i32)) {
                    if (((_i_3067119 < (_s.length) : Bool) && (_i_3067119 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3067163i32;
                    } else {
                        _gotoNext = 3067552i32;
                    };
                } else if (__value__ == (3067163i32)) {
                    _sr_3067167 = _s[(_i_3067119 : stdgo.GoInt)];
                    _tr_3067180 = _t[(_i_3067119 : stdgo.GoInt)];
                    if (((_sr_3067167 | _tr_3067180 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3067219i32;
                    } else {
                        _gotoNext = 3067263i32;
                    };
                } else if (__value__ == (3067219i32)) {
                    _gotoNext = 3067577i32;
                } else if (__value__ == (3067263i32)) {
                    if (_tr_3067180 == (_sr_3067167)) {
                        _gotoNext = 3067275i32;
                    } else {
                        _gotoNext = 3067340i32;
                    };
                } else if (__value__ == (3067275i32)) {
                    _i_3067119++;
                    _gotoNext = 3067127i32;
                } else if (__value__ == (3067340i32)) {
                    if ((_tr_3067180 < _sr_3067167 : Bool)) {
                        _gotoNext = 3067351i32;
                    } else {
                        _gotoNext = 3067426i32;
                    };
                } else if (__value__ == (3067351i32)) {
                    {
                        final __tmp__0 = _sr_3067167;
                        final __tmp__1 = _tr_3067180;
                        _tr_3067180 = __tmp__0;
                        _sr_3067167 = __tmp__1;
                    };
                    _gotoNext = 3067426i32;
                } else if (__value__ == (3067426i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3067167 : Bool) && (_sr_3067167 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3067180 == ((_sr_3067167 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3067472i32;
                    } else {
                        _gotoNext = 3067492i32;
                    };
                } else if (__value__ == (3067472i32)) {
                    _i_3067119++;
                    _gotoNext = 3067127i32;
                } else if (__value__ == (3067492i32)) {
                    return false;
                    _i_3067119++;
                    _gotoNext = 3067127i32;
                } else if (__value__ == (3067552i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3067577i32;
                } else if (__value__ == (3067577i32)) {
                    _s = (_s.__slice__(_i_3067119) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3067119) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3067612i32;
                } else if (__value__ == (3067612i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3067643i32;
                    } else {
                        _gotoNext = 3068618i32;
                    };
                } else if (__value__ == (3067643i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3067724i32;
                    } else {
                        _gotoNext = 3067764i32;
                    };
                } else if (__value__ == (3067724i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3067686 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3067828i32;
                } else if (__value__ == (3067764i32)) {
                    _gotoNext = 3067764i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3067769 = @:tmpset0 __tmp__._0;
                        _size_3067772 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3067769;
                        final __tmp__1 = (_s.__slice__(_size_3067772) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3067686 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3067828i32;
                } else if (__value__ == (3067828i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3067852i32;
                    } else {
                        _gotoNext = 3067892i32;
                    };
                } else if (__value__ == (3067852i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3067690 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3068028i32;
                } else if (__value__ == (3067892i32)) {
                    _gotoNext = 3067892i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3067897 = @:tmpset0 __tmp__._0;
                        _size_3067900 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3067897;
                        final __tmp__1 = (_t.__slice__(_size_3067900) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3067690 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3068028i32;
                } else if (__value__ == (3068028i32)) {
                    if (_tr_3067690 == (_sr_3067686)) {
                        _gotoNext = 3068040i32;
                    } else {
                        _gotoNext = 3068105i32;
                    };
                } else if (__value__ == (3068040i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3067612i32;
                } else if (__value__ == (3068105i32)) {
                    if ((_tr_3067690 < _sr_3067686 : Bool)) {
                        _gotoNext = 3068116i32;
                    } else {
                        _gotoNext = 3068170i32;
                    };
                } else if (__value__ == (3068116i32)) {
                    {
                        final __tmp__0 = _sr_3067686;
                        final __tmp__1 = _tr_3067690;
                        _tr_3067690 = __tmp__0;
                        _sr_3067686 = __tmp__1;
                    };
                    _gotoNext = 3068170i32;
                } else if (__value__ == (3068170i32)) {
                    if ((_tr_3067690 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3068192i32;
                    } else {
                        _gotoNext = 3068445i32;
                    };
                } else if (__value__ == (3068192i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3067686 : Bool) && (_sr_3067686 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3067690 == ((_sr_3067686 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3068292i32;
                    } else {
                        _gotoNext = 3068315i32;
                    };
                } else if (__value__ == (3068292i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3067612i32;
                } else if (__value__ == (3068315i32)) {
                    return false;
                    _gotoNext = 3068445i32;
                } else if (__value__ == (3068445i32)) {
                    _r_3068445 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3067686);
                    var __blank__ = 0i32;
                    _gotoNext = 3068475i32;
                } else if (__value__ == (3068475i32)) {
                    if (((_r_3068445 != _sr_3067686) && (_r_3068445 < _tr_3067690 : Bool) : Bool)) {
                        _gotoNext = 3068497i32;
                    } else {
                        _gotoNext = 3068534i32;
                    };
                } else if (__value__ == (3068497i32)) {
                    _r_3068445 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3068445);
                    _gotoNext = 3068475i32;
                } else if (__value__ == (3068534i32)) {
                    if (_r_3068445 == (_tr_3067690)) {
                        _gotoNext = 3068545i32;
                    } else {
                        _gotoNext = 3068565i32;
                    };
                } else if (__value__ == (3068545i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3067612i32;
                } else if (__value__ == (3068565i32)) {
                    return false;
                    _gotoNext = 3067612i32;
                } else if (__value__ == (3068618i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
