package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2909299:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2909085:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2908566:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2909168:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2909089:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2908579:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2908518:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2909844:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2909296:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2909171:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2908518 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2908526i32;
                } else if (__value__ == (2908526i32)) {
                    if (((_i_2908518 < (_s.length) : Bool) && (_i_2908518 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2908562i32;
                    } else {
                        _gotoNext = 2908951i32;
                    };
                } else if (__value__ == (2908562i32)) {
                    _sr_2908566 = _s[(_i_2908518 : stdgo.GoInt)];
                    _tr_2908579 = _t[(_i_2908518 : stdgo.GoInt)];
                    if (((_sr_2908566 | _tr_2908579 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2908618i32;
                    } else {
                        _gotoNext = 2908662i32;
                    };
                } else if (__value__ == (2908618i32)) {
                    _gotoNext = 2908976i32;
                } else if (__value__ == (2908662i32)) {
                    if (_tr_2908579 == (_sr_2908566)) {
                        _gotoNext = 2908674i32;
                    } else {
                        _gotoNext = 2908739i32;
                    };
                } else if (__value__ == (2908674i32)) {
                    _i_2908518++;
                    _gotoNext = 2908526i32;
                } else if (__value__ == (2908739i32)) {
                    if ((_tr_2908579 < _sr_2908566 : Bool)) {
                        _gotoNext = 2908750i32;
                    } else {
                        _gotoNext = 2908825i32;
                    };
                } else if (__value__ == (2908750i32)) {
                    {
                        final __tmp__0 = _sr_2908566;
                        final __tmp__1 = _tr_2908579;
                        _tr_2908579 = __tmp__0;
                        _sr_2908566 = __tmp__1;
                    };
                    _gotoNext = 2908825i32;
                } else if (__value__ == (2908825i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2908566 : Bool) && (_sr_2908566 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2908579 == ((_sr_2908566 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2908871i32;
                    } else {
                        _gotoNext = 2908891i32;
                    };
                } else if (__value__ == (2908871i32)) {
                    _i_2908518++;
                    _gotoNext = 2908526i32;
                } else if (__value__ == (2908891i32)) {
                    return false;
                    _i_2908518++;
                    _gotoNext = 2908526i32;
                } else if (__value__ == (2908951i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2908976i32;
                } else if (__value__ == (2908976i32)) {
                    _s = (_s.__slice__(_i_2908518) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2908518) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2909011i32;
                } else if (__value__ == (2909011i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2909042i32;
                    } else {
                        _gotoNext = 2910017i32;
                    };
                } else if (__value__ == (2909042i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2909123i32;
                    } else {
                        _gotoNext = 2909163i32;
                    };
                } else if (__value__ == (2909123i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2909085 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2909227i32;
                } else if (__value__ == (2909163i32)) {
                    _gotoNext = 2909163i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2909168 = __tmp__._0;
                        _size_2909171 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2909168;
                        final __tmp__1 = (_s.__slice__(_size_2909171) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2909085 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2909227i32;
                } else if (__value__ == (2909227i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2909251i32;
                    } else {
                        _gotoNext = 2909291i32;
                    };
                } else if (__value__ == (2909251i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2909089 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2909427i32;
                } else if (__value__ == (2909291i32)) {
                    _gotoNext = 2909291i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2909296 = __tmp__._0;
                        _size_2909299 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2909296;
                        final __tmp__1 = (_t.__slice__(_size_2909299) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2909089 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2909427i32;
                } else if (__value__ == (2909427i32)) {
                    if (_tr_2909089 == (_sr_2909085)) {
                        _gotoNext = 2909439i32;
                    } else {
                        _gotoNext = 2909504i32;
                    };
                } else if (__value__ == (2909439i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2909011i32;
                } else if (__value__ == (2909504i32)) {
                    if ((_tr_2909089 < _sr_2909085 : Bool)) {
                        _gotoNext = 2909515i32;
                    } else {
                        _gotoNext = 2909569i32;
                    };
                } else if (__value__ == (2909515i32)) {
                    {
                        final __tmp__0 = _sr_2909085;
                        final __tmp__1 = _tr_2909089;
                        _tr_2909089 = __tmp__0;
                        _sr_2909085 = __tmp__1;
                    };
                    _gotoNext = 2909569i32;
                } else if (__value__ == (2909569i32)) {
                    if ((_tr_2909089 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2909591i32;
                    } else {
                        _gotoNext = 2909844i32;
                    };
                } else if (__value__ == (2909591i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2909085 : Bool) && (_sr_2909085 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2909089 == ((_sr_2909085 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2909691i32;
                    } else {
                        _gotoNext = 2909714i32;
                    };
                } else if (__value__ == (2909691i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2909011i32;
                } else if (__value__ == (2909714i32)) {
                    return false;
                    _gotoNext = 2909844i32;
                } else if (__value__ == (2909844i32)) {
                    _r_2909844 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2909085);
                    var __blank__ = 0i32;
                    _gotoNext = 2909874i32;
                } else if (__value__ == (2909874i32)) {
                    if (((_r_2909844 != _sr_2909085) && (_r_2909844 < _tr_2909089 : Bool) : Bool)) {
                        _gotoNext = 2909896i32;
                    } else {
                        _gotoNext = 2909933i32;
                    };
                } else if (__value__ == (2909896i32)) {
                    _r_2909844 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2909844);
                    _gotoNext = 2909874i32;
                } else if (__value__ == (2909933i32)) {
                    if (_r_2909844 == (_tr_2909089)) {
                        _gotoNext = 2909944i32;
                    } else {
                        _gotoNext = 2909964i32;
                    };
                } else if (__value__ == (2909944i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2909011i32;
                } else if (__value__ == (2909964i32)) {
                    return false;
                    _gotoNext = 2909011i32;
                } else if (__value__ == (2910017i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
