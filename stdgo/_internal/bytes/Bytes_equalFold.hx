package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2862898:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2862225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2862143:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2861633:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2861620:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2861572:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2862353:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2862350:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2862222:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2862139:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2861572 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2861580i32;
                } else if (__value__ == (2861580i32)) {
                    if (((_i_2861572 < (_s.length) : Bool) && (_i_2861572 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2861616i32;
                    } else {
                        _gotoNext = 2862005i32;
                    };
                } else if (__value__ == (2861616i32)) {
                    _sr_2861620 = _s[(_i_2861572 : stdgo.GoInt)];
                    _tr_2861633 = _t[(_i_2861572 : stdgo.GoInt)];
                    if (((_sr_2861620 | _tr_2861633 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2861672i32;
                    } else {
                        _gotoNext = 2861716i32;
                    };
                } else if (__value__ == (2861672i32)) {
                    _gotoNext = 2862030i32;
                } else if (__value__ == (2861716i32)) {
                    if (_tr_2861633 == (_sr_2861620)) {
                        _gotoNext = 2861728i32;
                    } else {
                        _gotoNext = 2861793i32;
                    };
                } else if (__value__ == (2861728i32)) {
                    _i_2861572++;
                    _gotoNext = 2861580i32;
                } else if (__value__ == (2861793i32)) {
                    if ((_tr_2861633 < _sr_2861620 : Bool)) {
                        _gotoNext = 2861804i32;
                    } else {
                        _gotoNext = 2861879i32;
                    };
                } else if (__value__ == (2861804i32)) {
                    {
                        final __tmp__0 = _sr_2861620;
                        final __tmp__1 = _tr_2861633;
                        _tr_2861633 = __tmp__0;
                        _sr_2861620 = __tmp__1;
                    };
                    _gotoNext = 2861879i32;
                } else if (__value__ == (2861879i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2861620 : Bool) && (_sr_2861620 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2861633 == ((_sr_2861620 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2861925i32;
                    } else {
                        _gotoNext = 2861945i32;
                    };
                } else if (__value__ == (2861925i32)) {
                    _i_2861572++;
                    _gotoNext = 2861580i32;
                } else if (__value__ == (2861945i32)) {
                    return false;
                    _i_2861572++;
                    _gotoNext = 2861580i32;
                } else if (__value__ == (2862005i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2862030i32;
                } else if (__value__ == (2862030i32)) {
                    _s = (_s.__slice__(_i_2861572) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2861572) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2862065i32;
                } else if (__value__ == (2862065i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2862096i32;
                    } else {
                        _gotoNext = 2863071i32;
                    };
                } else if (__value__ == (2862096i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2862177i32;
                    } else {
                        _gotoNext = 2862217i32;
                    };
                } else if (__value__ == (2862177i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2862139 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2862281i32;
                } else if (__value__ == (2862217i32)) {
                    _gotoNext = 2862217i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2862222 = __tmp__._0;
                        _size_2862225 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2862222;
                        final __tmp__1 = (_s.__slice__(_size_2862225) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2862139 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2862281i32;
                } else if (__value__ == (2862281i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2862305i32;
                    } else {
                        _gotoNext = 2862345i32;
                    };
                } else if (__value__ == (2862305i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2862143 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2862481i32;
                } else if (__value__ == (2862345i32)) {
                    _gotoNext = 2862345i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2862350 = __tmp__._0;
                        _size_2862353 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2862350;
                        final __tmp__1 = (_t.__slice__(_size_2862353) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2862143 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2862481i32;
                } else if (__value__ == (2862481i32)) {
                    if (_tr_2862143 == (_sr_2862139)) {
                        _gotoNext = 2862493i32;
                    } else {
                        _gotoNext = 2862558i32;
                    };
                } else if (__value__ == (2862493i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2862065i32;
                } else if (__value__ == (2862558i32)) {
                    if ((_tr_2862143 < _sr_2862139 : Bool)) {
                        _gotoNext = 2862569i32;
                    } else {
                        _gotoNext = 2862623i32;
                    };
                } else if (__value__ == (2862569i32)) {
                    {
                        final __tmp__0 = _sr_2862139;
                        final __tmp__1 = _tr_2862143;
                        _tr_2862143 = __tmp__0;
                        _sr_2862139 = __tmp__1;
                    };
                    _gotoNext = 2862623i32;
                } else if (__value__ == (2862623i32)) {
                    if ((_tr_2862143 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2862645i32;
                    } else {
                        _gotoNext = 2862898i32;
                    };
                } else if (__value__ == (2862645i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2862139 : Bool) && (_sr_2862139 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2862143 == ((_sr_2862139 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2862745i32;
                    } else {
                        _gotoNext = 2862768i32;
                    };
                } else if (__value__ == (2862745i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2862065i32;
                } else if (__value__ == (2862768i32)) {
                    return false;
                    _gotoNext = 2862898i32;
                } else if (__value__ == (2862898i32)) {
                    _r_2862898 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2862139);
                    var __blank__ = 0i32;
                    _gotoNext = 2862928i32;
                } else if (__value__ == (2862928i32)) {
                    if (((_r_2862898 != _sr_2862139) && (_r_2862898 < _tr_2862143 : Bool) : Bool)) {
                        _gotoNext = 2862950i32;
                    } else {
                        _gotoNext = 2862987i32;
                    };
                } else if (__value__ == (2862950i32)) {
                    _r_2862898 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2862898);
                    _gotoNext = 2862928i32;
                } else if (__value__ == (2862987i32)) {
                    if (_r_2862898 == (_tr_2862143)) {
                        _gotoNext = 2862998i32;
                    } else {
                        _gotoNext = 2863018i32;
                    };
                } else if (__value__ == (2862998i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2862065i32;
                } else if (__value__ == (2863018i32)) {
                    return false;
                    _gotoNext = 2862065i32;
                } else if (__value__ == (2863071i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
