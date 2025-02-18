package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2811777 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2811777 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2811790 = @:invalid_type null;
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2811292i32;
                } else if (__value__ == (2811292i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2811328i32;
                    } else {
                        _gotoNext = 2811717i32;
                    };
                } else if (__value__ == (2811328i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2811384i32;
                    } else {
                        _gotoNext = 2811428i32;
                    };
                } else if (__value__ == (2811384i32)) {
                    _gotoNext = 2811742i32;
                } else if (__value__ == (2811428i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2811440i32;
                    } else {
                        _gotoNext = 2811505i32;
                    };
                } else if (__value__ == (2811440i32)) {
                    _i_0++;
                    _gotoNext = 2811292i32;
                } else if (__value__ == (2811505i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2811516i32;
                    } else {
                        _gotoNext = 2811591i32;
                    };
                } else if (__value__ == (2811516i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2811591i32;
                } else if (__value__ == (2811591i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2811637i32;
                    } else {
                        _gotoNext = 2811657i32;
                    };
                } else if (__value__ == (2811637i32)) {
                    _i_0++;
                    _gotoNext = 2811292i32;
                } else if (__value__ == (2811657i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2811292i32;
                } else if (__value__ == (2811717i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2811742i32;
                } else if (__value__ == (2811742i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2811777 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2811777 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2811777 = (_keys_2811777.__append__(_key));
                        _values_2811777 = (_values_2811777.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2811777.length)) {
                        _gotoNext = 2812708i32;
                    } else {
                        _gotoNext = 2812782i32;
                    };
                } else if (__value__ == (2811798i32)) {
                    _sr_3 = _values_2811777[@:invalid_index_invalid_type _i_2811790];
                    var __blank__ = _keys_2811777[@:invalid_index_invalid_type _i_2811790];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2811867i32;
                    } else {
                        _gotoNext = 2811936i32;
                    };
                } else if (__value__ == (2811867i32)) {
                    return false;
                    _gotoNext = 2811936i32;
                } else if (__value__ == (2811936i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2811974i32;
                    } else {
                        _gotoNext = 2812014i32;
                    };
                } else if (__value__ == (2811974i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2812158i32;
                } else if (__value__ == (2812014i32)) {
                    _gotoNext = 2812014i32;
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
                    _gotoNext = 2812158i32;
                } else if (__value__ == (2812158i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2812170i32;
                    } else {
                        _gotoNext = 2812235i32;
                    };
                } else if (__value__ == (2812170i32)) {
                    _i_2811790++;
                    _gotoNext = 2812709i32;
                } else if (__value__ == (2812235i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2812246i32;
                    } else {
                        _gotoNext = 2812300i32;
                    };
                } else if (__value__ == (2812246i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2812300i32;
                } else if (__value__ == (2812300i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2812322i32;
                    } else {
                        _gotoNext = 2812575i32;
                    };
                } else if (__value__ == (2812322i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2812422i32;
                    } else {
                        _gotoNext = 2812445i32;
                    };
                } else if (__value__ == (2812422i32)) {
                    _i_2811790++;
                    _gotoNext = 2812709i32;
                } else if (__value__ == (2812445i32)) {
                    return false;
                    _gotoNext = 2812575i32;
                } else if (__value__ == (2812575i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2812605i32;
                } else if (__value__ == (2812605i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2812627i32;
                    } else {
                        _gotoNext = 2812664i32;
                    };
                } else if (__value__ == (2812627i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2812605i32;
                } else if (__value__ == (2812664i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2812675i32;
                    } else {
                        _gotoNext = 2812695i32;
                    };
                } else if (__value__ == (2812675i32)) {
                    _i_2811790++;
                    _gotoNext = 2812709i32;
                } else if (__value__ == (2812695i32)) {
                    return false;
                    _i_2811790++;
                    _gotoNext = 2812709i32;
                } else if (__value__ == (2812708i32)) {
                    _i_2811790 = 0i32;
                    _gotoNext = 2812709i32;
                } else if (__value__ == (2812709i32)) {
                    if (_i_2811790 < (_keys_2811777.length)) {
                        _gotoNext = 2811798i32;
                    } else {
                        _gotoNext = 2812782i32;
                    };
                } else if (__value__ == (2812782i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
