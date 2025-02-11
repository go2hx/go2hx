package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2925680:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2925435 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2925448 = @:invalid_type null;
        var _r_2926233:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2925003:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2924990:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2924942:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2925677:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2925598:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2925442:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2925435 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2924942 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2924950i32;
                } else if (__value__ == (2924950i32)) {
                    if (((_i_2924942 < (_s.length) : Bool) && (_i_2924942 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2924986i32;
                    } else {
                        _gotoNext = 2925375i32;
                    };
                } else if (__value__ == (2924986i32)) {
                    _sr_2924990 = _s[(_i_2924942 : stdgo.GoInt)];
                    _tr_2925003 = _t[(_i_2924942 : stdgo.GoInt)];
                    if (((_sr_2924990 | _tr_2925003 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2925042i32;
                    } else {
                        _gotoNext = 2925086i32;
                    };
                } else if (__value__ == (2925042i32)) {
                    _gotoNext = 2925400i32;
                } else if (__value__ == (2925086i32)) {
                    if (_tr_2925003 == (_sr_2924990)) {
                        _gotoNext = 2925098i32;
                    } else {
                        _gotoNext = 2925163i32;
                    };
                } else if (__value__ == (2925098i32)) {
                    _i_2924942++;
                    _gotoNext = 2924950i32;
                } else if (__value__ == (2925163i32)) {
                    if ((_tr_2925003 < _sr_2924990 : Bool)) {
                        _gotoNext = 2925174i32;
                    } else {
                        _gotoNext = 2925249i32;
                    };
                } else if (__value__ == (2925174i32)) {
                    {
                        final __tmp__0 = _sr_2924990;
                        final __tmp__1 = _tr_2925003;
                        _tr_2925003 = __tmp__0;
                        _sr_2924990 = __tmp__1;
                    };
                    _gotoNext = 2925249i32;
                } else if (__value__ == (2925249i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2924990 : Bool) && (_sr_2924990 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2925003 == ((_sr_2924990 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2925295i32;
                    } else {
                        _gotoNext = 2925315i32;
                    };
                } else if (__value__ == (2925295i32)) {
                    _i_2924942++;
                    _gotoNext = 2924950i32;
                } else if (__value__ == (2925315i32)) {
                    return false;
                    _i_2924942++;
                    _gotoNext = 2924950i32;
                } else if (__value__ == (2925375i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2925400i32;
                } else if (__value__ == (2925400i32)) {
                    _s = (_s.__slice__(_i_2924942) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2924942) : stdgo.GoString)?.__copy__();
                    _keys_2925435 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2925435 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2925435 = (_keys_2925435.__append__(_key));
                        _values_2925435 = (_values_2925435.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2925435.length)) {
                        _gotoNext = 2926366i32;
                    } else {
                        _gotoNext = 2926440i32;
                    };
                } else if (__value__ == (2925456i32)) {
                    _sr_2925442 = _values_2925435[@:invalid_index_invalid_type _i_2925448];
                    var __blank__ = _keys_2925435[@:invalid_index_invalid_type _i_2925448];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2925525i32;
                    } else {
                        _gotoNext = 2925594i32;
                    };
                } else if (__value__ == (2925525i32)) {
                    return false;
                    _gotoNext = 2925594i32;
                } else if (__value__ == (2925594i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2925632i32;
                    } else {
                        _gotoNext = 2925672i32;
                    };
                } else if (__value__ == (2925632i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2925598 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2925816i32;
                } else if (__value__ == (2925672i32)) {
                    _gotoNext = 2925672i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2925677 = @:tmpset0 __tmp__._0;
                        _size_2925680 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2925677;
                        final __tmp__1 = (_t.__slice__(_size_2925680) : stdgo.GoString)?.__copy__();
                        _tr_2925598 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2925816i32;
                } else if (__value__ == (2925816i32)) {
                    if (_tr_2925598 == (_sr_2925442)) {
                        _gotoNext = 2925828i32;
                    } else {
                        _gotoNext = 2925893i32;
                    };
                } else if (__value__ == (2925828i32)) {
                    _i_2925448++;
                    _gotoNext = 2926367i32;
                } else if (__value__ == (2925893i32)) {
                    if ((_tr_2925598 < _sr_2925442 : Bool)) {
                        _gotoNext = 2925904i32;
                    } else {
                        _gotoNext = 2925958i32;
                    };
                } else if (__value__ == (2925904i32)) {
                    {
                        final __tmp__0 = _sr_2925442;
                        final __tmp__1 = _tr_2925598;
                        _tr_2925598 = __tmp__0;
                        _sr_2925442 = __tmp__1;
                    };
                    _gotoNext = 2925958i32;
                } else if (__value__ == (2925958i32)) {
                    if ((_tr_2925598 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2925980i32;
                    } else {
                        _gotoNext = 2926233i32;
                    };
                } else if (__value__ == (2925980i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2925442 : Bool) && (_sr_2925442 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2925598 == ((_sr_2925442 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2926080i32;
                    } else {
                        _gotoNext = 2926103i32;
                    };
                } else if (__value__ == (2926080i32)) {
                    _i_2925448++;
                    _gotoNext = 2926367i32;
                } else if (__value__ == (2926103i32)) {
                    return false;
                    _gotoNext = 2926233i32;
                } else if (__value__ == (2926233i32)) {
                    _r_2926233 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2925442);
                    var __blank__ = 0i32;
                    _gotoNext = 2926263i32;
                } else if (__value__ == (2926263i32)) {
                    if (((_r_2926233 != _sr_2925442) && (_r_2926233 < _tr_2925598 : Bool) : Bool)) {
                        _gotoNext = 2926285i32;
                    } else {
                        _gotoNext = 2926322i32;
                    };
                } else if (__value__ == (2926285i32)) {
                    _r_2926233 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2926233);
                    _gotoNext = 2926263i32;
                } else if (__value__ == (2926322i32)) {
                    if (_r_2926233 == (_tr_2925598)) {
                        _gotoNext = 2926333i32;
                    } else {
                        _gotoNext = 2926353i32;
                    };
                } else if (__value__ == (2926333i32)) {
                    _i_2925448++;
                    _gotoNext = 2926367i32;
                } else if (__value__ == (2926353i32)) {
                    return false;
                    _i_2925448++;
                    _gotoNext = 2926367i32;
                } else if (__value__ == (2926366i32)) {
                    _i_2925448 = 0i32;
                    _gotoNext = 2926367i32;
                } else if (__value__ == (2926367i32)) {
                    if (_i_2925448 < (_keys_2925435.length)) {
                        _gotoNext = 2925456i32;
                    } else {
                        _gotoNext = 2926440i32;
                    };
                } else if (__value__ == (2926440i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
