package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2891295:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2890750:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2890540:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2890536:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2890030:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2890017:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2889969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2890747:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2890622:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2890619:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2889969 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2889977i32;
                } else if (__value__ == (2889977i32)) {
                    if (((_i_2889969 < (_s.length) : Bool) && (_i_2889969 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2890013i32;
                    } else {
                        _gotoNext = 2890402i32;
                    };
                } else if (__value__ == (2890013i32)) {
                    _sr_2890017 = _s[(_i_2889969 : stdgo.GoInt)];
                    _tr_2890030 = _t[(_i_2889969 : stdgo.GoInt)];
                    if (((_sr_2890017 | _tr_2890030 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2890069i32;
                    } else {
                        _gotoNext = 2890113i32;
                    };
                } else if (__value__ == (2890069i32)) {
                    _gotoNext = 2890427i32;
                } else if (__value__ == (2890113i32)) {
                    if (_tr_2890030 == (_sr_2890017)) {
                        _gotoNext = 2890125i32;
                    } else {
                        _gotoNext = 2890190i32;
                    };
                } else if (__value__ == (2890125i32)) {
                    _i_2889969++;
                    _gotoNext = 2889977i32;
                } else if (__value__ == (2890190i32)) {
                    if ((_tr_2890030 < _sr_2890017 : Bool)) {
                        _gotoNext = 2890201i32;
                    } else {
                        _gotoNext = 2890276i32;
                    };
                } else if (__value__ == (2890201i32)) {
                    {
                        final __tmp__0 = _sr_2890017;
                        final __tmp__1 = _tr_2890030;
                        _tr_2890030 = __tmp__0;
                        _sr_2890017 = __tmp__1;
                    };
                    _gotoNext = 2890276i32;
                } else if (__value__ == (2890276i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2890017 : Bool) && (_sr_2890017 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2890030 == ((_sr_2890017 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2890322i32;
                    } else {
                        _gotoNext = 2890342i32;
                    };
                } else if (__value__ == (2890322i32)) {
                    _i_2889969++;
                    _gotoNext = 2889977i32;
                } else if (__value__ == (2890342i32)) {
                    return false;
                    _i_2889969++;
                    _gotoNext = 2889977i32;
                } else if (__value__ == (2890402i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2890427i32;
                } else if (__value__ == (2890427i32)) {
                    _s = (_s.__slice__(_i_2889969) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2889969) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2890462i32;
                } else if (__value__ == (2890462i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2890493i32;
                    } else {
                        _gotoNext = 2891468i32;
                    };
                } else if (__value__ == (2890493i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2890574i32;
                    } else {
                        _gotoNext = 2890614i32;
                    };
                } else if (__value__ == (2890574i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2890536 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2890678i32;
                } else if (__value__ == (2890614i32)) {
                    _gotoNext = 2890614i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2890619 = __tmp__._0;
                        _size_2890622 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2890619;
                        final __tmp__1 = (_s.__slice__(_size_2890622) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2890536 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2890678i32;
                } else if (__value__ == (2890678i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2890702i32;
                    } else {
                        _gotoNext = 2890742i32;
                    };
                } else if (__value__ == (2890702i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2890540 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2890878i32;
                } else if (__value__ == (2890742i32)) {
                    _gotoNext = 2890742i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2890747 = __tmp__._0;
                        _size_2890750 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2890747;
                        final __tmp__1 = (_t.__slice__(_size_2890750) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2890540 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2890878i32;
                } else if (__value__ == (2890878i32)) {
                    if (_tr_2890540 == (_sr_2890536)) {
                        _gotoNext = 2890890i32;
                    } else {
                        _gotoNext = 2890955i32;
                    };
                } else if (__value__ == (2890890i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890462i32;
                } else if (__value__ == (2890955i32)) {
                    if ((_tr_2890540 < _sr_2890536 : Bool)) {
                        _gotoNext = 2890966i32;
                    } else {
                        _gotoNext = 2891020i32;
                    };
                } else if (__value__ == (2890966i32)) {
                    {
                        final __tmp__0 = _sr_2890536;
                        final __tmp__1 = _tr_2890540;
                        _tr_2890540 = __tmp__0;
                        _sr_2890536 = __tmp__1;
                    };
                    _gotoNext = 2891020i32;
                } else if (__value__ == (2891020i32)) {
                    if ((_tr_2890540 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2891042i32;
                    } else {
                        _gotoNext = 2891295i32;
                    };
                } else if (__value__ == (2891042i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2890536 : Bool) && (_sr_2890536 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2890540 == ((_sr_2890536 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2891142i32;
                    } else {
                        _gotoNext = 2891165i32;
                    };
                } else if (__value__ == (2891142i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890462i32;
                } else if (__value__ == (2891165i32)) {
                    return false;
                    _gotoNext = 2891295i32;
                } else if (__value__ == (2891295i32)) {
                    _r_2891295 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2890536);
                    var __blank__ = 0i32;
                    _gotoNext = 2891325i32;
                } else if (__value__ == (2891325i32)) {
                    if (((_r_2891295 != _sr_2890536) && (_r_2891295 < _tr_2890540 : Bool) : Bool)) {
                        _gotoNext = 2891347i32;
                    } else {
                        _gotoNext = 2891384i32;
                    };
                } else if (__value__ == (2891347i32)) {
                    _r_2891295 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2891295);
                    _gotoNext = 2891325i32;
                } else if (__value__ == (2891384i32)) {
                    if (_r_2891295 == (_tr_2890540)) {
                        _gotoNext = 2891395i32;
                    } else {
                        _gotoNext = 2891415i32;
                    };
                } else if (__value__ == (2891395i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890462i32;
                } else if (__value__ == (2891415i32)) {
                    return false;
                    _gotoNext = 2890462i32;
                } else if (__value__ == (2891468i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
