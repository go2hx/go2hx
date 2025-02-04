package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2963222:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2963219:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2963091:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2963008:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2962489:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2963767:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2963094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2963012:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2962502:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2962441:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2962441 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2962449i32;
                } else if (__value__ == (2962449i32)) {
                    if (((_i_2962441 < (_s.length) : Bool) && (_i_2962441 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2962485i32;
                    } else {
                        _gotoNext = 2962874i32;
                    };
                } else if (__value__ == (2962485i32)) {
                    _sr_2962489 = _s[(_i_2962441 : stdgo.GoInt)];
                    _tr_2962502 = _t[(_i_2962441 : stdgo.GoInt)];
                    if (((_sr_2962489 | _tr_2962502 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2962541i32;
                    } else {
                        _gotoNext = 2962585i32;
                    };
                } else if (__value__ == (2962541i32)) {
                    _gotoNext = 2962899i32;
                } else if (__value__ == (2962585i32)) {
                    if (_tr_2962502 == (_sr_2962489)) {
                        _gotoNext = 2962597i32;
                    } else {
                        _gotoNext = 2962662i32;
                    };
                } else if (__value__ == (2962597i32)) {
                    _i_2962441++;
                    _gotoNext = 2962449i32;
                } else if (__value__ == (2962662i32)) {
                    if ((_tr_2962502 < _sr_2962489 : Bool)) {
                        _gotoNext = 2962673i32;
                    } else {
                        _gotoNext = 2962748i32;
                    };
                } else if (__value__ == (2962673i32)) {
                    {
                        final __tmp__0 = _sr_2962489;
                        final __tmp__1 = _tr_2962502;
                        _tr_2962502 = __tmp__0;
                        _sr_2962489 = __tmp__1;
                    };
                    _gotoNext = 2962748i32;
                } else if (__value__ == (2962748i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2962489 : Bool) && (_sr_2962489 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2962502 == ((_sr_2962489 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2962794i32;
                    } else {
                        _gotoNext = 2962814i32;
                    };
                } else if (__value__ == (2962794i32)) {
                    _i_2962441++;
                    _gotoNext = 2962449i32;
                } else if (__value__ == (2962814i32)) {
                    return false;
                    _i_2962441++;
                    _gotoNext = 2962449i32;
                } else if (__value__ == (2962874i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2962899i32;
                } else if (__value__ == (2962899i32)) {
                    _s = (_s.__slice__(_i_2962441) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2962441) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2962934i32;
                } else if (__value__ == (2962934i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2962965i32;
                    } else {
                        _gotoNext = 2963940i32;
                    };
                } else if (__value__ == (2962965i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2963046i32;
                    } else {
                        _gotoNext = 2963086i32;
                    };
                } else if (__value__ == (2963046i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2963008 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2963150i32;
                } else if (__value__ == (2963086i32)) {
                    _gotoNext = 2963086i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2963091 = @:tmpset0 __tmp__._0;
                        _size_2963094 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2963091;
                        final __tmp__1 = (_s.__slice__(_size_2963094) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2963008 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2963150i32;
                } else if (__value__ == (2963150i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2963174i32;
                    } else {
                        _gotoNext = 2963214i32;
                    };
                } else if (__value__ == (2963174i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2963012 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2963350i32;
                } else if (__value__ == (2963214i32)) {
                    _gotoNext = 2963214i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2963219 = @:tmpset0 __tmp__._0;
                        _size_2963222 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2963219;
                        final __tmp__1 = (_t.__slice__(_size_2963222) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2963012 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2963350i32;
                } else if (__value__ == (2963350i32)) {
                    if (_tr_2963012 == (_sr_2963008)) {
                        _gotoNext = 2963362i32;
                    } else {
                        _gotoNext = 2963427i32;
                    };
                } else if (__value__ == (2963362i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2962934i32;
                } else if (__value__ == (2963427i32)) {
                    if ((_tr_2963012 < _sr_2963008 : Bool)) {
                        _gotoNext = 2963438i32;
                    } else {
                        _gotoNext = 2963492i32;
                    };
                } else if (__value__ == (2963438i32)) {
                    {
                        final __tmp__0 = _sr_2963008;
                        final __tmp__1 = _tr_2963012;
                        _tr_2963012 = __tmp__0;
                        _sr_2963008 = __tmp__1;
                    };
                    _gotoNext = 2963492i32;
                } else if (__value__ == (2963492i32)) {
                    if ((_tr_2963012 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2963514i32;
                    } else {
                        _gotoNext = 2963767i32;
                    };
                } else if (__value__ == (2963514i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2963008 : Bool) && (_sr_2963008 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2963012 == ((_sr_2963008 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2963614i32;
                    } else {
                        _gotoNext = 2963637i32;
                    };
                } else if (__value__ == (2963614i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2962934i32;
                } else if (__value__ == (2963637i32)) {
                    return false;
                    _gotoNext = 2963767i32;
                } else if (__value__ == (2963767i32)) {
                    _r_2963767 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2963008);
                    var __blank__ = 0i32;
                    _gotoNext = 2963797i32;
                } else if (__value__ == (2963797i32)) {
                    if (((_r_2963767 != _sr_2963008) && (_r_2963767 < _tr_2963012 : Bool) : Bool)) {
                        _gotoNext = 2963819i32;
                    } else {
                        _gotoNext = 2963856i32;
                    };
                } else if (__value__ == (2963819i32)) {
                    _r_2963767 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2963767);
                    _gotoNext = 2963797i32;
                } else if (__value__ == (2963856i32)) {
                    if (_r_2963767 == (_tr_2963012)) {
                        _gotoNext = 2963867i32;
                    } else {
                        _gotoNext = 2963887i32;
                    };
                } else if (__value__ == (2963867i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2962934i32;
                } else if (__value__ == (2963887i32)) {
                    return false;
                    _gotoNext = 2962934i32;
                } else if (__value__ == (2963940i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
