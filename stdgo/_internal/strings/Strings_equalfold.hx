package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2989460 = @:invalid_type null;
        var _i_2988954:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2989454:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2989447 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2989447 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2989015:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2989002:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2990245:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2989692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2989689:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2989610:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2988954 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2988962i32;
                } else if (__value__ == (2988962i32)) {
                    if (((_i_2988954 < (_s.length) : Bool) && (_i_2988954 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2988998i32;
                    } else {
                        _gotoNext = 2989387i32;
                    };
                } else if (__value__ == (2988998i32)) {
                    _sr_2989002 = _s[(_i_2988954 : stdgo.GoInt)];
                    _tr_2989015 = _t[(_i_2988954 : stdgo.GoInt)];
                    if (((_sr_2989002 | _tr_2989015 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2989054i32;
                    } else {
                        _gotoNext = 2989098i32;
                    };
                } else if (__value__ == (2989054i32)) {
                    _gotoNext = 2989412i32;
                } else if (__value__ == (2989098i32)) {
                    if (_tr_2989015 == (_sr_2989002)) {
                        _gotoNext = 2989110i32;
                    } else {
                        _gotoNext = 2989175i32;
                    };
                } else if (__value__ == (2989110i32)) {
                    _i_2988954++;
                    _gotoNext = 2988962i32;
                } else if (__value__ == (2989175i32)) {
                    if ((_tr_2989015 < _sr_2989002 : Bool)) {
                        _gotoNext = 2989186i32;
                    } else {
                        _gotoNext = 2989261i32;
                    };
                } else if (__value__ == (2989186i32)) {
                    {
                        final __tmp__0 = _sr_2989002;
                        final __tmp__1 = _tr_2989015;
                        _tr_2989015 = __tmp__0;
                        _sr_2989002 = __tmp__1;
                    };
                    _gotoNext = 2989261i32;
                } else if (__value__ == (2989261i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2989002 : Bool) && (_sr_2989002 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2989015 == ((_sr_2989002 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2989307i32;
                    } else {
                        _gotoNext = 2989327i32;
                    };
                } else if (__value__ == (2989307i32)) {
                    _i_2988954++;
                    _gotoNext = 2988962i32;
                } else if (__value__ == (2989327i32)) {
                    return false;
                    _i_2988954++;
                    _gotoNext = 2988962i32;
                } else if (__value__ == (2989387i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2989412i32;
                } else if (__value__ == (2989412i32)) {
                    _s = (_s.__slice__(_i_2988954) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2988954) : stdgo.GoString)?.__copy__();
                    _keys_2989447 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2989447 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2989447 = (_keys_2989447.__append__(_key));
                        _values_2989447 = (_values_2989447.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2989447.length)) {
                        _gotoNext = 2990378i32;
                    } else {
                        _gotoNext = 2990452i32;
                    };
                } else if (__value__ == (2989468i32)) {
                    _sr_2989454 = _values_2989447[@:invalid_index_invalid_type _i_2989460];
                    var __blank__ = _keys_2989447[@:invalid_index_invalid_type _i_2989460];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2989537i32;
                    } else {
                        _gotoNext = 2989606i32;
                    };
                } else if (__value__ == (2989537i32)) {
                    return false;
                    _gotoNext = 2989606i32;
                } else if (__value__ == (2989606i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2989644i32;
                    } else {
                        _gotoNext = 2989684i32;
                    };
                } else if (__value__ == (2989644i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2989610 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2989828i32;
                } else if (__value__ == (2989684i32)) {
                    _gotoNext = 2989684i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2989689 = @:tmpset0 __tmp__._0;
                        _size_2989692 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2989689;
                        final __tmp__1 = (_t.__slice__(_size_2989692) : stdgo.GoString)?.__copy__();
                        _tr_2989610 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2989828i32;
                } else if (__value__ == (2989828i32)) {
                    if (_tr_2989610 == (_sr_2989454)) {
                        _gotoNext = 2989840i32;
                    } else {
                        _gotoNext = 2989905i32;
                    };
                } else if (__value__ == (2989840i32)) {
                    _i_2989460++;
                    _gotoNext = 2990379i32;
                } else if (__value__ == (2989905i32)) {
                    if ((_tr_2989610 < _sr_2989454 : Bool)) {
                        _gotoNext = 2989916i32;
                    } else {
                        _gotoNext = 2989970i32;
                    };
                } else if (__value__ == (2989916i32)) {
                    {
                        final __tmp__0 = _sr_2989454;
                        final __tmp__1 = _tr_2989610;
                        _tr_2989610 = __tmp__0;
                        _sr_2989454 = __tmp__1;
                    };
                    _gotoNext = 2989970i32;
                } else if (__value__ == (2989970i32)) {
                    if ((_tr_2989610 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2989992i32;
                    } else {
                        _gotoNext = 2990245i32;
                    };
                } else if (__value__ == (2989992i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2989454 : Bool) && (_sr_2989454 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2989610 == ((_sr_2989454 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2990092i32;
                    } else {
                        _gotoNext = 2990115i32;
                    };
                } else if (__value__ == (2990092i32)) {
                    _i_2989460++;
                    _gotoNext = 2990379i32;
                } else if (__value__ == (2990115i32)) {
                    return false;
                    _gotoNext = 2990245i32;
                } else if (__value__ == (2990245i32)) {
                    _r_2990245 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2989454);
                    var __blank__ = 0i32;
                    _gotoNext = 2990275i32;
                } else if (__value__ == (2990275i32)) {
                    if (((_r_2990245 != _sr_2989454) && (_r_2990245 < _tr_2989610 : Bool) : Bool)) {
                        _gotoNext = 2990297i32;
                    } else {
                        _gotoNext = 2990334i32;
                    };
                } else if (__value__ == (2990297i32)) {
                    _r_2990245 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2990245);
                    _gotoNext = 2990275i32;
                } else if (__value__ == (2990334i32)) {
                    if (_r_2990245 == (_tr_2989610)) {
                        _gotoNext = 2990345i32;
                    } else {
                        _gotoNext = 2990365i32;
                    };
                } else if (__value__ == (2990345i32)) {
                    _i_2989460++;
                    _gotoNext = 2990379i32;
                } else if (__value__ == (2990365i32)) {
                    return false;
                    _i_2989460++;
                    _gotoNext = 2990379i32;
                } else if (__value__ == (2990378i32)) {
                    _i_2989460 = 0i32;
                    _gotoNext = 2990379i32;
                } else if (__value__ == (2990379i32)) {
                    if (_i_2989460 < (_keys_2989447.length)) {
                        _gotoNext = 2989468i32;
                    } else {
                        _gotoNext = 2990452i32;
                    };
                } else if (__value__ == (2990452i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
