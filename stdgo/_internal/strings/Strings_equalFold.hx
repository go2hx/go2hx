package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2966784:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2966705:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2966542 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2966110:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2967340:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2966787:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2966549:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2966542 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2966555 = @:invalid_type null;
        var _sr_2966097:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2966049:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2966049 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2966057i32;
                } else if (__value__ == (2966057i32)) {
                    if (((_i_2966049 < (_s.length) : Bool) && (_i_2966049 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2966093i32;
                    } else {
                        _gotoNext = 2966482i32;
                    };
                } else if (__value__ == (2966093i32)) {
                    _sr_2966097 = _s[(_i_2966049 : stdgo.GoInt)];
                    _tr_2966110 = _t[(_i_2966049 : stdgo.GoInt)];
                    if (((_sr_2966097 | _tr_2966110 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2966149i32;
                    } else {
                        _gotoNext = 2966193i32;
                    };
                } else if (__value__ == (2966149i32)) {
                    _gotoNext = 2966507i32;
                } else if (__value__ == (2966193i32)) {
                    if (_tr_2966110 == (_sr_2966097)) {
                        _gotoNext = 2966205i32;
                    } else {
                        _gotoNext = 2966270i32;
                    };
                } else if (__value__ == (2966205i32)) {
                    _i_2966049++;
                    _gotoNext = 2966057i32;
                } else if (__value__ == (2966270i32)) {
                    if ((_tr_2966110 < _sr_2966097 : Bool)) {
                        _gotoNext = 2966281i32;
                    } else {
                        _gotoNext = 2966356i32;
                    };
                } else if (__value__ == (2966281i32)) {
                    {
                        final __tmp__0 = _sr_2966097;
                        final __tmp__1 = _tr_2966110;
                        _tr_2966110 = __tmp__0;
                        _sr_2966097 = __tmp__1;
                    };
                    _gotoNext = 2966356i32;
                } else if (__value__ == (2966356i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2966097 : Bool) && (_sr_2966097 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2966110 == ((_sr_2966097 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2966402i32;
                    } else {
                        _gotoNext = 2966422i32;
                    };
                } else if (__value__ == (2966402i32)) {
                    _i_2966049++;
                    _gotoNext = 2966057i32;
                } else if (__value__ == (2966422i32)) {
                    return false;
                    _i_2966049++;
                    _gotoNext = 2966057i32;
                } else if (__value__ == (2966482i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2966507i32;
                } else if (__value__ == (2966507i32)) {
                    _s = (_s.__slice__(_i_2966049) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2966049) : stdgo.GoString)?.__copy__();
                    _keys_2966542 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2966542 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2966542 = (_keys_2966542.__append__(_key));
                        _values_2966542 = (_values_2966542.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2966542.length)) {
                        _gotoNext = 2967473i32;
                    } else {
                        _gotoNext = 2967547i32;
                    };
                } else if (__value__ == (2966563i32)) {
                    _sr_2966549 = _values_2966542[@:invalid_index_invalid_type _i_2966555];
                    var __blank__ = _keys_2966542[@:invalid_index_invalid_type _i_2966555];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2966632i32;
                    } else {
                        _gotoNext = 2966701i32;
                    };
                } else if (__value__ == (2966632i32)) {
                    return false;
                    _gotoNext = 2966701i32;
                } else if (__value__ == (2966701i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2966739i32;
                    } else {
                        _gotoNext = 2966779i32;
                    };
                } else if (__value__ == (2966739i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2966705 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2966923i32;
                } else if (__value__ == (2966779i32)) {
                    _gotoNext = 2966779i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2966784 = __tmp__._0;
                        _size_2966787 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2966784;
                        final __tmp__1 = (_t.__slice__(_size_2966787) : stdgo.GoString)?.__copy__();
                        _tr_2966705 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2966923i32;
                } else if (__value__ == (2966923i32)) {
                    if (_tr_2966705 == (_sr_2966549)) {
                        _gotoNext = 2966935i32;
                    } else {
                        _gotoNext = 2967000i32;
                    };
                } else if (__value__ == (2966935i32)) {
                    _i_2966555++;
                    _gotoNext = 2967474i32;
                } else if (__value__ == (2967000i32)) {
                    if ((_tr_2966705 < _sr_2966549 : Bool)) {
                        _gotoNext = 2967011i32;
                    } else {
                        _gotoNext = 2967065i32;
                    };
                } else if (__value__ == (2967011i32)) {
                    {
                        final __tmp__0 = _sr_2966549;
                        final __tmp__1 = _tr_2966705;
                        _tr_2966705 = __tmp__0;
                        _sr_2966549 = __tmp__1;
                    };
                    _gotoNext = 2967065i32;
                } else if (__value__ == (2967065i32)) {
                    if ((_tr_2966705 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2967087i32;
                    } else {
                        _gotoNext = 2967340i32;
                    };
                } else if (__value__ == (2967087i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2966549 : Bool) && (_sr_2966549 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2966705 == ((_sr_2966549 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2967187i32;
                    } else {
                        _gotoNext = 2967210i32;
                    };
                } else if (__value__ == (2967187i32)) {
                    _i_2966555++;
                    _gotoNext = 2967474i32;
                } else if (__value__ == (2967210i32)) {
                    return false;
                    _gotoNext = 2967340i32;
                } else if (__value__ == (2967340i32)) {
                    _r_2967340 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2966549);
                    var __blank__ = 0i32;
                    _gotoNext = 2967370i32;
                } else if (__value__ == (2967370i32)) {
                    if (((_r_2967340 != _sr_2966549) && (_r_2967340 < _tr_2966705 : Bool) : Bool)) {
                        _gotoNext = 2967392i32;
                    } else {
                        _gotoNext = 2967429i32;
                    };
                } else if (__value__ == (2967392i32)) {
                    _r_2967340 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2967340);
                    _gotoNext = 2967370i32;
                } else if (__value__ == (2967429i32)) {
                    if (_r_2967340 == (_tr_2966705)) {
                        _gotoNext = 2967440i32;
                    } else {
                        _gotoNext = 2967460i32;
                    };
                } else if (__value__ == (2967440i32)) {
                    _i_2966555++;
                    _gotoNext = 2967474i32;
                } else if (__value__ == (2967460i32)) {
                    return false;
                    _i_2966555++;
                    _gotoNext = 2967474i32;
                } else if (__value__ == (2967473i32)) {
                    _i_2966555 = 0i32;
                    _gotoNext = 2967474i32;
                } else if (__value__ == (2967474i32)) {
                    if (_i_2966555 < (_keys_2966542.length)) {
                        _gotoNext = 2966563i32;
                    } else {
                        _gotoNext = 2967547i32;
                    };
                } else if (__value__ == (2967547i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
