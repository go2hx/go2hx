package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2849467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2850758:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2850205:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2849960 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2849515:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2850202:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2850123:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2849967:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2849960 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2849973 = @:invalid_type null;
        var _tr_2849528:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2849467 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2849475i32;
                } else if (__value__ == (2849475i32)) {
                    if (((_i_2849467 < (_s.length) : Bool) && (_i_2849467 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2849511i32;
                    } else {
                        _gotoNext = 2849900i32;
                    };
                } else if (__value__ == (2849511i32)) {
                    _sr_2849515 = _s[(_i_2849467 : stdgo.GoInt)];
                    _tr_2849528 = _t[(_i_2849467 : stdgo.GoInt)];
                    if (((_sr_2849515 | _tr_2849528 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2849567i32;
                    } else {
                        _gotoNext = 2849611i32;
                    };
                } else if (__value__ == (2849567i32)) {
                    _gotoNext = 2849925i32;
                } else if (__value__ == (2849611i32)) {
                    if (_tr_2849528 == (_sr_2849515)) {
                        _gotoNext = 2849623i32;
                    } else {
                        _gotoNext = 2849688i32;
                    };
                } else if (__value__ == (2849623i32)) {
                    _i_2849467++;
                    _gotoNext = 2849475i32;
                } else if (__value__ == (2849688i32)) {
                    if ((_tr_2849528 < _sr_2849515 : Bool)) {
                        _gotoNext = 2849699i32;
                    } else {
                        _gotoNext = 2849774i32;
                    };
                } else if (__value__ == (2849699i32)) {
                    {
                        final __tmp__0 = _sr_2849515;
                        final __tmp__1 = _tr_2849528;
                        _tr_2849528 = __tmp__0;
                        _sr_2849515 = __tmp__1;
                    };
                    _gotoNext = 2849774i32;
                } else if (__value__ == (2849774i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2849515 : Bool) && (_sr_2849515 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2849528 == ((_sr_2849515 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2849820i32;
                    } else {
                        _gotoNext = 2849840i32;
                    };
                } else if (__value__ == (2849820i32)) {
                    _i_2849467++;
                    _gotoNext = 2849475i32;
                } else if (__value__ == (2849840i32)) {
                    return false;
                    _i_2849467++;
                    _gotoNext = 2849475i32;
                } else if (__value__ == (2849900i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2849925i32;
                } else if (__value__ == (2849925i32)) {
                    _s = (_s.__slice__(_i_2849467) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2849467) : stdgo.GoString)?.__copy__();
                    _keys_2849960 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2849960 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2849960 = (_keys_2849960.__append__(_key));
                        _values_2849960 = (_values_2849960.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2849960.length)) {
                        _gotoNext = 2850891i32;
                    } else {
                        _gotoNext = 2850965i32;
                    };
                } else if (__value__ == (2849981i32)) {
                    _sr_2849967 = _values_2849960[@:invalid_index_invalid_type _i_2849973];
                    var __blank__ = _keys_2849960[@:invalid_index_invalid_type _i_2849973];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2850050i32;
                    } else {
                        _gotoNext = 2850119i32;
                    };
                } else if (__value__ == (2850050i32)) {
                    return false;
                    _gotoNext = 2850119i32;
                } else if (__value__ == (2850119i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2850157i32;
                    } else {
                        _gotoNext = 2850197i32;
                    };
                } else if (__value__ == (2850157i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2850123 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2850341i32;
                } else if (__value__ == (2850197i32)) {
                    _gotoNext = 2850197i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2850202 = @:tmpset0 __tmp__._0;
                        _size_2850205 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2850202;
                        final __tmp__1 = (_t.__slice__(_size_2850205) : stdgo.GoString)?.__copy__();
                        _tr_2850123 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2850341i32;
                } else if (__value__ == (2850341i32)) {
                    if (_tr_2850123 == (_sr_2849967)) {
                        _gotoNext = 2850353i32;
                    } else {
                        _gotoNext = 2850418i32;
                    };
                } else if (__value__ == (2850353i32)) {
                    _i_2849973++;
                    _gotoNext = 2850892i32;
                } else if (__value__ == (2850418i32)) {
                    if ((_tr_2850123 < _sr_2849967 : Bool)) {
                        _gotoNext = 2850429i32;
                    } else {
                        _gotoNext = 2850483i32;
                    };
                } else if (__value__ == (2850429i32)) {
                    {
                        final __tmp__0 = _sr_2849967;
                        final __tmp__1 = _tr_2850123;
                        _tr_2850123 = __tmp__0;
                        _sr_2849967 = __tmp__1;
                    };
                    _gotoNext = 2850483i32;
                } else if (__value__ == (2850483i32)) {
                    if ((_tr_2850123 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2850505i32;
                    } else {
                        _gotoNext = 2850758i32;
                    };
                } else if (__value__ == (2850505i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2849967 : Bool) && (_sr_2849967 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2850123 == ((_sr_2849967 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2850605i32;
                    } else {
                        _gotoNext = 2850628i32;
                    };
                } else if (__value__ == (2850605i32)) {
                    _i_2849973++;
                    _gotoNext = 2850892i32;
                } else if (__value__ == (2850628i32)) {
                    return false;
                    _gotoNext = 2850758i32;
                } else if (__value__ == (2850758i32)) {
                    _r_2850758 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2849967);
                    var __blank__ = 0i32;
                    _gotoNext = 2850788i32;
                } else if (__value__ == (2850788i32)) {
                    if (((_r_2850758 != _sr_2849967) && (_r_2850758 < _tr_2850123 : Bool) : Bool)) {
                        _gotoNext = 2850810i32;
                    } else {
                        _gotoNext = 2850847i32;
                    };
                } else if (__value__ == (2850810i32)) {
                    _r_2850758 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2850758);
                    _gotoNext = 2850788i32;
                } else if (__value__ == (2850847i32)) {
                    if (_r_2850758 == (_tr_2850123)) {
                        _gotoNext = 2850858i32;
                    } else {
                        _gotoNext = 2850878i32;
                    };
                } else if (__value__ == (2850858i32)) {
                    _i_2849973++;
                    _gotoNext = 2850892i32;
                } else if (__value__ == (2850878i32)) {
                    return false;
                    _i_2849973++;
                    _gotoNext = 2850892i32;
                } else if (__value__ == (2850891i32)) {
                    _i_2849973 = 0i32;
                    _gotoNext = 2850892i32;
                } else if (__value__ == (2850892i32)) {
                    if (_i_2849973 < (_keys_2849960.length)) {
                        _gotoNext = 2849981i32;
                    } else {
                        _gotoNext = 2850965i32;
                    };
                } else if (__value__ == (2850965i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
