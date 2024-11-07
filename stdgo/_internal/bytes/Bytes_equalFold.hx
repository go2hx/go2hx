package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2872360:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2872356:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2871837:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2872439:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2871850:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2871789:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2873115:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2872570:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2872567:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2872442:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2871789 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2871797i32;
                } else if (__value__ == (2871797i32)) {
                    if (((_i_2871789 < (_s.length) : Bool) && (_i_2871789 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2871833i32;
                    } else {
                        _gotoNext = 2872222i32;
                    };
                } else if (__value__ == (2871833i32)) {
                    _sr_2871837 = _s[(_i_2871789 : stdgo.GoInt)];
                    _tr_2871850 = _t[(_i_2871789 : stdgo.GoInt)];
                    if (((_sr_2871837 | _tr_2871850 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2871889i32;
                    } else {
                        _gotoNext = 2871933i32;
                    };
                } else if (__value__ == (2871889i32)) {
                    _gotoNext = 2872247i32;
                } else if (__value__ == (2871933i32)) {
                    if (_tr_2871850 == (_sr_2871837)) {
                        _gotoNext = 2871945i32;
                    } else {
                        _gotoNext = 2872010i32;
                    };
                } else if (__value__ == (2871945i32)) {
                    _i_2871789++;
                    _gotoNext = 2871797i32;
                } else if (__value__ == (2872010i32)) {
                    if ((_tr_2871850 < _sr_2871837 : Bool)) {
                        _gotoNext = 2872021i32;
                    } else {
                        _gotoNext = 2872096i32;
                    };
                } else if (__value__ == (2872021i32)) {
                    {
                        final __tmp__0 = _sr_2871837;
                        final __tmp__1 = _tr_2871850;
                        _tr_2871850 = __tmp__0;
                        _sr_2871837 = __tmp__1;
                    };
                    _gotoNext = 2872096i32;
                } else if (__value__ == (2872096i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2871837 : Bool) && (_sr_2871837 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2871850 == ((_sr_2871837 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2872142i32;
                    } else {
                        _gotoNext = 2872162i32;
                    };
                } else if (__value__ == (2872142i32)) {
                    _i_2871789++;
                    _gotoNext = 2871797i32;
                } else if (__value__ == (2872162i32)) {
                    return false;
                    _i_2871789++;
                    _gotoNext = 2871797i32;
                } else if (__value__ == (2872222i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2872247i32;
                } else if (__value__ == (2872247i32)) {
                    _s = (_s.__slice__(_i_2871789) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2871789) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2872282i32;
                } else if (__value__ == (2872282i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2872313i32;
                    } else {
                        _gotoNext = 2873288i32;
                    };
                } else if (__value__ == (2872313i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2872394i32;
                    } else {
                        _gotoNext = 2872434i32;
                    };
                } else if (__value__ == (2872394i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2872356 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2872498i32;
                } else if (__value__ == (2872434i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2872439 = __tmp__._0;
                        _size_2872442 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2872439;
                        final __tmp__1 = (_s.__slice__(_size_2872442) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2872356 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2872498i32;
                } else if (__value__ == (2872498i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2872522i32;
                    } else {
                        _gotoNext = 2872562i32;
                    };
                } else if (__value__ == (2872522i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2872360 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2872698i32;
                } else if (__value__ == (2872562i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2872567 = __tmp__._0;
                        _size_2872570 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2872567;
                        final __tmp__1 = (_t.__slice__(_size_2872570) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2872360 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2872698i32;
                } else if (__value__ == (2872698i32)) {
                    if (_tr_2872360 == (_sr_2872356)) {
                        _gotoNext = 2872710i32;
                    } else {
                        _gotoNext = 2872775i32;
                    };
                } else if (__value__ == (2872710i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2872282i32;
                } else if (__value__ == (2872775i32)) {
                    if ((_tr_2872360 < _sr_2872356 : Bool)) {
                        _gotoNext = 2872786i32;
                    } else {
                        _gotoNext = 2872840i32;
                    };
                } else if (__value__ == (2872786i32)) {
                    {
                        final __tmp__0 = _sr_2872356;
                        final __tmp__1 = _tr_2872360;
                        _tr_2872360 = __tmp__0;
                        _sr_2872356 = __tmp__1;
                    };
                    _gotoNext = 2872840i32;
                } else if (__value__ == (2872840i32)) {
                    if ((_tr_2872360 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2872862i32;
                    } else {
                        _gotoNext = 2873115i32;
                    };
                } else if (__value__ == (2872862i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2872356 : Bool) && (_sr_2872356 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2872360 == ((_sr_2872356 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2872962i32;
                    } else {
                        _gotoNext = 2872985i32;
                    };
                } else if (__value__ == (2872962i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2872282i32;
                } else if (__value__ == (2872985i32)) {
                    return false;
                    _gotoNext = 2873115i32;
                } else if (__value__ == (2873115i32)) {
                    _r_2873115 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2872356);
                    var __blank__ = 0i32;
                    _gotoNext = 2873145i32;
                } else if (__value__ == (2873145i32)) {
                    if (((_r_2873115 != _sr_2872356) && (_r_2873115 < _tr_2872360 : Bool) : Bool)) {
                        _gotoNext = 2873167i32;
                    } else {
                        _gotoNext = 2873204i32;
                    };
                } else if (__value__ == (2873167i32)) {
                    _r_2873115 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2873115);
                    _gotoNext = 2873145i32;
                } else if (__value__ == (2873204i32)) {
                    if (_r_2873115 == (_tr_2872360)) {
                        _gotoNext = 2873215i32;
                    } else {
                        _gotoNext = 2873235i32;
                    };
                } else if (__value__ == (2873215i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2872282i32;
                } else if (__value__ == (2873235i32)) {
                    return false;
                    _gotoNext = 2872282i32;
                } else if (__value__ == (2873288i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
