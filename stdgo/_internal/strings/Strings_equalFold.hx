package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2805114:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2805791:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2805709:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2805553:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2805546 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2805053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2806344:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2805788:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2805546 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2805559 = @:invalid_type null;
        var _sr_2805101:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2805053 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2805061i32;
                } else if (__value__ == (2805061i32)) {
                    if (((_i_2805053 < (_s.length) : Bool) && (_i_2805053 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2805097i32;
                    } else {
                        _gotoNext = 2805486i32;
                    };
                } else if (__value__ == (2805097i32)) {
                    _sr_2805101 = _s[(_i_2805053 : stdgo.GoInt)];
                    _tr_2805114 = _t[(_i_2805053 : stdgo.GoInt)];
                    if (((_sr_2805101 | _tr_2805114 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2805153i32;
                    } else {
                        _gotoNext = 2805197i32;
                    };
                } else if (__value__ == (2805153i32)) {
                    _gotoNext = 2805511i32;
                } else if (__value__ == (2805197i32)) {
                    if (_tr_2805114 == (_sr_2805101)) {
                        _gotoNext = 2805209i32;
                    } else {
                        _gotoNext = 2805274i32;
                    };
                } else if (__value__ == (2805209i32)) {
                    _i_2805053++;
                    _gotoNext = 2805061i32;
                } else if (__value__ == (2805274i32)) {
                    if ((_tr_2805114 < _sr_2805101 : Bool)) {
                        _gotoNext = 2805285i32;
                    } else {
                        _gotoNext = 2805360i32;
                    };
                } else if (__value__ == (2805285i32)) {
                    {
                        final __tmp__0 = _sr_2805101;
                        final __tmp__1 = _tr_2805114;
                        _tr_2805114 = __tmp__0;
                        _sr_2805101 = __tmp__1;
                    };
                    _gotoNext = 2805360i32;
                } else if (__value__ == (2805360i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2805101 : Bool) && (_sr_2805101 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2805114 == ((_sr_2805101 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2805406i32;
                    } else {
                        _gotoNext = 2805426i32;
                    };
                } else if (__value__ == (2805406i32)) {
                    _i_2805053++;
                    _gotoNext = 2805061i32;
                } else if (__value__ == (2805426i32)) {
                    return false;
                    _i_2805053++;
                    _gotoNext = 2805061i32;
                } else if (__value__ == (2805486i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2805511i32;
                } else if (__value__ == (2805511i32)) {
                    _s = (_s.__slice__(_i_2805053) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2805053) : stdgo.GoString)?.__copy__();
                    _keys_2805546 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2805546 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2805546 = (_keys_2805546.__append__(_key));
                        _values_2805546 = (_values_2805546.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2805546.length)) {
                        _gotoNext = 2806477i32;
                    } else {
                        _gotoNext = 2806551i32;
                    };
                } else if (__value__ == (2805567i32)) {
                    _sr_2805553 = _values_2805546[@:invalid_index_invalid_type _i_2805559];
                    var __blank__ = _keys_2805546[@:invalid_index_invalid_type _i_2805559];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2805636i32;
                    } else {
                        _gotoNext = 2805705i32;
                    };
                } else if (__value__ == (2805636i32)) {
                    return false;
                    _gotoNext = 2805705i32;
                } else if (__value__ == (2805705i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2805743i32;
                    } else {
                        _gotoNext = 2805783i32;
                    };
                } else if (__value__ == (2805743i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2805709 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2805927i32;
                } else if (__value__ == (2805783i32)) {
                    _gotoNext = 2805783i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2805788 = __tmp__._0;
                        _size_2805791 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2805788;
                        final __tmp__1 = (_t.__slice__(_size_2805791) : stdgo.GoString)?.__copy__();
                        _tr_2805709 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2805927i32;
                } else if (__value__ == (2805927i32)) {
                    if (_tr_2805709 == (_sr_2805553)) {
                        _gotoNext = 2805939i32;
                    } else {
                        _gotoNext = 2806004i32;
                    };
                } else if (__value__ == (2805939i32)) {
                    _i_2805559++;
                    _gotoNext = 2806478i32;
                } else if (__value__ == (2806004i32)) {
                    if ((_tr_2805709 < _sr_2805553 : Bool)) {
                        _gotoNext = 2806015i32;
                    } else {
                        _gotoNext = 2806069i32;
                    };
                } else if (__value__ == (2806015i32)) {
                    {
                        final __tmp__0 = _sr_2805553;
                        final __tmp__1 = _tr_2805709;
                        _tr_2805709 = __tmp__0;
                        _sr_2805553 = __tmp__1;
                    };
                    _gotoNext = 2806069i32;
                } else if (__value__ == (2806069i32)) {
                    if ((_tr_2805709 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2806091i32;
                    } else {
                        _gotoNext = 2806344i32;
                    };
                } else if (__value__ == (2806091i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2805553 : Bool) && (_sr_2805553 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2805709 == ((_sr_2805553 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2806191i32;
                    } else {
                        _gotoNext = 2806214i32;
                    };
                } else if (__value__ == (2806191i32)) {
                    _i_2805559++;
                    _gotoNext = 2806478i32;
                } else if (__value__ == (2806214i32)) {
                    return false;
                    _gotoNext = 2806344i32;
                } else if (__value__ == (2806344i32)) {
                    _r_2806344 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2805553);
                    var __blank__ = 0i32;
                    _gotoNext = 2806374i32;
                } else if (__value__ == (2806374i32)) {
                    if (((_r_2806344 != _sr_2805553) && (_r_2806344 < _tr_2805709 : Bool) : Bool)) {
                        _gotoNext = 2806396i32;
                    } else {
                        _gotoNext = 2806433i32;
                    };
                } else if (__value__ == (2806396i32)) {
                    _r_2806344 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2806344);
                    _gotoNext = 2806374i32;
                } else if (__value__ == (2806433i32)) {
                    if (_r_2806344 == (_tr_2805709)) {
                        _gotoNext = 2806444i32;
                    } else {
                        _gotoNext = 2806464i32;
                    };
                } else if (__value__ == (2806444i32)) {
                    _i_2805559++;
                    _gotoNext = 2806478i32;
                } else if (__value__ == (2806464i32)) {
                    return false;
                    _i_2805559++;
                    _gotoNext = 2806478i32;
                } else if (__value__ == (2806477i32)) {
                    _i_2805559 = 0i32;
                    _gotoNext = 2806478i32;
                } else if (__value__ == (2806478i32)) {
                    if (_i_2805559 < (_keys_2805546.length)) {
                        _gotoNext = 2805567i32;
                    } else {
                        _gotoNext = 2806551i32;
                    };
                } else if (__value__ == (2806551i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
