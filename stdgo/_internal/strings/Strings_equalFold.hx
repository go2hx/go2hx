package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2983766:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2983131:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2982523:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2982475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2982975:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2982968 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2982968 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2982981 = @:invalid_type null;
        var _tr_2982536:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2983213:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2983210:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2982475 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2982483i32;
                } else if (__value__ == (2982483i32)) {
                    if (((_i_2982475 < (_s.length) : Bool) && (_i_2982475 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2982519i32;
                    } else {
                        _gotoNext = 2982908i32;
                    };
                } else if (__value__ == (2982519i32)) {
                    _sr_2982523 = _s[(_i_2982475 : stdgo.GoInt)];
                    _tr_2982536 = _t[(_i_2982475 : stdgo.GoInt)];
                    if (((_sr_2982523 | _tr_2982536 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2982575i32;
                    } else {
                        _gotoNext = 2982619i32;
                    };
                } else if (__value__ == (2982575i32)) {
                    _gotoNext = 2982933i32;
                } else if (__value__ == (2982619i32)) {
                    if (_tr_2982536 == (_sr_2982523)) {
                        _gotoNext = 2982631i32;
                    } else {
                        _gotoNext = 2982696i32;
                    };
                } else if (__value__ == (2982631i32)) {
                    _i_2982475++;
                    _gotoNext = 2982483i32;
                } else if (__value__ == (2982696i32)) {
                    if ((_tr_2982536 < _sr_2982523 : Bool)) {
                        _gotoNext = 2982707i32;
                    } else {
                        _gotoNext = 2982782i32;
                    };
                } else if (__value__ == (2982707i32)) {
                    {
                        final __tmp__0 = _sr_2982523;
                        final __tmp__1 = _tr_2982536;
                        _tr_2982536 = __tmp__0;
                        _sr_2982523 = __tmp__1;
                    };
                    _gotoNext = 2982782i32;
                } else if (__value__ == (2982782i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2982523 : Bool) && (_sr_2982523 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2982536 == ((_sr_2982523 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2982828i32;
                    } else {
                        _gotoNext = 2982848i32;
                    };
                } else if (__value__ == (2982828i32)) {
                    _i_2982475++;
                    _gotoNext = 2982483i32;
                } else if (__value__ == (2982848i32)) {
                    return false;
                    _i_2982475++;
                    _gotoNext = 2982483i32;
                } else if (__value__ == (2982908i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2982933i32;
                } else if (__value__ == (2982933i32)) {
                    _s = (_s.__slice__(_i_2982475) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2982475) : stdgo.GoString)?.__copy__();
                    _keys_2982968 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2982968 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2982968 = (_keys_2982968.__append__(_key));
                        _values_2982968 = (_values_2982968.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2982968.length)) {
                        _gotoNext = 2983899i32;
                    } else {
                        _gotoNext = 2983973i32;
                    };
                } else if (__value__ == (2982989i32)) {
                    _sr_2982975 = _values_2982968[@:invalid_index_invalid_type _i_2982981];
                    var __blank__ = _keys_2982968[@:invalid_index_invalid_type _i_2982981];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2983058i32;
                    } else {
                        _gotoNext = 2983127i32;
                    };
                } else if (__value__ == (2983058i32)) {
                    return false;
                    _gotoNext = 2983127i32;
                } else if (__value__ == (2983127i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2983165i32;
                    } else {
                        _gotoNext = 2983205i32;
                    };
                } else if (__value__ == (2983165i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2983131 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2983349i32;
                } else if (__value__ == (2983205i32)) {
                    _gotoNext = 2983205i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2983210 = __tmp__._0;
                        _size_2983213 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2983210;
                        final __tmp__1 = (_t.__slice__(_size_2983213) : stdgo.GoString)?.__copy__();
                        _tr_2983131 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2983349i32;
                } else if (__value__ == (2983349i32)) {
                    if (_tr_2983131 == (_sr_2982975)) {
                        _gotoNext = 2983361i32;
                    } else {
                        _gotoNext = 2983426i32;
                    };
                } else if (__value__ == (2983361i32)) {
                    _i_2982981++;
                    _gotoNext = 2983900i32;
                } else if (__value__ == (2983426i32)) {
                    if ((_tr_2983131 < _sr_2982975 : Bool)) {
                        _gotoNext = 2983437i32;
                    } else {
                        _gotoNext = 2983491i32;
                    };
                } else if (__value__ == (2983437i32)) {
                    {
                        final __tmp__0 = _sr_2982975;
                        final __tmp__1 = _tr_2983131;
                        _tr_2983131 = __tmp__0;
                        _sr_2982975 = __tmp__1;
                    };
                    _gotoNext = 2983491i32;
                } else if (__value__ == (2983491i32)) {
                    if ((_tr_2983131 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2983513i32;
                    } else {
                        _gotoNext = 2983766i32;
                    };
                } else if (__value__ == (2983513i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2982975 : Bool) && (_sr_2982975 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2983131 == ((_sr_2982975 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2983613i32;
                    } else {
                        _gotoNext = 2983636i32;
                    };
                } else if (__value__ == (2983613i32)) {
                    _i_2982981++;
                    _gotoNext = 2983900i32;
                } else if (__value__ == (2983636i32)) {
                    return false;
                    _gotoNext = 2983766i32;
                } else if (__value__ == (2983766i32)) {
                    _r_2983766 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2982975);
                    var __blank__ = 0i32;
                    _gotoNext = 2983796i32;
                } else if (__value__ == (2983796i32)) {
                    if (((_r_2983766 != _sr_2982975) && (_r_2983766 < _tr_2983131 : Bool) : Bool)) {
                        _gotoNext = 2983818i32;
                    } else {
                        _gotoNext = 2983855i32;
                    };
                } else if (__value__ == (2983818i32)) {
                    _r_2983766 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2983766);
                    _gotoNext = 2983796i32;
                } else if (__value__ == (2983855i32)) {
                    if (_r_2983766 == (_tr_2983131)) {
                        _gotoNext = 2983866i32;
                    } else {
                        _gotoNext = 2983886i32;
                    };
                } else if (__value__ == (2983866i32)) {
                    _i_2982981++;
                    _gotoNext = 2983900i32;
                } else if (__value__ == (2983886i32)) {
                    return false;
                    _i_2982981++;
                    _gotoNext = 2983900i32;
                } else if (__value__ == (2983899i32)) {
                    _i_2982981 = 0i32;
                    _gotoNext = 2983900i32;
                } else if (__value__ == (2983900i32)) {
                    if (_i_2982981 < (_keys_2982968.length)) {
                        _gotoNext = 2982989i32;
                    } else {
                        _gotoNext = 2983973i32;
                    };
                } else if (__value__ == (2983973i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
