package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2907399 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_2907412 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2907399 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2906914i32;
                } else if (__value__ == (2906914i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2906950i32;
                    } else {
                        _gotoNext = 2907339i32;
                    };
                } else if (__value__ == (2906950i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907006i32;
                    } else {
                        _gotoNext = 2907050i32;
                    };
                } else if (__value__ == (2907006i32)) {
                    _gotoNext = 2907364i32;
                } else if (__value__ == (2907050i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2907062i32;
                    } else {
                        _gotoNext = 2907127i32;
                    };
                } else if (__value__ == (2907062i32)) {
                    _i_0++;
                    _gotoNext = 2906914i32;
                } else if (__value__ == (2907127i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2907138i32;
                    } else {
                        _gotoNext = 2907213i32;
                    };
                } else if (__value__ == (2907138i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907213i32;
                } else if (__value__ == (2907213i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2907259i32;
                    } else {
                        _gotoNext = 2907279i32;
                    };
                } else if (__value__ == (2907259i32)) {
                    _i_0++;
                    _gotoNext = 2906914i32;
                } else if (__value__ == (2907279i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2906914i32;
                } else if (__value__ == (2907339i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2907364i32;
                } else if (__value__ == (2907364i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2907399 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2907399 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2907399 = (_keys_2907399.__append__(_key));
                        _values_2907399 = (_values_2907399.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2907399.length)) {
                        _gotoNext = 2908330i32;
                    } else {
                        _gotoNext = 2908404i32;
                    };
                } else if (__value__ == (2907420i32)) {
                    _sr_3 = _values_2907399[@:invalid_index_invalid_type _iterator_2907412];
                    _keys_2907399[@:invalid_index_invalid_type _iterator_2907412];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2907489i32;
                    } else {
                        _gotoNext = 2907558i32;
                    };
                } else if (__value__ == (2907489i32)) {
                    return false;
                    _gotoNext = 2907558i32;
                } else if (__value__ == (2907558i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907596i32;
                    } else {
                        _gotoNext = 2907636i32;
                    };
                } else if (__value__ == (2907596i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907780i32;
                } else if (__value__ == (2907636i32)) {
                    _gotoNext = 2907636i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 2907780i32;
                } else if (__value__ == (2907780i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2907792i32;
                    } else {
                        _gotoNext = 2907857i32;
                    };
                } else if (__value__ == (2907792i32)) {
                    _iterator_2907412++;
                    _gotoNext = 2908331i32;
                } else if (__value__ == (2907857i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2907868i32;
                    } else {
                        _gotoNext = 2907922i32;
                    };
                } else if (__value__ == (2907868i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907922i32;
                } else if (__value__ == (2907922i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2907944i32;
                    } else {
                        _gotoNext = 2908197i32;
                    };
                } else if (__value__ == (2907944i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2908044i32;
                    } else {
                        _gotoNext = 2908067i32;
                    };
                } else if (__value__ == (2908044i32)) {
                    _iterator_2907412++;
                    _gotoNext = 2908331i32;
                } else if (__value__ == (2908067i32)) {
                    return false;
                    _gotoNext = 2908197i32;
                } else if (__value__ == (2908197i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2908227i32;
                } else if (__value__ == (2908227i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2908249i32;
                    } else {
                        _gotoNext = 2908286i32;
                    };
                } else if (__value__ == (2908249i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2908227i32;
                } else if (__value__ == (2908286i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2908297i32;
                    } else {
                        _gotoNext = 2908317i32;
                    };
                } else if (__value__ == (2908297i32)) {
                    _iterator_2907412++;
                    _gotoNext = 2908331i32;
                } else if (__value__ == (2908317i32)) {
                    return false;
                    _iterator_2907412++;
                    _gotoNext = 2908331i32;
                } else if (__value__ == (2908330i32)) {
                    _iterator_2907412 = 0i32;
                    _gotoNext = 2908331i32;
                } else if (__value__ == (2908331i32)) {
                    if (_iterator_2907412 < (_keys_2907399.length)) {
                        _gotoNext = 2907420i32;
                    } else {
                        _gotoNext = 2908404i32;
                    };
                } else if (__value__ == (2908404i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
