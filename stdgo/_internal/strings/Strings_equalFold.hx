package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2956265:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2956217:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2956710 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2956278:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _keys_2956710 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2956723 = @:invalid_type null;
        var _r_2957508:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2956955:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2956952:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2956873:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2956717:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2956217 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2956225i32;
                } else if (__value__ == (2956225i32)) {
                    if (((_i_2956217 < (_s.length) : Bool) && (_i_2956217 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2956261i32;
                    } else {
                        _gotoNext = 2956650i32;
                    };
                } else if (__value__ == (2956261i32)) {
                    _sr_2956265 = _s[(_i_2956217 : stdgo.GoInt)];
                    _tr_2956278 = _t[(_i_2956217 : stdgo.GoInt)];
                    if (((_sr_2956265 | _tr_2956278 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2956317i32;
                    } else {
                        _gotoNext = 2956361i32;
                    };
                } else if (__value__ == (2956317i32)) {
                    _gotoNext = 2956675i32;
                } else if (__value__ == (2956361i32)) {
                    if (_tr_2956278 == (_sr_2956265)) {
                        _gotoNext = 2956373i32;
                    } else {
                        _gotoNext = 2956438i32;
                    };
                } else if (__value__ == (2956373i32)) {
                    _i_2956217++;
                    _gotoNext = 2956225i32;
                } else if (__value__ == (2956438i32)) {
                    if ((_tr_2956278 < _sr_2956265 : Bool)) {
                        _gotoNext = 2956449i32;
                    } else {
                        _gotoNext = 2956524i32;
                    };
                } else if (__value__ == (2956449i32)) {
                    {
                        final __tmp__0 = _sr_2956265;
                        final __tmp__1 = _tr_2956278;
                        _tr_2956278 = __tmp__0;
                        _sr_2956265 = __tmp__1;
                    };
                    _gotoNext = 2956524i32;
                } else if (__value__ == (2956524i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2956265 : Bool) && (_sr_2956265 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2956278 == ((_sr_2956265 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2956570i32;
                    } else {
                        _gotoNext = 2956590i32;
                    };
                } else if (__value__ == (2956570i32)) {
                    _i_2956217++;
                    _gotoNext = 2956225i32;
                } else if (__value__ == (2956590i32)) {
                    return false;
                    _i_2956217++;
                    _gotoNext = 2956225i32;
                } else if (__value__ == (2956650i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2956675i32;
                } else if (__value__ == (2956675i32)) {
                    _s = (_s.__slice__(_i_2956217) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2956217) : stdgo.GoString)?.__copy__();
                    _keys_2956710 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2956710 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2956710 = (_keys_2956710.__append__(_key));
                        _values_2956710 = (_values_2956710.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2956710.length)) {
                        _gotoNext = 2957641i32;
                    } else {
                        _gotoNext = 2957715i32;
                    };
                } else if (__value__ == (2956731i32)) {
                    _sr_2956717 = _values_2956710[@:invalid_index_invalid_type _i_2956723];
                    var __blank__ = _keys_2956710[@:invalid_index_invalid_type _i_2956723];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2956800i32;
                    } else {
                        _gotoNext = 2956869i32;
                    };
                } else if (__value__ == (2956800i32)) {
                    return false;
                    _gotoNext = 2956869i32;
                } else if (__value__ == (2956869i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2956907i32;
                    } else {
                        _gotoNext = 2956947i32;
                    };
                } else if (__value__ == (2956907i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2956873 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2957091i32;
                } else if (__value__ == (2956947i32)) {
                    _gotoNext = 2956947i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2956952 = __tmp__._0;
                        _size_2956955 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2956952;
                        final __tmp__1 = (_t.__slice__(_size_2956955) : stdgo.GoString)?.__copy__();
                        _tr_2956873 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2957091i32;
                } else if (__value__ == (2957091i32)) {
                    if (_tr_2956873 == (_sr_2956717)) {
                        _gotoNext = 2957103i32;
                    } else {
                        _gotoNext = 2957168i32;
                    };
                } else if (__value__ == (2957103i32)) {
                    _i_2956723++;
                    _gotoNext = 2957642i32;
                } else if (__value__ == (2957168i32)) {
                    if ((_tr_2956873 < _sr_2956717 : Bool)) {
                        _gotoNext = 2957179i32;
                    } else {
                        _gotoNext = 2957233i32;
                    };
                } else if (__value__ == (2957179i32)) {
                    {
                        final __tmp__0 = _sr_2956717;
                        final __tmp__1 = _tr_2956873;
                        _tr_2956873 = __tmp__0;
                        _sr_2956717 = __tmp__1;
                    };
                    _gotoNext = 2957233i32;
                } else if (__value__ == (2957233i32)) {
                    if ((_tr_2956873 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2957255i32;
                    } else {
                        _gotoNext = 2957508i32;
                    };
                } else if (__value__ == (2957255i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2956717 : Bool) && (_sr_2956717 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2956873 == ((_sr_2956717 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2957355i32;
                    } else {
                        _gotoNext = 2957378i32;
                    };
                } else if (__value__ == (2957355i32)) {
                    _i_2956723++;
                    _gotoNext = 2957642i32;
                } else if (__value__ == (2957378i32)) {
                    return false;
                    _gotoNext = 2957508i32;
                } else if (__value__ == (2957508i32)) {
                    _r_2957508 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2956717);
                    var __blank__ = 0i32;
                    _gotoNext = 2957538i32;
                } else if (__value__ == (2957538i32)) {
                    if (((_r_2957508 != _sr_2956717) && (_r_2957508 < _tr_2956873 : Bool) : Bool)) {
                        _gotoNext = 2957560i32;
                    } else {
                        _gotoNext = 2957597i32;
                    };
                } else if (__value__ == (2957560i32)) {
                    _r_2957508 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2957508);
                    _gotoNext = 2957538i32;
                } else if (__value__ == (2957597i32)) {
                    if (_r_2957508 == (_tr_2956873)) {
                        _gotoNext = 2957608i32;
                    } else {
                        _gotoNext = 2957628i32;
                    };
                } else if (__value__ == (2957608i32)) {
                    _i_2956723++;
                    _gotoNext = 2957642i32;
                } else if (__value__ == (2957628i32)) {
                    return false;
                    _i_2956723++;
                    _gotoNext = 2957642i32;
                } else if (__value__ == (2957641i32)) {
                    _i_2956723 = 0i32;
                    _gotoNext = 2957642i32;
                } else if (__value__ == (2957642i32)) {
                    if (_i_2956723 < (_keys_2956710.length)) {
                        _gotoNext = 2956731i32;
                    } else {
                        _gotoNext = 2957715i32;
                    };
                } else if (__value__ == (2957715i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
