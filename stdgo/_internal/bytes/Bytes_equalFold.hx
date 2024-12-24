package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2859906:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2859903:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2859775:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2859186:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2860451:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2859778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2859696:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2859692:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2859173:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2859125:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2859125 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2859133i32;
                } else if (__value__ == (2859133i32)) {
                    if (((_i_2859125 < (_s.length) : Bool) && (_i_2859125 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2859169i32;
                    } else {
                        _gotoNext = 2859558i32;
                    };
                } else if (__value__ == (2859169i32)) {
                    _sr_2859173 = _s[(_i_2859125 : stdgo.GoInt)];
                    _tr_2859186 = _t[(_i_2859125 : stdgo.GoInt)];
                    if (((_sr_2859173 | _tr_2859186 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2859225i32;
                    } else {
                        _gotoNext = 2859269i32;
                    };
                } else if (__value__ == (2859225i32)) {
                    _gotoNext = 2859583i32;
                } else if (__value__ == (2859269i32)) {
                    if (_tr_2859186 == (_sr_2859173)) {
                        _gotoNext = 2859281i32;
                    } else {
                        _gotoNext = 2859346i32;
                    };
                } else if (__value__ == (2859281i32)) {
                    _i_2859125++;
                    _gotoNext = 2859133i32;
                } else if (__value__ == (2859346i32)) {
                    if ((_tr_2859186 < _sr_2859173 : Bool)) {
                        _gotoNext = 2859357i32;
                    } else {
                        _gotoNext = 2859432i32;
                    };
                } else if (__value__ == (2859357i32)) {
                    {
                        final __tmp__0 = _sr_2859173;
                        final __tmp__1 = _tr_2859186;
                        _tr_2859186 = __tmp__0;
                        _sr_2859173 = __tmp__1;
                    };
                    _gotoNext = 2859432i32;
                } else if (__value__ == (2859432i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2859173 : Bool) && (_sr_2859173 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2859186 == ((_sr_2859173 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2859478i32;
                    } else {
                        _gotoNext = 2859498i32;
                    };
                } else if (__value__ == (2859478i32)) {
                    _i_2859125++;
                    _gotoNext = 2859133i32;
                } else if (__value__ == (2859498i32)) {
                    return false;
                    _i_2859125++;
                    _gotoNext = 2859133i32;
                } else if (__value__ == (2859558i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2859583i32;
                } else if (__value__ == (2859583i32)) {
                    _s = (_s.__slice__(_i_2859125) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2859125) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2859618i32;
                } else if (__value__ == (2859618i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2859649i32;
                    } else {
                        _gotoNext = 2860624i32;
                    };
                } else if (__value__ == (2859649i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2859730i32;
                    } else {
                        _gotoNext = 2859770i32;
                    };
                } else if (__value__ == (2859730i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2859692 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2859834i32;
                } else if (__value__ == (2859770i32)) {
                    _gotoNext = 2859770i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2859775 = __tmp__._0;
                        _size_2859778 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2859775;
                        final __tmp__1 = (_s.__slice__(_size_2859778) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2859692 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2859834i32;
                } else if (__value__ == (2859834i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2859858i32;
                    } else {
                        _gotoNext = 2859898i32;
                    };
                } else if (__value__ == (2859858i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2859696 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2860034i32;
                } else if (__value__ == (2859898i32)) {
                    _gotoNext = 2859898i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2859903 = __tmp__._0;
                        _size_2859906 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2859903;
                        final __tmp__1 = (_t.__slice__(_size_2859906) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2859696 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2860034i32;
                } else if (__value__ == (2860034i32)) {
                    if (_tr_2859696 == (_sr_2859692)) {
                        _gotoNext = 2860046i32;
                    } else {
                        _gotoNext = 2860111i32;
                    };
                } else if (__value__ == (2860046i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2859618i32;
                } else if (__value__ == (2860111i32)) {
                    if ((_tr_2859696 < _sr_2859692 : Bool)) {
                        _gotoNext = 2860122i32;
                    } else {
                        _gotoNext = 2860176i32;
                    };
                } else if (__value__ == (2860122i32)) {
                    {
                        final __tmp__0 = _sr_2859692;
                        final __tmp__1 = _tr_2859696;
                        _tr_2859696 = __tmp__0;
                        _sr_2859692 = __tmp__1;
                    };
                    _gotoNext = 2860176i32;
                } else if (__value__ == (2860176i32)) {
                    if ((_tr_2859696 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2860198i32;
                    } else {
                        _gotoNext = 2860451i32;
                    };
                } else if (__value__ == (2860198i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2859692 : Bool) && (_sr_2859692 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2859696 == ((_sr_2859692 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2860298i32;
                    } else {
                        _gotoNext = 2860321i32;
                    };
                } else if (__value__ == (2860298i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2859618i32;
                } else if (__value__ == (2860321i32)) {
                    return false;
                    _gotoNext = 2860451i32;
                } else if (__value__ == (2860451i32)) {
                    _r_2860451 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2859692);
                    var __blank__ = 0i32;
                    _gotoNext = 2860481i32;
                } else if (__value__ == (2860481i32)) {
                    if (((_r_2860451 != _sr_2859692) && (_r_2860451 < _tr_2859696 : Bool) : Bool)) {
                        _gotoNext = 2860503i32;
                    } else {
                        _gotoNext = 2860540i32;
                    };
                } else if (__value__ == (2860503i32)) {
                    _r_2860451 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2860451);
                    _gotoNext = 2860481i32;
                } else if (__value__ == (2860540i32)) {
                    if (_r_2860451 == (_tr_2859696)) {
                        _gotoNext = 2860551i32;
                    } else {
                        _gotoNext = 2860571i32;
                    };
                } else if (__value__ == (2860551i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2859618i32;
                } else if (__value__ == (2860571i32)) {
                    return false;
                    _gotoNext = 2859618i32;
                } else if (__value__ == (2860624i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
