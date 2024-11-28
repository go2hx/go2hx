package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2900605:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2900598 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2900611 = @:invalid_type null;
        var _sr_2900153:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2900105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2900843:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2901396:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2900840:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2900761:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2900598 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2900166:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2900105 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2900113i32;
                } else if (__value__ == (2900113i32)) {
                    if (((_i_2900105 < (_s.length) : Bool) && (_i_2900105 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2900149i32;
                    } else {
                        _gotoNext = 2900538i32;
                    };
                } else if (__value__ == (2900149i32)) {
                    _sr_2900153 = _s[(_i_2900105 : stdgo.GoInt)];
                    _tr_2900166 = _t[(_i_2900105 : stdgo.GoInt)];
                    if (((_sr_2900153 | _tr_2900166 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2900205i32;
                    } else {
                        _gotoNext = 2900249i32;
                    };
                } else if (__value__ == (2900205i32)) {
                    _gotoNext = 2900563i32;
                } else if (__value__ == (2900249i32)) {
                    if (_tr_2900166 == (_sr_2900153)) {
                        _gotoNext = 2900261i32;
                    } else {
                        _gotoNext = 2900326i32;
                    };
                } else if (__value__ == (2900261i32)) {
                    _i_2900105++;
                    _gotoNext = 2900113i32;
                } else if (__value__ == (2900326i32)) {
                    if ((_tr_2900166 < _sr_2900153 : Bool)) {
                        _gotoNext = 2900337i32;
                    } else {
                        _gotoNext = 2900412i32;
                    };
                } else if (__value__ == (2900337i32)) {
                    {
                        final __tmp__0 = _sr_2900153;
                        final __tmp__1 = _tr_2900166;
                        _tr_2900166 = __tmp__0;
                        _sr_2900153 = __tmp__1;
                    };
                    _gotoNext = 2900412i32;
                } else if (__value__ == (2900412i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2900153 : Bool) && (_sr_2900153 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2900166 == ((_sr_2900153 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2900458i32;
                    } else {
                        _gotoNext = 2900478i32;
                    };
                } else if (__value__ == (2900458i32)) {
                    _i_2900105++;
                    _gotoNext = 2900113i32;
                } else if (__value__ == (2900478i32)) {
                    return false;
                    _i_2900105++;
                    _gotoNext = 2900113i32;
                } else if (__value__ == (2900538i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2900563i32;
                } else if (__value__ == (2900563i32)) {
                    _s = (_s.__slice__(_i_2900105) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2900105) : stdgo.GoString)?.__copy__();
                    _keys_2900598 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2900598 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2900598 = (_keys_2900598.__append__(_key));
                        _values_2900598 = (_values_2900598.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2900598.length)) {
                        _gotoNext = 2901529i32;
                    } else {
                        _gotoNext = 2901603i32;
                    };
                } else if (__value__ == (2900619i32)) {
                    _sr_2900605 = _values_2900598[@:invalid_index_invalid_type _i_2900611];
                    var __blank__ = _keys_2900598[@:invalid_index_invalid_type _i_2900611];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2900688i32;
                    } else {
                        _gotoNext = 2900757i32;
                    };
                } else if (__value__ == (2900688i32)) {
                    return false;
                    _gotoNext = 2900757i32;
                } else if (__value__ == (2900757i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2900795i32;
                    } else {
                        _gotoNext = 2900835i32;
                    };
                } else if (__value__ == (2900795i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2900761 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2900979i32;
                } else if (__value__ == (2900835i32)) {
                    _gotoNext = 2900835i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2900840 = __tmp__._0;
                        _size_2900843 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2900840;
                        final __tmp__1 = (_t.__slice__(_size_2900843) : stdgo.GoString)?.__copy__();
                        _tr_2900761 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2900979i32;
                } else if (__value__ == (2900979i32)) {
                    if (_tr_2900761 == (_sr_2900605)) {
                        _gotoNext = 2900991i32;
                    } else {
                        _gotoNext = 2901056i32;
                    };
                } else if (__value__ == (2900991i32)) {
                    _i_2900611++;
                    _gotoNext = 2901530i32;
                } else if (__value__ == (2901056i32)) {
                    if ((_tr_2900761 < _sr_2900605 : Bool)) {
                        _gotoNext = 2901067i32;
                    } else {
                        _gotoNext = 2901121i32;
                    };
                } else if (__value__ == (2901067i32)) {
                    {
                        final __tmp__0 = _sr_2900605;
                        final __tmp__1 = _tr_2900761;
                        _tr_2900761 = __tmp__0;
                        _sr_2900605 = __tmp__1;
                    };
                    _gotoNext = 2901121i32;
                } else if (__value__ == (2901121i32)) {
                    if ((_tr_2900761 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2901143i32;
                    } else {
                        _gotoNext = 2901396i32;
                    };
                } else if (__value__ == (2901143i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2900605 : Bool) && (_sr_2900605 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2900761 == ((_sr_2900605 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2901243i32;
                    } else {
                        _gotoNext = 2901266i32;
                    };
                } else if (__value__ == (2901243i32)) {
                    _i_2900611++;
                    _gotoNext = 2901530i32;
                } else if (__value__ == (2901266i32)) {
                    return false;
                    _gotoNext = 2901396i32;
                } else if (__value__ == (2901396i32)) {
                    _r_2901396 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2900605);
                    var __blank__ = 0i32;
                    _gotoNext = 2901426i32;
                } else if (__value__ == (2901426i32)) {
                    if (((_r_2901396 != _sr_2900605) && (_r_2901396 < _tr_2900761 : Bool) : Bool)) {
                        _gotoNext = 2901448i32;
                    } else {
                        _gotoNext = 2901485i32;
                    };
                } else if (__value__ == (2901448i32)) {
                    _r_2901396 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2901396);
                    _gotoNext = 2901426i32;
                } else if (__value__ == (2901485i32)) {
                    if (_r_2901396 == (_tr_2900761)) {
                        _gotoNext = 2901496i32;
                    } else {
                        _gotoNext = 2901516i32;
                    };
                } else if (__value__ == (2901496i32)) {
                    _i_2900611++;
                    _gotoNext = 2901530i32;
                } else if (__value__ == (2901516i32)) {
                    return false;
                    _i_2900611++;
                    _gotoNext = 2901530i32;
                } else if (__value__ == (2901529i32)) {
                    _i_2900611 = 0i32;
                    _gotoNext = 2901530i32;
                } else if (__value__ == (2901530i32)) {
                    if (_i_2900611 < (_keys_2900598.length)) {
                        _gotoNext = 2900619i32;
                    } else {
                        _gotoNext = 2901603i32;
                    };
                } else if (__value__ == (2901603i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
