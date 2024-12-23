package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2760188:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2759553:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2759390 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2758958:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2758945:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2759635:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2759632:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2759397:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2759390 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2759403 = @:invalid_type null;
        var _i_2758897:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2758897 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2758905i32;
                } else if (__value__ == (2758905i32)) {
                    if (((_i_2758897 < (_s.length) : Bool) && (_i_2758897 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2758941i32;
                    } else {
                        _gotoNext = 2759330i32;
                    };
                } else if (__value__ == (2758941i32)) {
                    _sr_2758945 = _s[(_i_2758897 : stdgo.GoInt)];
                    _tr_2758958 = _t[(_i_2758897 : stdgo.GoInt)];
                    if (((_sr_2758945 | _tr_2758958 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2758997i32;
                    } else {
                        _gotoNext = 2759041i32;
                    };
                } else if (__value__ == (2758997i32)) {
                    _gotoNext = 2759355i32;
                } else if (__value__ == (2759041i32)) {
                    if (_tr_2758958 == (_sr_2758945)) {
                        _gotoNext = 2759053i32;
                    } else {
                        _gotoNext = 2759118i32;
                    };
                } else if (__value__ == (2759053i32)) {
                    _i_2758897++;
                    _gotoNext = 2758905i32;
                } else if (__value__ == (2759118i32)) {
                    if ((_tr_2758958 < _sr_2758945 : Bool)) {
                        _gotoNext = 2759129i32;
                    } else {
                        _gotoNext = 2759204i32;
                    };
                } else if (__value__ == (2759129i32)) {
                    {
                        final __tmp__0 = _sr_2758945;
                        final __tmp__1 = _tr_2758958;
                        _tr_2758958 = __tmp__0;
                        _sr_2758945 = __tmp__1;
                    };
                    _gotoNext = 2759204i32;
                } else if (__value__ == (2759204i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2758945 : Bool) && (_sr_2758945 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2758958 == ((_sr_2758945 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2759250i32;
                    } else {
                        _gotoNext = 2759270i32;
                    };
                } else if (__value__ == (2759250i32)) {
                    _i_2758897++;
                    _gotoNext = 2758905i32;
                } else if (__value__ == (2759270i32)) {
                    return false;
                    _i_2758897++;
                    _gotoNext = 2758905i32;
                } else if (__value__ == (2759330i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2759355i32;
                } else if (__value__ == (2759355i32)) {
                    _s = (_s.__slice__(_i_2758897) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2758897) : stdgo.GoString)?.__copy__();
                    _keys_2759390 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2759390 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2759390 = (_keys_2759390.__append__(_key));
                        _values_2759390 = (_values_2759390.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2759390.length)) {
                        _gotoNext = 2760321i32;
                    } else {
                        _gotoNext = 2760395i32;
                    };
                } else if (__value__ == (2759411i32)) {
                    _sr_2759397 = _values_2759390[@:invalid_index_invalid_type _i_2759403];
                    var __blank__ = _keys_2759390[@:invalid_index_invalid_type _i_2759403];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2759480i32;
                    } else {
                        _gotoNext = 2759549i32;
                    };
                } else if (__value__ == (2759480i32)) {
                    return false;
                    _gotoNext = 2759549i32;
                } else if (__value__ == (2759549i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2759587i32;
                    } else {
                        _gotoNext = 2759627i32;
                    };
                } else if (__value__ == (2759587i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2759553 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2759771i32;
                } else if (__value__ == (2759627i32)) {
                    _gotoNext = 2759627i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2759632 = __tmp__._0;
                        _size_2759635 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2759632;
                        final __tmp__1 = (_t.__slice__(_size_2759635) : stdgo.GoString)?.__copy__();
                        _tr_2759553 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2759771i32;
                } else if (__value__ == (2759771i32)) {
                    if (_tr_2759553 == (_sr_2759397)) {
                        _gotoNext = 2759783i32;
                    } else {
                        _gotoNext = 2759848i32;
                    };
                } else if (__value__ == (2759783i32)) {
                    _i_2759403++;
                    _gotoNext = 2760322i32;
                } else if (__value__ == (2759848i32)) {
                    if ((_tr_2759553 < _sr_2759397 : Bool)) {
                        _gotoNext = 2759859i32;
                    } else {
                        _gotoNext = 2759913i32;
                    };
                } else if (__value__ == (2759859i32)) {
                    {
                        final __tmp__0 = _sr_2759397;
                        final __tmp__1 = _tr_2759553;
                        _tr_2759553 = __tmp__0;
                        _sr_2759397 = __tmp__1;
                    };
                    _gotoNext = 2759913i32;
                } else if (__value__ == (2759913i32)) {
                    if ((_tr_2759553 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2759935i32;
                    } else {
                        _gotoNext = 2760188i32;
                    };
                } else if (__value__ == (2759935i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2759397 : Bool) && (_sr_2759397 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2759553 == ((_sr_2759397 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2760035i32;
                    } else {
                        _gotoNext = 2760058i32;
                    };
                } else if (__value__ == (2760035i32)) {
                    _i_2759403++;
                    _gotoNext = 2760322i32;
                } else if (__value__ == (2760058i32)) {
                    return false;
                    _gotoNext = 2760188i32;
                } else if (__value__ == (2760188i32)) {
                    _r_2760188 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2759397);
                    var __blank__ = 0i32;
                    _gotoNext = 2760218i32;
                } else if (__value__ == (2760218i32)) {
                    if (((_r_2760188 != _sr_2759397) && (_r_2760188 < _tr_2759553 : Bool) : Bool)) {
                        _gotoNext = 2760240i32;
                    } else {
                        _gotoNext = 2760277i32;
                    };
                } else if (__value__ == (2760240i32)) {
                    _r_2760188 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2760188);
                    _gotoNext = 2760218i32;
                } else if (__value__ == (2760277i32)) {
                    if (_r_2760188 == (_tr_2759553)) {
                        _gotoNext = 2760288i32;
                    } else {
                        _gotoNext = 2760308i32;
                    };
                } else if (__value__ == (2760288i32)) {
                    _i_2759403++;
                    _gotoNext = 2760322i32;
                } else if (__value__ == (2760308i32)) {
                    return false;
                    _i_2759403++;
                    _gotoNext = 2760322i32;
                } else if (__value__ == (2760321i32)) {
                    _i_2759403 = 0i32;
                    _gotoNext = 2760322i32;
                } else if (__value__ == (2760322i32)) {
                    if (_i_2759403 < (_keys_2759390.length)) {
                        _gotoNext = 2759411i32;
                    } else {
                        _gotoNext = 2760395i32;
                    };
                } else if (__value__ == (2760395i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
