package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2889424:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2888626 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2888639 = @:invalid_type null;
        var _tr_2888194:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2888181:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2888133:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2888789:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2888633:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2888626 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _size_2888871:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2888868:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2888133 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2888141i32;
                } else if (__value__ == (2888141i32)) {
                    if (((_i_2888133 < (_s.length) : Bool) && (_i_2888133 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2888177i32;
                    } else {
                        _gotoNext = 2888566i32;
                    };
                } else if (__value__ == (2888177i32)) {
                    _sr_2888181 = _s[(_i_2888133 : stdgo.GoInt)];
                    _tr_2888194 = _t[(_i_2888133 : stdgo.GoInt)];
                    if (((_sr_2888181 | _tr_2888194 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2888233i32;
                    } else {
                        _gotoNext = 2888277i32;
                    };
                } else if (__value__ == (2888233i32)) {
                    _gotoNext = 2888591i32;
                } else if (__value__ == (2888277i32)) {
                    if (_tr_2888194 == (_sr_2888181)) {
                        _gotoNext = 2888289i32;
                    } else {
                        _gotoNext = 2888354i32;
                    };
                } else if (__value__ == (2888289i32)) {
                    _i_2888133++;
                    _gotoNext = 2888141i32;
                } else if (__value__ == (2888354i32)) {
                    if ((_tr_2888194 < _sr_2888181 : Bool)) {
                        _gotoNext = 2888365i32;
                    } else {
                        _gotoNext = 2888440i32;
                    };
                } else if (__value__ == (2888365i32)) {
                    {
                        final __tmp__0 = _sr_2888181;
                        final __tmp__1 = _tr_2888194;
                        _tr_2888194 = __tmp__0;
                        _sr_2888181 = __tmp__1;
                    };
                    _gotoNext = 2888440i32;
                } else if (__value__ == (2888440i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2888181 : Bool) && (_sr_2888181 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2888194 == ((_sr_2888181 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2888486i32;
                    } else {
                        _gotoNext = 2888506i32;
                    };
                } else if (__value__ == (2888486i32)) {
                    _i_2888133++;
                    _gotoNext = 2888141i32;
                } else if (__value__ == (2888506i32)) {
                    return false;
                    _i_2888133++;
                    _gotoNext = 2888141i32;
                } else if (__value__ == (2888566i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2888591i32;
                } else if (__value__ == (2888591i32)) {
                    _s = (_s.__slice__(_i_2888133) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2888133) : stdgo.GoString)?.__copy__();
                    _keys_2888626 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2888626 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2888626 = (_keys_2888626.__append__(_key));
                        _values_2888626 = (_values_2888626.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2888626.length)) {
                        _gotoNext = 2889557i32;
                    } else {
                        _gotoNext = 2889631i32;
                    };
                } else if (__value__ == (2888647i32)) {
                    _sr_2888633 = _values_2888626[@:invalid_index_invalid_type _i_2888639];
                    var __blank__ = _keys_2888626[@:invalid_index_invalid_type _i_2888639];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2888716i32;
                    } else {
                        _gotoNext = 2888785i32;
                    };
                } else if (__value__ == (2888716i32)) {
                    return false;
                    _gotoNext = 2888785i32;
                } else if (__value__ == (2888785i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2888823i32;
                    } else {
                        _gotoNext = 2888863i32;
                    };
                } else if (__value__ == (2888823i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2888789 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2889007i32;
                } else if (__value__ == (2888863i32)) {
                    _gotoNext = 2888863i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2888868 = @:tmpset0 __tmp__._0;
                        _size_2888871 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2888868;
                        final __tmp__1 = (_t.__slice__(_size_2888871) : stdgo.GoString)?.__copy__();
                        _tr_2888789 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2889007i32;
                } else if (__value__ == (2889007i32)) {
                    if (_tr_2888789 == (_sr_2888633)) {
                        _gotoNext = 2889019i32;
                    } else {
                        _gotoNext = 2889084i32;
                    };
                } else if (__value__ == (2889019i32)) {
                    _i_2888639++;
                    _gotoNext = 2889558i32;
                } else if (__value__ == (2889084i32)) {
                    if ((_tr_2888789 < _sr_2888633 : Bool)) {
                        _gotoNext = 2889095i32;
                    } else {
                        _gotoNext = 2889149i32;
                    };
                } else if (__value__ == (2889095i32)) {
                    {
                        final __tmp__0 = _sr_2888633;
                        final __tmp__1 = _tr_2888789;
                        _tr_2888789 = __tmp__0;
                        _sr_2888633 = __tmp__1;
                    };
                    _gotoNext = 2889149i32;
                } else if (__value__ == (2889149i32)) {
                    if ((_tr_2888789 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2889171i32;
                    } else {
                        _gotoNext = 2889424i32;
                    };
                } else if (__value__ == (2889171i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2888633 : Bool) && (_sr_2888633 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2888789 == ((_sr_2888633 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2889271i32;
                    } else {
                        _gotoNext = 2889294i32;
                    };
                } else if (__value__ == (2889271i32)) {
                    _i_2888639++;
                    _gotoNext = 2889558i32;
                } else if (__value__ == (2889294i32)) {
                    return false;
                    _gotoNext = 2889424i32;
                } else if (__value__ == (2889424i32)) {
                    _r_2889424 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2888633);
                    var __blank__ = 0i32;
                    _gotoNext = 2889454i32;
                } else if (__value__ == (2889454i32)) {
                    if (((_r_2889424 != _sr_2888633) && (_r_2889424 < _tr_2888789 : Bool) : Bool)) {
                        _gotoNext = 2889476i32;
                    } else {
                        _gotoNext = 2889513i32;
                    };
                } else if (__value__ == (2889476i32)) {
                    _r_2889424 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2889424);
                    _gotoNext = 2889454i32;
                } else if (__value__ == (2889513i32)) {
                    if (_r_2889424 == (_tr_2888789)) {
                        _gotoNext = 2889524i32;
                    } else {
                        _gotoNext = 2889544i32;
                    };
                } else if (__value__ == (2889524i32)) {
                    _i_2888639++;
                    _gotoNext = 2889558i32;
                } else if (__value__ == (2889544i32)) {
                    return false;
                    _i_2888639++;
                    _gotoNext = 2889558i32;
                } else if (__value__ == (2889557i32)) {
                    _i_2888639 = 0i32;
                    _gotoNext = 2889558i32;
                } else if (__value__ == (2889558i32)) {
                    if (_i_2888639 < (_keys_2888626.length)) {
                        _gotoNext = 2888647i32;
                    } else {
                        _gotoNext = 2889631i32;
                    };
                } else if (__value__ == (2889631i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
