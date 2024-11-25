package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2907798 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2907798 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2907366:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2907353:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2907961:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2908040:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2907805:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2907811 = @:invalid_type null;
        var _i_2907305:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2908596:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2908043:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2907305 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2907313i32;
                } else if (__value__ == (2907313i32)) {
                    if (((_i_2907305 < (_s.length) : Bool) && (_i_2907305 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2907349i32;
                    } else {
                        _gotoNext = 2907738i32;
                    };
                } else if (__value__ == (2907349i32)) {
                    _sr_2907353 = _s[(_i_2907305 : stdgo.GoInt)];
                    _tr_2907366 = _t[(_i_2907305 : stdgo.GoInt)];
                    if (((_sr_2907353 | _tr_2907366 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907405i32;
                    } else {
                        _gotoNext = 2907449i32;
                    };
                } else if (__value__ == (2907405i32)) {
                    _gotoNext = 2907763i32;
                } else if (__value__ == (2907449i32)) {
                    if (_tr_2907366 == (_sr_2907353)) {
                        _gotoNext = 2907461i32;
                    } else {
                        _gotoNext = 2907526i32;
                    };
                } else if (__value__ == (2907461i32)) {
                    _i_2907305++;
                    _gotoNext = 2907313i32;
                } else if (__value__ == (2907526i32)) {
                    if ((_tr_2907366 < _sr_2907353 : Bool)) {
                        _gotoNext = 2907537i32;
                    } else {
                        _gotoNext = 2907612i32;
                    };
                } else if (__value__ == (2907537i32)) {
                    {
                        final __tmp__0 = _sr_2907353;
                        final __tmp__1 = _tr_2907366;
                        _tr_2907366 = __tmp__0;
                        _sr_2907353 = __tmp__1;
                    };
                    _gotoNext = 2907612i32;
                } else if (__value__ == (2907612i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2907353 : Bool) && (_sr_2907353 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2907366 == ((_sr_2907353 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2907658i32;
                    } else {
                        _gotoNext = 2907678i32;
                    };
                } else if (__value__ == (2907658i32)) {
                    _i_2907305++;
                    _gotoNext = 2907313i32;
                } else if (__value__ == (2907678i32)) {
                    return false;
                    _i_2907305++;
                    _gotoNext = 2907313i32;
                } else if (__value__ == (2907738i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2907763i32;
                } else if (__value__ == (2907763i32)) {
                    _s = (_s.__slice__(_i_2907305) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2907305) : stdgo.GoString)?.__copy__();
                    _keys_2907798 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2907798 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2907798 = (_keys_2907798.__append__(_key));
                        _values_2907798 = (_values_2907798.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2907798.length)) {
                        _gotoNext = 2908729i32;
                    } else {
                        _gotoNext = 2908803i32;
                    };
                } else if (__value__ == (2907819i32)) {
                    _sr_2907805 = _values_2907798[@:invalid_index_invalid_type _i_2907811];
                    var __blank__ = _keys_2907798[@:invalid_index_invalid_type _i_2907811];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2907888i32;
                    } else {
                        _gotoNext = 2907957i32;
                    };
                } else if (__value__ == (2907888i32)) {
                    return false;
                    _gotoNext = 2907957i32;
                } else if (__value__ == (2907957i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907995i32;
                    } else {
                        _gotoNext = 2908035i32;
                    };
                } else if (__value__ == (2907995i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2907961 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2908179i32;
                } else if (__value__ == (2908035i32)) {
                    _gotoNext = 2908035i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2908040 = __tmp__._0;
                        _size_2908043 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2908040;
                        final __tmp__1 = (_t.__slice__(_size_2908043) : stdgo.GoString)?.__copy__();
                        _tr_2907961 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2908179i32;
                } else if (__value__ == (2908179i32)) {
                    if (_tr_2907961 == (_sr_2907805)) {
                        _gotoNext = 2908191i32;
                    } else {
                        _gotoNext = 2908256i32;
                    };
                } else if (__value__ == (2908191i32)) {
                    _i_2907811++;
                    _gotoNext = 2908730i32;
                } else if (__value__ == (2908256i32)) {
                    if ((_tr_2907961 < _sr_2907805 : Bool)) {
                        _gotoNext = 2908267i32;
                    } else {
                        _gotoNext = 2908321i32;
                    };
                } else if (__value__ == (2908267i32)) {
                    {
                        final __tmp__0 = _sr_2907805;
                        final __tmp__1 = _tr_2907961;
                        _tr_2907961 = __tmp__0;
                        _sr_2907805 = __tmp__1;
                    };
                    _gotoNext = 2908321i32;
                } else if (__value__ == (2908321i32)) {
                    if ((_tr_2907961 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2908343i32;
                    } else {
                        _gotoNext = 2908596i32;
                    };
                } else if (__value__ == (2908343i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2907805 : Bool) && (_sr_2907805 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2907961 == ((_sr_2907805 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2908443i32;
                    } else {
                        _gotoNext = 2908466i32;
                    };
                } else if (__value__ == (2908443i32)) {
                    _i_2907811++;
                    _gotoNext = 2908730i32;
                } else if (__value__ == (2908466i32)) {
                    return false;
                    _gotoNext = 2908596i32;
                } else if (__value__ == (2908596i32)) {
                    _r_2908596 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2907805);
                    var __blank__ = 0i32;
                    _gotoNext = 2908626i32;
                } else if (__value__ == (2908626i32)) {
                    if (((_r_2908596 != _sr_2907805) && (_r_2908596 < _tr_2907961 : Bool) : Bool)) {
                        _gotoNext = 2908648i32;
                    } else {
                        _gotoNext = 2908685i32;
                    };
                } else if (__value__ == (2908648i32)) {
                    _r_2908596 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2908596);
                    _gotoNext = 2908626i32;
                } else if (__value__ == (2908685i32)) {
                    if (_r_2908596 == (_tr_2907961)) {
                        _gotoNext = 2908696i32;
                    } else {
                        _gotoNext = 2908716i32;
                    };
                } else if (__value__ == (2908696i32)) {
                    _i_2907811++;
                    _gotoNext = 2908730i32;
                } else if (__value__ == (2908716i32)) {
                    return false;
                    _i_2907811++;
                    _gotoNext = 2908730i32;
                } else if (__value__ == (2908729i32)) {
                    _i_2907811 = 0i32;
                    _gotoNext = 2908730i32;
                } else if (__value__ == (2908730i32)) {
                    if (_i_2907811 < (_keys_2907798.length)) {
                        _gotoNext = 2907819i32;
                    } else {
                        _gotoNext = 2908803i32;
                    };
                } else if (__value__ == (2908803i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
