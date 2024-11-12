package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2979212:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2978656:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2978577:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2978421:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2978414 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _size_2978659:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_2978414 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2978427 = @:invalid_type null;
        var _tr_2977982:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2977969:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2977921:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2977921 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2977929i32;
                } else if (__value__ == (2977929i32)) {
                    if (((_i_2977921 < (_s.length) : Bool) && (_i_2977921 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2977965i32;
                    } else {
                        _gotoNext = 2978354i32;
                    };
                } else if (__value__ == (2977965i32)) {
                    _sr_2977969 = _s[(_i_2977921 : stdgo.GoInt)];
                    _tr_2977982 = _t[(_i_2977921 : stdgo.GoInt)];
                    if (((_sr_2977969 | _tr_2977982 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2978021i32;
                    } else {
                        _gotoNext = 2978065i32;
                    };
                } else if (__value__ == (2978021i32)) {
                    _gotoNext = 2978379i32;
                } else if (__value__ == (2978065i32)) {
                    if (_tr_2977982 == (_sr_2977969)) {
                        _gotoNext = 2978077i32;
                    } else {
                        _gotoNext = 2978142i32;
                    };
                } else if (__value__ == (2978077i32)) {
                    _i_2977921++;
                    _gotoNext = 2977929i32;
                } else if (__value__ == (2978142i32)) {
                    if ((_tr_2977982 < _sr_2977969 : Bool)) {
                        _gotoNext = 2978153i32;
                    } else {
                        _gotoNext = 2978228i32;
                    };
                } else if (__value__ == (2978153i32)) {
                    {
                        final __tmp__0 = _sr_2977969;
                        final __tmp__1 = _tr_2977982;
                        _tr_2977982 = __tmp__0;
                        _sr_2977969 = __tmp__1;
                    };
                    _gotoNext = 2978228i32;
                } else if (__value__ == (2978228i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2977969 : Bool) && (_sr_2977969 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2977982 == ((_sr_2977969 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2978274i32;
                    } else {
                        _gotoNext = 2978294i32;
                    };
                } else if (__value__ == (2978274i32)) {
                    _i_2977921++;
                    _gotoNext = 2977929i32;
                } else if (__value__ == (2978294i32)) {
                    return false;
                    _i_2977921++;
                    _gotoNext = 2977929i32;
                } else if (__value__ == (2978354i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2978379i32;
                } else if (__value__ == (2978379i32)) {
                    _s = (_s.__slice__(_i_2977921) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2977921) : stdgo.GoString)?.__copy__();
                    _keys_2978414 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2978414 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2978414 = (_keys_2978414.__append__(_key));
                        _values_2978414 = (_values_2978414.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2978414.length)) {
                        _gotoNext = 2979345i32;
                    } else {
                        _gotoNext = 2979419i32;
                    };
                } else if (__value__ == (2978435i32)) {
                    _sr_2978421 = _values_2978414[@:invalid_index_invalid_type _i_2978427];
                    var __blank__ = _keys_2978414[@:invalid_index_invalid_type _i_2978427];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2978504i32;
                    } else {
                        _gotoNext = 2978573i32;
                    };
                } else if (__value__ == (2978504i32)) {
                    return false;
                    _gotoNext = 2978573i32;
                } else if (__value__ == (2978573i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2978611i32;
                    } else {
                        _gotoNext = 2978651i32;
                    };
                } else if (__value__ == (2978611i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2978577 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2978795i32;
                } else if (__value__ == (2978651i32)) {
                    _gotoNext = 2978651i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2978656 = __tmp__._0;
                        _size_2978659 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2978656;
                        final __tmp__1 = (_t.__slice__(_size_2978659) : stdgo.GoString)?.__copy__();
                        _tr_2978577 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2978795i32;
                } else if (__value__ == (2978795i32)) {
                    if (_tr_2978577 == (_sr_2978421)) {
                        _gotoNext = 2978807i32;
                    } else {
                        _gotoNext = 2978872i32;
                    };
                } else if (__value__ == (2978807i32)) {
                    _i_2978427++;
                    _gotoNext = 2979346i32;
                } else if (__value__ == (2978872i32)) {
                    if ((_tr_2978577 < _sr_2978421 : Bool)) {
                        _gotoNext = 2978883i32;
                    } else {
                        _gotoNext = 2978937i32;
                    };
                } else if (__value__ == (2978883i32)) {
                    {
                        final __tmp__0 = _sr_2978421;
                        final __tmp__1 = _tr_2978577;
                        _tr_2978577 = __tmp__0;
                        _sr_2978421 = __tmp__1;
                    };
                    _gotoNext = 2978937i32;
                } else if (__value__ == (2978937i32)) {
                    if ((_tr_2978577 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2978959i32;
                    } else {
                        _gotoNext = 2979212i32;
                    };
                } else if (__value__ == (2978959i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2978421 : Bool) && (_sr_2978421 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2978577 == ((_sr_2978421 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2979059i32;
                    } else {
                        _gotoNext = 2979082i32;
                    };
                } else if (__value__ == (2979059i32)) {
                    _i_2978427++;
                    _gotoNext = 2979346i32;
                } else if (__value__ == (2979082i32)) {
                    return false;
                    _gotoNext = 2979212i32;
                } else if (__value__ == (2979212i32)) {
                    _r_2979212 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2978421);
                    var __blank__ = 0i32;
                    _gotoNext = 2979242i32;
                } else if (__value__ == (2979242i32)) {
                    if (((_r_2979212 != _sr_2978421) && (_r_2979212 < _tr_2978577 : Bool) : Bool)) {
                        _gotoNext = 2979264i32;
                    } else {
                        _gotoNext = 2979301i32;
                    };
                } else if (__value__ == (2979264i32)) {
                    _r_2979212 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2979212);
                    _gotoNext = 2979242i32;
                } else if (__value__ == (2979301i32)) {
                    if (_r_2979212 == (_tr_2978577)) {
                        _gotoNext = 2979312i32;
                    } else {
                        _gotoNext = 2979332i32;
                    };
                } else if (__value__ == (2979312i32)) {
                    _i_2978427++;
                    _gotoNext = 2979346i32;
                } else if (__value__ == (2979332i32)) {
                    return false;
                    _i_2978427++;
                    _gotoNext = 2979346i32;
                } else if (__value__ == (2979345i32)) {
                    _i_2978427 = 0i32;
                    _gotoNext = 2979346i32;
                } else if (__value__ == (2979346i32)) {
                    if (_i_2978427 < (_keys_2978414.length)) {
                        _gotoNext = 2978435i32;
                    } else {
                        _gotoNext = 2979419i32;
                    };
                } else if (__value__ == (2979419i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
