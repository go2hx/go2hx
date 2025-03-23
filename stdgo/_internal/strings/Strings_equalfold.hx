package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3010588 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3010588 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_3010601 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 3010103i32;
                } else if (__value__ == (3010103i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3010139i32;
                    } else {
                        _gotoNext = 3010528i32;
                    };
                } else if (__value__ == (3010139i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3010195i32;
                    } else {
                        _gotoNext = 3010239i32;
                    };
                } else if (__value__ == (3010195i32)) {
                    _gotoNext = 3010553i32;
                } else if (__value__ == (3010239i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 3010251i32;
                    } else {
                        _gotoNext = 3010316i32;
                    };
                } else if (__value__ == (3010251i32)) {
                    _i_0++;
                    _gotoNext = 3010103i32;
                } else if (__value__ == (3010316i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 3010327i32;
                    } else {
                        _gotoNext = 3010402i32;
                    };
                } else if (__value__ == (3010327i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3010402i32;
                } else if (__value__ == (3010402i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3010448i32;
                    } else {
                        _gotoNext = 3010468i32;
                    };
                } else if (__value__ == (3010448i32)) {
                    _i_0++;
                    _gotoNext = 3010103i32;
                } else if (__value__ == (3010468i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 3010103i32;
                } else if (__value__ == (3010528i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3010553i32;
                } else if (__value__ == (3010553i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_3010588 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3010588 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3010588 = (_keys_3010588.__append__(_key));
                        _values_3010588 = (_values_3010588.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3010588.length)) {
                        _gotoNext = 3011519i32;
                    } else {
                        _gotoNext = 3011593i32;
                    };
                } else if (__value__ == (3010609i32)) {
                    _sr_3 = _values_3010588[@:invalid_index_invalid_type _iterator_3010601];
                    _keys_3010588[@:invalid_index_invalid_type _iterator_3010601];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3010678i32;
                    } else {
                        _gotoNext = 3010747i32;
                    };
                } else if (__value__ == (3010678i32)) {
                    return false;
                    _gotoNext = 3010747i32;
                } else if (__value__ == (3010747i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3010785i32;
                    } else {
                        _gotoNext = 3010825i32;
                    };
                } else if (__value__ == (3010785i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3010969i32;
                } else if (__value__ == (3010825i32)) {
                    _gotoNext = 3010825i32;
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
                    _gotoNext = 3010969i32;
                } else if (__value__ == (3010969i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 3010981i32;
                    } else {
                        _gotoNext = 3011046i32;
                    };
                } else if (__value__ == (3010981i32)) {
                    _iterator_3010601++;
                    _gotoNext = 3011520i32;
                } else if (__value__ == (3011046i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 3011057i32;
                    } else {
                        _gotoNext = 3011111i32;
                    };
                } else if (__value__ == (3011057i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3011111i32;
                } else if (__value__ == (3011111i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3011133i32;
                    } else {
                        _gotoNext = 3011386i32;
                    };
                } else if (__value__ == (3011133i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3011233i32;
                    } else {
                        _gotoNext = 3011256i32;
                    };
                } else if (__value__ == (3011233i32)) {
                    _iterator_3010601++;
                    _gotoNext = 3011520i32;
                } else if (__value__ == (3011256i32)) {
                    return false;
                    _gotoNext = 3011386i32;
                } else if (__value__ == (3011386i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 3011416i32;
                } else if (__value__ == (3011416i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 3011438i32;
                    } else {
                        _gotoNext = 3011475i32;
                    };
                } else if (__value__ == (3011438i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 3011416i32;
                } else if (__value__ == (3011475i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 3011486i32;
                    } else {
                        _gotoNext = 3011506i32;
                    };
                } else if (__value__ == (3011486i32)) {
                    _iterator_3010601++;
                    _gotoNext = 3011520i32;
                } else if (__value__ == (3011506i32)) {
                    return false;
                    _iterator_3010601++;
                    _gotoNext = 3011520i32;
                } else if (__value__ == (3011519i32)) {
                    _iterator_3010601 = 0i32;
                    _gotoNext = 3011520i32;
                } else if (__value__ == (3011520i32)) {
                    if (_iterator_3010601 < (_keys_3010588.length)) {
                        _gotoNext = 3010609i32;
                    } else {
                        _gotoNext = 3011593i32;
                    };
                } else if (__value__ == (3011593i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
