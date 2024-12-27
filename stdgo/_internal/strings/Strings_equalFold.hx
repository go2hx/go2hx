package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2831713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2831631:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2831475:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2831468 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2830975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2832266:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2831710:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2831468 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2831481 = @:invalid_type null;
        var _tr_2831036:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2831023:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2830975 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2830983i32;
                } else if (__value__ == (2830983i32)) {
                    if (((_i_2830975 < (_s.length) : Bool) && (_i_2830975 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2831019i32;
                    } else {
                        _gotoNext = 2831408i32;
                    };
                } else if (__value__ == (2831019i32)) {
                    _sr_2831023 = _s[(_i_2830975 : stdgo.GoInt)];
                    _tr_2831036 = _t[(_i_2830975 : stdgo.GoInt)];
                    if (((_sr_2831023 | _tr_2831036 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2831075i32;
                    } else {
                        _gotoNext = 2831119i32;
                    };
                } else if (__value__ == (2831075i32)) {
                    _gotoNext = 2831433i32;
                } else if (__value__ == (2831119i32)) {
                    if (_tr_2831036 == (_sr_2831023)) {
                        _gotoNext = 2831131i32;
                    } else {
                        _gotoNext = 2831196i32;
                    };
                } else if (__value__ == (2831131i32)) {
                    _i_2830975++;
                    _gotoNext = 2830983i32;
                } else if (__value__ == (2831196i32)) {
                    if ((_tr_2831036 < _sr_2831023 : Bool)) {
                        _gotoNext = 2831207i32;
                    } else {
                        _gotoNext = 2831282i32;
                    };
                } else if (__value__ == (2831207i32)) {
                    {
                        final __tmp__0 = _sr_2831023;
                        final __tmp__1 = _tr_2831036;
                        _tr_2831036 = __tmp__0;
                        _sr_2831023 = __tmp__1;
                    };
                    _gotoNext = 2831282i32;
                } else if (__value__ == (2831282i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2831023 : Bool) && (_sr_2831023 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2831036 == ((_sr_2831023 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2831328i32;
                    } else {
                        _gotoNext = 2831348i32;
                    };
                } else if (__value__ == (2831328i32)) {
                    _i_2830975++;
                    _gotoNext = 2830983i32;
                } else if (__value__ == (2831348i32)) {
                    return false;
                    _i_2830975++;
                    _gotoNext = 2830983i32;
                } else if (__value__ == (2831408i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2831433i32;
                } else if (__value__ == (2831433i32)) {
                    _s = (_s.__slice__(_i_2830975) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2830975) : stdgo.GoString)?.__copy__();
                    _keys_2831468 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2831468 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2831468 = (_keys_2831468.__append__(_key));
                        _values_2831468 = (_values_2831468.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2831468.length)) {
                        _gotoNext = 2832399i32;
                    } else {
                        _gotoNext = 2832473i32;
                    };
                } else if (__value__ == (2831489i32)) {
                    _sr_2831475 = _values_2831468[@:invalid_index_invalid_type _i_2831481];
                    var __blank__ = _keys_2831468[@:invalid_index_invalid_type _i_2831481];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2831558i32;
                    } else {
                        _gotoNext = 2831627i32;
                    };
                } else if (__value__ == (2831558i32)) {
                    return false;
                    _gotoNext = 2831627i32;
                } else if (__value__ == (2831627i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2831665i32;
                    } else {
                        _gotoNext = 2831705i32;
                    };
                } else if (__value__ == (2831665i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2831631 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2831849i32;
                } else if (__value__ == (2831705i32)) {
                    _gotoNext = 2831705i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2831710 = __tmp__._0;
                        _size_2831713 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2831710;
                        final __tmp__1 = (_t.__slice__(_size_2831713) : stdgo.GoString)?.__copy__();
                        _tr_2831631 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2831849i32;
                } else if (__value__ == (2831849i32)) {
                    if (_tr_2831631 == (_sr_2831475)) {
                        _gotoNext = 2831861i32;
                    } else {
                        _gotoNext = 2831926i32;
                    };
                } else if (__value__ == (2831861i32)) {
                    _i_2831481++;
                    _gotoNext = 2832400i32;
                } else if (__value__ == (2831926i32)) {
                    if ((_tr_2831631 < _sr_2831475 : Bool)) {
                        _gotoNext = 2831937i32;
                    } else {
                        _gotoNext = 2831991i32;
                    };
                } else if (__value__ == (2831937i32)) {
                    {
                        final __tmp__0 = _sr_2831475;
                        final __tmp__1 = _tr_2831631;
                        _tr_2831631 = __tmp__0;
                        _sr_2831475 = __tmp__1;
                    };
                    _gotoNext = 2831991i32;
                } else if (__value__ == (2831991i32)) {
                    if ((_tr_2831631 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2832013i32;
                    } else {
                        _gotoNext = 2832266i32;
                    };
                } else if (__value__ == (2832013i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2831475 : Bool) && (_sr_2831475 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2831631 == ((_sr_2831475 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2832113i32;
                    } else {
                        _gotoNext = 2832136i32;
                    };
                } else if (__value__ == (2832113i32)) {
                    _i_2831481++;
                    _gotoNext = 2832400i32;
                } else if (__value__ == (2832136i32)) {
                    return false;
                    _gotoNext = 2832266i32;
                } else if (__value__ == (2832266i32)) {
                    _r_2832266 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2831475);
                    var __blank__ = 0i32;
                    _gotoNext = 2832296i32;
                } else if (__value__ == (2832296i32)) {
                    if (((_r_2832266 != _sr_2831475) && (_r_2832266 < _tr_2831631 : Bool) : Bool)) {
                        _gotoNext = 2832318i32;
                    } else {
                        _gotoNext = 2832355i32;
                    };
                } else if (__value__ == (2832318i32)) {
                    _r_2832266 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2832266);
                    _gotoNext = 2832296i32;
                } else if (__value__ == (2832355i32)) {
                    if (_r_2832266 == (_tr_2831631)) {
                        _gotoNext = 2832366i32;
                    } else {
                        _gotoNext = 2832386i32;
                    };
                } else if (__value__ == (2832366i32)) {
                    _i_2831481++;
                    _gotoNext = 2832400i32;
                } else if (__value__ == (2832386i32)) {
                    return false;
                    _i_2831481++;
                    _gotoNext = 2832400i32;
                } else if (__value__ == (2832399i32)) {
                    _i_2831481 = 0i32;
                    _gotoNext = 2832400i32;
                } else if (__value__ == (2832400i32)) {
                    if (_i_2831481 < (_keys_2831468.length)) {
                        _gotoNext = 2831489i32;
                    } else {
                        _gotoNext = 2832473i32;
                    };
                } else if (__value__ == (2832473i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
