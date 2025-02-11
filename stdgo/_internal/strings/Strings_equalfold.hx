package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_3003430:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_3003185 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_3003198 = @:invalid_type null;
        var _i_3002692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3003427:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3003348:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3003192:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3003185 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_3002753:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3002740:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3003983:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3002692 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3002700i32;
                } else if (__value__ == (3002700i32)) {
                    if (((_i_3002692 < (_s.length) : Bool) && (_i_3002692 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3002736i32;
                    } else {
                        _gotoNext = 3003125i32;
                    };
                } else if (__value__ == (3002736i32)) {
                    _sr_3002740 = _s[(_i_3002692 : stdgo.GoInt)];
                    _tr_3002753 = _t[(_i_3002692 : stdgo.GoInt)];
                    if (((_sr_3002740 | _tr_3002753 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3002792i32;
                    } else {
                        _gotoNext = 3002836i32;
                    };
                } else if (__value__ == (3002792i32)) {
                    _gotoNext = 3003150i32;
                } else if (__value__ == (3002836i32)) {
                    if (_tr_3002753 == (_sr_3002740)) {
                        _gotoNext = 3002848i32;
                    } else {
                        _gotoNext = 3002913i32;
                    };
                } else if (__value__ == (3002848i32)) {
                    _i_3002692++;
                    _gotoNext = 3002700i32;
                } else if (__value__ == (3002913i32)) {
                    if ((_tr_3002753 < _sr_3002740 : Bool)) {
                        _gotoNext = 3002924i32;
                    } else {
                        _gotoNext = 3002999i32;
                    };
                } else if (__value__ == (3002924i32)) {
                    {
                        final __tmp__0 = _sr_3002740;
                        final __tmp__1 = _tr_3002753;
                        _tr_3002753 = __tmp__0;
                        _sr_3002740 = __tmp__1;
                    };
                    _gotoNext = 3002999i32;
                } else if (__value__ == (3002999i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3002740 : Bool) && (_sr_3002740 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3002753 == ((_sr_3002740 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3003045i32;
                    } else {
                        _gotoNext = 3003065i32;
                    };
                } else if (__value__ == (3003045i32)) {
                    _i_3002692++;
                    _gotoNext = 3002700i32;
                } else if (__value__ == (3003065i32)) {
                    return false;
                    _i_3002692++;
                    _gotoNext = 3002700i32;
                } else if (__value__ == (3003125i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3003150i32;
                } else if (__value__ == (3003150i32)) {
                    _s = (_s.__slice__(_i_3002692) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3002692) : stdgo.GoString)?.__copy__();
                    _keys_3003185 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3003185 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3003185 = (_keys_3003185.__append__(_key));
                        _values_3003185 = (_values_3003185.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3003185.length)) {
                        _gotoNext = 3004116i32;
                    } else {
                        _gotoNext = 3004190i32;
                    };
                } else if (__value__ == (3003206i32)) {
                    _sr_3003192 = _values_3003185[@:invalid_index_invalid_type _i_3003198];
                    var __blank__ = _keys_3003185[@:invalid_index_invalid_type _i_3003198];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3003275i32;
                    } else {
                        _gotoNext = 3003344i32;
                    };
                } else if (__value__ == (3003275i32)) {
                    return false;
                    _gotoNext = 3003344i32;
                } else if (__value__ == (3003344i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3003382i32;
                    } else {
                        _gotoNext = 3003422i32;
                    };
                } else if (__value__ == (3003382i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3003348 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3003566i32;
                } else if (__value__ == (3003422i32)) {
                    _gotoNext = 3003422i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3003427 = @:tmpset0 __tmp__._0;
                        _size_3003430 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3003427;
                        final __tmp__1 = (_t.__slice__(_size_3003430) : stdgo.GoString)?.__copy__();
                        _tr_3003348 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3003566i32;
                } else if (__value__ == (3003566i32)) {
                    if (_tr_3003348 == (_sr_3003192)) {
                        _gotoNext = 3003578i32;
                    } else {
                        _gotoNext = 3003643i32;
                    };
                } else if (__value__ == (3003578i32)) {
                    _i_3003198++;
                    _gotoNext = 3004117i32;
                } else if (__value__ == (3003643i32)) {
                    if ((_tr_3003348 < _sr_3003192 : Bool)) {
                        _gotoNext = 3003654i32;
                    } else {
                        _gotoNext = 3003708i32;
                    };
                } else if (__value__ == (3003654i32)) {
                    {
                        final __tmp__0 = _sr_3003192;
                        final __tmp__1 = _tr_3003348;
                        _tr_3003348 = __tmp__0;
                        _sr_3003192 = __tmp__1;
                    };
                    _gotoNext = 3003708i32;
                } else if (__value__ == (3003708i32)) {
                    if ((_tr_3003348 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3003730i32;
                    } else {
                        _gotoNext = 3003983i32;
                    };
                } else if (__value__ == (3003730i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3003192 : Bool) && (_sr_3003192 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3003348 == ((_sr_3003192 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3003830i32;
                    } else {
                        _gotoNext = 3003853i32;
                    };
                } else if (__value__ == (3003830i32)) {
                    _i_3003198++;
                    _gotoNext = 3004117i32;
                } else if (__value__ == (3003853i32)) {
                    return false;
                    _gotoNext = 3003983i32;
                } else if (__value__ == (3003983i32)) {
                    _r_3003983 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3003192);
                    var __blank__ = 0i32;
                    _gotoNext = 3004013i32;
                } else if (__value__ == (3004013i32)) {
                    if (((_r_3003983 != _sr_3003192) && (_r_3003983 < _tr_3003348 : Bool) : Bool)) {
                        _gotoNext = 3004035i32;
                    } else {
                        _gotoNext = 3004072i32;
                    };
                } else if (__value__ == (3004035i32)) {
                    _r_3003983 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3003983);
                    _gotoNext = 3004013i32;
                } else if (__value__ == (3004072i32)) {
                    if (_r_3003983 == (_tr_3003348)) {
                        _gotoNext = 3004083i32;
                    } else {
                        _gotoNext = 3004103i32;
                    };
                } else if (__value__ == (3004083i32)) {
                    _i_3003198++;
                    _gotoNext = 3004117i32;
                } else if (__value__ == (3004103i32)) {
                    return false;
                    _i_3003198++;
                    _gotoNext = 3004117i32;
                } else if (__value__ == (3004116i32)) {
                    _i_3003198 = 0i32;
                    _gotoNext = 3004117i32;
                } else if (__value__ == (3004117i32)) {
                    if (_i_3003198 < (_keys_3003185.length)) {
                        _gotoNext = 3003206i32;
                    } else {
                        _gotoNext = 3004190i32;
                    };
                } else if (__value__ == (3004190i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
