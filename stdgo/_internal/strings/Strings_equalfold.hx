package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2730601:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2730553:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2731844:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2731291:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2731209:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2731053:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2731046 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2730614:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_2731046 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2731059 = @:invalid_type null;
        var _r_2731288:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2730553 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2730561i32;
                } else if (__value__ == (2730561i32)) {
                    if (((_i_2730553 < (_s.length) : Bool) && (_i_2730553 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2730597i32;
                    } else {
                        _gotoNext = 2730986i32;
                    };
                } else if (__value__ == (2730597i32)) {
                    _sr_2730601 = _s[(_i_2730553 : stdgo.GoInt)];
                    _tr_2730614 = _t[(_i_2730553 : stdgo.GoInt)];
                    if (((_sr_2730601 | _tr_2730614 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2730653i32;
                    } else {
                        _gotoNext = 2730697i32;
                    };
                } else if (__value__ == (2730653i32)) {
                    _gotoNext = 2731011i32;
                } else if (__value__ == (2730697i32)) {
                    if (_tr_2730614 == (_sr_2730601)) {
                        _gotoNext = 2730709i32;
                    } else {
                        _gotoNext = 2730774i32;
                    };
                } else if (__value__ == (2730709i32)) {
                    _i_2730553++;
                    _gotoNext = 2730561i32;
                } else if (__value__ == (2730774i32)) {
                    if ((_tr_2730614 < _sr_2730601 : Bool)) {
                        _gotoNext = 2730785i32;
                    } else {
                        _gotoNext = 2730860i32;
                    };
                } else if (__value__ == (2730785i32)) {
                    {
                        final __tmp__0 = _sr_2730601;
                        final __tmp__1 = _tr_2730614;
                        _tr_2730614 = __tmp__0;
                        _sr_2730601 = __tmp__1;
                    };
                    _gotoNext = 2730860i32;
                } else if (__value__ == (2730860i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2730601 : Bool) && (_sr_2730601 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2730614 == ((_sr_2730601 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2730906i32;
                    } else {
                        _gotoNext = 2730926i32;
                    };
                } else if (__value__ == (2730906i32)) {
                    _i_2730553++;
                    _gotoNext = 2730561i32;
                } else if (__value__ == (2730926i32)) {
                    return false;
                    _i_2730553++;
                    _gotoNext = 2730561i32;
                } else if (__value__ == (2730986i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2731011i32;
                } else if (__value__ == (2731011i32)) {
                    _s = (_s.__slice__(_i_2730553) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2730553) : stdgo.GoString)?.__copy__();
                    _keys_2731046 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2731046 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2731046 = (_keys_2731046.__append__(_key));
                        _values_2731046 = (_values_2731046.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2731046.length)) {
                        _gotoNext = 2731977i32;
                    } else {
                        _gotoNext = 2732051i32;
                    };
                } else if (__value__ == (2731067i32)) {
                    _sr_2731053 = _values_2731046[@:invalid_index_invalid_type _i_2731059];
                    var __blank__ = _keys_2731046[@:invalid_index_invalid_type _i_2731059];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2731136i32;
                    } else {
                        _gotoNext = 2731205i32;
                    };
                } else if (__value__ == (2731136i32)) {
                    return false;
                    _gotoNext = 2731205i32;
                } else if (__value__ == (2731205i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2731243i32;
                    } else {
                        _gotoNext = 2731283i32;
                    };
                } else if (__value__ == (2731243i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2731209 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2731427i32;
                } else if (__value__ == (2731283i32)) {
                    _gotoNext = 2731283i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2731288 = @:tmpset0 __tmp__._0;
                        _size_2731291 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2731288;
                        final __tmp__1 = (_t.__slice__(_size_2731291) : stdgo.GoString)?.__copy__();
                        _tr_2731209 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2731427i32;
                } else if (__value__ == (2731427i32)) {
                    if (_tr_2731209 == (_sr_2731053)) {
                        _gotoNext = 2731439i32;
                    } else {
                        _gotoNext = 2731504i32;
                    };
                } else if (__value__ == (2731439i32)) {
                    _i_2731059++;
                    _gotoNext = 2731978i32;
                } else if (__value__ == (2731504i32)) {
                    if ((_tr_2731209 < _sr_2731053 : Bool)) {
                        _gotoNext = 2731515i32;
                    } else {
                        _gotoNext = 2731569i32;
                    };
                } else if (__value__ == (2731515i32)) {
                    {
                        final __tmp__0 = _sr_2731053;
                        final __tmp__1 = _tr_2731209;
                        _tr_2731209 = __tmp__0;
                        _sr_2731053 = __tmp__1;
                    };
                    _gotoNext = 2731569i32;
                } else if (__value__ == (2731569i32)) {
                    if ((_tr_2731209 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2731591i32;
                    } else {
                        _gotoNext = 2731844i32;
                    };
                } else if (__value__ == (2731591i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2731053 : Bool) && (_sr_2731053 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2731209 == ((_sr_2731053 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2731691i32;
                    } else {
                        _gotoNext = 2731714i32;
                    };
                } else if (__value__ == (2731691i32)) {
                    _i_2731059++;
                    _gotoNext = 2731978i32;
                } else if (__value__ == (2731714i32)) {
                    return false;
                    _gotoNext = 2731844i32;
                } else if (__value__ == (2731844i32)) {
                    _r_2731844 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2731053);
                    var __blank__ = 0i32;
                    _gotoNext = 2731874i32;
                } else if (__value__ == (2731874i32)) {
                    if (((_r_2731844 != _sr_2731053) && (_r_2731844 < _tr_2731209 : Bool) : Bool)) {
                        _gotoNext = 2731896i32;
                    } else {
                        _gotoNext = 2731933i32;
                    };
                } else if (__value__ == (2731896i32)) {
                    _r_2731844 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2731844);
                    _gotoNext = 2731874i32;
                } else if (__value__ == (2731933i32)) {
                    if (_r_2731844 == (_tr_2731209)) {
                        _gotoNext = 2731944i32;
                    } else {
                        _gotoNext = 2731964i32;
                    };
                } else if (__value__ == (2731944i32)) {
                    _i_2731059++;
                    _gotoNext = 2731978i32;
                } else if (__value__ == (2731964i32)) {
                    return false;
                    _i_2731059++;
                    _gotoNext = 2731978i32;
                } else if (__value__ == (2731977i32)) {
                    _i_2731059 = 0i32;
                    _gotoNext = 2731978i32;
                } else if (__value__ == (2731978i32)) {
                    if (_i_2731059 < (_keys_2731046.length)) {
                        _gotoNext = 2731067i32;
                    } else {
                        _gotoNext = 2732051i32;
                    };
                } else if (__value__ == (2732051i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
