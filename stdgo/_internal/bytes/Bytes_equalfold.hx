package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2843233:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2842557:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2842478:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2842688:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2842685:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2842560:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2842474:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2841968:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2841955:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2841907:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2841907 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2841915i32;
                } else if (__value__ == (2841915i32)) {
                    if (((_i_2841907 < (_s.length) : Bool) && (_i_2841907 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2841951i32;
                    } else {
                        _gotoNext = 2842340i32;
                    };
                } else if (__value__ == (2841951i32)) {
                    _sr_2841955 = _s[(_i_2841907 : stdgo.GoInt)];
                    _tr_2841968 = _t[(_i_2841907 : stdgo.GoInt)];
                    if (((_sr_2841955 | _tr_2841968 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2842007i32;
                    } else {
                        _gotoNext = 2842051i32;
                    };
                } else if (__value__ == (2842007i32)) {
                    _gotoNext = 2842365i32;
                } else if (__value__ == (2842051i32)) {
                    if (_tr_2841968 == (_sr_2841955)) {
                        _gotoNext = 2842063i32;
                    } else {
                        _gotoNext = 2842128i32;
                    };
                } else if (__value__ == (2842063i32)) {
                    _i_2841907++;
                    _gotoNext = 2841915i32;
                } else if (__value__ == (2842128i32)) {
                    if ((_tr_2841968 < _sr_2841955 : Bool)) {
                        _gotoNext = 2842139i32;
                    } else {
                        _gotoNext = 2842214i32;
                    };
                } else if (__value__ == (2842139i32)) {
                    {
                        final __tmp__0 = _sr_2841955;
                        final __tmp__1 = _tr_2841968;
                        _tr_2841968 = __tmp__0;
                        _sr_2841955 = __tmp__1;
                    };
                    _gotoNext = 2842214i32;
                } else if (__value__ == (2842214i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2841955 : Bool) && (_sr_2841955 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2841968 == ((_sr_2841955 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2842260i32;
                    } else {
                        _gotoNext = 2842280i32;
                    };
                } else if (__value__ == (2842260i32)) {
                    _i_2841907++;
                    _gotoNext = 2841915i32;
                } else if (__value__ == (2842280i32)) {
                    return false;
                    _i_2841907++;
                    _gotoNext = 2841915i32;
                } else if (__value__ == (2842340i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2842365i32;
                } else if (__value__ == (2842365i32)) {
                    _s = (_s.__slice__(_i_2841907) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2841907) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2842400i32;
                } else if (__value__ == (2842400i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2842431i32;
                    } else {
                        _gotoNext = 2843406i32;
                    };
                } else if (__value__ == (2842431i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2842512i32;
                    } else {
                        _gotoNext = 2842552i32;
                    };
                } else if (__value__ == (2842512i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2842474 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2842616i32;
                } else if (__value__ == (2842552i32)) {
                    _gotoNext = 2842552i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2842557 = @:tmpset0 __tmp__._0;
                        _size_2842560 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2842557;
                        final __tmp__1 = (_s.__slice__(_size_2842560) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2842474 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2842616i32;
                } else if (__value__ == (2842616i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2842640i32;
                    } else {
                        _gotoNext = 2842680i32;
                    };
                } else if (__value__ == (2842640i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2842478 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2842816i32;
                } else if (__value__ == (2842680i32)) {
                    _gotoNext = 2842680i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2842685 = @:tmpset0 __tmp__._0;
                        _size_2842688 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2842685;
                        final __tmp__1 = (_t.__slice__(_size_2842688) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2842478 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2842816i32;
                } else if (__value__ == (2842816i32)) {
                    if (_tr_2842478 == (_sr_2842474)) {
                        _gotoNext = 2842828i32;
                    } else {
                        _gotoNext = 2842893i32;
                    };
                } else if (__value__ == (2842828i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2842400i32;
                } else if (__value__ == (2842893i32)) {
                    if ((_tr_2842478 < _sr_2842474 : Bool)) {
                        _gotoNext = 2842904i32;
                    } else {
                        _gotoNext = 2842958i32;
                    };
                } else if (__value__ == (2842904i32)) {
                    {
                        final __tmp__0 = _sr_2842474;
                        final __tmp__1 = _tr_2842478;
                        _tr_2842478 = __tmp__0;
                        _sr_2842474 = __tmp__1;
                    };
                    _gotoNext = 2842958i32;
                } else if (__value__ == (2842958i32)) {
                    if ((_tr_2842478 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2842980i32;
                    } else {
                        _gotoNext = 2843233i32;
                    };
                } else if (__value__ == (2842980i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2842474 : Bool) && (_sr_2842474 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2842478 == ((_sr_2842474 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2843080i32;
                    } else {
                        _gotoNext = 2843103i32;
                    };
                } else if (__value__ == (2843080i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2842400i32;
                } else if (__value__ == (2843103i32)) {
                    return false;
                    _gotoNext = 2843233i32;
                } else if (__value__ == (2843233i32)) {
                    _r_2843233 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2842474);
                    var __blank__ = 0i32;
                    _gotoNext = 2843263i32;
                } else if (__value__ == (2843263i32)) {
                    if (((_r_2843233 != _sr_2842474) && (_r_2843233 < _tr_2842478 : Bool) : Bool)) {
                        _gotoNext = 2843285i32;
                    } else {
                        _gotoNext = 2843322i32;
                    };
                } else if (__value__ == (2843285i32)) {
                    _r_2843233 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2843233);
                    _gotoNext = 2843263i32;
                } else if (__value__ == (2843322i32)) {
                    if (_r_2843233 == (_tr_2842478)) {
                        _gotoNext = 2843333i32;
                    } else {
                        _gotoNext = 2843353i32;
                    };
                } else if (__value__ == (2843333i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2842400i32;
                } else if (__value__ == (2843353i32)) {
                    return false;
                    _gotoNext = 2842400i32;
                } else if (__value__ == (2843406i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
