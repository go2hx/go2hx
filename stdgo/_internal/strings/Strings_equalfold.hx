package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2888294:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2887064:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2887003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2887741:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2887738:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2887659:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2887503:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2887496 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2887509 = @:invalid_type null;
        var _keys_2887496 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2887051:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2887003 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2887011i32;
                } else if (__value__ == (2887011i32)) {
                    if (((_i_2887003 < (_s.length) : Bool) && (_i_2887003 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2887047i32;
                    } else {
                        _gotoNext = 2887436i32;
                    };
                } else if (__value__ == (2887047i32)) {
                    _sr_2887051 = _s[(_i_2887003 : stdgo.GoInt)];
                    _tr_2887064 = _t[(_i_2887003 : stdgo.GoInt)];
                    if (((_sr_2887051 | _tr_2887064 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2887103i32;
                    } else {
                        _gotoNext = 2887147i32;
                    };
                } else if (__value__ == (2887103i32)) {
                    _gotoNext = 2887461i32;
                } else if (__value__ == (2887147i32)) {
                    if (_tr_2887064 == (_sr_2887051)) {
                        _gotoNext = 2887159i32;
                    } else {
                        _gotoNext = 2887224i32;
                    };
                } else if (__value__ == (2887159i32)) {
                    _i_2887003++;
                    _gotoNext = 2887011i32;
                } else if (__value__ == (2887224i32)) {
                    if ((_tr_2887064 < _sr_2887051 : Bool)) {
                        _gotoNext = 2887235i32;
                    } else {
                        _gotoNext = 2887310i32;
                    };
                } else if (__value__ == (2887235i32)) {
                    {
                        final __tmp__0 = _sr_2887051;
                        final __tmp__1 = _tr_2887064;
                        _tr_2887064 = __tmp__0;
                        _sr_2887051 = __tmp__1;
                    };
                    _gotoNext = 2887310i32;
                } else if (__value__ == (2887310i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2887051 : Bool) && (_sr_2887051 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2887064 == ((_sr_2887051 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2887356i32;
                    } else {
                        _gotoNext = 2887376i32;
                    };
                } else if (__value__ == (2887356i32)) {
                    _i_2887003++;
                    _gotoNext = 2887011i32;
                } else if (__value__ == (2887376i32)) {
                    return false;
                    _i_2887003++;
                    _gotoNext = 2887011i32;
                } else if (__value__ == (2887436i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2887461i32;
                } else if (__value__ == (2887461i32)) {
                    _s = (_s.__slice__(_i_2887003) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2887003) : stdgo.GoString)?.__copy__();
                    _keys_2887496 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2887496 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2887496 = (_keys_2887496.__append__(_key));
                        _values_2887496 = (_values_2887496.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2887496.length)) {
                        _gotoNext = 2888427i32;
                    } else {
                        _gotoNext = 2888501i32;
                    };
                } else if (__value__ == (2887517i32)) {
                    _sr_2887503 = _values_2887496[@:invalid_index_invalid_type _i_2887509];
                    var __blank__ = _keys_2887496[@:invalid_index_invalid_type _i_2887509];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2887586i32;
                    } else {
                        _gotoNext = 2887655i32;
                    };
                } else if (__value__ == (2887586i32)) {
                    return false;
                    _gotoNext = 2887655i32;
                } else if (__value__ == (2887655i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2887693i32;
                    } else {
                        _gotoNext = 2887733i32;
                    };
                } else if (__value__ == (2887693i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2887659 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2887877i32;
                } else if (__value__ == (2887733i32)) {
                    _gotoNext = 2887733i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2887738 = @:tmpset0 __tmp__._0;
                        _size_2887741 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2887738;
                        final __tmp__1 = (_t.__slice__(_size_2887741) : stdgo.GoString)?.__copy__();
                        _tr_2887659 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2887877i32;
                } else if (__value__ == (2887877i32)) {
                    if (_tr_2887659 == (_sr_2887503)) {
                        _gotoNext = 2887889i32;
                    } else {
                        _gotoNext = 2887954i32;
                    };
                } else if (__value__ == (2887889i32)) {
                    _i_2887509++;
                    _gotoNext = 2888428i32;
                } else if (__value__ == (2887954i32)) {
                    if ((_tr_2887659 < _sr_2887503 : Bool)) {
                        _gotoNext = 2887965i32;
                    } else {
                        _gotoNext = 2888019i32;
                    };
                } else if (__value__ == (2887965i32)) {
                    {
                        final __tmp__0 = _sr_2887503;
                        final __tmp__1 = _tr_2887659;
                        _tr_2887659 = __tmp__0;
                        _sr_2887503 = __tmp__1;
                    };
                    _gotoNext = 2888019i32;
                } else if (__value__ == (2888019i32)) {
                    if ((_tr_2887659 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2888041i32;
                    } else {
                        _gotoNext = 2888294i32;
                    };
                } else if (__value__ == (2888041i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2887503 : Bool) && (_sr_2887503 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2887659 == ((_sr_2887503 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2888141i32;
                    } else {
                        _gotoNext = 2888164i32;
                    };
                } else if (__value__ == (2888141i32)) {
                    _i_2887509++;
                    _gotoNext = 2888428i32;
                } else if (__value__ == (2888164i32)) {
                    return false;
                    _gotoNext = 2888294i32;
                } else if (__value__ == (2888294i32)) {
                    _r_2888294 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2887503);
                    var __blank__ = 0i32;
                    _gotoNext = 2888324i32;
                } else if (__value__ == (2888324i32)) {
                    if (((_r_2888294 != _sr_2887503) && (_r_2888294 < _tr_2887659 : Bool) : Bool)) {
                        _gotoNext = 2888346i32;
                    } else {
                        _gotoNext = 2888383i32;
                    };
                } else if (__value__ == (2888346i32)) {
                    _r_2888294 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2888294);
                    _gotoNext = 2888324i32;
                } else if (__value__ == (2888383i32)) {
                    if (_r_2888294 == (_tr_2887659)) {
                        _gotoNext = 2888394i32;
                    } else {
                        _gotoNext = 2888414i32;
                    };
                } else if (__value__ == (2888394i32)) {
                    _i_2887509++;
                    _gotoNext = 2888428i32;
                } else if (__value__ == (2888414i32)) {
                    return false;
                    _i_2887509++;
                    _gotoNext = 2888428i32;
                } else if (__value__ == (2888427i32)) {
                    _i_2887509 = 0i32;
                    _gotoNext = 2888428i32;
                } else if (__value__ == (2888428i32)) {
                    if (_i_2887509 < (_keys_2887496.length)) {
                        _gotoNext = 2887517i32;
                    } else {
                        _gotoNext = 2888501i32;
                    };
                } else if (__value__ == (2888501i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
