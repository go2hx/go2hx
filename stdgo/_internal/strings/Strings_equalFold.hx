package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2841487:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2841408:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2841245 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2840813:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2840752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2841490:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2841252:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2841245 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2841258 = @:invalid_type null;
        var _sr_2840800:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2842043:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2840752 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2840760i32;
                } else if (__value__ == (2840760i32)) {
                    if (((_i_2840752 < (_s.length) : Bool) && (_i_2840752 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2840796i32;
                    } else {
                        _gotoNext = 2841185i32;
                    };
                } else if (__value__ == (2840796i32)) {
                    _sr_2840800 = _s[(_i_2840752 : stdgo.GoInt)];
                    _tr_2840813 = _t[(_i_2840752 : stdgo.GoInt)];
                    if (((_sr_2840800 | _tr_2840813 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2840852i32;
                    } else {
                        _gotoNext = 2840896i32;
                    };
                } else if (__value__ == (2840852i32)) {
                    _gotoNext = 2841210i32;
                } else if (__value__ == (2840896i32)) {
                    if (_tr_2840813 == (_sr_2840800)) {
                        _gotoNext = 2840908i32;
                    } else {
                        _gotoNext = 2840973i32;
                    };
                } else if (__value__ == (2840908i32)) {
                    _i_2840752++;
                    _gotoNext = 2840760i32;
                } else if (__value__ == (2840973i32)) {
                    if ((_tr_2840813 < _sr_2840800 : Bool)) {
                        _gotoNext = 2840984i32;
                    } else {
                        _gotoNext = 2841059i32;
                    };
                } else if (__value__ == (2840984i32)) {
                    {
                        final __tmp__0 = _sr_2840800;
                        final __tmp__1 = _tr_2840813;
                        _tr_2840813 = __tmp__0;
                        _sr_2840800 = __tmp__1;
                    };
                    _gotoNext = 2841059i32;
                } else if (__value__ == (2841059i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2840800 : Bool) && (_sr_2840800 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2840813 == ((_sr_2840800 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2841105i32;
                    } else {
                        _gotoNext = 2841125i32;
                    };
                } else if (__value__ == (2841105i32)) {
                    _i_2840752++;
                    _gotoNext = 2840760i32;
                } else if (__value__ == (2841125i32)) {
                    return false;
                    _i_2840752++;
                    _gotoNext = 2840760i32;
                } else if (__value__ == (2841185i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2841210i32;
                } else if (__value__ == (2841210i32)) {
                    _s = (_s.__slice__(_i_2840752) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2840752) : stdgo.GoString)?.__copy__();
                    _keys_2841245 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2841245 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2841245 = (_keys_2841245.__append__(_key));
                        _values_2841245 = (_values_2841245.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_s.length)) {
                        _gotoNext = 2842176i32;
                    } else {
                        _gotoNext = 2842250i32;
                    };
                } else if (__value__ == (2841266i32)) {
                    _sr_2841252 = _values_2841245[@:invalid_index_invalid_type _i_2841258];
                    var __blank__ = _keys_2841245[@:invalid_index_invalid_type _i_2841258];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2841335i32;
                    } else {
                        _gotoNext = 2841404i32;
                    };
                } else if (__value__ == (2841335i32)) {
                    return false;
                    _gotoNext = 2841404i32;
                } else if (__value__ == (2841404i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2841442i32;
                    } else {
                        _gotoNext = 2841482i32;
                    };
                } else if (__value__ == (2841442i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2841408 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2841626i32;
                } else if (__value__ == (2841482i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2841487 = __tmp__._0;
                        _size_2841490 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2841487;
                        final __tmp__1 = (_t.__slice__(_size_2841490) : stdgo.GoString)?.__copy__();
                        _tr_2841408 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2841626i32;
                } else if (__value__ == (2841626i32)) {
                    if (_tr_2841408 == (_sr_2841252)) {
                        _gotoNext = 2841638i32;
                    } else {
                        _gotoNext = 2841703i32;
                    };
                } else if (__value__ == (2841638i32)) {
                    _i_2841258++;
                    _gotoNext = 2842177i32;
                } else if (__value__ == (2841703i32)) {
                    if ((_tr_2841408 < _sr_2841252 : Bool)) {
                        _gotoNext = 2841714i32;
                    } else {
                        _gotoNext = 2841768i32;
                    };
                } else if (__value__ == (2841714i32)) {
                    {
                        final __tmp__0 = _sr_2841252;
                        final __tmp__1 = _tr_2841408;
                        _tr_2841408 = __tmp__0;
                        _sr_2841252 = __tmp__1;
                    };
                    _gotoNext = 2841768i32;
                } else if (__value__ == (2841768i32)) {
                    if ((_tr_2841408 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2841790i32;
                    } else {
                        _gotoNext = 2842043i32;
                    };
                } else if (__value__ == (2841790i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2841252 : Bool) && (_sr_2841252 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2841408 == ((_sr_2841252 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2841890i32;
                    } else {
                        _gotoNext = 2841913i32;
                    };
                } else if (__value__ == (2841890i32)) {
                    _i_2841258++;
                    _gotoNext = 2842177i32;
                } else if (__value__ == (2841913i32)) {
                    return false;
                    _gotoNext = 2842043i32;
                } else if (__value__ == (2842043i32)) {
                    _r_2842043 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2841252);
                    var __blank__ = 0i32;
                    _gotoNext = 2842073i32;
                } else if (__value__ == (2842073i32)) {
                    if (((_r_2842043 != _sr_2841252) && (_r_2842043 < _tr_2841408 : Bool) : Bool)) {
                        _gotoNext = 2842095i32;
                    } else {
                        _gotoNext = 2842132i32;
                    };
                } else if (__value__ == (2842095i32)) {
                    _r_2842043 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2842043);
                    _gotoNext = 2842073i32;
                } else if (__value__ == (2842132i32)) {
                    if (_r_2842043 == (_tr_2841408)) {
                        _gotoNext = 2842143i32;
                    } else {
                        _gotoNext = 2842163i32;
                    };
                } else if (__value__ == (2842143i32)) {
                    _i_2841258++;
                    _gotoNext = 2842177i32;
                } else if (__value__ == (2842163i32)) {
                    return false;
                    _i_2841258++;
                    _gotoNext = 2842177i32;
                } else if (__value__ == (2842176i32)) {
                    _i_2841258 = 0i32;
                    _gotoNext = 2842177i32;
                } else if (__value__ == (2842177i32)) {
                    if (_i_2841258 < (_keys_2841245.length)) {
                        _gotoNext = 2841266i32;
                    } else {
                        _gotoNext = 2842250i32;
                    };
                } else if (__value__ == (2842250i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
