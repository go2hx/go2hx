package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2737632 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2737619 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2737619 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2737134i32;
                } else if (__value__ == (2737134i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2737170i32;
                    } else {
                        _gotoNext = 2737559i32;
                    };
                } else if (__value__ == (2737170i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2737226i32;
                    } else {
                        _gotoNext = 2737270i32;
                    };
                } else if (__value__ == (2737226i32)) {
                    _gotoNext = 2737584i32;
                } else if (__value__ == (2737270i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2737282i32;
                    } else {
                        _gotoNext = 2737347i32;
                    };
                } else if (__value__ == (2737282i32)) {
                    _i_0++;
                    _gotoNext = 2737134i32;
                } else if (__value__ == (2737347i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2737358i32;
                    } else {
                        _gotoNext = 2737433i32;
                    };
                } else if (__value__ == (2737358i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2737433i32;
                } else if (__value__ == (2737433i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2737479i32;
                    } else {
                        _gotoNext = 2737499i32;
                    };
                } else if (__value__ == (2737479i32)) {
                    _i_0++;
                    _gotoNext = 2737134i32;
                } else if (__value__ == (2737499i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2737134i32;
                } else if (__value__ == (2737559i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2737584i32;
                } else if (__value__ == (2737584i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2737619 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2737619 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2737619 = (_keys_2737619.__append__(_key));
                        _values_2737619 = (_values_2737619.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2737619.length)) {
                        _gotoNext = 2738550i32;
                    } else {
                        _gotoNext = 2738624i32;
                    };
                } else if (__value__ == (2737640i32)) {
                    _sr_3 = _values_2737619[@:invalid_index_invalid_type _i_2737632];
                    var __blank__ = _keys_2737619[@:invalid_index_invalid_type _i_2737632];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2737709i32;
                    } else {
                        _gotoNext = 2737778i32;
                    };
                } else if (__value__ == (2737709i32)) {
                    return false;
                    _gotoNext = 2737778i32;
                } else if (__value__ == (2737778i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2737816i32;
                    } else {
                        _gotoNext = 2737856i32;
                    };
                } else if (__value__ == (2737816i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2738000i32;
                } else if (__value__ == (2737856i32)) {
                    _gotoNext = 2737856i32;
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
                    var __blank__ = 0i32;
                    _gotoNext = 2738000i32;
                } else if (__value__ == (2738000i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2738012i32;
                    } else {
                        _gotoNext = 2738077i32;
                    };
                } else if (__value__ == (2738012i32)) {
                    _i_2737632++;
                    _gotoNext = 2738551i32;
                } else if (__value__ == (2738077i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2738088i32;
                    } else {
                        _gotoNext = 2738142i32;
                    };
                } else if (__value__ == (2738088i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2738142i32;
                } else if (__value__ == (2738142i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2738164i32;
                    } else {
                        _gotoNext = 2738417i32;
                    };
                } else if (__value__ == (2738164i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2738264i32;
                    } else {
                        _gotoNext = 2738287i32;
                    };
                } else if (__value__ == (2738264i32)) {
                    _i_2737632++;
                    _gotoNext = 2738551i32;
                } else if (__value__ == (2738287i32)) {
                    return false;
                    _gotoNext = 2738417i32;
                } else if (__value__ == (2738417i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2738447i32;
                } else if (__value__ == (2738447i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2738469i32;
                    } else {
                        _gotoNext = 2738506i32;
                    };
                } else if (__value__ == (2738469i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2738447i32;
                } else if (__value__ == (2738506i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2738517i32;
                    } else {
                        _gotoNext = 2738537i32;
                    };
                } else if (__value__ == (2738517i32)) {
                    _i_2737632++;
                    _gotoNext = 2738551i32;
                } else if (__value__ == (2738537i32)) {
                    return false;
                    _i_2737632++;
                    _gotoNext = 2738551i32;
                } else if (__value__ == (2738550i32)) {
                    _i_2737632 = 0i32;
                    _gotoNext = 2738551i32;
                } else if (__value__ == (2738551i32)) {
                    if (_i_2737632 < (_keys_2737619.length)) {
                        _gotoNext = 2737640i32;
                    } else {
                        _gotoNext = 2738624i32;
                    };
                } else if (__value__ == (2738624i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
