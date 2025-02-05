package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2968730:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2968723 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2968291:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2969521:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2968968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2968736 = @:invalid_type null;
        var _sr_2968278:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2968230:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2968965:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2968886:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2968723 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2968230 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2968238i32;
                } else if (__value__ == (2968238i32)) {
                    if (((_i_2968230 < (_s.length) : Bool) && (_i_2968230 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2968274i32;
                    } else {
                        _gotoNext = 2968663i32;
                    };
                } else if (__value__ == (2968274i32)) {
                    _sr_2968278 = _s[(_i_2968230 : stdgo.GoInt)];
                    _tr_2968291 = _t[(_i_2968230 : stdgo.GoInt)];
                    if (((_sr_2968278 | _tr_2968291 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2968330i32;
                    } else {
                        _gotoNext = 2968374i32;
                    };
                } else if (__value__ == (2968330i32)) {
                    _gotoNext = 2968688i32;
                } else if (__value__ == (2968374i32)) {
                    if (_tr_2968291 == (_sr_2968278)) {
                        _gotoNext = 2968386i32;
                    } else {
                        _gotoNext = 2968451i32;
                    };
                } else if (__value__ == (2968386i32)) {
                    _i_2968230++;
                    _gotoNext = 2968238i32;
                } else if (__value__ == (2968451i32)) {
                    if ((_tr_2968291 < _sr_2968278 : Bool)) {
                        _gotoNext = 2968462i32;
                    } else {
                        _gotoNext = 2968537i32;
                    };
                } else if (__value__ == (2968462i32)) {
                    {
                        final __tmp__0 = _sr_2968278;
                        final __tmp__1 = _tr_2968291;
                        _tr_2968291 = __tmp__0;
                        _sr_2968278 = __tmp__1;
                    };
                    _gotoNext = 2968537i32;
                } else if (__value__ == (2968537i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2968278 : Bool) && (_sr_2968278 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2968291 == ((_sr_2968278 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2968583i32;
                    } else {
                        _gotoNext = 2968603i32;
                    };
                } else if (__value__ == (2968583i32)) {
                    _i_2968230++;
                    _gotoNext = 2968238i32;
                } else if (__value__ == (2968603i32)) {
                    return false;
                    _i_2968230++;
                    _gotoNext = 2968238i32;
                } else if (__value__ == (2968663i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2968688i32;
                } else if (__value__ == (2968688i32)) {
                    _s = (_s.__slice__(_i_2968230) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2968230) : stdgo.GoString)?.__copy__();
                    _keys_2968723 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2968723 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2968723 = (_keys_2968723.__append__(_key));
                        _values_2968723 = (_values_2968723.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2968723.length)) {
                        _gotoNext = 2969654i32;
                    } else {
                        _gotoNext = 2969728i32;
                    };
                } else if (__value__ == (2968744i32)) {
                    _sr_2968730 = _values_2968723[@:invalid_index_invalid_type _i_2968736];
                    var __blank__ = _keys_2968723[@:invalid_index_invalid_type _i_2968736];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2968813i32;
                    } else {
                        _gotoNext = 2968882i32;
                    };
                } else if (__value__ == (2968813i32)) {
                    return false;
                    _gotoNext = 2968882i32;
                } else if (__value__ == (2968882i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2968920i32;
                    } else {
                        _gotoNext = 2968960i32;
                    };
                } else if (__value__ == (2968920i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2968886 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2969104i32;
                } else if (__value__ == (2968960i32)) {
                    _gotoNext = 2968960i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2968965 = @:tmpset0 __tmp__._0;
                        _size_2968968 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2968965;
                        final __tmp__1 = (_t.__slice__(_size_2968968) : stdgo.GoString)?.__copy__();
                        _tr_2968886 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2969104i32;
                } else if (__value__ == (2969104i32)) {
                    if (_tr_2968886 == (_sr_2968730)) {
                        _gotoNext = 2969116i32;
                    } else {
                        _gotoNext = 2969181i32;
                    };
                } else if (__value__ == (2969116i32)) {
                    _i_2968736++;
                    _gotoNext = 2969655i32;
                } else if (__value__ == (2969181i32)) {
                    if ((_tr_2968886 < _sr_2968730 : Bool)) {
                        _gotoNext = 2969192i32;
                    } else {
                        _gotoNext = 2969246i32;
                    };
                } else if (__value__ == (2969192i32)) {
                    {
                        final __tmp__0 = _sr_2968730;
                        final __tmp__1 = _tr_2968886;
                        _tr_2968886 = __tmp__0;
                        _sr_2968730 = __tmp__1;
                    };
                    _gotoNext = 2969246i32;
                } else if (__value__ == (2969246i32)) {
                    if ((_tr_2968886 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2969268i32;
                    } else {
                        _gotoNext = 2969521i32;
                    };
                } else if (__value__ == (2969268i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2968730 : Bool) && (_sr_2968730 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2968886 == ((_sr_2968730 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2969368i32;
                    } else {
                        _gotoNext = 2969391i32;
                    };
                } else if (__value__ == (2969368i32)) {
                    _i_2968736++;
                    _gotoNext = 2969655i32;
                } else if (__value__ == (2969391i32)) {
                    return false;
                    _gotoNext = 2969521i32;
                } else if (__value__ == (2969521i32)) {
                    _r_2969521 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2968730);
                    var __blank__ = 0i32;
                    _gotoNext = 2969551i32;
                } else if (__value__ == (2969551i32)) {
                    if (((_r_2969521 != _sr_2968730) && (_r_2969521 < _tr_2968886 : Bool) : Bool)) {
                        _gotoNext = 2969573i32;
                    } else {
                        _gotoNext = 2969610i32;
                    };
                } else if (__value__ == (2969573i32)) {
                    _r_2969521 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2969521);
                    _gotoNext = 2969551i32;
                } else if (__value__ == (2969610i32)) {
                    if (_r_2969521 == (_tr_2968886)) {
                        _gotoNext = 2969621i32;
                    } else {
                        _gotoNext = 2969641i32;
                    };
                } else if (__value__ == (2969621i32)) {
                    _i_2968736++;
                    _gotoNext = 2969655i32;
                } else if (__value__ == (2969641i32)) {
                    return false;
                    _i_2968736++;
                    _gotoNext = 2969655i32;
                } else if (__value__ == (2969654i32)) {
                    _i_2968736 = 0i32;
                    _gotoNext = 2969655i32;
                } else if (__value__ == (2969655i32)) {
                    if (_i_2968736 < (_keys_2968723.length)) {
                        _gotoNext = 2968744i32;
                    } else {
                        _gotoNext = 2969728i32;
                    };
                } else if (__value__ == (2969728i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
