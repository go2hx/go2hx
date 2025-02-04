package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2842071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2842068:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2841826 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2841826 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2841839 = @:invalid_type null;
        var _i_2841333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2842624:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2841989:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2841833:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2841394:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2841381:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2841333 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2841341i32;
                } else if (__value__ == (2841341i32)) {
                    if (((_i_2841333 < (_s.length) : Bool) && (_i_2841333 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2841377i32;
                    } else {
                        _gotoNext = 2841766i32;
                    };
                } else if (__value__ == (2841377i32)) {
                    _sr_2841381 = _s[(_i_2841333 : stdgo.GoInt)];
                    _tr_2841394 = _t[(_i_2841333 : stdgo.GoInt)];
                    if (((_sr_2841381 | _tr_2841394 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2841433i32;
                    } else {
                        _gotoNext = 2841477i32;
                    };
                } else if (__value__ == (2841433i32)) {
                    _gotoNext = 2841791i32;
                } else if (__value__ == (2841477i32)) {
                    if (_tr_2841394 == (_sr_2841381)) {
                        _gotoNext = 2841489i32;
                    } else {
                        _gotoNext = 2841554i32;
                    };
                } else if (__value__ == (2841489i32)) {
                    _i_2841333++;
                    _gotoNext = 2841341i32;
                } else if (__value__ == (2841554i32)) {
                    if ((_tr_2841394 < _sr_2841381 : Bool)) {
                        _gotoNext = 2841565i32;
                    } else {
                        _gotoNext = 2841640i32;
                    };
                } else if (__value__ == (2841565i32)) {
                    {
                        final __tmp__0 = _sr_2841381;
                        final __tmp__1 = _tr_2841394;
                        _tr_2841394 = __tmp__0;
                        _sr_2841381 = __tmp__1;
                    };
                    _gotoNext = 2841640i32;
                } else if (__value__ == (2841640i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2841381 : Bool) && (_sr_2841381 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2841394 == ((_sr_2841381 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2841686i32;
                    } else {
                        _gotoNext = 2841706i32;
                    };
                } else if (__value__ == (2841686i32)) {
                    _i_2841333++;
                    _gotoNext = 2841341i32;
                } else if (__value__ == (2841706i32)) {
                    return false;
                    _i_2841333++;
                    _gotoNext = 2841341i32;
                } else if (__value__ == (2841766i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2841791i32;
                } else if (__value__ == (2841791i32)) {
                    _s = (_s.__slice__(_i_2841333) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2841333) : stdgo.GoString)?.__copy__();
                    _keys_2841826 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2841826 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2841826 = (_keys_2841826.__append__(_key));
                        _values_2841826 = (_values_2841826.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2841826.length)) {
                        _gotoNext = 2842757i32;
                    } else {
                        _gotoNext = 2842831i32;
                    };
                } else if (__value__ == (2841847i32)) {
                    _sr_2841833 = _values_2841826[@:invalid_index_invalid_type _i_2841839];
                    var __blank__ = _keys_2841826[@:invalid_index_invalid_type _i_2841839];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2841916i32;
                    } else {
                        _gotoNext = 2841985i32;
                    };
                } else if (__value__ == (2841916i32)) {
                    return false;
                    _gotoNext = 2841985i32;
                } else if (__value__ == (2841985i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2842023i32;
                    } else {
                        _gotoNext = 2842063i32;
                    };
                } else if (__value__ == (2842023i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2841989 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2842207i32;
                } else if (__value__ == (2842063i32)) {
                    _gotoNext = 2842063i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2842068 = @:tmpset0 __tmp__._0;
                        _size_2842071 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2842068;
                        final __tmp__1 = (_t.__slice__(_size_2842071) : stdgo.GoString)?.__copy__();
                        _tr_2841989 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2842207i32;
                } else if (__value__ == (2842207i32)) {
                    if (_tr_2841989 == (_sr_2841833)) {
                        _gotoNext = 2842219i32;
                    } else {
                        _gotoNext = 2842284i32;
                    };
                } else if (__value__ == (2842219i32)) {
                    _i_2841839++;
                    _gotoNext = 2842758i32;
                } else if (__value__ == (2842284i32)) {
                    if ((_tr_2841989 < _sr_2841833 : Bool)) {
                        _gotoNext = 2842295i32;
                    } else {
                        _gotoNext = 2842349i32;
                    };
                } else if (__value__ == (2842295i32)) {
                    {
                        final __tmp__0 = _sr_2841833;
                        final __tmp__1 = _tr_2841989;
                        _tr_2841989 = __tmp__0;
                        _sr_2841833 = __tmp__1;
                    };
                    _gotoNext = 2842349i32;
                } else if (__value__ == (2842349i32)) {
                    if ((_tr_2841989 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2842371i32;
                    } else {
                        _gotoNext = 2842624i32;
                    };
                } else if (__value__ == (2842371i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2841833 : Bool) && (_sr_2841833 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2841989 == ((_sr_2841833 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2842471i32;
                    } else {
                        _gotoNext = 2842494i32;
                    };
                } else if (__value__ == (2842471i32)) {
                    _i_2841839++;
                    _gotoNext = 2842758i32;
                } else if (__value__ == (2842494i32)) {
                    return false;
                    _gotoNext = 2842624i32;
                } else if (__value__ == (2842624i32)) {
                    _r_2842624 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2841833);
                    var __blank__ = 0i32;
                    _gotoNext = 2842654i32;
                } else if (__value__ == (2842654i32)) {
                    if (((_r_2842624 != _sr_2841833) && (_r_2842624 < _tr_2841989 : Bool) : Bool)) {
                        _gotoNext = 2842676i32;
                    } else {
                        _gotoNext = 2842713i32;
                    };
                } else if (__value__ == (2842676i32)) {
                    _r_2842624 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2842624);
                    _gotoNext = 2842654i32;
                } else if (__value__ == (2842713i32)) {
                    if (_r_2842624 == (_tr_2841989)) {
                        _gotoNext = 2842724i32;
                    } else {
                        _gotoNext = 2842744i32;
                    };
                } else if (__value__ == (2842724i32)) {
                    _i_2841839++;
                    _gotoNext = 2842758i32;
                } else if (__value__ == (2842744i32)) {
                    return false;
                    _i_2841839++;
                    _gotoNext = 2842758i32;
                } else if (__value__ == (2842757i32)) {
                    _i_2841839 = 0i32;
                    _gotoNext = 2842758i32;
                } else if (__value__ == (2842758i32)) {
                    if (_i_2841839 < (_keys_2841826.length)) {
                        _gotoNext = 2841847i32;
                    } else {
                        _gotoNext = 2842831i32;
                    };
                } else if (__value__ == (2842831i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
