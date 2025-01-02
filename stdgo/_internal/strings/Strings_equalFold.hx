package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3011154:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3010925 = @:invalid_type null;
        var _tr_3010480:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_3011075:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3010919:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3010912 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3010912 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_3010467:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3010419:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3011710:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3011157:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3010419 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3010427i32;
                } else if (__value__ == (3010427i32)) {
                    if (((_i_3010419 < (_s.length) : Bool) && (_i_3010419 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3010463i32;
                    } else {
                        _gotoNext = 3010852i32;
                    };
                } else if (__value__ == (3010463i32)) {
                    _sr_3010467 = _s[(_i_3010419 : stdgo.GoInt)];
                    _tr_3010480 = _t[(_i_3010419 : stdgo.GoInt)];
                    if (((_sr_3010467 | _tr_3010480 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3010519i32;
                    } else {
                        _gotoNext = 3010563i32;
                    };
                } else if (__value__ == (3010519i32)) {
                    _gotoNext = 3010877i32;
                } else if (__value__ == (3010563i32)) {
                    if (_tr_3010480 == (_sr_3010467)) {
                        _gotoNext = 3010575i32;
                    } else {
                        _gotoNext = 3010640i32;
                    };
                } else if (__value__ == (3010575i32)) {
                    _i_3010419++;
                    _gotoNext = 3010427i32;
                } else if (__value__ == (3010640i32)) {
                    if ((_tr_3010480 < _sr_3010467 : Bool)) {
                        _gotoNext = 3010651i32;
                    } else {
                        _gotoNext = 3010726i32;
                    };
                } else if (__value__ == (3010651i32)) {
                    {
                        final __tmp__0 = _sr_3010467;
                        final __tmp__1 = _tr_3010480;
                        _tr_3010480 = __tmp__0;
                        _sr_3010467 = __tmp__1;
                    };
                    _gotoNext = 3010726i32;
                } else if (__value__ == (3010726i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3010467 : Bool) && (_sr_3010467 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3010480 == ((_sr_3010467 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3010772i32;
                    } else {
                        _gotoNext = 3010792i32;
                    };
                } else if (__value__ == (3010772i32)) {
                    _i_3010419++;
                    _gotoNext = 3010427i32;
                } else if (__value__ == (3010792i32)) {
                    return false;
                    _i_3010419++;
                    _gotoNext = 3010427i32;
                } else if (__value__ == (3010852i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3010877i32;
                } else if (__value__ == (3010877i32)) {
                    _s = (_s.__slice__(_i_3010419) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3010419) : stdgo.GoString)?.__copy__();
                    _keys_3010912 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3010912 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3010912 = (_keys_3010912.__append__(_key));
                        _values_3010912 = (_values_3010912.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3010912.length)) {
                        _gotoNext = 3011843i32;
                    } else {
                        _gotoNext = 3011917i32;
                    };
                } else if (__value__ == (3010933i32)) {
                    _sr_3010919 = _values_3010912[@:invalid_index_invalid_type _i_3010925];
                    var __blank__ = _keys_3010912[@:invalid_index_invalid_type _i_3010925];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3011002i32;
                    } else {
                        _gotoNext = 3011071i32;
                    };
                } else if (__value__ == (3011002i32)) {
                    return false;
                    _gotoNext = 3011071i32;
                } else if (__value__ == (3011071i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3011109i32;
                    } else {
                        _gotoNext = 3011149i32;
                    };
                } else if (__value__ == (3011109i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3011075 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3011293i32;
                } else if (__value__ == (3011149i32)) {
                    _gotoNext = 3011149i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3011154 = __tmp__._0;
                        _size_3011157 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3011154;
                        final __tmp__1 = (_t.__slice__(_size_3011157) : stdgo.GoString)?.__copy__();
                        _tr_3011075 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3011293i32;
                } else if (__value__ == (3011293i32)) {
                    if (_tr_3011075 == (_sr_3010919)) {
                        _gotoNext = 3011305i32;
                    } else {
                        _gotoNext = 3011370i32;
                    };
                } else if (__value__ == (3011305i32)) {
                    _i_3010925++;
                    _gotoNext = 3011844i32;
                } else if (__value__ == (3011370i32)) {
                    if ((_tr_3011075 < _sr_3010919 : Bool)) {
                        _gotoNext = 3011381i32;
                    } else {
                        _gotoNext = 3011435i32;
                    };
                } else if (__value__ == (3011381i32)) {
                    {
                        final __tmp__0 = _sr_3010919;
                        final __tmp__1 = _tr_3011075;
                        _tr_3011075 = __tmp__0;
                        _sr_3010919 = __tmp__1;
                    };
                    _gotoNext = 3011435i32;
                } else if (__value__ == (3011435i32)) {
                    if ((_tr_3011075 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3011457i32;
                    } else {
                        _gotoNext = 3011710i32;
                    };
                } else if (__value__ == (3011457i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3010919 : Bool) && (_sr_3010919 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3011075 == ((_sr_3010919 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3011557i32;
                    } else {
                        _gotoNext = 3011580i32;
                    };
                } else if (__value__ == (3011557i32)) {
                    _i_3010925++;
                    _gotoNext = 3011844i32;
                } else if (__value__ == (3011580i32)) {
                    return false;
                    _gotoNext = 3011710i32;
                } else if (__value__ == (3011710i32)) {
                    _r_3011710 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3010919);
                    var __blank__ = 0i32;
                    _gotoNext = 3011740i32;
                } else if (__value__ == (3011740i32)) {
                    if (((_r_3011710 != _sr_3010919) && (_r_3011710 < _tr_3011075 : Bool) : Bool)) {
                        _gotoNext = 3011762i32;
                    } else {
                        _gotoNext = 3011799i32;
                    };
                } else if (__value__ == (3011762i32)) {
                    _r_3011710 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3011710);
                    _gotoNext = 3011740i32;
                } else if (__value__ == (3011799i32)) {
                    if (_r_3011710 == (_tr_3011075)) {
                        _gotoNext = 3011810i32;
                    } else {
                        _gotoNext = 3011830i32;
                    };
                } else if (__value__ == (3011810i32)) {
                    _i_3010925++;
                    _gotoNext = 3011844i32;
                } else if (__value__ == (3011830i32)) {
                    return false;
                    _i_3010925++;
                    _gotoNext = 3011844i32;
                } else if (__value__ == (3011843i32)) {
                    _i_3010925 = 0i32;
                    _gotoNext = 3011844i32;
                } else if (__value__ == (3011844i32)) {
                    if (_i_3010925 < (_keys_3010912.length)) {
                        _gotoNext = 3010933i32;
                    } else {
                        _gotoNext = 3011917i32;
                    };
                } else if (__value__ == (3011917i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
