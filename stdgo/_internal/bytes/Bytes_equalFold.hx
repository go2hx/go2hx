package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3017819:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3017271:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3017146:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3017060:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3017064:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3016554:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3016541:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3016493:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3017274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3017143:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3016493 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3016501i32;
                } else if (__value__ == (3016501i32)) {
                    if (((_i_3016493 < (_s.length) : Bool) && (_i_3016493 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3016537i32;
                    } else {
                        _gotoNext = 3016926i32;
                    };
                } else if (__value__ == (3016537i32)) {
                    _sr_3016541 = _s[(_i_3016493 : stdgo.GoInt)];
                    _tr_3016554 = _t[(_i_3016493 : stdgo.GoInt)];
                    if (((_sr_3016541 | _tr_3016554 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3016593i32;
                    } else {
                        _gotoNext = 3016637i32;
                    };
                } else if (__value__ == (3016593i32)) {
                    _gotoNext = 3016951i32;
                } else if (__value__ == (3016637i32)) {
                    if (_tr_3016554 == (_sr_3016541)) {
                        _gotoNext = 3016649i32;
                    } else {
                        _gotoNext = 3016714i32;
                    };
                } else if (__value__ == (3016649i32)) {
                    _i_3016493++;
                    _gotoNext = 3016501i32;
                } else if (__value__ == (3016714i32)) {
                    if ((_tr_3016554 < _sr_3016541 : Bool)) {
                        _gotoNext = 3016725i32;
                    } else {
                        _gotoNext = 3016800i32;
                    };
                } else if (__value__ == (3016725i32)) {
                    {
                        final __tmp__0 = _sr_3016541;
                        final __tmp__1 = _tr_3016554;
                        _tr_3016554 = __tmp__0;
                        _sr_3016541 = __tmp__1;
                    };
                    _gotoNext = 3016800i32;
                } else if (__value__ == (3016800i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3016541 : Bool) && (_sr_3016541 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3016554 == ((_sr_3016541 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3016846i32;
                    } else {
                        _gotoNext = 3016866i32;
                    };
                } else if (__value__ == (3016846i32)) {
                    _i_3016493++;
                    _gotoNext = 3016501i32;
                } else if (__value__ == (3016866i32)) {
                    return false;
                    _i_3016493++;
                    _gotoNext = 3016501i32;
                } else if (__value__ == (3016926i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3016951i32;
                } else if (__value__ == (3016951i32)) {
                    _s = (_s.__slice__(_i_3016493) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3016493) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3016986i32;
                } else if (__value__ == (3016986i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3017017i32;
                    } else {
                        _gotoNext = 3017992i32;
                    };
                } else if (__value__ == (3017017i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3017098i32;
                    } else {
                        _gotoNext = 3017138i32;
                    };
                } else if (__value__ == (3017098i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3017060 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3017202i32;
                } else if (__value__ == (3017138i32)) {
                    _gotoNext = 3017138i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3017143 = __tmp__._0;
                        _size_3017146 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3017143;
                        final __tmp__1 = (_s.__slice__(_size_3017146) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3017060 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3017202i32;
                } else if (__value__ == (3017202i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3017226i32;
                    } else {
                        _gotoNext = 3017266i32;
                    };
                } else if (__value__ == (3017226i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3017064 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3017402i32;
                } else if (__value__ == (3017266i32)) {
                    _gotoNext = 3017266i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3017271 = __tmp__._0;
                        _size_3017274 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3017271;
                        final __tmp__1 = (_t.__slice__(_size_3017274) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3017064 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3017402i32;
                } else if (__value__ == (3017402i32)) {
                    if (_tr_3017064 == (_sr_3017060)) {
                        _gotoNext = 3017414i32;
                    } else {
                        _gotoNext = 3017479i32;
                    };
                } else if (__value__ == (3017414i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3016986i32;
                } else if (__value__ == (3017479i32)) {
                    if ((_tr_3017064 < _sr_3017060 : Bool)) {
                        _gotoNext = 3017490i32;
                    } else {
                        _gotoNext = 3017544i32;
                    };
                } else if (__value__ == (3017490i32)) {
                    {
                        final __tmp__0 = _sr_3017060;
                        final __tmp__1 = _tr_3017064;
                        _tr_3017064 = __tmp__0;
                        _sr_3017060 = __tmp__1;
                    };
                    _gotoNext = 3017544i32;
                } else if (__value__ == (3017544i32)) {
                    if ((_tr_3017064 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3017566i32;
                    } else {
                        _gotoNext = 3017819i32;
                    };
                } else if (__value__ == (3017566i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3017060 : Bool) && (_sr_3017060 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3017064 == ((_sr_3017060 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3017666i32;
                    } else {
                        _gotoNext = 3017689i32;
                    };
                } else if (__value__ == (3017666i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3016986i32;
                } else if (__value__ == (3017689i32)) {
                    return false;
                    _gotoNext = 3017819i32;
                } else if (__value__ == (3017819i32)) {
                    _r_3017819 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3017060);
                    var __blank__ = 0i32;
                    _gotoNext = 3017849i32;
                } else if (__value__ == (3017849i32)) {
                    if (((_r_3017819 != _sr_3017060) && (_r_3017819 < _tr_3017064 : Bool) : Bool)) {
                        _gotoNext = 3017871i32;
                    } else {
                        _gotoNext = 3017908i32;
                    };
                } else if (__value__ == (3017871i32)) {
                    _r_3017819 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3017819);
                    _gotoNext = 3017849i32;
                } else if (__value__ == (3017908i32)) {
                    if (_r_3017819 == (_tr_3017064)) {
                        _gotoNext = 3017919i32;
                    } else {
                        _gotoNext = 3017939i32;
                    };
                } else if (__value__ == (3017919i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3016986i32;
                } else if (__value__ == (3017939i32)) {
                    return false;
                    _gotoNext = 3016986i32;
                } else if (__value__ == (3017992i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
