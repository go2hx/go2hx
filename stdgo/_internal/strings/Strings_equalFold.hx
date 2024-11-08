package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2750942:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2750700 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2750700 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2750713 = @:invalid_type null;
        var _tr_2750268:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2750255:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2751498:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2750945:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2750863:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2750707:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2750207:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2750207 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2750215i32;
                } else if (__value__ == (2750215i32)) {
                    if (((_i_2750207 < (_s.length) : Bool) && (_i_2750207 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2750251i32;
                    } else {
                        _gotoNext = 2750640i32;
                    };
                } else if (__value__ == (2750251i32)) {
                    _sr_2750255 = _s[(_i_2750207 : stdgo.GoInt)];
                    _tr_2750268 = _t[(_i_2750207 : stdgo.GoInt)];
                    if (((_sr_2750255 | _tr_2750268 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2750307i32;
                    } else {
                        _gotoNext = 2750351i32;
                    };
                } else if (__value__ == (2750307i32)) {
                    _gotoNext = 2750665i32;
                } else if (__value__ == (2750351i32)) {
                    if (_tr_2750268 == (_sr_2750255)) {
                        _gotoNext = 2750363i32;
                    } else {
                        _gotoNext = 2750428i32;
                    };
                } else if (__value__ == (2750363i32)) {
                    _i_2750207++;
                    _gotoNext = 2750215i32;
                } else if (__value__ == (2750428i32)) {
                    if ((_tr_2750268 < _sr_2750255 : Bool)) {
                        _gotoNext = 2750439i32;
                    } else {
                        _gotoNext = 2750514i32;
                    };
                } else if (__value__ == (2750439i32)) {
                    {
                        final __tmp__0 = _sr_2750255;
                        final __tmp__1 = _tr_2750268;
                        _tr_2750268 = __tmp__0;
                        _sr_2750255 = __tmp__1;
                    };
                    _gotoNext = 2750514i32;
                } else if (__value__ == (2750514i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2750255 : Bool) && (_sr_2750255 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2750268 == ((_sr_2750255 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2750560i32;
                    } else {
                        _gotoNext = 2750580i32;
                    };
                } else if (__value__ == (2750560i32)) {
                    _i_2750207++;
                    _gotoNext = 2750215i32;
                } else if (__value__ == (2750580i32)) {
                    return false;
                    _i_2750207++;
                    _gotoNext = 2750215i32;
                } else if (__value__ == (2750640i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2750665i32;
                } else if (__value__ == (2750665i32)) {
                    _s = (_s.__slice__(_i_2750207) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2750207) : stdgo.GoString)?.__copy__();
                    _keys_2750700 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2750700 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2750700 = (_keys_2750700.__append__(_key));
                        _values_2750700 = (_values_2750700.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2750700.length)) {
                        _gotoNext = 2751631i32;
                    } else {
                        _gotoNext = 2751705i32;
                    };
                } else if (__value__ == (2750721i32)) {
                    _sr_2750707 = _values_2750700[@:invalid_index_invalid_type _i_2750713];
                    var __blank__ = _keys_2750700[@:invalid_index_invalid_type _i_2750713];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2750790i32;
                    } else {
                        _gotoNext = 2750859i32;
                    };
                } else if (__value__ == (2750790i32)) {
                    return false;
                    _gotoNext = 2750859i32;
                } else if (__value__ == (2750859i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2750897i32;
                    } else {
                        _gotoNext = 2750937i32;
                    };
                } else if (__value__ == (2750897i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2750863 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2751081i32;
                } else if (__value__ == (2750937i32)) {
                    _gotoNext = 2750937i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2750942 = __tmp__._0;
                        _size_2750945 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2750942;
                        final __tmp__1 = (_t.__slice__(_size_2750945) : stdgo.GoString)?.__copy__();
                        _tr_2750863 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2751081i32;
                } else if (__value__ == (2751081i32)) {
                    if (_tr_2750863 == (_sr_2750707)) {
                        _gotoNext = 2751093i32;
                    } else {
                        _gotoNext = 2751158i32;
                    };
                } else if (__value__ == (2751093i32)) {
                    _i_2750713++;
                    _gotoNext = 2751632i32;
                } else if (__value__ == (2751158i32)) {
                    if ((_tr_2750863 < _sr_2750707 : Bool)) {
                        _gotoNext = 2751169i32;
                    } else {
                        _gotoNext = 2751223i32;
                    };
                } else if (__value__ == (2751169i32)) {
                    {
                        final __tmp__0 = _sr_2750707;
                        final __tmp__1 = _tr_2750863;
                        _tr_2750863 = __tmp__0;
                        _sr_2750707 = __tmp__1;
                    };
                    _gotoNext = 2751223i32;
                } else if (__value__ == (2751223i32)) {
                    if ((_tr_2750863 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2751245i32;
                    } else {
                        _gotoNext = 2751498i32;
                    };
                } else if (__value__ == (2751245i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2750707 : Bool) && (_sr_2750707 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2750863 == ((_sr_2750707 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2751345i32;
                    } else {
                        _gotoNext = 2751368i32;
                    };
                } else if (__value__ == (2751345i32)) {
                    _i_2750713++;
                    _gotoNext = 2751632i32;
                } else if (__value__ == (2751368i32)) {
                    return false;
                    _gotoNext = 2751498i32;
                } else if (__value__ == (2751498i32)) {
                    _r_2751498 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2750707);
                    var __blank__ = 0i32;
                    _gotoNext = 2751528i32;
                } else if (__value__ == (2751528i32)) {
                    if (((_r_2751498 != _sr_2750707) && (_r_2751498 < _tr_2750863 : Bool) : Bool)) {
                        _gotoNext = 2751550i32;
                    } else {
                        _gotoNext = 2751587i32;
                    };
                } else if (__value__ == (2751550i32)) {
                    _r_2751498 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2751498);
                    _gotoNext = 2751528i32;
                } else if (__value__ == (2751587i32)) {
                    if (_r_2751498 == (_tr_2750863)) {
                        _gotoNext = 2751598i32;
                    } else {
                        _gotoNext = 2751618i32;
                    };
                } else if (__value__ == (2751598i32)) {
                    _i_2750713++;
                    _gotoNext = 2751632i32;
                } else if (__value__ == (2751618i32)) {
                    return false;
                    _i_2750713++;
                    _gotoNext = 2751632i32;
                } else if (__value__ == (2751631i32)) {
                    _i_2750713 = 0i32;
                    _gotoNext = 2751632i32;
                } else if (__value__ == (2751632i32)) {
                    if (_i_2750713 < (_keys_2750700.length)) {
                        _gotoNext = 2750721i32;
                    } else {
                        _gotoNext = 2751705i32;
                    };
                } else if (__value__ == (2751705i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
