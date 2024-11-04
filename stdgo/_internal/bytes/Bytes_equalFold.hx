package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _i_2863084:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2864410:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2863737:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2863734:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2863655:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2863145:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2863132:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2863651:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2863865:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2863862:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2863084 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2863092i32;
                } else if (__value__ == (2863092i32)) {
                    if (((_i_2863084 < (_s.length) : Bool) && (_i_2863084 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2863128i32;
                    } else {
                        _gotoNext = 2863517i32;
                    };
                } else if (__value__ == (2863128i32)) {
                    _sr_2863132 = _s[(_i_2863084 : stdgo.GoInt)];
                    _tr_2863145 = _t[(_i_2863084 : stdgo.GoInt)];
                    if (((_sr_2863132 | _tr_2863145 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2863184i32;
                    } else {
                        _gotoNext = 2863228i32;
                    };
                } else if (__value__ == (2863184i32)) {
                    _gotoNext = 2863542i32;
                } else if (__value__ == (2863228i32)) {
                    if (_tr_2863145 == (_sr_2863132)) {
                        _gotoNext = 2863240i32;
                    } else {
                        _gotoNext = 2863305i32;
                    };
                } else if (__value__ == (2863240i32)) {
                    _i_2863084++;
                    _gotoNext = 2863092i32;
                } else if (__value__ == (2863305i32)) {
                    if ((_tr_2863145 < _sr_2863132 : Bool)) {
                        _gotoNext = 2863316i32;
                    } else {
                        _gotoNext = 2863391i32;
                    };
                } else if (__value__ == (2863316i32)) {
                    {
                        final __tmp__0 = _sr_2863132;
                        final __tmp__1 = _tr_2863145;
                        _tr_2863145 = __tmp__0;
                        _sr_2863132 = __tmp__1;
                    };
                    _gotoNext = 2863391i32;
                } else if (__value__ == (2863391i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2863132 : Bool) && (_sr_2863132 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2863145 == ((_sr_2863132 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2863437i32;
                    } else {
                        _gotoNext = 2863457i32;
                    };
                } else if (__value__ == (2863437i32)) {
                    _i_2863084++;
                    _gotoNext = 2863092i32;
                } else if (__value__ == (2863457i32)) {
                    return false;
                    _i_2863084++;
                    _gotoNext = 2863092i32;
                } else if (__value__ == (2863517i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2863542i32;
                } else if (__value__ == (2863542i32)) {
                    _s = (_s.__slice__(_i_2863084) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2863084) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2863577i32;
                } else if (__value__ == (2863577i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2863608i32;
                    } else {
                        _gotoNext = 2864583i32;
                    };
                } else if (__value__ == (2863608i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2863689i32;
                    } else {
                        _gotoNext = 2863729i32;
                    };
                } else if (__value__ == (2863689i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2863651 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2863793i32;
                } else if (__value__ == (2863729i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2863734 = __tmp__._0;
                        _size_2863737 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2863734;
                        final __tmp__1 = (_s.__slice__(_size_2863737) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2863651 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2863793i32;
                } else if (__value__ == (2863793i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2863817i32;
                    } else {
                        _gotoNext = 2863857i32;
                    };
                } else if (__value__ == (2863817i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2863655 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2863993i32;
                } else if (__value__ == (2863857i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2863862 = __tmp__._0;
                        _size_2863865 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2863862;
                        final __tmp__1 = (_t.__slice__(_size_2863865) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2863655 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2863993i32;
                } else if (__value__ == (2863993i32)) {
                    if (_tr_2863655 == (_sr_2863651)) {
                        _gotoNext = 2864005i32;
                    } else {
                        _gotoNext = 2864070i32;
                    };
                } else if (__value__ == (2864005i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2863577i32;
                } else if (__value__ == (2864070i32)) {
                    if ((_tr_2863655 < _sr_2863651 : Bool)) {
                        _gotoNext = 2864081i32;
                    } else {
                        _gotoNext = 2864135i32;
                    };
                } else if (__value__ == (2864081i32)) {
                    {
                        final __tmp__0 = _sr_2863651;
                        final __tmp__1 = _tr_2863655;
                        _tr_2863655 = __tmp__0;
                        _sr_2863651 = __tmp__1;
                    };
                    _gotoNext = 2864135i32;
                } else if (__value__ == (2864135i32)) {
                    if ((_tr_2863655 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2864157i32;
                    } else {
                        _gotoNext = 2864410i32;
                    };
                } else if (__value__ == (2864157i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2863651 : Bool) && (_sr_2863651 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2863655 == ((_sr_2863651 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2864257i32;
                    } else {
                        _gotoNext = 2864280i32;
                    };
                } else if (__value__ == (2864257i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2863577i32;
                } else if (__value__ == (2864280i32)) {
                    return false;
                    _gotoNext = 2864410i32;
                } else if (__value__ == (2864410i32)) {
                    _r_2864410 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2863651);
                    var __blank__ = 0i32;
                    _gotoNext = 2864440i32;
                } else if (__value__ == (2864440i32)) {
                    if (((_r_2864410 != _sr_2863651) && (_r_2864410 < _tr_2863655 : Bool) : Bool)) {
                        _gotoNext = 2864462i32;
                    } else {
                        _gotoNext = 2864499i32;
                    };
                } else if (__value__ == (2864462i32)) {
                    _r_2864410 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2864410);
                    _gotoNext = 2864440i32;
                } else if (__value__ == (2864499i32)) {
                    if (_r_2864410 == (_tr_2863655)) {
                        _gotoNext = 2864510i32;
                    } else {
                        _gotoNext = 2864530i32;
                    };
                } else if (__value__ == (2864510i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2863577i32;
                } else if (__value__ == (2864530i32)) {
                    return false;
                    _gotoNext = 2863577i32;
                } else if (__value__ == (2864583i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
