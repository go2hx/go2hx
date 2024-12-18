package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2917735:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2917728 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2917283:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2918526:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2917970:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2917891:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2917741 = @:invalid_type null;
        var _tr_2917296:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2917235:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2917973:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_2917728 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2917235 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2917243i32;
                } else if (__value__ == (2917243i32)) {
                    if (((_i_2917235 < (_s.length) : Bool) && (_i_2917235 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2917279i32;
                    } else {
                        _gotoNext = 2917668i32;
                    };
                } else if (__value__ == (2917279i32)) {
                    _sr_2917283 = _s[(_i_2917235 : stdgo.GoInt)];
                    _tr_2917296 = _t[(_i_2917235 : stdgo.GoInt)];
                    if (((_sr_2917283 | _tr_2917296 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2917335i32;
                    } else {
                        _gotoNext = 2917379i32;
                    };
                } else if (__value__ == (2917335i32)) {
                    _gotoNext = 2917693i32;
                } else if (__value__ == (2917379i32)) {
                    if (_tr_2917296 == (_sr_2917283)) {
                        _gotoNext = 2917391i32;
                    } else {
                        _gotoNext = 2917456i32;
                    };
                } else if (__value__ == (2917391i32)) {
                    _i_2917235++;
                    _gotoNext = 2917243i32;
                } else if (__value__ == (2917456i32)) {
                    if ((_tr_2917296 < _sr_2917283 : Bool)) {
                        _gotoNext = 2917467i32;
                    } else {
                        _gotoNext = 2917542i32;
                    };
                } else if (__value__ == (2917467i32)) {
                    {
                        final __tmp__0 = _sr_2917283;
                        final __tmp__1 = _tr_2917296;
                        _tr_2917296 = __tmp__0;
                        _sr_2917283 = __tmp__1;
                    };
                    _gotoNext = 2917542i32;
                } else if (__value__ == (2917542i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2917283 : Bool) && (_sr_2917283 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2917296 == ((_sr_2917283 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2917588i32;
                    } else {
                        _gotoNext = 2917608i32;
                    };
                } else if (__value__ == (2917588i32)) {
                    _i_2917235++;
                    _gotoNext = 2917243i32;
                } else if (__value__ == (2917608i32)) {
                    return false;
                    _i_2917235++;
                    _gotoNext = 2917243i32;
                } else if (__value__ == (2917668i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2917693i32;
                } else if (__value__ == (2917693i32)) {
                    _s = (_s.__slice__(_i_2917235) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2917235) : stdgo.GoString)?.__copy__();
                    _keys_2917728 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2917728 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2917728 = (_keys_2917728.__append__(_key));
                        _values_2917728 = (_values_2917728.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2917728.length)) {
                        _gotoNext = 2918659i32;
                    } else {
                        _gotoNext = 2918733i32;
                    };
                } else if (__value__ == (2917749i32)) {
                    _sr_2917735 = _values_2917728[@:invalid_index_invalid_type _i_2917741];
                    var __blank__ = _keys_2917728[@:invalid_index_invalid_type _i_2917741];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2917818i32;
                    } else {
                        _gotoNext = 2917887i32;
                    };
                } else if (__value__ == (2917818i32)) {
                    return false;
                    _gotoNext = 2917887i32;
                } else if (__value__ == (2917887i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2917925i32;
                    } else {
                        _gotoNext = 2917965i32;
                    };
                } else if (__value__ == (2917925i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2917891 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2918109i32;
                } else if (__value__ == (2917965i32)) {
                    _gotoNext = 2917965i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2917970 = __tmp__._0;
                        _size_2917973 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2917970;
                        final __tmp__1 = (_t.__slice__(_size_2917973) : stdgo.GoString)?.__copy__();
                        _tr_2917891 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2918109i32;
                } else if (__value__ == (2918109i32)) {
                    if (_tr_2917891 == (_sr_2917735)) {
                        _gotoNext = 2918121i32;
                    } else {
                        _gotoNext = 2918186i32;
                    };
                } else if (__value__ == (2918121i32)) {
                    _i_2917741++;
                    _gotoNext = 2918660i32;
                } else if (__value__ == (2918186i32)) {
                    if ((_tr_2917891 < _sr_2917735 : Bool)) {
                        _gotoNext = 2918197i32;
                    } else {
                        _gotoNext = 2918251i32;
                    };
                } else if (__value__ == (2918197i32)) {
                    {
                        final __tmp__0 = _sr_2917735;
                        final __tmp__1 = _tr_2917891;
                        _tr_2917891 = __tmp__0;
                        _sr_2917735 = __tmp__1;
                    };
                    _gotoNext = 2918251i32;
                } else if (__value__ == (2918251i32)) {
                    if ((_tr_2917891 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2918273i32;
                    } else {
                        _gotoNext = 2918526i32;
                    };
                } else if (__value__ == (2918273i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2917735 : Bool) && (_sr_2917735 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2917891 == ((_sr_2917735 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2918373i32;
                    } else {
                        _gotoNext = 2918396i32;
                    };
                } else if (__value__ == (2918373i32)) {
                    _i_2917741++;
                    _gotoNext = 2918660i32;
                } else if (__value__ == (2918396i32)) {
                    return false;
                    _gotoNext = 2918526i32;
                } else if (__value__ == (2918526i32)) {
                    _r_2918526 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2917735);
                    var __blank__ = 0i32;
                    _gotoNext = 2918556i32;
                } else if (__value__ == (2918556i32)) {
                    if (((_r_2918526 != _sr_2917735) && (_r_2918526 < _tr_2917891 : Bool) : Bool)) {
                        _gotoNext = 2918578i32;
                    } else {
                        _gotoNext = 2918615i32;
                    };
                } else if (__value__ == (2918578i32)) {
                    _r_2918526 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2918526);
                    _gotoNext = 2918556i32;
                } else if (__value__ == (2918615i32)) {
                    if (_r_2918526 == (_tr_2917891)) {
                        _gotoNext = 2918626i32;
                    } else {
                        _gotoNext = 2918646i32;
                    };
                } else if (__value__ == (2918626i32)) {
                    _i_2917741++;
                    _gotoNext = 2918660i32;
                } else if (__value__ == (2918646i32)) {
                    return false;
                    _i_2917741++;
                    _gotoNext = 2918660i32;
                } else if (__value__ == (2918659i32)) {
                    _i_2917741 = 0i32;
                    _gotoNext = 2918660i32;
                } else if (__value__ == (2918660i32)) {
                    if (_i_2917741 < (_keys_2917728.length)) {
                        _gotoNext = 2917749i32;
                    } else {
                        _gotoNext = 2918733i32;
                    };
                } else if (__value__ == (2918733i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
