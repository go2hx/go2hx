package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3079514:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3078723:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3078716 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3078716 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_3078879:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3078729 = @:invalid_type null;
        var _tr_3078284:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3078271:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3078223:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3078961:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3078958:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3078223 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3078231i32;
                } else if (__value__ == (3078231i32)) {
                    if (((_i_3078223 < (_s.length) : Bool) && (_i_3078223 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3078267i32;
                    } else {
                        _gotoNext = 3078656i32;
                    };
                } else if (__value__ == (3078267i32)) {
                    _sr_3078271 = _s[(_i_3078223 : stdgo.GoInt)];
                    _tr_3078284 = _t[(_i_3078223 : stdgo.GoInt)];
                    if (((_sr_3078271 | _tr_3078284 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3078323i32;
                    } else {
                        _gotoNext = 3078367i32;
                    };
                } else if (__value__ == (3078323i32)) {
                    _gotoNext = 3078681i32;
                } else if (__value__ == (3078367i32)) {
                    if (_tr_3078284 == (_sr_3078271)) {
                        _gotoNext = 3078379i32;
                    } else {
                        _gotoNext = 3078444i32;
                    };
                } else if (__value__ == (3078379i32)) {
                    _i_3078223++;
                    _gotoNext = 3078231i32;
                } else if (__value__ == (3078444i32)) {
                    if ((_tr_3078284 < _sr_3078271 : Bool)) {
                        _gotoNext = 3078455i32;
                    } else {
                        _gotoNext = 3078530i32;
                    };
                } else if (__value__ == (3078455i32)) {
                    {
                        final __tmp__0 = _sr_3078271;
                        final __tmp__1 = _tr_3078284;
                        _tr_3078284 = __tmp__0;
                        _sr_3078271 = __tmp__1;
                    };
                    _gotoNext = 3078530i32;
                } else if (__value__ == (3078530i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3078271 : Bool) && (_sr_3078271 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3078284 == ((_sr_3078271 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3078576i32;
                    } else {
                        _gotoNext = 3078596i32;
                    };
                } else if (__value__ == (3078576i32)) {
                    _i_3078223++;
                    _gotoNext = 3078231i32;
                } else if (__value__ == (3078596i32)) {
                    return false;
                    _i_3078223++;
                    _gotoNext = 3078231i32;
                } else if (__value__ == (3078656i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3078681i32;
                } else if (__value__ == (3078681i32)) {
                    _s = (_s.__slice__(_i_3078223) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3078223) : stdgo.GoString)?.__copy__();
                    _keys_3078716 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3078716 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3078716 = (_keys_3078716.__append__(_key));
                        _values_3078716 = (_values_3078716.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3078716.length)) {
                        _gotoNext = 3079647i32;
                    } else {
                        _gotoNext = 3079721i32;
                    };
                } else if (__value__ == (3078737i32)) {
                    _sr_3078723 = _values_3078716[@:invalid_index_invalid_type _i_3078729];
                    var __blank__ = _keys_3078716[@:invalid_index_invalid_type _i_3078729];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3078806i32;
                    } else {
                        _gotoNext = 3078875i32;
                    };
                } else if (__value__ == (3078806i32)) {
                    return false;
                    _gotoNext = 3078875i32;
                } else if (__value__ == (3078875i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3078913i32;
                    } else {
                        _gotoNext = 3078953i32;
                    };
                } else if (__value__ == (3078913i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3078879 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3079097i32;
                } else if (__value__ == (3078953i32)) {
                    _gotoNext = 3078953i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3078958 = @:tmpset0 __tmp__._0;
                        _size_3078961 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3078958;
                        final __tmp__1 = (_t.__slice__(_size_3078961) : stdgo.GoString)?.__copy__();
                        _tr_3078879 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3079097i32;
                } else if (__value__ == (3079097i32)) {
                    if (_tr_3078879 == (_sr_3078723)) {
                        _gotoNext = 3079109i32;
                    } else {
                        _gotoNext = 3079174i32;
                    };
                } else if (__value__ == (3079109i32)) {
                    _i_3078729++;
                    _gotoNext = 3079648i32;
                } else if (__value__ == (3079174i32)) {
                    if ((_tr_3078879 < _sr_3078723 : Bool)) {
                        _gotoNext = 3079185i32;
                    } else {
                        _gotoNext = 3079239i32;
                    };
                } else if (__value__ == (3079185i32)) {
                    {
                        final __tmp__0 = _sr_3078723;
                        final __tmp__1 = _tr_3078879;
                        _tr_3078879 = __tmp__0;
                        _sr_3078723 = __tmp__1;
                    };
                    _gotoNext = 3079239i32;
                } else if (__value__ == (3079239i32)) {
                    if ((_tr_3078879 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3079261i32;
                    } else {
                        _gotoNext = 3079514i32;
                    };
                } else if (__value__ == (3079261i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3078723 : Bool) && (_sr_3078723 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3078879 == ((_sr_3078723 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3079361i32;
                    } else {
                        _gotoNext = 3079384i32;
                    };
                } else if (__value__ == (3079361i32)) {
                    _i_3078729++;
                    _gotoNext = 3079648i32;
                } else if (__value__ == (3079384i32)) {
                    return false;
                    _gotoNext = 3079514i32;
                } else if (__value__ == (3079514i32)) {
                    _r_3079514 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3078723);
                    var __blank__ = 0i32;
                    _gotoNext = 3079544i32;
                } else if (__value__ == (3079544i32)) {
                    if (((_r_3079514 != _sr_3078723) && (_r_3079514 < _tr_3078879 : Bool) : Bool)) {
                        _gotoNext = 3079566i32;
                    } else {
                        _gotoNext = 3079603i32;
                    };
                } else if (__value__ == (3079566i32)) {
                    _r_3079514 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3079514);
                    _gotoNext = 3079544i32;
                } else if (__value__ == (3079603i32)) {
                    if (_r_3079514 == (_tr_3078879)) {
                        _gotoNext = 3079614i32;
                    } else {
                        _gotoNext = 3079634i32;
                    };
                } else if (__value__ == (3079614i32)) {
                    _i_3078729++;
                    _gotoNext = 3079648i32;
                } else if (__value__ == (3079634i32)) {
                    return false;
                    _i_3078729++;
                    _gotoNext = 3079648i32;
                } else if (__value__ == (3079647i32)) {
                    _i_3078729 = 0i32;
                    _gotoNext = 3079648i32;
                } else if (__value__ == (3079648i32)) {
                    if (_i_3078729 < (_keys_3078716.length)) {
                        _gotoNext = 3078737i32;
                    } else {
                        _gotoNext = 3079721i32;
                    };
                } else if (__value__ == (3079721i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
