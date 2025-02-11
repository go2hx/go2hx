package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3117001:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3116448:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3116445:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3116366:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3115758:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3115710:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3116210:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3116203 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3116203 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3116216 = @:invalid_type null;
        var _tr_3115771:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3115710 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3115718i32;
                } else if (__value__ == (3115718i32)) {
                    if (((_i_3115710 < (_s.length) : Bool) && (_i_3115710 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3115754i32;
                    } else {
                        _gotoNext = 3116143i32;
                    };
                } else if (__value__ == (3115754i32)) {
                    _sr_3115758 = _s[(_i_3115710 : stdgo.GoInt)];
                    _tr_3115771 = _t[(_i_3115710 : stdgo.GoInt)];
                    if (((_sr_3115758 | _tr_3115771 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3115810i32;
                    } else {
                        _gotoNext = 3115854i32;
                    };
                } else if (__value__ == (3115810i32)) {
                    _gotoNext = 3116168i32;
                } else if (__value__ == (3115854i32)) {
                    if (_tr_3115771 == (_sr_3115758)) {
                        _gotoNext = 3115866i32;
                    } else {
                        _gotoNext = 3115931i32;
                    };
                } else if (__value__ == (3115866i32)) {
                    _i_3115710++;
                    _gotoNext = 3115718i32;
                } else if (__value__ == (3115931i32)) {
                    if ((_tr_3115771 < _sr_3115758 : Bool)) {
                        _gotoNext = 3115942i32;
                    } else {
                        _gotoNext = 3116017i32;
                    };
                } else if (__value__ == (3115942i32)) {
                    {
                        final __tmp__0 = _sr_3115758;
                        final __tmp__1 = _tr_3115771;
                        _tr_3115771 = __tmp__0;
                        _sr_3115758 = __tmp__1;
                    };
                    _gotoNext = 3116017i32;
                } else if (__value__ == (3116017i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3115758 : Bool) && (_sr_3115758 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3115771 == ((_sr_3115758 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3116063i32;
                    } else {
                        _gotoNext = 3116083i32;
                    };
                } else if (__value__ == (3116063i32)) {
                    _i_3115710++;
                    _gotoNext = 3115718i32;
                } else if (__value__ == (3116083i32)) {
                    return false;
                    _i_3115710++;
                    _gotoNext = 3115718i32;
                } else if (__value__ == (3116143i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3116168i32;
                } else if (__value__ == (3116168i32)) {
                    _s = (_s.__slice__(_i_3115710) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3115710) : stdgo.GoString)?.__copy__();
                    _keys_3116203 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3116203 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3116203 = (_keys_3116203.__append__(_key));
                        _values_3116203 = (_values_3116203.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3116203.length)) {
                        _gotoNext = 3117134i32;
                    } else {
                        _gotoNext = 3117208i32;
                    };
                } else if (__value__ == (3116224i32)) {
                    _sr_3116210 = _values_3116203[@:invalid_index_invalid_type _i_3116216];
                    var __blank__ = _keys_3116203[@:invalid_index_invalid_type _i_3116216];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3116293i32;
                    } else {
                        _gotoNext = 3116362i32;
                    };
                } else if (__value__ == (3116293i32)) {
                    return false;
                    _gotoNext = 3116362i32;
                } else if (__value__ == (3116362i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3116400i32;
                    } else {
                        _gotoNext = 3116440i32;
                    };
                } else if (__value__ == (3116400i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3116366 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3116584i32;
                } else if (__value__ == (3116440i32)) {
                    _gotoNext = 3116440i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3116445 = @:tmpset0 __tmp__._0;
                        _size_3116448 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3116445;
                        final __tmp__1 = (_t.__slice__(_size_3116448) : stdgo.GoString)?.__copy__();
                        _tr_3116366 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3116584i32;
                } else if (__value__ == (3116584i32)) {
                    if (_tr_3116366 == (_sr_3116210)) {
                        _gotoNext = 3116596i32;
                    } else {
                        _gotoNext = 3116661i32;
                    };
                } else if (__value__ == (3116596i32)) {
                    _i_3116216++;
                    _gotoNext = 3117135i32;
                } else if (__value__ == (3116661i32)) {
                    if ((_tr_3116366 < _sr_3116210 : Bool)) {
                        _gotoNext = 3116672i32;
                    } else {
                        _gotoNext = 3116726i32;
                    };
                } else if (__value__ == (3116672i32)) {
                    {
                        final __tmp__0 = _sr_3116210;
                        final __tmp__1 = _tr_3116366;
                        _tr_3116366 = __tmp__0;
                        _sr_3116210 = __tmp__1;
                    };
                    _gotoNext = 3116726i32;
                } else if (__value__ == (3116726i32)) {
                    if ((_tr_3116366 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3116748i32;
                    } else {
                        _gotoNext = 3117001i32;
                    };
                } else if (__value__ == (3116748i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3116210 : Bool) && (_sr_3116210 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3116366 == ((_sr_3116210 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3116848i32;
                    } else {
                        _gotoNext = 3116871i32;
                    };
                } else if (__value__ == (3116848i32)) {
                    _i_3116216++;
                    _gotoNext = 3117135i32;
                } else if (__value__ == (3116871i32)) {
                    return false;
                    _gotoNext = 3117001i32;
                } else if (__value__ == (3117001i32)) {
                    _r_3117001 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3116210);
                    var __blank__ = 0i32;
                    _gotoNext = 3117031i32;
                } else if (__value__ == (3117031i32)) {
                    if (((_r_3117001 != _sr_3116210) && (_r_3117001 < _tr_3116366 : Bool) : Bool)) {
                        _gotoNext = 3117053i32;
                    } else {
                        _gotoNext = 3117090i32;
                    };
                } else if (__value__ == (3117053i32)) {
                    _r_3117001 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3117001);
                    _gotoNext = 3117031i32;
                } else if (__value__ == (3117090i32)) {
                    if (_r_3117001 == (_tr_3116366)) {
                        _gotoNext = 3117101i32;
                    } else {
                        _gotoNext = 3117121i32;
                    };
                } else if (__value__ == (3117101i32)) {
                    _i_3116216++;
                    _gotoNext = 3117135i32;
                } else if (__value__ == (3117121i32)) {
                    return false;
                    _i_3116216++;
                    _gotoNext = 3117135i32;
                } else if (__value__ == (3117134i32)) {
                    _i_3116216 = 0i32;
                    _gotoNext = 3117135i32;
                } else if (__value__ == (3117135i32)) {
                    if (_i_3116216 < (_keys_3116203.length)) {
                        _gotoNext = 3116224i32;
                    } else {
                        _gotoNext = 3117208i32;
                    };
                } else if (__value__ == (3117208i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
