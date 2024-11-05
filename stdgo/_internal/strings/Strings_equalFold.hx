package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2767183:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2767176 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2767189 = @:invalid_type null;
        var _i_2766683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2767339:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2767176 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2766744:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2766731:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2767974:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2767421:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2767418:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2766683 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2766691i32;
                } else if (__value__ == (2766691i32)) {
                    if (((_i_2766683 < (_s.length) : Bool) && (_i_2766683 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2766727i32;
                    } else {
                        _gotoNext = 2767116i32;
                    };
                } else if (__value__ == (2766727i32)) {
                    _sr_2766731 = _s[(_i_2766683 : stdgo.GoInt)];
                    _tr_2766744 = _t[(_i_2766683 : stdgo.GoInt)];
                    if (((_sr_2766731 | _tr_2766744 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2766783i32;
                    } else {
                        _gotoNext = 2766827i32;
                    };
                } else if (__value__ == (2766783i32)) {
                    _gotoNext = 2767141i32;
                } else if (__value__ == (2766827i32)) {
                    if (_tr_2766744 == (_sr_2766731)) {
                        _gotoNext = 2766839i32;
                    } else {
                        _gotoNext = 2766904i32;
                    };
                } else if (__value__ == (2766839i32)) {
                    _i_2766683++;
                    _gotoNext = 2766691i32;
                } else if (__value__ == (2766904i32)) {
                    if ((_tr_2766744 < _sr_2766731 : Bool)) {
                        _gotoNext = 2766915i32;
                    } else {
                        _gotoNext = 2766990i32;
                    };
                } else if (__value__ == (2766915i32)) {
                    {
                        final __tmp__0 = _sr_2766731;
                        final __tmp__1 = _tr_2766744;
                        _tr_2766744 = __tmp__0;
                        _sr_2766731 = __tmp__1;
                    };
                    _gotoNext = 2766990i32;
                } else if (__value__ == (2766990i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2766731 : Bool) && (_sr_2766731 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2766744 == ((_sr_2766731 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2767036i32;
                    } else {
                        _gotoNext = 2767056i32;
                    };
                } else if (__value__ == (2767036i32)) {
                    _i_2766683++;
                    _gotoNext = 2766691i32;
                } else if (__value__ == (2767056i32)) {
                    return false;
                    _i_2766683++;
                    _gotoNext = 2766691i32;
                } else if (__value__ == (2767116i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2767141i32;
                } else if (__value__ == (2767141i32)) {
                    _s = (_s.__slice__(_i_2766683) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2766683) : stdgo.GoString)?.__copy__();
                    _keys_2767176 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2767176 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2767176 = (_keys_2767176.__append__(_key));
                        _values_2767176 = (_values_2767176.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2767176.length)) {
                        _gotoNext = 2768107i32;
                    } else {
                        _gotoNext = 2768181i32;
                    };
                } else if (__value__ == (2767197i32)) {
                    _sr_2767183 = _values_2767176[@:invalid_index_invalid_type _i_2767189];
                    var __blank__ = _keys_2767176[@:invalid_index_invalid_type _i_2767189];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2767266i32;
                    } else {
                        _gotoNext = 2767335i32;
                    };
                } else if (__value__ == (2767266i32)) {
                    return false;
                    _gotoNext = 2767335i32;
                } else if (__value__ == (2767335i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2767373i32;
                    } else {
                        _gotoNext = 2767413i32;
                    };
                } else if (__value__ == (2767373i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2767339 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2767557i32;
                } else if (__value__ == (2767413i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2767418 = __tmp__._0;
                        _size_2767421 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2767418;
                        final __tmp__1 = (_t.__slice__(_size_2767421) : stdgo.GoString)?.__copy__();
                        _tr_2767339 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2767557i32;
                } else if (__value__ == (2767557i32)) {
                    if (_tr_2767339 == (_sr_2767183)) {
                        _gotoNext = 2767569i32;
                    } else {
                        _gotoNext = 2767634i32;
                    };
                } else if (__value__ == (2767569i32)) {
                    _i_2767189++;
                    _gotoNext = 2768108i32;
                } else if (__value__ == (2767634i32)) {
                    if ((_tr_2767339 < _sr_2767183 : Bool)) {
                        _gotoNext = 2767645i32;
                    } else {
                        _gotoNext = 2767699i32;
                    };
                } else if (__value__ == (2767645i32)) {
                    {
                        final __tmp__0 = _sr_2767183;
                        final __tmp__1 = _tr_2767339;
                        _tr_2767339 = __tmp__0;
                        _sr_2767183 = __tmp__1;
                    };
                    _gotoNext = 2767699i32;
                } else if (__value__ == (2767699i32)) {
                    if ((_tr_2767339 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2767721i32;
                    } else {
                        _gotoNext = 2767974i32;
                    };
                } else if (__value__ == (2767721i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2767183 : Bool) && (_sr_2767183 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2767339 == ((_sr_2767183 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2767821i32;
                    } else {
                        _gotoNext = 2767844i32;
                    };
                } else if (__value__ == (2767821i32)) {
                    _i_2767189++;
                    _gotoNext = 2768108i32;
                } else if (__value__ == (2767844i32)) {
                    return false;
                    _gotoNext = 2767974i32;
                } else if (__value__ == (2767974i32)) {
                    _r_2767974 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2767183);
                    var __blank__ = 0i32;
                    _gotoNext = 2768004i32;
                } else if (__value__ == (2768004i32)) {
                    if (((_r_2767974 != _sr_2767183) && (_r_2767974 < _tr_2767339 : Bool) : Bool)) {
                        _gotoNext = 2768026i32;
                    } else {
                        _gotoNext = 2768063i32;
                    };
                } else if (__value__ == (2768026i32)) {
                    _r_2767974 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2767974);
                    _gotoNext = 2768004i32;
                } else if (__value__ == (2768063i32)) {
                    if (_r_2767974 == (_tr_2767339)) {
                        _gotoNext = 2768074i32;
                    } else {
                        _gotoNext = 2768094i32;
                    };
                } else if (__value__ == (2768074i32)) {
                    _i_2767189++;
                    _gotoNext = 2768108i32;
                } else if (__value__ == (2768094i32)) {
                    return false;
                    _i_2767189++;
                    _gotoNext = 2768108i32;
                } else if (__value__ == (2768107i32)) {
                    _i_2767189 = 0i32;
                    _gotoNext = 2768108i32;
                } else if (__value__ == (2768108i32)) {
                    if (_i_2767189 < (_keys_2767176.length)) {
                        _gotoNext = 2767197i32;
                    } else {
                        _gotoNext = 2768181i32;
                    };
                } else if (__value__ == (2768181i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
