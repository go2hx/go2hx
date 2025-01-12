package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3022623:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3022067:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3021832:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3021825 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3021838 = @:invalid_type null;
        var _tr_3021393:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3021380:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3021332:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3022070:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3021988:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3021825 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3021332 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3021340i32;
                } else if (__value__ == (3021340i32)) {
                    if (((_i_3021332 < (_s.length) : Bool) && (_i_3021332 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3021376i32;
                    } else {
                        _gotoNext = 3021765i32;
                    };
                } else if (__value__ == (3021376i32)) {
                    _sr_3021380 = _s[(_i_3021332 : stdgo.GoInt)];
                    _tr_3021393 = _t[(_i_3021332 : stdgo.GoInt)];
                    if (((_sr_3021380 | _tr_3021393 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3021432i32;
                    } else {
                        _gotoNext = 3021476i32;
                    };
                } else if (__value__ == (3021432i32)) {
                    _gotoNext = 3021790i32;
                } else if (__value__ == (3021476i32)) {
                    if (_tr_3021393 == (_sr_3021380)) {
                        _gotoNext = 3021488i32;
                    } else {
                        _gotoNext = 3021553i32;
                    };
                } else if (__value__ == (3021488i32)) {
                    _i_3021332++;
                    _gotoNext = 3021340i32;
                } else if (__value__ == (3021553i32)) {
                    if ((_tr_3021393 < _sr_3021380 : Bool)) {
                        _gotoNext = 3021564i32;
                    } else {
                        _gotoNext = 3021639i32;
                    };
                } else if (__value__ == (3021564i32)) {
                    {
                        final __tmp__0 = _sr_3021380;
                        final __tmp__1 = _tr_3021393;
                        _tr_3021393 = __tmp__0;
                        _sr_3021380 = __tmp__1;
                    };
                    _gotoNext = 3021639i32;
                } else if (__value__ == (3021639i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3021380 : Bool) && (_sr_3021380 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3021393 == ((_sr_3021380 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3021685i32;
                    } else {
                        _gotoNext = 3021705i32;
                    };
                } else if (__value__ == (3021685i32)) {
                    _i_3021332++;
                    _gotoNext = 3021340i32;
                } else if (__value__ == (3021705i32)) {
                    return false;
                    _i_3021332++;
                    _gotoNext = 3021340i32;
                } else if (__value__ == (3021765i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3021790i32;
                } else if (__value__ == (3021790i32)) {
                    _s = (_s.__slice__(_i_3021332) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3021332) : stdgo.GoString)?.__copy__();
                    _keys_3021825 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3021825 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3021825 = (_keys_3021825.__append__(_key));
                        _values_3021825 = (_values_3021825.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3021825.length)) {
                        _gotoNext = 3022756i32;
                    } else {
                        _gotoNext = 3022830i32;
                    };
                } else if (__value__ == (3021846i32)) {
                    _sr_3021832 = _values_3021825[@:invalid_index_invalid_type _i_3021838];
                    var __blank__ = _keys_3021825[@:invalid_index_invalid_type _i_3021838];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3021915i32;
                    } else {
                        _gotoNext = 3021984i32;
                    };
                } else if (__value__ == (3021915i32)) {
                    return false;
                    _gotoNext = 3021984i32;
                } else if (__value__ == (3021984i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3022022i32;
                    } else {
                        _gotoNext = 3022062i32;
                    };
                } else if (__value__ == (3022022i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3021988 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3022206i32;
                } else if (__value__ == (3022062i32)) {
                    _gotoNext = 3022062i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3022067 = __tmp__._0;
                        _size_3022070 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3022067;
                        final __tmp__1 = (_t.__slice__(_size_3022070) : stdgo.GoString)?.__copy__();
                        _tr_3021988 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3022206i32;
                } else if (__value__ == (3022206i32)) {
                    if (_tr_3021988 == (_sr_3021832)) {
                        _gotoNext = 3022218i32;
                    } else {
                        _gotoNext = 3022283i32;
                    };
                } else if (__value__ == (3022218i32)) {
                    _i_3021838++;
                    _gotoNext = 3022757i32;
                } else if (__value__ == (3022283i32)) {
                    if ((_tr_3021988 < _sr_3021832 : Bool)) {
                        _gotoNext = 3022294i32;
                    } else {
                        _gotoNext = 3022348i32;
                    };
                } else if (__value__ == (3022294i32)) {
                    {
                        final __tmp__0 = _sr_3021832;
                        final __tmp__1 = _tr_3021988;
                        _tr_3021988 = __tmp__0;
                        _sr_3021832 = __tmp__1;
                    };
                    _gotoNext = 3022348i32;
                } else if (__value__ == (3022348i32)) {
                    if ((_tr_3021988 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3022370i32;
                    } else {
                        _gotoNext = 3022623i32;
                    };
                } else if (__value__ == (3022370i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3021832 : Bool) && (_sr_3021832 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3021988 == ((_sr_3021832 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3022470i32;
                    } else {
                        _gotoNext = 3022493i32;
                    };
                } else if (__value__ == (3022470i32)) {
                    _i_3021838++;
                    _gotoNext = 3022757i32;
                } else if (__value__ == (3022493i32)) {
                    return false;
                    _gotoNext = 3022623i32;
                } else if (__value__ == (3022623i32)) {
                    _r_3022623 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3021832);
                    var __blank__ = 0i32;
                    _gotoNext = 3022653i32;
                } else if (__value__ == (3022653i32)) {
                    if (((_r_3022623 != _sr_3021832) && (_r_3022623 < _tr_3021988 : Bool) : Bool)) {
                        _gotoNext = 3022675i32;
                    } else {
                        _gotoNext = 3022712i32;
                    };
                } else if (__value__ == (3022675i32)) {
                    _r_3022623 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3022623);
                    _gotoNext = 3022653i32;
                } else if (__value__ == (3022712i32)) {
                    if (_r_3022623 == (_tr_3021988)) {
                        _gotoNext = 3022723i32;
                    } else {
                        _gotoNext = 3022743i32;
                    };
                } else if (__value__ == (3022723i32)) {
                    _i_3021838++;
                    _gotoNext = 3022757i32;
                } else if (__value__ == (3022743i32)) {
                    return false;
                    _i_3021838++;
                    _gotoNext = 3022757i32;
                } else if (__value__ == (3022756i32)) {
                    _i_3021838 = 0i32;
                    _gotoNext = 3022757i32;
                } else if (__value__ == (3022757i32)) {
                    if (_i_3021838 < (_keys_3021825.length)) {
                        _gotoNext = 3021846i32;
                    } else {
                        _gotoNext = 3022830i32;
                    };
                } else if (__value__ == (3022830i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
