package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2960689:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2960610:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2960015:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_2960447 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2960447 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2960460 = @:invalid_type null;
        var _sr_2960002:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2959954:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2961245:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2960692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2960454:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2959954 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2959962i32;
                } else if (__value__ == (2959962i32)) {
                    if (((_i_2959954 < (_s.length) : Bool) && (_i_2959954 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2959998i32;
                    } else {
                        _gotoNext = 2960387i32;
                    };
                } else if (__value__ == (2959998i32)) {
                    _sr_2960002 = _s[(_i_2959954 : stdgo.GoInt)];
                    _tr_2960015 = _t[(_i_2959954 : stdgo.GoInt)];
                    if (((_sr_2960002 | _tr_2960015 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2960054i32;
                    } else {
                        _gotoNext = 2960098i32;
                    };
                } else if (__value__ == (2960054i32)) {
                    _gotoNext = 2960412i32;
                } else if (__value__ == (2960098i32)) {
                    if (_tr_2960015 == (_sr_2960002)) {
                        _gotoNext = 2960110i32;
                    } else {
                        _gotoNext = 2960175i32;
                    };
                } else if (__value__ == (2960110i32)) {
                    _i_2959954++;
                    _gotoNext = 2959962i32;
                } else if (__value__ == (2960175i32)) {
                    if ((_tr_2960015 < _sr_2960002 : Bool)) {
                        _gotoNext = 2960186i32;
                    } else {
                        _gotoNext = 2960261i32;
                    };
                } else if (__value__ == (2960186i32)) {
                    {
                        final __tmp__0 = _sr_2960002;
                        final __tmp__1 = _tr_2960015;
                        _tr_2960015 = __tmp__0;
                        _sr_2960002 = __tmp__1;
                    };
                    _gotoNext = 2960261i32;
                } else if (__value__ == (2960261i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2960002 : Bool) && (_sr_2960002 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2960015 == ((_sr_2960002 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2960307i32;
                    } else {
                        _gotoNext = 2960327i32;
                    };
                } else if (__value__ == (2960307i32)) {
                    _i_2959954++;
                    _gotoNext = 2959962i32;
                } else if (__value__ == (2960327i32)) {
                    return false;
                    _i_2959954++;
                    _gotoNext = 2959962i32;
                } else if (__value__ == (2960387i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2960412i32;
                } else if (__value__ == (2960412i32)) {
                    _s = (_s.__slice__(_i_2959954) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2959954) : stdgo.GoString)?.__copy__();
                    _keys_2960447 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2960447 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2960447 = (_keys_2960447.__append__(_key));
                        _values_2960447 = (_values_2960447.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2960447.length)) {
                        _gotoNext = 2961378i32;
                    } else {
                        _gotoNext = 2961452i32;
                    };
                } else if (__value__ == (2960468i32)) {
                    _sr_2960454 = _values_2960447[@:invalid_index_invalid_type _i_2960460];
                    var __blank__ = _keys_2960447[@:invalid_index_invalid_type _i_2960460];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2960537i32;
                    } else {
                        _gotoNext = 2960606i32;
                    };
                } else if (__value__ == (2960537i32)) {
                    return false;
                    _gotoNext = 2960606i32;
                } else if (__value__ == (2960606i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2960644i32;
                    } else {
                        _gotoNext = 2960684i32;
                    };
                } else if (__value__ == (2960644i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2960610 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2960828i32;
                } else if (__value__ == (2960684i32)) {
                    _gotoNext = 2960684i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2960689 = __tmp__._0;
                        _size_2960692 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2960689;
                        final __tmp__1 = (_t.__slice__(_size_2960692) : stdgo.GoString)?.__copy__();
                        _tr_2960610 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2960828i32;
                } else if (__value__ == (2960828i32)) {
                    if (_tr_2960610 == (_sr_2960454)) {
                        _gotoNext = 2960840i32;
                    } else {
                        _gotoNext = 2960905i32;
                    };
                } else if (__value__ == (2960840i32)) {
                    _i_2960460++;
                    _gotoNext = 2961379i32;
                } else if (__value__ == (2960905i32)) {
                    if ((_tr_2960610 < _sr_2960454 : Bool)) {
                        _gotoNext = 2960916i32;
                    } else {
                        _gotoNext = 2960970i32;
                    };
                } else if (__value__ == (2960916i32)) {
                    {
                        final __tmp__0 = _sr_2960454;
                        final __tmp__1 = _tr_2960610;
                        _tr_2960610 = __tmp__0;
                        _sr_2960454 = __tmp__1;
                    };
                    _gotoNext = 2960970i32;
                } else if (__value__ == (2960970i32)) {
                    if ((_tr_2960610 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2960992i32;
                    } else {
                        _gotoNext = 2961245i32;
                    };
                } else if (__value__ == (2960992i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2960454 : Bool) && (_sr_2960454 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2960610 == ((_sr_2960454 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2961092i32;
                    } else {
                        _gotoNext = 2961115i32;
                    };
                } else if (__value__ == (2961092i32)) {
                    _i_2960460++;
                    _gotoNext = 2961379i32;
                } else if (__value__ == (2961115i32)) {
                    return false;
                    _gotoNext = 2961245i32;
                } else if (__value__ == (2961245i32)) {
                    _r_2961245 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2960454);
                    var __blank__ = 0i32;
                    _gotoNext = 2961275i32;
                } else if (__value__ == (2961275i32)) {
                    if (((_r_2961245 != _sr_2960454) && (_r_2961245 < _tr_2960610 : Bool) : Bool)) {
                        _gotoNext = 2961297i32;
                    } else {
                        _gotoNext = 2961334i32;
                    };
                } else if (__value__ == (2961297i32)) {
                    _r_2961245 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2961245);
                    _gotoNext = 2961275i32;
                } else if (__value__ == (2961334i32)) {
                    if (_r_2961245 == (_tr_2960610)) {
                        _gotoNext = 2961345i32;
                    } else {
                        _gotoNext = 2961365i32;
                    };
                } else if (__value__ == (2961345i32)) {
                    _i_2960460++;
                    _gotoNext = 2961379i32;
                } else if (__value__ == (2961365i32)) {
                    return false;
                    _i_2960460++;
                    _gotoNext = 2961379i32;
                } else if (__value__ == (2961378i32)) {
                    _i_2960460 = 0i32;
                    _gotoNext = 2961379i32;
                } else if (__value__ == (2961379i32)) {
                    if (_i_2960460 < (_keys_2960447.length)) {
                        _gotoNext = 2960468i32;
                    } else {
                        _gotoNext = 2961452i32;
                    };
                } else if (__value__ == (2961452i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
