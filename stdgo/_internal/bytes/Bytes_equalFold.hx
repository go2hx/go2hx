package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3010698:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3010150:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3009433:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3009420:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3010022:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3009943:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3009939:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3009372:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3010153:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3010025:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3009372 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3009380i32;
                } else if (__value__ == (3009380i32)) {
                    if (((_i_3009372 < (_s.length) : Bool) && (_i_3009372 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3009416i32;
                    } else {
                        _gotoNext = 3009805i32;
                    };
                } else if (__value__ == (3009416i32)) {
                    _sr_3009420 = _s[(_i_3009372 : stdgo.GoInt)];
                    _tr_3009433 = _t[(_i_3009372 : stdgo.GoInt)];
                    if (((_sr_3009420 | _tr_3009433 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3009472i32;
                    } else {
                        _gotoNext = 3009516i32;
                    };
                } else if (__value__ == (3009472i32)) {
                    _gotoNext = 3009830i32;
                } else if (__value__ == (3009516i32)) {
                    if (_tr_3009433 == (_sr_3009420)) {
                        _gotoNext = 3009528i32;
                    } else {
                        _gotoNext = 3009593i32;
                    };
                } else if (__value__ == (3009528i32)) {
                    _i_3009372++;
                    _gotoNext = 3009380i32;
                } else if (__value__ == (3009593i32)) {
                    if ((_tr_3009433 < _sr_3009420 : Bool)) {
                        _gotoNext = 3009604i32;
                    } else {
                        _gotoNext = 3009679i32;
                    };
                } else if (__value__ == (3009604i32)) {
                    {
                        final __tmp__0 = _sr_3009420;
                        final __tmp__1 = _tr_3009433;
                        _tr_3009433 = __tmp__0;
                        _sr_3009420 = __tmp__1;
                    };
                    _gotoNext = 3009679i32;
                } else if (__value__ == (3009679i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3009420 : Bool) && (_sr_3009420 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3009433 == ((_sr_3009420 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3009725i32;
                    } else {
                        _gotoNext = 3009745i32;
                    };
                } else if (__value__ == (3009725i32)) {
                    _i_3009372++;
                    _gotoNext = 3009380i32;
                } else if (__value__ == (3009745i32)) {
                    return false;
                    _i_3009372++;
                    _gotoNext = 3009380i32;
                } else if (__value__ == (3009805i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3009830i32;
                } else if (__value__ == (3009830i32)) {
                    _s = (_s.__slice__(_i_3009372) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3009372) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3009865i32;
                } else if (__value__ == (3009865i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3009896i32;
                    } else {
                        _gotoNext = 3010871i32;
                    };
                } else if (__value__ == (3009896i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3009977i32;
                    } else {
                        _gotoNext = 3010017i32;
                    };
                } else if (__value__ == (3009977i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3009939 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3010081i32;
                } else if (__value__ == (3010017i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3010022 = __tmp__._0;
                        _size_3010025 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3010022;
                        final __tmp__1 = (_s.__slice__(_size_3010025) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3009939 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3010081i32;
                } else if (__value__ == (3010081i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3010105i32;
                    } else {
                        _gotoNext = 3010145i32;
                    };
                } else if (__value__ == (3010105i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3009943 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3010281i32;
                } else if (__value__ == (3010145i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3010150 = __tmp__._0;
                        _size_3010153 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3010150;
                        final __tmp__1 = (_t.__slice__(_size_3010153) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3009943 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3010281i32;
                } else if (__value__ == (3010281i32)) {
                    if (_tr_3009943 == (_sr_3009939)) {
                        _gotoNext = 3010293i32;
                    } else {
                        _gotoNext = 3010358i32;
                    };
                } else if (__value__ == (3010293i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3009865i32;
                } else if (__value__ == (3010358i32)) {
                    if ((_tr_3009943 < _sr_3009939 : Bool)) {
                        _gotoNext = 3010369i32;
                    } else {
                        _gotoNext = 3010423i32;
                    };
                } else if (__value__ == (3010369i32)) {
                    {
                        final __tmp__0 = _sr_3009939;
                        final __tmp__1 = _tr_3009943;
                        _tr_3009943 = __tmp__0;
                        _sr_3009939 = __tmp__1;
                    };
                    _gotoNext = 3010423i32;
                } else if (__value__ == (3010423i32)) {
                    if ((_tr_3009943 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3010445i32;
                    } else {
                        _gotoNext = 3010698i32;
                    };
                } else if (__value__ == (3010445i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3009939 : Bool) && (_sr_3009939 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3009943 == ((_sr_3009939 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3010545i32;
                    } else {
                        _gotoNext = 3010568i32;
                    };
                } else if (__value__ == (3010545i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3009865i32;
                } else if (__value__ == (3010568i32)) {
                    return false;
                    _gotoNext = 3010698i32;
                } else if (__value__ == (3010698i32)) {
                    _r_3010698 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3009939);
                    var __blank__ = 0i32;
                    _gotoNext = 3010728i32;
                } else if (__value__ == (3010728i32)) {
                    if (((_r_3010698 != _sr_3009939) && (_r_3010698 < _tr_3009943 : Bool) : Bool)) {
                        _gotoNext = 3010750i32;
                    } else {
                        _gotoNext = 3010787i32;
                    };
                } else if (__value__ == (3010750i32)) {
                    _r_3010698 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3010698);
                    _gotoNext = 3010728i32;
                } else if (__value__ == (3010787i32)) {
                    if (_r_3010698 == (_tr_3009943)) {
                        _gotoNext = 3010798i32;
                    } else {
                        _gotoNext = 3010818i32;
                    };
                } else if (__value__ == (3010798i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3009865i32;
                } else if (__value__ == (3010818i32)) {
                    return false;
                    _gotoNext = 3009865i32;
                } else if (__value__ == (3010871i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
