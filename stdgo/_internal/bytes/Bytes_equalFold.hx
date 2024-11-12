package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _i_2858379:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2859032:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2858950:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2858427:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2858440:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2859705:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2859160:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2859157:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2859029:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2858946:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2858379 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2858387i32;
                } else if (__value__ == (2858387i32)) {
                    if (((_i_2858379 < (_s.length) : Bool) && (_i_2858379 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2858423i32;
                    } else {
                        _gotoNext = 2858812i32;
                    };
                } else if (__value__ == (2858423i32)) {
                    _sr_2858427 = _s[(_i_2858379 : stdgo.GoInt)];
                    _tr_2858440 = _t[(_i_2858379 : stdgo.GoInt)];
                    if (((_sr_2858427 | _tr_2858440 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2858479i32;
                    } else {
                        _gotoNext = 2858523i32;
                    };
                } else if (__value__ == (2858479i32)) {
                    _gotoNext = 2858837i32;
                } else if (__value__ == (2858523i32)) {
                    if (_tr_2858440 == (_sr_2858427)) {
                        _gotoNext = 2858535i32;
                    } else {
                        _gotoNext = 2858600i32;
                    };
                } else if (__value__ == (2858535i32)) {
                    _i_2858379++;
                    _gotoNext = 2858387i32;
                } else if (__value__ == (2858600i32)) {
                    if ((_tr_2858440 < _sr_2858427 : Bool)) {
                        _gotoNext = 2858611i32;
                    } else {
                        _gotoNext = 2858686i32;
                    };
                } else if (__value__ == (2858611i32)) {
                    {
                        final __tmp__0 = _sr_2858427;
                        final __tmp__1 = _tr_2858440;
                        _tr_2858440 = __tmp__0;
                        _sr_2858427 = __tmp__1;
                    };
                    _gotoNext = 2858686i32;
                } else if (__value__ == (2858686i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2858427 : Bool) && (_sr_2858427 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2858440 == ((_sr_2858427 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2858732i32;
                    } else {
                        _gotoNext = 2858752i32;
                    };
                } else if (__value__ == (2858732i32)) {
                    _i_2858379++;
                    _gotoNext = 2858387i32;
                } else if (__value__ == (2858752i32)) {
                    return false;
                    _i_2858379++;
                    _gotoNext = 2858387i32;
                } else if (__value__ == (2858812i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2858837i32;
                } else if (__value__ == (2858837i32)) {
                    _s = (_s.__slice__(_i_2858379) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2858379) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2858872i32;
                } else if (__value__ == (2858872i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2858903i32;
                    } else {
                        _gotoNext = 2859878i32;
                    };
                } else if (__value__ == (2858903i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2858984i32;
                    } else {
                        _gotoNext = 2859024i32;
                    };
                } else if (__value__ == (2858984i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2858946 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2859088i32;
                } else if (__value__ == (2859024i32)) {
                    _gotoNext = 2859024i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2859029 = __tmp__._0;
                        _size_2859032 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2859029;
                        final __tmp__1 = (_s.__slice__(_size_2859032) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2858946 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2859088i32;
                } else if (__value__ == (2859088i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2859112i32;
                    } else {
                        _gotoNext = 2859152i32;
                    };
                } else if (__value__ == (2859112i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2858950 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2859288i32;
                } else if (__value__ == (2859152i32)) {
                    _gotoNext = 2859152i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2859157 = __tmp__._0;
                        _size_2859160 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2859157;
                        final __tmp__1 = (_t.__slice__(_size_2859160) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2858950 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2859288i32;
                } else if (__value__ == (2859288i32)) {
                    if (_tr_2858950 == (_sr_2858946)) {
                        _gotoNext = 2859300i32;
                    } else {
                        _gotoNext = 2859365i32;
                    };
                } else if (__value__ == (2859300i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2858872i32;
                } else if (__value__ == (2859365i32)) {
                    if ((_tr_2858950 < _sr_2858946 : Bool)) {
                        _gotoNext = 2859376i32;
                    } else {
                        _gotoNext = 2859430i32;
                    };
                } else if (__value__ == (2859376i32)) {
                    {
                        final __tmp__0 = _sr_2858946;
                        final __tmp__1 = _tr_2858950;
                        _tr_2858950 = __tmp__0;
                        _sr_2858946 = __tmp__1;
                    };
                    _gotoNext = 2859430i32;
                } else if (__value__ == (2859430i32)) {
                    if ((_tr_2858950 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2859452i32;
                    } else {
                        _gotoNext = 2859705i32;
                    };
                } else if (__value__ == (2859452i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2858946 : Bool) && (_sr_2858946 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2858950 == ((_sr_2858946 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2859552i32;
                    } else {
                        _gotoNext = 2859575i32;
                    };
                } else if (__value__ == (2859552i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2858872i32;
                } else if (__value__ == (2859575i32)) {
                    return false;
                    _gotoNext = 2859705i32;
                } else if (__value__ == (2859705i32)) {
                    _r_2859705 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2858946);
                    var __blank__ = 0i32;
                    _gotoNext = 2859735i32;
                } else if (__value__ == (2859735i32)) {
                    if (((_r_2859705 != _sr_2858946) && (_r_2859705 < _tr_2858950 : Bool) : Bool)) {
                        _gotoNext = 2859757i32;
                    } else {
                        _gotoNext = 2859794i32;
                    };
                } else if (__value__ == (2859757i32)) {
                    _r_2859705 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2859705);
                    _gotoNext = 2859735i32;
                } else if (__value__ == (2859794i32)) {
                    if (_r_2859705 == (_tr_2858950)) {
                        _gotoNext = 2859805i32;
                    } else {
                        _gotoNext = 2859825i32;
                    };
                } else if (__value__ == (2859805i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2858872i32;
                } else if (__value__ == (2859825i32)) {
                    return false;
                    _gotoNext = 2858872i32;
                } else if (__value__ == (2859878i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
