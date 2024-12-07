package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3051823:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3051267:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3051188:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3051032:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3051025 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3051038 = @:invalid_type null;
        var _tr_3050593:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3051270:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_3051025 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_3050580:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3050532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3050532 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3050540i32;
                } else if (__value__ == (3050540i32)) {
                    if (((_i_3050532 < (_s.length) : Bool) && (_i_3050532 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3050576i32;
                    } else {
                        _gotoNext = 3050965i32;
                    };
                } else if (__value__ == (3050576i32)) {
                    _sr_3050580 = _s[(_i_3050532 : stdgo.GoInt)];
                    _tr_3050593 = _t[(_i_3050532 : stdgo.GoInt)];
                    if (((_sr_3050580 | _tr_3050593 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3050632i32;
                    } else {
                        _gotoNext = 3050676i32;
                    };
                } else if (__value__ == (3050632i32)) {
                    _gotoNext = 3050990i32;
                } else if (__value__ == (3050676i32)) {
                    if (_tr_3050593 == (_sr_3050580)) {
                        _gotoNext = 3050688i32;
                    } else {
                        _gotoNext = 3050753i32;
                    };
                } else if (__value__ == (3050688i32)) {
                    _i_3050532++;
                    _gotoNext = 3050540i32;
                } else if (__value__ == (3050753i32)) {
                    if ((_tr_3050593 < _sr_3050580 : Bool)) {
                        _gotoNext = 3050764i32;
                    } else {
                        _gotoNext = 3050839i32;
                    };
                } else if (__value__ == (3050764i32)) {
                    {
                        final __tmp__0 = _sr_3050580;
                        final __tmp__1 = _tr_3050593;
                        _tr_3050593 = __tmp__0;
                        _sr_3050580 = __tmp__1;
                    };
                    _gotoNext = 3050839i32;
                } else if (__value__ == (3050839i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3050580 : Bool) && (_sr_3050580 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3050593 == ((_sr_3050580 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3050885i32;
                    } else {
                        _gotoNext = 3050905i32;
                    };
                } else if (__value__ == (3050885i32)) {
                    _i_3050532++;
                    _gotoNext = 3050540i32;
                } else if (__value__ == (3050905i32)) {
                    return false;
                    _i_3050532++;
                    _gotoNext = 3050540i32;
                } else if (__value__ == (3050965i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3050990i32;
                } else if (__value__ == (3050990i32)) {
                    _s = (_s.__slice__(_i_3050532) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3050532) : stdgo.GoString)?.__copy__();
                    _keys_3051025 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3051025 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3051025 = (_keys_3051025.__append__(_key));
                        _values_3051025 = (_values_3051025.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3051025.length)) {
                        _gotoNext = 3051956i32;
                    } else {
                        _gotoNext = 3052030i32;
                    };
                } else if (__value__ == (3051046i32)) {
                    _sr_3051032 = _values_3051025[@:invalid_index_invalid_type _i_3051038];
                    var __blank__ = _keys_3051025[@:invalid_index_invalid_type _i_3051038];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3051115i32;
                    } else {
                        _gotoNext = 3051184i32;
                    };
                } else if (__value__ == (3051115i32)) {
                    return false;
                    _gotoNext = 3051184i32;
                } else if (__value__ == (3051184i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3051222i32;
                    } else {
                        _gotoNext = 3051262i32;
                    };
                } else if (__value__ == (3051222i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3051188 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3051406i32;
                } else if (__value__ == (3051262i32)) {
                    _gotoNext = 3051262i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3051267 = __tmp__._0;
                        _size_3051270 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3051267;
                        final __tmp__1 = (_t.__slice__(_size_3051270) : stdgo.GoString)?.__copy__();
                        _tr_3051188 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3051406i32;
                } else if (__value__ == (3051406i32)) {
                    if (_tr_3051188 == (_sr_3051032)) {
                        _gotoNext = 3051418i32;
                    } else {
                        _gotoNext = 3051483i32;
                    };
                } else if (__value__ == (3051418i32)) {
                    _i_3051038++;
                    _gotoNext = 3051957i32;
                } else if (__value__ == (3051483i32)) {
                    if ((_tr_3051188 < _sr_3051032 : Bool)) {
                        _gotoNext = 3051494i32;
                    } else {
                        _gotoNext = 3051548i32;
                    };
                } else if (__value__ == (3051494i32)) {
                    {
                        final __tmp__0 = _sr_3051032;
                        final __tmp__1 = _tr_3051188;
                        _tr_3051188 = __tmp__0;
                        _sr_3051032 = __tmp__1;
                    };
                    _gotoNext = 3051548i32;
                } else if (__value__ == (3051548i32)) {
                    if ((_tr_3051188 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3051570i32;
                    } else {
                        _gotoNext = 3051823i32;
                    };
                } else if (__value__ == (3051570i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3051032 : Bool) && (_sr_3051032 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3051188 == ((_sr_3051032 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3051670i32;
                    } else {
                        _gotoNext = 3051693i32;
                    };
                } else if (__value__ == (3051670i32)) {
                    _i_3051038++;
                    _gotoNext = 3051957i32;
                } else if (__value__ == (3051693i32)) {
                    return false;
                    _gotoNext = 3051823i32;
                } else if (__value__ == (3051823i32)) {
                    _r_3051823 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3051032);
                    var __blank__ = 0i32;
                    _gotoNext = 3051853i32;
                } else if (__value__ == (3051853i32)) {
                    if (((_r_3051823 != _sr_3051032) && (_r_3051823 < _tr_3051188 : Bool) : Bool)) {
                        _gotoNext = 3051875i32;
                    } else {
                        _gotoNext = 3051912i32;
                    };
                } else if (__value__ == (3051875i32)) {
                    _r_3051823 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3051823);
                    _gotoNext = 3051853i32;
                } else if (__value__ == (3051912i32)) {
                    if (_r_3051823 == (_tr_3051188)) {
                        _gotoNext = 3051923i32;
                    } else {
                        _gotoNext = 3051943i32;
                    };
                } else if (__value__ == (3051923i32)) {
                    _i_3051038++;
                    _gotoNext = 3051957i32;
                } else if (__value__ == (3051943i32)) {
                    return false;
                    _i_3051038++;
                    _gotoNext = 3051957i32;
                } else if (__value__ == (3051956i32)) {
                    _i_3051038 = 0i32;
                    _gotoNext = 3051957i32;
                } else if (__value__ == (3051957i32)) {
                    if (_i_3051038 < (_keys_3051025.length)) {
                        _gotoNext = 3051046i32;
                    } else {
                        _gotoNext = 3052030i32;
                    };
                } else if (__value__ == (3052030i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
