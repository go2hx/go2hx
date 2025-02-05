package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_3205250:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3204655:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3204594:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3205094:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3205087 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3205087 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3205100 = @:invalid_type null;
        var _sr_3204642:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3205885:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3205332:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3205329:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3204594 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3204602i32;
                } else if (__value__ == (3204602i32)) {
                    if (((_i_3204594 < (_s.length) : Bool) && (_i_3204594 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3204638i32;
                    } else {
                        _gotoNext = 3205027i32;
                    };
                } else if (__value__ == (3204638i32)) {
                    _sr_3204642 = _s[(_i_3204594 : stdgo.GoInt)];
                    _tr_3204655 = _t[(_i_3204594 : stdgo.GoInt)];
                    if (((_sr_3204642 | _tr_3204655 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3204694i32;
                    } else {
                        _gotoNext = 3204738i32;
                    };
                } else if (__value__ == (3204694i32)) {
                    _gotoNext = 3205052i32;
                } else if (__value__ == (3204738i32)) {
                    if (_tr_3204655 == (_sr_3204642)) {
                        _gotoNext = 3204750i32;
                    } else {
                        _gotoNext = 3204815i32;
                    };
                } else if (__value__ == (3204750i32)) {
                    _i_3204594++;
                    _gotoNext = 3204602i32;
                } else if (__value__ == (3204815i32)) {
                    if ((_tr_3204655 < _sr_3204642 : Bool)) {
                        _gotoNext = 3204826i32;
                    } else {
                        _gotoNext = 3204901i32;
                    };
                } else if (__value__ == (3204826i32)) {
                    {
                        final __tmp__0 = _sr_3204642;
                        final __tmp__1 = _tr_3204655;
                        _tr_3204655 = __tmp__0;
                        _sr_3204642 = __tmp__1;
                    };
                    _gotoNext = 3204901i32;
                } else if (__value__ == (3204901i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3204642 : Bool) && (_sr_3204642 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3204655 == ((_sr_3204642 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3204947i32;
                    } else {
                        _gotoNext = 3204967i32;
                    };
                } else if (__value__ == (3204947i32)) {
                    _i_3204594++;
                    _gotoNext = 3204602i32;
                } else if (__value__ == (3204967i32)) {
                    return false;
                    _i_3204594++;
                    _gotoNext = 3204602i32;
                } else if (__value__ == (3205027i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3205052i32;
                } else if (__value__ == (3205052i32)) {
                    _s = (_s.__slice__(_i_3204594) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3204594) : stdgo.GoString)?.__copy__();
                    _keys_3205087 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3205087 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3205087 = (_keys_3205087.__append__(_key));
                        _values_3205087 = (_values_3205087.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3205087.length)) {
                        _gotoNext = 3206018i32;
                    } else {
                        _gotoNext = 3206092i32;
                    };
                } else if (__value__ == (3205108i32)) {
                    _sr_3205094 = _values_3205087[@:invalid_index_invalid_type _i_3205100];
                    var __blank__ = _keys_3205087[@:invalid_index_invalid_type _i_3205100];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3205177i32;
                    } else {
                        _gotoNext = 3205246i32;
                    };
                } else if (__value__ == (3205177i32)) {
                    return false;
                    _gotoNext = 3205246i32;
                } else if (__value__ == (3205246i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3205284i32;
                    } else {
                        _gotoNext = 3205324i32;
                    };
                } else if (__value__ == (3205284i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3205250 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3205468i32;
                } else if (__value__ == (3205324i32)) {
                    _gotoNext = 3205324i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3205329 = @:tmpset0 __tmp__._0;
                        _size_3205332 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3205329;
                        final __tmp__1 = (_t.__slice__(_size_3205332) : stdgo.GoString)?.__copy__();
                        _tr_3205250 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3205468i32;
                } else if (__value__ == (3205468i32)) {
                    if (_tr_3205250 == (_sr_3205094)) {
                        _gotoNext = 3205480i32;
                    } else {
                        _gotoNext = 3205545i32;
                    };
                } else if (__value__ == (3205480i32)) {
                    _i_3205100++;
                    _gotoNext = 3206019i32;
                } else if (__value__ == (3205545i32)) {
                    if ((_tr_3205250 < _sr_3205094 : Bool)) {
                        _gotoNext = 3205556i32;
                    } else {
                        _gotoNext = 3205610i32;
                    };
                } else if (__value__ == (3205556i32)) {
                    {
                        final __tmp__0 = _sr_3205094;
                        final __tmp__1 = _tr_3205250;
                        _tr_3205250 = __tmp__0;
                        _sr_3205094 = __tmp__1;
                    };
                    _gotoNext = 3205610i32;
                } else if (__value__ == (3205610i32)) {
                    if ((_tr_3205250 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3205632i32;
                    } else {
                        _gotoNext = 3205885i32;
                    };
                } else if (__value__ == (3205632i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3205094 : Bool) && (_sr_3205094 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3205250 == ((_sr_3205094 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3205732i32;
                    } else {
                        _gotoNext = 3205755i32;
                    };
                } else if (__value__ == (3205732i32)) {
                    _i_3205100++;
                    _gotoNext = 3206019i32;
                } else if (__value__ == (3205755i32)) {
                    return false;
                    _gotoNext = 3205885i32;
                } else if (__value__ == (3205885i32)) {
                    _r_3205885 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3205094);
                    var __blank__ = 0i32;
                    _gotoNext = 3205915i32;
                } else if (__value__ == (3205915i32)) {
                    if (((_r_3205885 != _sr_3205094) && (_r_3205885 < _tr_3205250 : Bool) : Bool)) {
                        _gotoNext = 3205937i32;
                    } else {
                        _gotoNext = 3205974i32;
                    };
                } else if (__value__ == (3205937i32)) {
                    _r_3205885 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3205885);
                    _gotoNext = 3205915i32;
                } else if (__value__ == (3205974i32)) {
                    if (_r_3205885 == (_tr_3205250)) {
                        _gotoNext = 3205985i32;
                    } else {
                        _gotoNext = 3206005i32;
                    };
                } else if (__value__ == (3205985i32)) {
                    _i_3205100++;
                    _gotoNext = 3206019i32;
                } else if (__value__ == (3206005i32)) {
                    return false;
                    _i_3205100++;
                    _gotoNext = 3206019i32;
                } else if (__value__ == (3206018i32)) {
                    _i_3205100 = 0i32;
                    _gotoNext = 3206019i32;
                } else if (__value__ == (3206019i32)) {
                    if (_i_3205100 < (_keys_3205087.length)) {
                        _gotoNext = 3205108i32;
                    } else {
                        _gotoNext = 3206092i32;
                    };
                } else if (__value__ == (3206092i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
