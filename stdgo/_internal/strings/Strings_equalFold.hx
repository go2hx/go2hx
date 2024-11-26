package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2695409 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2695422 = @:invalid_type null;
        var _tr_2694977:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2694964:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2695654:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2695651:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2695572:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2695416:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2696207:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2695409 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2694916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2694916 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2694924i32;
                } else if (__value__ == (2694924i32)) {
                    if (((_i_2694916 < (_s.length) : Bool) && (_i_2694916 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2694960i32;
                    } else {
                        _gotoNext = 2695349i32;
                    };
                } else if (__value__ == (2694960i32)) {
                    _sr_2694964 = _s[(_i_2694916 : stdgo.GoInt)];
                    _tr_2694977 = _t[(_i_2694916 : stdgo.GoInt)];
                    if (((_sr_2694964 | _tr_2694977 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2695016i32;
                    } else {
                        _gotoNext = 2695060i32;
                    };
                } else if (__value__ == (2695016i32)) {
                    _gotoNext = 2695374i32;
                } else if (__value__ == (2695060i32)) {
                    if (_tr_2694977 == (_sr_2694964)) {
                        _gotoNext = 2695072i32;
                    } else {
                        _gotoNext = 2695137i32;
                    };
                } else if (__value__ == (2695072i32)) {
                    _i_2694916++;
                    _gotoNext = 2694924i32;
                } else if (__value__ == (2695137i32)) {
                    if ((_tr_2694977 < _sr_2694964 : Bool)) {
                        _gotoNext = 2695148i32;
                    } else {
                        _gotoNext = 2695223i32;
                    };
                } else if (__value__ == (2695148i32)) {
                    {
                        final __tmp__0 = _sr_2694964;
                        final __tmp__1 = _tr_2694977;
                        _tr_2694977 = __tmp__0;
                        _sr_2694964 = __tmp__1;
                    };
                    _gotoNext = 2695223i32;
                } else if (__value__ == (2695223i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2694964 : Bool) && (_sr_2694964 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2694977 == ((_sr_2694964 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2695269i32;
                    } else {
                        _gotoNext = 2695289i32;
                    };
                } else if (__value__ == (2695269i32)) {
                    _i_2694916++;
                    _gotoNext = 2694924i32;
                } else if (__value__ == (2695289i32)) {
                    return false;
                    _i_2694916++;
                    _gotoNext = 2694924i32;
                } else if (__value__ == (2695349i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2695374i32;
                } else if (__value__ == (2695374i32)) {
                    _s = (_s.__slice__(_i_2694916) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2694916) : stdgo.GoString)?.__copy__();
                    _keys_2695409 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2695409 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2695409 = (_keys_2695409.__append__(_key));
                        _values_2695409 = (_values_2695409.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2695409.length)) {
                        _gotoNext = 2696340i32;
                    } else {
                        _gotoNext = 2696414i32;
                    };
                } else if (__value__ == (2695430i32)) {
                    _sr_2695416 = _values_2695409[@:invalid_index_invalid_type _i_2695422];
                    var __blank__ = _keys_2695409[@:invalid_index_invalid_type _i_2695422];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2695499i32;
                    } else {
                        _gotoNext = 2695568i32;
                    };
                } else if (__value__ == (2695499i32)) {
                    return false;
                    _gotoNext = 2695568i32;
                } else if (__value__ == (2695568i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2695606i32;
                    } else {
                        _gotoNext = 2695646i32;
                    };
                } else if (__value__ == (2695606i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2695572 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2695790i32;
                } else if (__value__ == (2695646i32)) {
                    _gotoNext = 2695646i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2695651 = __tmp__._0;
                        _size_2695654 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2695651;
                        final __tmp__1 = (_t.__slice__(_size_2695654) : stdgo.GoString)?.__copy__();
                        _tr_2695572 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2695790i32;
                } else if (__value__ == (2695790i32)) {
                    if (_tr_2695572 == (_sr_2695416)) {
                        _gotoNext = 2695802i32;
                    } else {
                        _gotoNext = 2695867i32;
                    };
                } else if (__value__ == (2695802i32)) {
                    _i_2695422++;
                    _gotoNext = 2696341i32;
                } else if (__value__ == (2695867i32)) {
                    if ((_tr_2695572 < _sr_2695416 : Bool)) {
                        _gotoNext = 2695878i32;
                    } else {
                        _gotoNext = 2695932i32;
                    };
                } else if (__value__ == (2695878i32)) {
                    {
                        final __tmp__0 = _sr_2695416;
                        final __tmp__1 = _tr_2695572;
                        _tr_2695572 = __tmp__0;
                        _sr_2695416 = __tmp__1;
                    };
                    _gotoNext = 2695932i32;
                } else if (__value__ == (2695932i32)) {
                    if ((_tr_2695572 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2695954i32;
                    } else {
                        _gotoNext = 2696207i32;
                    };
                } else if (__value__ == (2695954i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2695416 : Bool) && (_sr_2695416 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2695572 == ((_sr_2695416 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2696054i32;
                    } else {
                        _gotoNext = 2696077i32;
                    };
                } else if (__value__ == (2696054i32)) {
                    _i_2695422++;
                    _gotoNext = 2696341i32;
                } else if (__value__ == (2696077i32)) {
                    return false;
                    _gotoNext = 2696207i32;
                } else if (__value__ == (2696207i32)) {
                    _r_2696207 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2695416);
                    var __blank__ = 0i32;
                    _gotoNext = 2696237i32;
                } else if (__value__ == (2696237i32)) {
                    if (((_r_2696207 != _sr_2695416) && (_r_2696207 < _tr_2695572 : Bool) : Bool)) {
                        _gotoNext = 2696259i32;
                    } else {
                        _gotoNext = 2696296i32;
                    };
                } else if (__value__ == (2696259i32)) {
                    _r_2696207 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2696207);
                    _gotoNext = 2696237i32;
                } else if (__value__ == (2696296i32)) {
                    if (_r_2696207 == (_tr_2695572)) {
                        _gotoNext = 2696307i32;
                    } else {
                        _gotoNext = 2696327i32;
                    };
                } else if (__value__ == (2696307i32)) {
                    _i_2695422++;
                    _gotoNext = 2696341i32;
                } else if (__value__ == (2696327i32)) {
                    return false;
                    _i_2695422++;
                    _gotoNext = 2696341i32;
                } else if (__value__ == (2696340i32)) {
                    _i_2695422 = 0i32;
                    _gotoNext = 2696341i32;
                } else if (__value__ == (2696341i32)) {
                    if (_i_2695422 < (_keys_2695409.length)) {
                        _gotoNext = 2695430i32;
                    } else {
                        _gotoNext = 2696414i32;
                    };
                } else if (__value__ == (2696414i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
