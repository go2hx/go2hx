package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2772794 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2772781 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2772781 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2772296i32;
                } else if (__value__ == (2772296i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2772332i32;
                    } else {
                        _gotoNext = 2772721i32;
                    };
                } else if (__value__ == (2772332i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2772388i32;
                    } else {
                        _gotoNext = 2772432i32;
                    };
                } else if (__value__ == (2772388i32)) {
                    _gotoNext = 2772746i32;
                } else if (__value__ == (2772432i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2772444i32;
                    } else {
                        _gotoNext = 2772509i32;
                    };
                } else if (__value__ == (2772444i32)) {
                    _i_0++;
                    _gotoNext = 2772296i32;
                } else if (__value__ == (2772509i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2772520i32;
                    } else {
                        _gotoNext = 2772595i32;
                    };
                } else if (__value__ == (2772520i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2772595i32;
                } else if (__value__ == (2772595i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2772641i32;
                    } else {
                        _gotoNext = 2772661i32;
                    };
                } else if (__value__ == (2772641i32)) {
                    _i_0++;
                    _gotoNext = 2772296i32;
                } else if (__value__ == (2772661i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2772296i32;
                } else if (__value__ == (2772721i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2772746i32;
                } else if (__value__ == (2772746i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2772781 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2772781 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2772781 = (_keys_2772781.__append__(_key));
                        _values_2772781 = (_values_2772781.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2772781.length)) {
                        _gotoNext = 2773712i32;
                    } else {
                        _gotoNext = 2773786i32;
                    };
                } else if (__value__ == (2772802i32)) {
                    _sr_3 = _values_2772781[@:invalid_index_invalid_type _i_2772794];
                    var __blank__ = _keys_2772781[@:invalid_index_invalid_type _i_2772794];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2772871i32;
                    } else {
                        _gotoNext = 2772940i32;
                    };
                } else if (__value__ == (2772871i32)) {
                    return false;
                    _gotoNext = 2772940i32;
                } else if (__value__ == (2772940i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2772978i32;
                    } else {
                        _gotoNext = 2773018i32;
                    };
                } else if (__value__ == (2772978i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2773162i32;
                } else if (__value__ == (2773018i32)) {
                    _gotoNext = 2773018i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2773162i32;
                } else if (__value__ == (2773162i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2773174i32;
                    } else {
                        _gotoNext = 2773239i32;
                    };
                } else if (__value__ == (2773174i32)) {
                    _i_2772794++;
                    _gotoNext = 2773713i32;
                } else if (__value__ == (2773239i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2773250i32;
                    } else {
                        _gotoNext = 2773304i32;
                    };
                } else if (__value__ == (2773250i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2773304i32;
                } else if (__value__ == (2773304i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2773326i32;
                    } else {
                        _gotoNext = 2773579i32;
                    };
                } else if (__value__ == (2773326i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2773426i32;
                    } else {
                        _gotoNext = 2773449i32;
                    };
                } else if (__value__ == (2773426i32)) {
                    _i_2772794++;
                    _gotoNext = 2773713i32;
                } else if (__value__ == (2773449i32)) {
                    return false;
                    _gotoNext = 2773579i32;
                } else if (__value__ == (2773579i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2773609i32;
                } else if (__value__ == (2773609i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2773631i32;
                    } else {
                        _gotoNext = 2773668i32;
                    };
                } else if (__value__ == (2773631i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2773609i32;
                } else if (__value__ == (2773668i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2773679i32;
                    } else {
                        _gotoNext = 2773699i32;
                    };
                } else if (__value__ == (2773679i32)) {
                    _i_2772794++;
                    _gotoNext = 2773713i32;
                } else if (__value__ == (2773699i32)) {
                    return false;
                    _i_2772794++;
                    _gotoNext = 2773713i32;
                } else if (__value__ == (2773712i32)) {
                    _i_2772794 = 0i32;
                    _gotoNext = 2773713i32;
                } else if (__value__ == (2773713i32)) {
                    if (_i_2772794 < (_keys_2772781.length)) {
                        _gotoNext = 2772802i32;
                    } else {
                        _gotoNext = 2773786i32;
                    };
                } else if (__value__ == (2773786i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
