package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3068250:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3067615:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3067020:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_3067452 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3067452 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3067465 = @:invalid_type null;
        var _sr_3067007:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3066959:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3067697:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3067694:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3067459:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3066959 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3066967i32;
                } else if (__value__ == (3066967i32)) {
                    if (((_i_3066959 < (_s.length) : Bool) && (_i_3066959 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3067003i32;
                    } else {
                        _gotoNext = 3067392i32;
                    };
                } else if (__value__ == (3067003i32)) {
                    _sr_3067007 = _s[(_i_3066959 : stdgo.GoInt)];
                    _tr_3067020 = _t[(_i_3066959 : stdgo.GoInt)];
                    if (((_sr_3067007 | _tr_3067020 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3067059i32;
                    } else {
                        _gotoNext = 3067103i32;
                    };
                } else if (__value__ == (3067059i32)) {
                    _gotoNext = 3067417i32;
                } else if (__value__ == (3067103i32)) {
                    if (_tr_3067020 == (_sr_3067007)) {
                        _gotoNext = 3067115i32;
                    } else {
                        _gotoNext = 3067180i32;
                    };
                } else if (__value__ == (3067115i32)) {
                    _i_3066959++;
                    _gotoNext = 3066967i32;
                } else if (__value__ == (3067180i32)) {
                    if ((_tr_3067020 < _sr_3067007 : Bool)) {
                        _gotoNext = 3067191i32;
                    } else {
                        _gotoNext = 3067266i32;
                    };
                } else if (__value__ == (3067191i32)) {
                    {
                        final __tmp__0 = _sr_3067007;
                        final __tmp__1 = _tr_3067020;
                        _tr_3067020 = __tmp__0;
                        _sr_3067007 = __tmp__1;
                    };
                    _gotoNext = 3067266i32;
                } else if (__value__ == (3067266i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3067007 : Bool) && (_sr_3067007 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3067020 == ((_sr_3067007 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3067312i32;
                    } else {
                        _gotoNext = 3067332i32;
                    };
                } else if (__value__ == (3067312i32)) {
                    _i_3066959++;
                    _gotoNext = 3066967i32;
                } else if (__value__ == (3067332i32)) {
                    return false;
                    _i_3066959++;
                    _gotoNext = 3066967i32;
                } else if (__value__ == (3067392i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3067417i32;
                } else if (__value__ == (3067417i32)) {
                    _s = (_s.__slice__(_i_3066959) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3066959) : stdgo.GoString)?.__copy__();
                    _keys_3067452 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3067452 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3067452 = (_keys_3067452.__append__(_key));
                        _values_3067452 = (_values_3067452.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3067452.length)) {
                        _gotoNext = 3068383i32;
                    } else {
                        _gotoNext = 3068457i32;
                    };
                } else if (__value__ == (3067473i32)) {
                    _sr_3067459 = _values_3067452[@:invalid_index_invalid_type _i_3067465];
                    var __blank__ = _keys_3067452[@:invalid_index_invalid_type _i_3067465];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3067542i32;
                    } else {
                        _gotoNext = 3067611i32;
                    };
                } else if (__value__ == (3067542i32)) {
                    return false;
                    _gotoNext = 3067611i32;
                } else if (__value__ == (3067611i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3067649i32;
                    } else {
                        _gotoNext = 3067689i32;
                    };
                } else if (__value__ == (3067649i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3067615 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3067833i32;
                } else if (__value__ == (3067689i32)) {
                    _gotoNext = 3067689i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3067694 = __tmp__._0;
                        _size_3067697 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3067694;
                        final __tmp__1 = (_t.__slice__(_size_3067697) : stdgo.GoString)?.__copy__();
                        _tr_3067615 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3067833i32;
                } else if (__value__ == (3067833i32)) {
                    if (_tr_3067615 == (_sr_3067459)) {
                        _gotoNext = 3067845i32;
                    } else {
                        _gotoNext = 3067910i32;
                    };
                } else if (__value__ == (3067845i32)) {
                    _i_3067465++;
                    _gotoNext = 3068384i32;
                } else if (__value__ == (3067910i32)) {
                    if ((_tr_3067615 < _sr_3067459 : Bool)) {
                        _gotoNext = 3067921i32;
                    } else {
                        _gotoNext = 3067975i32;
                    };
                } else if (__value__ == (3067921i32)) {
                    {
                        final __tmp__0 = _sr_3067459;
                        final __tmp__1 = _tr_3067615;
                        _tr_3067615 = __tmp__0;
                        _sr_3067459 = __tmp__1;
                    };
                    _gotoNext = 3067975i32;
                } else if (__value__ == (3067975i32)) {
                    if ((_tr_3067615 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3067997i32;
                    } else {
                        _gotoNext = 3068250i32;
                    };
                } else if (__value__ == (3067997i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3067459 : Bool) && (_sr_3067459 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3067615 == ((_sr_3067459 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3068097i32;
                    } else {
                        _gotoNext = 3068120i32;
                    };
                } else if (__value__ == (3068097i32)) {
                    _i_3067465++;
                    _gotoNext = 3068384i32;
                } else if (__value__ == (3068120i32)) {
                    return false;
                    _gotoNext = 3068250i32;
                } else if (__value__ == (3068250i32)) {
                    _r_3068250 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3067459);
                    var __blank__ = 0i32;
                    _gotoNext = 3068280i32;
                } else if (__value__ == (3068280i32)) {
                    if (((_r_3068250 != _sr_3067459) && (_r_3068250 < _tr_3067615 : Bool) : Bool)) {
                        _gotoNext = 3068302i32;
                    } else {
                        _gotoNext = 3068339i32;
                    };
                } else if (__value__ == (3068302i32)) {
                    _r_3068250 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3068250);
                    _gotoNext = 3068280i32;
                } else if (__value__ == (3068339i32)) {
                    if (_r_3068250 == (_tr_3067615)) {
                        _gotoNext = 3068350i32;
                    } else {
                        _gotoNext = 3068370i32;
                    };
                } else if (__value__ == (3068350i32)) {
                    _i_3067465++;
                    _gotoNext = 3068384i32;
                } else if (__value__ == (3068370i32)) {
                    return false;
                    _i_3067465++;
                    _gotoNext = 3068384i32;
                } else if (__value__ == (3068383i32)) {
                    _i_3067465 = 0i32;
                    _gotoNext = 3068384i32;
                } else if (__value__ == (3068384i32)) {
                    if (_i_3067465 < (_keys_3067452.length)) {
                        _gotoNext = 3067473i32;
                    } else {
                        _gotoNext = 3068457i32;
                    };
                } else if (__value__ == (3068457i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
