package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2906179 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_2906192 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2906179 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2905694i32;
                } else if (__value__ == (2905694i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2905730i32;
                    } else {
                        _gotoNext = 2906119i32;
                    };
                } else if (__value__ == (2905730i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905786i32;
                    } else {
                        _gotoNext = 2905830i32;
                    };
                } else if (__value__ == (2905786i32)) {
                    _gotoNext = 2906144i32;
                } else if (__value__ == (2905830i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2905842i32;
                    } else {
                        _gotoNext = 2905907i32;
                    };
                } else if (__value__ == (2905842i32)) {
                    _i_0++;
                    _gotoNext = 2905694i32;
                } else if (__value__ == (2905907i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2905918i32;
                    } else {
                        _gotoNext = 2905993i32;
                    };
                } else if (__value__ == (2905918i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2905993i32;
                } else if (__value__ == (2905993i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2906039i32;
                    } else {
                        _gotoNext = 2906059i32;
                    };
                } else if (__value__ == (2906039i32)) {
                    _i_0++;
                    _gotoNext = 2905694i32;
                } else if (__value__ == (2906059i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2905694i32;
                } else if (__value__ == (2906119i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2906144i32;
                } else if (__value__ == (2906144i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2906179 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2906179 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2906179 = _keys_2906179.__append__(_key);
                        _values_2906179 = _values_2906179.__append__(_value);
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2906179.length)) {
                        _gotoNext = 2907110i32;
                    } else {
                        _gotoNext = 2907184i32;
                    };
                } else if (__value__ == (2906200i32)) {
                    _sr_3 = _values_2906179[@:invalid_index_invalid_type _iterator_2906192];
                    _keys_2906179[@:invalid_index_invalid_type _iterator_2906192];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2906269i32;
                    } else {
                        _gotoNext = 2906338i32;
                    };
                } else if (__value__ == (2906269i32)) {
                    return false;
                    _gotoNext = 2906338i32;
                } else if (__value__ == (2906338i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2906376i32;
                    } else {
                        _gotoNext = 2906416i32;
                    };
                } else if (__value__ == (2906376i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2906560i32;
                } else if (__value__ == (2906416i32)) {
                    _gotoNext = 2906416i32;
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
                    _gotoNext = 2906560i32;
                } else if (__value__ == (2906560i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2906572i32;
                    } else {
                        _gotoNext = 2906637i32;
                    };
                } else if (__value__ == (2906572i32)) {
                    _iterator_2906192++;
                    _gotoNext = 2907111i32;
                } else if (__value__ == (2906637i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2906648i32;
                    } else {
                        _gotoNext = 2906702i32;
                    };
                } else if (__value__ == (2906648i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2906702i32;
                } else if (__value__ == (2906702i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2906724i32;
                    } else {
                        _gotoNext = 2906977i32;
                    };
                } else if (__value__ == (2906724i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2906824i32;
                    } else {
                        _gotoNext = 2906847i32;
                    };
                } else if (__value__ == (2906824i32)) {
                    _iterator_2906192++;
                    _gotoNext = 2907111i32;
                } else if (__value__ == (2906847i32)) {
                    return false;
                    _gotoNext = 2906977i32;
                } else if (__value__ == (2906977i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2907007i32;
                } else if (__value__ == (2907007i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2907029i32;
                    } else {
                        _gotoNext = 2907066i32;
                    };
                } else if (__value__ == (2907029i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2907007i32;
                } else if (__value__ == (2907066i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2907077i32;
                    } else {
                        _gotoNext = 2907097i32;
                    };
                } else if (__value__ == (2907077i32)) {
                    _iterator_2906192++;
                    _gotoNext = 2907111i32;
                } else if (__value__ == (2907097i32)) {
                    return false;
                    _iterator_2906192++;
                    _gotoNext = 2907111i32;
                } else if (__value__ == (2907110i32)) {
                    _iterator_2906192 = 0i32;
                    _gotoNext = 2907111i32;
                } else if (__value__ == (2907111i32)) {
                    if (_iterator_2906192 < (_keys_2906179.length)) {
                        _gotoNext = 2906200i32;
                    } else {
                        _gotoNext = 2907184i32;
                    };
                } else if (__value__ == (2907184i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
