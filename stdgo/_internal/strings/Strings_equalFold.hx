package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2991567:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2991011:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2990782 = @:invalid_type null;
        var _tr_2990337:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2990324:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2991014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2990932:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2990776:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2990769 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2990769 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2990276:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2990276 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2990284i32;
                } else if (__value__ == (2990284i32)) {
                    if (((_i_2990276 < (_s.length) : Bool) && (_i_2990276 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2990320i32;
                    } else {
                        _gotoNext = 2990709i32;
                    };
                } else if (__value__ == (2990320i32)) {
                    _sr_2990324 = _s[(_i_2990276 : stdgo.GoInt)];
                    _tr_2990337 = _t[(_i_2990276 : stdgo.GoInt)];
                    if (((_sr_2990324 | _tr_2990337 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2990376i32;
                    } else {
                        _gotoNext = 2990420i32;
                    };
                } else if (__value__ == (2990376i32)) {
                    _gotoNext = 2990734i32;
                } else if (__value__ == (2990420i32)) {
                    if (_tr_2990337 == (_sr_2990324)) {
                        _gotoNext = 2990432i32;
                    } else {
                        _gotoNext = 2990497i32;
                    };
                } else if (__value__ == (2990432i32)) {
                    _i_2990276++;
                    _gotoNext = 2990284i32;
                } else if (__value__ == (2990497i32)) {
                    if ((_tr_2990337 < _sr_2990324 : Bool)) {
                        _gotoNext = 2990508i32;
                    } else {
                        _gotoNext = 2990583i32;
                    };
                } else if (__value__ == (2990508i32)) {
                    {
                        final __tmp__0 = _sr_2990324;
                        final __tmp__1 = _tr_2990337;
                        _tr_2990337 = __tmp__0;
                        _sr_2990324 = __tmp__1;
                    };
                    _gotoNext = 2990583i32;
                } else if (__value__ == (2990583i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2990324 : Bool) && (_sr_2990324 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2990337 == ((_sr_2990324 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2990629i32;
                    } else {
                        _gotoNext = 2990649i32;
                    };
                } else if (__value__ == (2990629i32)) {
                    _i_2990276++;
                    _gotoNext = 2990284i32;
                } else if (__value__ == (2990649i32)) {
                    return false;
                    _i_2990276++;
                    _gotoNext = 2990284i32;
                } else if (__value__ == (2990709i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2990734i32;
                } else if (__value__ == (2990734i32)) {
                    _s = (_s.__slice__(_i_2990276) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2990276) : stdgo.GoString)?.__copy__();
                    _keys_2990769 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2990769 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2990769 = (_keys_2990769.__append__(_key));
                        _values_2990769 = (_values_2990769.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2990769.length)) {
                        _gotoNext = 2991700i32;
                    } else {
                        _gotoNext = 2991774i32;
                    };
                } else if (__value__ == (2990790i32)) {
                    _sr_2990776 = _values_2990769[@:invalid_index_invalid_type _i_2990782];
                    var __blank__ = _keys_2990769[@:invalid_index_invalid_type _i_2990782];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2990859i32;
                    } else {
                        _gotoNext = 2990928i32;
                    };
                } else if (__value__ == (2990859i32)) {
                    return false;
                    _gotoNext = 2990928i32;
                } else if (__value__ == (2990928i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2990966i32;
                    } else {
                        _gotoNext = 2991006i32;
                    };
                } else if (__value__ == (2990966i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2990932 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2991150i32;
                } else if (__value__ == (2991006i32)) {
                    _gotoNext = 2991006i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2991011 = __tmp__._0;
                        _size_2991014 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2991011;
                        final __tmp__1 = (_t.__slice__(_size_2991014) : stdgo.GoString)?.__copy__();
                        _tr_2990932 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2991150i32;
                } else if (__value__ == (2991150i32)) {
                    if (_tr_2990932 == (_sr_2990776)) {
                        _gotoNext = 2991162i32;
                    } else {
                        _gotoNext = 2991227i32;
                    };
                } else if (__value__ == (2991162i32)) {
                    _i_2990782++;
                    _gotoNext = 2991701i32;
                } else if (__value__ == (2991227i32)) {
                    if ((_tr_2990932 < _sr_2990776 : Bool)) {
                        _gotoNext = 2991238i32;
                    } else {
                        _gotoNext = 2991292i32;
                    };
                } else if (__value__ == (2991238i32)) {
                    {
                        final __tmp__0 = _sr_2990776;
                        final __tmp__1 = _tr_2990932;
                        _tr_2990932 = __tmp__0;
                        _sr_2990776 = __tmp__1;
                    };
                    _gotoNext = 2991292i32;
                } else if (__value__ == (2991292i32)) {
                    if ((_tr_2990932 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2991314i32;
                    } else {
                        _gotoNext = 2991567i32;
                    };
                } else if (__value__ == (2991314i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2990776 : Bool) && (_sr_2990776 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2990932 == ((_sr_2990776 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2991414i32;
                    } else {
                        _gotoNext = 2991437i32;
                    };
                } else if (__value__ == (2991414i32)) {
                    _i_2990782++;
                    _gotoNext = 2991701i32;
                } else if (__value__ == (2991437i32)) {
                    return false;
                    _gotoNext = 2991567i32;
                } else if (__value__ == (2991567i32)) {
                    _r_2991567 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2990776);
                    var __blank__ = 0i32;
                    _gotoNext = 2991597i32;
                } else if (__value__ == (2991597i32)) {
                    if (((_r_2991567 != _sr_2990776) && (_r_2991567 < _tr_2990932 : Bool) : Bool)) {
                        _gotoNext = 2991619i32;
                    } else {
                        _gotoNext = 2991656i32;
                    };
                } else if (__value__ == (2991619i32)) {
                    _r_2991567 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2991567);
                    _gotoNext = 2991597i32;
                } else if (__value__ == (2991656i32)) {
                    if (_r_2991567 == (_tr_2990932)) {
                        _gotoNext = 2991667i32;
                    } else {
                        _gotoNext = 2991687i32;
                    };
                } else if (__value__ == (2991667i32)) {
                    _i_2990782++;
                    _gotoNext = 2991701i32;
                } else if (__value__ == (2991687i32)) {
                    return false;
                    _i_2990782++;
                    _gotoNext = 2991701i32;
                } else if (__value__ == (2991700i32)) {
                    _i_2990782 = 0i32;
                    _gotoNext = 2991701i32;
                } else if (__value__ == (2991701i32)) {
                    if (_i_2990782 < (_keys_2990769.length)) {
                        _gotoNext = 2990790i32;
                    } else {
                        _gotoNext = 2991774i32;
                    };
                } else if (__value__ == (2991774i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
