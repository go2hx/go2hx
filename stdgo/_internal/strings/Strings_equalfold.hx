package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2992992 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2992992 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2993005 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2992507i32;
                } else if (__value__ == (2992507i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2992543i32;
                    } else {
                        _gotoNext = 2992932i32;
                    };
                } else if (__value__ == (2992543i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2992599i32;
                    } else {
                        _gotoNext = 2992643i32;
                    };
                } else if (__value__ == (2992599i32)) {
                    _gotoNext = 2992957i32;
                } else if (__value__ == (2992643i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2992655i32;
                    } else {
                        _gotoNext = 2992720i32;
                    };
                } else if (__value__ == (2992655i32)) {
                    _i_0++;
                    _gotoNext = 2992507i32;
                } else if (__value__ == (2992720i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2992731i32;
                    } else {
                        _gotoNext = 2992806i32;
                    };
                } else if (__value__ == (2992731i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2992806i32;
                } else if (__value__ == (2992806i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2992852i32;
                    } else {
                        _gotoNext = 2992872i32;
                    };
                } else if (__value__ == (2992852i32)) {
                    _i_0++;
                    _gotoNext = 2992507i32;
                } else if (__value__ == (2992872i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2992507i32;
                } else if (__value__ == (2992932i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2992957i32;
                } else if (__value__ == (2992957i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2992992 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2992992 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2992992 = (_keys_2992992.__append__(_key));
                        _values_2992992 = (_values_2992992.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2992992.length)) {
                        _gotoNext = 2993923i32;
                    } else {
                        _gotoNext = 2993997i32;
                    };
                } else if (__value__ == (2993013i32)) {
                    _sr_3 = _values_2992992[@:invalid_index_invalid_type _i_2993005];
                    var __blank__ = _keys_2992992[@:invalid_index_invalid_type _i_2993005];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2993082i32;
                    } else {
                        _gotoNext = 2993151i32;
                    };
                } else if (__value__ == (2993082i32)) {
                    return false;
                    _gotoNext = 2993151i32;
                } else if (__value__ == (2993151i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2993189i32;
                    } else {
                        _gotoNext = 2993229i32;
                    };
                } else if (__value__ == (2993189i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2993373i32;
                } else if (__value__ == (2993229i32)) {
                    _gotoNext = 2993229i32;
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
                    _gotoNext = 2993373i32;
                } else if (__value__ == (2993373i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2993385i32;
                    } else {
                        _gotoNext = 2993450i32;
                    };
                } else if (__value__ == (2993385i32)) {
                    _i_2993005++;
                    _gotoNext = 2993924i32;
                } else if (__value__ == (2993450i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2993461i32;
                    } else {
                        _gotoNext = 2993515i32;
                    };
                } else if (__value__ == (2993461i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2993515i32;
                } else if (__value__ == (2993515i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2993537i32;
                    } else {
                        _gotoNext = 2993790i32;
                    };
                } else if (__value__ == (2993537i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2993637i32;
                    } else {
                        _gotoNext = 2993660i32;
                    };
                } else if (__value__ == (2993637i32)) {
                    _i_2993005++;
                    _gotoNext = 2993924i32;
                } else if (__value__ == (2993660i32)) {
                    return false;
                    _gotoNext = 2993790i32;
                } else if (__value__ == (2993790i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2993820i32;
                } else if (__value__ == (2993820i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2993842i32;
                    } else {
                        _gotoNext = 2993879i32;
                    };
                } else if (__value__ == (2993842i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2993820i32;
                } else if (__value__ == (2993879i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2993890i32;
                    } else {
                        _gotoNext = 2993910i32;
                    };
                } else if (__value__ == (2993890i32)) {
                    _i_2993005++;
                    _gotoNext = 2993924i32;
                } else if (__value__ == (2993910i32)) {
                    return false;
                    _i_2993005++;
                    _gotoNext = 2993924i32;
                } else if (__value__ == (2993923i32)) {
                    _i_2993005 = 0i32;
                    _gotoNext = 2993924i32;
                } else if (__value__ == (2993924i32)) {
                    if (_i_2993005 < (_keys_2992992.length)) {
                        _gotoNext = 2993013i32;
                    } else {
                        _gotoNext = 2993997i32;
                    };
                } else if (__value__ == (2993997i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
