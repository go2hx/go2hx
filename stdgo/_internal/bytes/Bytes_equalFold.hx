package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2883224:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2882635:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2882622:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2883352:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2883227:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2883145:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2883141:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2882574:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2883900:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2883355:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2882574 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2882582i32;
                } else if (__value__ == (2882582i32)) {
                    if (((_i_2882574 < (_s.length) : Bool) && (_i_2882574 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2882618i32;
                    } else {
                        _gotoNext = 2883007i32;
                    };
                } else if (__value__ == (2882618i32)) {
                    _sr_2882622 = _s[(_i_2882574 : stdgo.GoInt)];
                    _tr_2882635 = _t[(_i_2882574 : stdgo.GoInt)];
                    if (((_sr_2882622 | _tr_2882635 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2882674i32;
                    } else {
                        _gotoNext = 2882718i32;
                    };
                } else if (__value__ == (2882674i32)) {
                    _gotoNext = 2883032i32;
                } else if (__value__ == (2882718i32)) {
                    if (_tr_2882635 == (_sr_2882622)) {
                        _gotoNext = 2882730i32;
                    } else {
                        _gotoNext = 2882795i32;
                    };
                } else if (__value__ == (2882730i32)) {
                    _i_2882574++;
                    _gotoNext = 2882582i32;
                } else if (__value__ == (2882795i32)) {
                    if ((_tr_2882635 < _sr_2882622 : Bool)) {
                        _gotoNext = 2882806i32;
                    } else {
                        _gotoNext = 2882881i32;
                    };
                } else if (__value__ == (2882806i32)) {
                    {
                        final __tmp__0 = _sr_2882622;
                        final __tmp__1 = _tr_2882635;
                        _tr_2882635 = __tmp__0;
                        _sr_2882622 = __tmp__1;
                    };
                    _gotoNext = 2882881i32;
                } else if (__value__ == (2882881i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2882622 : Bool) && (_sr_2882622 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2882635 == ((_sr_2882622 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2882927i32;
                    } else {
                        _gotoNext = 2882947i32;
                    };
                } else if (__value__ == (2882927i32)) {
                    _i_2882574++;
                    _gotoNext = 2882582i32;
                } else if (__value__ == (2882947i32)) {
                    return false;
                    _i_2882574++;
                    _gotoNext = 2882582i32;
                } else if (__value__ == (2883007i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2883032i32;
                } else if (__value__ == (2883032i32)) {
                    _s = (_s.__slice__(_i_2882574) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2882574) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2883067i32;
                } else if (__value__ == (2883067i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2883098i32;
                    } else {
                        _gotoNext = 2884073i32;
                    };
                } else if (__value__ == (2883098i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2883179i32;
                    } else {
                        _gotoNext = 2883219i32;
                    };
                } else if (__value__ == (2883179i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2883141 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2883283i32;
                } else if (__value__ == (2883219i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2883224 = __tmp__._0;
                        _size_2883227 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2883224;
                        final __tmp__1 = (_s.__slice__(_size_2883227) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2883141 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2883283i32;
                } else if (__value__ == (2883283i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2883307i32;
                    } else {
                        _gotoNext = 2883347i32;
                    };
                } else if (__value__ == (2883307i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2883145 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2883483i32;
                } else if (__value__ == (2883347i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2883352 = __tmp__._0;
                        _size_2883355 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2883352;
                        final __tmp__1 = (_t.__slice__(_size_2883355) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2883145 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2883483i32;
                } else if (__value__ == (2883483i32)) {
                    if (_tr_2883145 == (_sr_2883141)) {
                        _gotoNext = 2883495i32;
                    } else {
                        _gotoNext = 2883560i32;
                    };
                } else if (__value__ == (2883495i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2883067i32;
                } else if (__value__ == (2883560i32)) {
                    if ((_tr_2883145 < _sr_2883141 : Bool)) {
                        _gotoNext = 2883571i32;
                    } else {
                        _gotoNext = 2883625i32;
                    };
                } else if (__value__ == (2883571i32)) {
                    {
                        final __tmp__0 = _sr_2883141;
                        final __tmp__1 = _tr_2883145;
                        _tr_2883145 = __tmp__0;
                        _sr_2883141 = __tmp__1;
                    };
                    _gotoNext = 2883625i32;
                } else if (__value__ == (2883625i32)) {
                    if ((_tr_2883145 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2883647i32;
                    } else {
                        _gotoNext = 2883900i32;
                    };
                } else if (__value__ == (2883647i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2883141 : Bool) && (_sr_2883141 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2883145 == ((_sr_2883141 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2883747i32;
                    } else {
                        _gotoNext = 2883770i32;
                    };
                } else if (__value__ == (2883747i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2883067i32;
                } else if (__value__ == (2883770i32)) {
                    return false;
                    _gotoNext = 2883900i32;
                } else if (__value__ == (2883900i32)) {
                    _r_2883900 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2883141);
                    var __blank__ = 0i32;
                    _gotoNext = 2883930i32;
                } else if (__value__ == (2883930i32)) {
                    if (((_r_2883900 != _sr_2883141) && (_r_2883900 < _tr_2883145 : Bool) : Bool)) {
                        _gotoNext = 2883952i32;
                    } else {
                        _gotoNext = 2883989i32;
                    };
                } else if (__value__ == (2883952i32)) {
                    _r_2883900 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2883900);
                    _gotoNext = 2883930i32;
                } else if (__value__ == (2883989i32)) {
                    if (_r_2883900 == (_tr_2883145)) {
                        _gotoNext = 2884000i32;
                    } else {
                        _gotoNext = 2884020i32;
                    };
                } else if (__value__ == (2884000i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2883067i32;
                } else if (__value__ == (2884020i32)) {
                    return false;
                    _gotoNext = 2883067i32;
                } else if (__value__ == (2884073i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
