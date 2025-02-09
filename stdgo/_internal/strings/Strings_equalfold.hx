package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2782837:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2782202:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2782039 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2782052 = @:invalid_type null;
        var _tr_2781607:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2781594:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2781546:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2782284:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2782281:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2782046:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2782039 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2781546 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2781554i32;
                } else if (__value__ == (2781554i32)) {
                    if (((_i_2781546 < (_s.length) : Bool) && (_i_2781546 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2781590i32;
                    } else {
                        _gotoNext = 2781979i32;
                    };
                } else if (__value__ == (2781590i32)) {
                    _sr_2781594 = _s[(_i_2781546 : stdgo.GoInt)];
                    _tr_2781607 = _t[(_i_2781546 : stdgo.GoInt)];
                    if (((_sr_2781594 | _tr_2781607 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2781646i32;
                    } else {
                        _gotoNext = 2781690i32;
                    };
                } else if (__value__ == (2781646i32)) {
                    _gotoNext = 2782004i32;
                } else if (__value__ == (2781690i32)) {
                    if (_tr_2781607 == (_sr_2781594)) {
                        _gotoNext = 2781702i32;
                    } else {
                        _gotoNext = 2781767i32;
                    };
                } else if (__value__ == (2781702i32)) {
                    _i_2781546++;
                    _gotoNext = 2781554i32;
                } else if (__value__ == (2781767i32)) {
                    if ((_tr_2781607 < _sr_2781594 : Bool)) {
                        _gotoNext = 2781778i32;
                    } else {
                        _gotoNext = 2781853i32;
                    };
                } else if (__value__ == (2781778i32)) {
                    {
                        final __tmp__0 = _sr_2781594;
                        final __tmp__1 = _tr_2781607;
                        _tr_2781607 = __tmp__0;
                        _sr_2781594 = __tmp__1;
                    };
                    _gotoNext = 2781853i32;
                } else if (__value__ == (2781853i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2781594 : Bool) && (_sr_2781594 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2781607 == ((_sr_2781594 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2781899i32;
                    } else {
                        _gotoNext = 2781919i32;
                    };
                } else if (__value__ == (2781899i32)) {
                    _i_2781546++;
                    _gotoNext = 2781554i32;
                } else if (__value__ == (2781919i32)) {
                    return false;
                    _i_2781546++;
                    _gotoNext = 2781554i32;
                } else if (__value__ == (2781979i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2782004i32;
                } else if (__value__ == (2782004i32)) {
                    _s = (_s.__slice__(_i_2781546) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2781546) : stdgo.GoString)?.__copy__();
                    _keys_2782039 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2782039 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2782039 = (_keys_2782039.__append__(_key));
                        _values_2782039 = (_values_2782039.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2782039.length)) {
                        _gotoNext = 2782970i32;
                    } else {
                        _gotoNext = 2783044i32;
                    };
                } else if (__value__ == (2782060i32)) {
                    _sr_2782046 = _values_2782039[@:invalid_index_invalid_type _i_2782052];
                    var __blank__ = _keys_2782039[@:invalid_index_invalid_type _i_2782052];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2782129i32;
                    } else {
                        _gotoNext = 2782198i32;
                    };
                } else if (__value__ == (2782129i32)) {
                    return false;
                    _gotoNext = 2782198i32;
                } else if (__value__ == (2782198i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2782236i32;
                    } else {
                        _gotoNext = 2782276i32;
                    };
                } else if (__value__ == (2782236i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2782202 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2782420i32;
                } else if (__value__ == (2782276i32)) {
                    _gotoNext = 2782276i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2782281 = @:tmpset0 __tmp__._0;
                        _size_2782284 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2782281;
                        final __tmp__1 = (_t.__slice__(_size_2782284) : stdgo.GoString)?.__copy__();
                        _tr_2782202 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2782420i32;
                } else if (__value__ == (2782420i32)) {
                    if (_tr_2782202 == (_sr_2782046)) {
                        _gotoNext = 2782432i32;
                    } else {
                        _gotoNext = 2782497i32;
                    };
                } else if (__value__ == (2782432i32)) {
                    _i_2782052++;
                    _gotoNext = 2782971i32;
                } else if (__value__ == (2782497i32)) {
                    if ((_tr_2782202 < _sr_2782046 : Bool)) {
                        _gotoNext = 2782508i32;
                    } else {
                        _gotoNext = 2782562i32;
                    };
                } else if (__value__ == (2782508i32)) {
                    {
                        final __tmp__0 = _sr_2782046;
                        final __tmp__1 = _tr_2782202;
                        _tr_2782202 = __tmp__0;
                        _sr_2782046 = __tmp__1;
                    };
                    _gotoNext = 2782562i32;
                } else if (__value__ == (2782562i32)) {
                    if ((_tr_2782202 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2782584i32;
                    } else {
                        _gotoNext = 2782837i32;
                    };
                } else if (__value__ == (2782584i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2782046 : Bool) && (_sr_2782046 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2782202 == ((_sr_2782046 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2782684i32;
                    } else {
                        _gotoNext = 2782707i32;
                    };
                } else if (__value__ == (2782684i32)) {
                    _i_2782052++;
                    _gotoNext = 2782971i32;
                } else if (__value__ == (2782707i32)) {
                    return false;
                    _gotoNext = 2782837i32;
                } else if (__value__ == (2782837i32)) {
                    _r_2782837 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2782046);
                    var __blank__ = 0i32;
                    _gotoNext = 2782867i32;
                } else if (__value__ == (2782867i32)) {
                    if (((_r_2782837 != _sr_2782046) && (_r_2782837 < _tr_2782202 : Bool) : Bool)) {
                        _gotoNext = 2782889i32;
                    } else {
                        _gotoNext = 2782926i32;
                    };
                } else if (__value__ == (2782889i32)) {
                    _r_2782837 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2782837);
                    _gotoNext = 2782867i32;
                } else if (__value__ == (2782926i32)) {
                    if (_r_2782837 == (_tr_2782202)) {
                        _gotoNext = 2782937i32;
                    } else {
                        _gotoNext = 2782957i32;
                    };
                } else if (__value__ == (2782937i32)) {
                    _i_2782052++;
                    _gotoNext = 2782971i32;
                } else if (__value__ == (2782957i32)) {
                    return false;
                    _i_2782052++;
                    _gotoNext = 2782971i32;
                } else if (__value__ == (2782970i32)) {
                    _i_2782052 = 0i32;
                    _gotoNext = 2782971i32;
                } else if (__value__ == (2782971i32)) {
                    if (_i_2782052 < (_keys_2782039.length)) {
                        _gotoNext = 2782060i32;
                    } else {
                        _gotoNext = 2783044i32;
                    };
                } else if (__value__ == (2783044i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
