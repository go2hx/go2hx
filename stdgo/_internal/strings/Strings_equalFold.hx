package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2882043:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2881801 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2881356:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2881308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2881964:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2881808:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2881801 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2881814 = @:invalid_type null;
        var _tr_2881369:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2882599:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2882046:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2881308 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2881316i32;
                } else if (__value__ == (2881316i32)) {
                    if (((_i_2881308 < (_s.length) : Bool) && (_i_2881308 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2881352i32;
                    } else {
                        _gotoNext = 2881741i32;
                    };
                } else if (__value__ == (2881352i32)) {
                    _sr_2881356 = _s[(_i_2881308 : stdgo.GoInt)];
                    _tr_2881369 = _t[(_i_2881308 : stdgo.GoInt)];
                    if (((_sr_2881356 | _tr_2881369 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2881408i32;
                    } else {
                        _gotoNext = 2881452i32;
                    };
                } else if (__value__ == (2881408i32)) {
                    _gotoNext = 2881766i32;
                } else if (__value__ == (2881452i32)) {
                    if (_tr_2881369 == (_sr_2881356)) {
                        _gotoNext = 2881464i32;
                    } else {
                        _gotoNext = 2881529i32;
                    };
                } else if (__value__ == (2881464i32)) {
                    _i_2881308++;
                    _gotoNext = 2881316i32;
                } else if (__value__ == (2881529i32)) {
                    if ((_tr_2881369 < _sr_2881356 : Bool)) {
                        _gotoNext = 2881540i32;
                    } else {
                        _gotoNext = 2881615i32;
                    };
                } else if (__value__ == (2881540i32)) {
                    {
                        final __tmp__0 = _sr_2881356;
                        final __tmp__1 = _tr_2881369;
                        _tr_2881369 = __tmp__0;
                        _sr_2881356 = __tmp__1;
                    };
                    _gotoNext = 2881615i32;
                } else if (__value__ == (2881615i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2881356 : Bool) && (_sr_2881356 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2881369 == ((_sr_2881356 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2881661i32;
                    } else {
                        _gotoNext = 2881681i32;
                    };
                } else if (__value__ == (2881661i32)) {
                    _i_2881308++;
                    _gotoNext = 2881316i32;
                } else if (__value__ == (2881681i32)) {
                    return false;
                    _i_2881308++;
                    _gotoNext = 2881316i32;
                } else if (__value__ == (2881741i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2881766i32;
                } else if (__value__ == (2881766i32)) {
                    _s = (_s.__slice__(_i_2881308) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2881308) : stdgo.GoString)?.__copy__();
                    _keys_2881801 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2881801 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2881801 = (_keys_2881801.__append__(_key));
                        _values_2881801 = (_values_2881801.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2881801.length)) {
                        _gotoNext = 2882732i32;
                    } else {
                        _gotoNext = 2882806i32;
                    };
                } else if (__value__ == (2881822i32)) {
                    _sr_2881808 = _values_2881801[@:invalid_index_invalid_type _i_2881814];
                    var __blank__ = _keys_2881801[@:invalid_index_invalid_type _i_2881814];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2881891i32;
                    } else {
                        _gotoNext = 2881960i32;
                    };
                } else if (__value__ == (2881891i32)) {
                    return false;
                    _gotoNext = 2881960i32;
                } else if (__value__ == (2881960i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2881998i32;
                    } else {
                        _gotoNext = 2882038i32;
                    };
                } else if (__value__ == (2881998i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2881964 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2882182i32;
                } else if (__value__ == (2882038i32)) {
                    _gotoNext = 2882038i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2882043 = __tmp__._0;
                        _size_2882046 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2882043;
                        final __tmp__1 = (_t.__slice__(_size_2882046) : stdgo.GoString)?.__copy__();
                        _tr_2881964 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2882182i32;
                } else if (__value__ == (2882182i32)) {
                    if (_tr_2881964 == (_sr_2881808)) {
                        _gotoNext = 2882194i32;
                    } else {
                        _gotoNext = 2882259i32;
                    };
                } else if (__value__ == (2882194i32)) {
                    _i_2881814++;
                    _gotoNext = 2882733i32;
                } else if (__value__ == (2882259i32)) {
                    if ((_tr_2881964 < _sr_2881808 : Bool)) {
                        _gotoNext = 2882270i32;
                    } else {
                        _gotoNext = 2882324i32;
                    };
                } else if (__value__ == (2882270i32)) {
                    {
                        final __tmp__0 = _sr_2881808;
                        final __tmp__1 = _tr_2881964;
                        _tr_2881964 = __tmp__0;
                        _sr_2881808 = __tmp__1;
                    };
                    _gotoNext = 2882324i32;
                } else if (__value__ == (2882324i32)) {
                    if ((_tr_2881964 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2882346i32;
                    } else {
                        _gotoNext = 2882599i32;
                    };
                } else if (__value__ == (2882346i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2881808 : Bool) && (_sr_2881808 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2881964 == ((_sr_2881808 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2882446i32;
                    } else {
                        _gotoNext = 2882469i32;
                    };
                } else if (__value__ == (2882446i32)) {
                    _i_2881814++;
                    _gotoNext = 2882733i32;
                } else if (__value__ == (2882469i32)) {
                    return false;
                    _gotoNext = 2882599i32;
                } else if (__value__ == (2882599i32)) {
                    _r_2882599 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2881808);
                    var __blank__ = 0i32;
                    _gotoNext = 2882629i32;
                } else if (__value__ == (2882629i32)) {
                    if (((_r_2882599 != _sr_2881808) && (_r_2882599 < _tr_2881964 : Bool) : Bool)) {
                        _gotoNext = 2882651i32;
                    } else {
                        _gotoNext = 2882688i32;
                    };
                } else if (__value__ == (2882651i32)) {
                    _r_2882599 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2882599);
                    _gotoNext = 2882629i32;
                } else if (__value__ == (2882688i32)) {
                    if (_r_2882599 == (_tr_2881964)) {
                        _gotoNext = 2882699i32;
                    } else {
                        _gotoNext = 2882719i32;
                    };
                } else if (__value__ == (2882699i32)) {
                    _i_2881814++;
                    _gotoNext = 2882733i32;
                } else if (__value__ == (2882719i32)) {
                    return false;
                    _i_2881814++;
                    _gotoNext = 2882733i32;
                } else if (__value__ == (2882732i32)) {
                    _i_2881814 = 0i32;
                    _gotoNext = 2882733i32;
                } else if (__value__ == (2882733i32)) {
                    if (_i_2881814 < (_keys_2881801.length)) {
                        _gotoNext = 2881822i32;
                    } else {
                        _gotoNext = 2882806i32;
                    };
                } else if (__value__ == (2882806i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
