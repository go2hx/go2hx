package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2883689:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2883610:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2883454:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2883447 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2883447 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2883002:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2882954:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2884245:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2883692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2883460 = @:invalid_type null;
        var _tr_2883015:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2882954 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2882962i32;
                } else if (__value__ == (2882962i32)) {
                    if (((_i_2882954 < (_s.length) : Bool) && (_i_2882954 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2882998i32;
                    } else {
                        _gotoNext = 2883387i32;
                    };
                } else if (__value__ == (2882998i32)) {
                    _sr_2883002 = _s[(_i_2882954 : stdgo.GoInt)];
                    _tr_2883015 = _t[(_i_2882954 : stdgo.GoInt)];
                    if (((_sr_2883002 | _tr_2883015 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2883054i32;
                    } else {
                        _gotoNext = 2883098i32;
                    };
                } else if (__value__ == (2883054i32)) {
                    _gotoNext = 2883412i32;
                } else if (__value__ == (2883098i32)) {
                    if (_tr_2883015 == (_sr_2883002)) {
                        _gotoNext = 2883110i32;
                    } else {
                        _gotoNext = 2883175i32;
                    };
                } else if (__value__ == (2883110i32)) {
                    _i_2882954++;
                    _gotoNext = 2882962i32;
                } else if (__value__ == (2883175i32)) {
                    if ((_tr_2883015 < _sr_2883002 : Bool)) {
                        _gotoNext = 2883186i32;
                    } else {
                        _gotoNext = 2883261i32;
                    };
                } else if (__value__ == (2883186i32)) {
                    {
                        final __tmp__0 = _sr_2883002;
                        final __tmp__1 = _tr_2883015;
                        _tr_2883015 = __tmp__0;
                        _sr_2883002 = __tmp__1;
                    };
                    _gotoNext = 2883261i32;
                } else if (__value__ == (2883261i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2883002 : Bool) && (_sr_2883002 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2883015 == ((_sr_2883002 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2883307i32;
                    } else {
                        _gotoNext = 2883327i32;
                    };
                } else if (__value__ == (2883307i32)) {
                    _i_2882954++;
                    _gotoNext = 2882962i32;
                } else if (__value__ == (2883327i32)) {
                    return false;
                    _i_2882954++;
                    _gotoNext = 2882962i32;
                } else if (__value__ == (2883387i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2883412i32;
                } else if (__value__ == (2883412i32)) {
                    _s = (_s.__slice__(_i_2882954) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2882954) : stdgo.GoString)?.__copy__();
                    _keys_2883447 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2883447 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2883447 = (_keys_2883447.__append__(_key));
                        _values_2883447 = (_values_2883447.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2883447.length)) {
                        _gotoNext = 2884378i32;
                    } else {
                        _gotoNext = 2884452i32;
                    };
                } else if (__value__ == (2883468i32)) {
                    _sr_2883454 = _values_2883447[@:invalid_index_invalid_type _i_2883460];
                    var __blank__ = _keys_2883447[@:invalid_index_invalid_type _i_2883460];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2883537i32;
                    } else {
                        _gotoNext = 2883606i32;
                    };
                } else if (__value__ == (2883537i32)) {
                    return false;
                    _gotoNext = 2883606i32;
                } else if (__value__ == (2883606i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2883644i32;
                    } else {
                        _gotoNext = 2883684i32;
                    };
                } else if (__value__ == (2883644i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2883610 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2883828i32;
                } else if (__value__ == (2883684i32)) {
                    _gotoNext = 2883684i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2883689 = __tmp__._0;
                        _size_2883692 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2883689;
                        final __tmp__1 = (_t.__slice__(_size_2883692) : stdgo.GoString)?.__copy__();
                        _tr_2883610 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2883828i32;
                } else if (__value__ == (2883828i32)) {
                    if (_tr_2883610 == (_sr_2883454)) {
                        _gotoNext = 2883840i32;
                    } else {
                        _gotoNext = 2883905i32;
                    };
                } else if (__value__ == (2883840i32)) {
                    _i_2883460++;
                    _gotoNext = 2884379i32;
                } else if (__value__ == (2883905i32)) {
                    if ((_tr_2883610 < _sr_2883454 : Bool)) {
                        _gotoNext = 2883916i32;
                    } else {
                        _gotoNext = 2883970i32;
                    };
                } else if (__value__ == (2883916i32)) {
                    {
                        final __tmp__0 = _sr_2883454;
                        final __tmp__1 = _tr_2883610;
                        _tr_2883610 = __tmp__0;
                        _sr_2883454 = __tmp__1;
                    };
                    _gotoNext = 2883970i32;
                } else if (__value__ == (2883970i32)) {
                    if ((_tr_2883610 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2883992i32;
                    } else {
                        _gotoNext = 2884245i32;
                    };
                } else if (__value__ == (2883992i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2883454 : Bool) && (_sr_2883454 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2883610 == ((_sr_2883454 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2884092i32;
                    } else {
                        _gotoNext = 2884115i32;
                    };
                } else if (__value__ == (2884092i32)) {
                    _i_2883460++;
                    _gotoNext = 2884379i32;
                } else if (__value__ == (2884115i32)) {
                    return false;
                    _gotoNext = 2884245i32;
                } else if (__value__ == (2884245i32)) {
                    _r_2884245 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2883454);
                    var __blank__ = 0i32;
                    _gotoNext = 2884275i32;
                } else if (__value__ == (2884275i32)) {
                    if (((_r_2884245 != _sr_2883454) && (_r_2884245 < _tr_2883610 : Bool) : Bool)) {
                        _gotoNext = 2884297i32;
                    } else {
                        _gotoNext = 2884334i32;
                    };
                } else if (__value__ == (2884297i32)) {
                    _r_2884245 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2884245);
                    _gotoNext = 2884275i32;
                } else if (__value__ == (2884334i32)) {
                    if (_r_2884245 == (_tr_2883610)) {
                        _gotoNext = 2884345i32;
                    } else {
                        _gotoNext = 2884365i32;
                    };
                } else if (__value__ == (2884345i32)) {
                    _i_2883460++;
                    _gotoNext = 2884379i32;
                } else if (__value__ == (2884365i32)) {
                    return false;
                    _i_2883460++;
                    _gotoNext = 2884379i32;
                } else if (__value__ == (2884378i32)) {
                    _i_2883460 = 0i32;
                    _gotoNext = 2884379i32;
                } else if (__value__ == (2884379i32)) {
                    if (_i_2883460 < (_keys_2883447.length)) {
                        _gotoNext = 2883468i32;
                    } else {
                        _gotoNext = 2884452i32;
                    };
                } else if (__value__ == (2884452i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
