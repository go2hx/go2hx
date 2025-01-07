package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2945357:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2944809:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2944684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2944031:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2944812:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2944681:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2944602:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2944598:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2944092:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2944079:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2944031 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2944039i32;
                } else if (__value__ == (2944039i32)) {
                    if (((_i_2944031 < (_s.length) : Bool) && (_i_2944031 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2944075i32;
                    } else {
                        _gotoNext = 2944464i32;
                    };
                } else if (__value__ == (2944075i32)) {
                    _sr_2944079 = _s[(_i_2944031 : stdgo.GoInt)];
                    _tr_2944092 = _t[(_i_2944031 : stdgo.GoInt)];
                    if (((_sr_2944079 | _tr_2944092 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2944131i32;
                    } else {
                        _gotoNext = 2944175i32;
                    };
                } else if (__value__ == (2944131i32)) {
                    _gotoNext = 2944489i32;
                } else if (__value__ == (2944175i32)) {
                    if (_tr_2944092 == (_sr_2944079)) {
                        _gotoNext = 2944187i32;
                    } else {
                        _gotoNext = 2944252i32;
                    };
                } else if (__value__ == (2944187i32)) {
                    _i_2944031++;
                    _gotoNext = 2944039i32;
                } else if (__value__ == (2944252i32)) {
                    if ((_tr_2944092 < _sr_2944079 : Bool)) {
                        _gotoNext = 2944263i32;
                    } else {
                        _gotoNext = 2944338i32;
                    };
                } else if (__value__ == (2944263i32)) {
                    {
                        final __tmp__0 = _sr_2944079;
                        final __tmp__1 = _tr_2944092;
                        _tr_2944092 = __tmp__0;
                        _sr_2944079 = __tmp__1;
                    };
                    _gotoNext = 2944338i32;
                } else if (__value__ == (2944338i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2944079 : Bool) && (_sr_2944079 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2944092 == ((_sr_2944079 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2944384i32;
                    } else {
                        _gotoNext = 2944404i32;
                    };
                } else if (__value__ == (2944384i32)) {
                    _i_2944031++;
                    _gotoNext = 2944039i32;
                } else if (__value__ == (2944404i32)) {
                    return false;
                    _i_2944031++;
                    _gotoNext = 2944039i32;
                } else if (__value__ == (2944464i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2944489i32;
                } else if (__value__ == (2944489i32)) {
                    _s = (_s.__slice__(_i_2944031) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2944031) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2944524i32;
                } else if (__value__ == (2944524i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2944555i32;
                    } else {
                        _gotoNext = 2945530i32;
                    };
                } else if (__value__ == (2944555i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2944636i32;
                    } else {
                        _gotoNext = 2944676i32;
                    };
                } else if (__value__ == (2944636i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2944598 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2944740i32;
                } else if (__value__ == (2944676i32)) {
                    _gotoNext = 2944676i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2944681 = __tmp__._0;
                        _size_2944684 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2944681;
                        final __tmp__1 = (_s.__slice__(_size_2944684) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2944598 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2944740i32;
                } else if (__value__ == (2944740i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2944764i32;
                    } else {
                        _gotoNext = 2944804i32;
                    };
                } else if (__value__ == (2944764i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2944602 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2944940i32;
                } else if (__value__ == (2944804i32)) {
                    _gotoNext = 2944804i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2944809 = __tmp__._0;
                        _size_2944812 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2944809;
                        final __tmp__1 = (_t.__slice__(_size_2944812) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2944602 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2944940i32;
                } else if (__value__ == (2944940i32)) {
                    if (_tr_2944602 == (_sr_2944598)) {
                        _gotoNext = 2944952i32;
                    } else {
                        _gotoNext = 2945017i32;
                    };
                } else if (__value__ == (2944952i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2944524i32;
                } else if (__value__ == (2945017i32)) {
                    if ((_tr_2944602 < _sr_2944598 : Bool)) {
                        _gotoNext = 2945028i32;
                    } else {
                        _gotoNext = 2945082i32;
                    };
                } else if (__value__ == (2945028i32)) {
                    {
                        final __tmp__0 = _sr_2944598;
                        final __tmp__1 = _tr_2944602;
                        _tr_2944602 = __tmp__0;
                        _sr_2944598 = __tmp__1;
                    };
                    _gotoNext = 2945082i32;
                } else if (__value__ == (2945082i32)) {
                    if ((_tr_2944602 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2945104i32;
                    } else {
                        _gotoNext = 2945357i32;
                    };
                } else if (__value__ == (2945104i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2944598 : Bool) && (_sr_2944598 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2944602 == ((_sr_2944598 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2945204i32;
                    } else {
                        _gotoNext = 2945227i32;
                    };
                } else if (__value__ == (2945204i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2944524i32;
                } else if (__value__ == (2945227i32)) {
                    return false;
                    _gotoNext = 2945357i32;
                } else if (__value__ == (2945357i32)) {
                    _r_2945357 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2944598);
                    var __blank__ = 0i32;
                    _gotoNext = 2945387i32;
                } else if (__value__ == (2945387i32)) {
                    if (((_r_2945357 != _sr_2944598) && (_r_2945357 < _tr_2944602 : Bool) : Bool)) {
                        _gotoNext = 2945409i32;
                    } else {
                        _gotoNext = 2945446i32;
                    };
                } else if (__value__ == (2945409i32)) {
                    _r_2945357 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2945357);
                    _gotoNext = 2945387i32;
                } else if (__value__ == (2945446i32)) {
                    if (_r_2945357 == (_tr_2944602)) {
                        _gotoNext = 2945457i32;
                    } else {
                        _gotoNext = 2945477i32;
                    };
                } else if (__value__ == (2945457i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2944524i32;
                } else if (__value__ == (2945477i32)) {
                    return false;
                    _gotoNext = 2944524i32;
                } else if (__value__ == (2945530i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
