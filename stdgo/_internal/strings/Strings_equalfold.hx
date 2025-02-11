package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2983573:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2983566 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2983566 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2983134:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2983073:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2983808:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2983729:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2984364:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2983811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2983579 = @:invalid_type null;
        var _sr_2983121:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2983073 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2983081i32;
                } else if (__value__ == (2983081i32)) {
                    if (((_i_2983073 < (_s.length) : Bool) && (_i_2983073 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2983117i32;
                    } else {
                        _gotoNext = 2983506i32;
                    };
                } else if (__value__ == (2983117i32)) {
                    _sr_2983121 = _s[(_i_2983073 : stdgo.GoInt)];
                    _tr_2983134 = _t[(_i_2983073 : stdgo.GoInt)];
                    if (((_sr_2983121 | _tr_2983134 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2983173i32;
                    } else {
                        _gotoNext = 2983217i32;
                    };
                } else if (__value__ == (2983173i32)) {
                    _gotoNext = 2983531i32;
                } else if (__value__ == (2983217i32)) {
                    if (_tr_2983134 == (_sr_2983121)) {
                        _gotoNext = 2983229i32;
                    } else {
                        _gotoNext = 2983294i32;
                    };
                } else if (__value__ == (2983229i32)) {
                    _i_2983073++;
                    _gotoNext = 2983081i32;
                } else if (__value__ == (2983294i32)) {
                    if ((_tr_2983134 < _sr_2983121 : Bool)) {
                        _gotoNext = 2983305i32;
                    } else {
                        _gotoNext = 2983380i32;
                    };
                } else if (__value__ == (2983305i32)) {
                    {
                        final __tmp__0 = _sr_2983121;
                        final __tmp__1 = _tr_2983134;
                        _tr_2983134 = __tmp__0;
                        _sr_2983121 = __tmp__1;
                    };
                    _gotoNext = 2983380i32;
                } else if (__value__ == (2983380i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2983121 : Bool) && (_sr_2983121 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2983134 == ((_sr_2983121 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2983426i32;
                    } else {
                        _gotoNext = 2983446i32;
                    };
                } else if (__value__ == (2983426i32)) {
                    _i_2983073++;
                    _gotoNext = 2983081i32;
                } else if (__value__ == (2983446i32)) {
                    return false;
                    _i_2983073++;
                    _gotoNext = 2983081i32;
                } else if (__value__ == (2983506i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2983531i32;
                } else if (__value__ == (2983531i32)) {
                    _s = (_s.__slice__(_i_2983073) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2983073) : stdgo.GoString)?.__copy__();
                    _keys_2983566 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2983566 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2983566 = (_keys_2983566.__append__(_key));
                        _values_2983566 = (_values_2983566.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2983566.length)) {
                        _gotoNext = 2984497i32;
                    } else {
                        _gotoNext = 2984571i32;
                    };
                } else if (__value__ == (2983587i32)) {
                    _sr_2983573 = _values_2983566[@:invalid_index_invalid_type _i_2983579];
                    var __blank__ = _keys_2983566[@:invalid_index_invalid_type _i_2983579];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2983656i32;
                    } else {
                        _gotoNext = 2983725i32;
                    };
                } else if (__value__ == (2983656i32)) {
                    return false;
                    _gotoNext = 2983725i32;
                } else if (__value__ == (2983725i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2983763i32;
                    } else {
                        _gotoNext = 2983803i32;
                    };
                } else if (__value__ == (2983763i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2983729 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2983947i32;
                } else if (__value__ == (2983803i32)) {
                    _gotoNext = 2983803i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2983808 = @:tmpset0 __tmp__._0;
                        _size_2983811 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2983808;
                        final __tmp__1 = (_t.__slice__(_size_2983811) : stdgo.GoString)?.__copy__();
                        _tr_2983729 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2983947i32;
                } else if (__value__ == (2983947i32)) {
                    if (_tr_2983729 == (_sr_2983573)) {
                        _gotoNext = 2983959i32;
                    } else {
                        _gotoNext = 2984024i32;
                    };
                } else if (__value__ == (2983959i32)) {
                    _i_2983579++;
                    _gotoNext = 2984498i32;
                } else if (__value__ == (2984024i32)) {
                    if ((_tr_2983729 < _sr_2983573 : Bool)) {
                        _gotoNext = 2984035i32;
                    } else {
                        _gotoNext = 2984089i32;
                    };
                } else if (__value__ == (2984035i32)) {
                    {
                        final __tmp__0 = _sr_2983573;
                        final __tmp__1 = _tr_2983729;
                        _tr_2983729 = __tmp__0;
                        _sr_2983573 = __tmp__1;
                    };
                    _gotoNext = 2984089i32;
                } else if (__value__ == (2984089i32)) {
                    if ((_tr_2983729 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2984111i32;
                    } else {
                        _gotoNext = 2984364i32;
                    };
                } else if (__value__ == (2984111i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2983573 : Bool) && (_sr_2983573 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2983729 == ((_sr_2983573 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2984211i32;
                    } else {
                        _gotoNext = 2984234i32;
                    };
                } else if (__value__ == (2984211i32)) {
                    _i_2983579++;
                    _gotoNext = 2984498i32;
                } else if (__value__ == (2984234i32)) {
                    return false;
                    _gotoNext = 2984364i32;
                } else if (__value__ == (2984364i32)) {
                    _r_2984364 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2983573);
                    var __blank__ = 0i32;
                    _gotoNext = 2984394i32;
                } else if (__value__ == (2984394i32)) {
                    if (((_r_2984364 != _sr_2983573) && (_r_2984364 < _tr_2983729 : Bool) : Bool)) {
                        _gotoNext = 2984416i32;
                    } else {
                        _gotoNext = 2984453i32;
                    };
                } else if (__value__ == (2984416i32)) {
                    _r_2984364 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2984364);
                    _gotoNext = 2984394i32;
                } else if (__value__ == (2984453i32)) {
                    if (_r_2984364 == (_tr_2983729)) {
                        _gotoNext = 2984464i32;
                    } else {
                        _gotoNext = 2984484i32;
                    };
                } else if (__value__ == (2984464i32)) {
                    _i_2983579++;
                    _gotoNext = 2984498i32;
                } else if (__value__ == (2984484i32)) {
                    return false;
                    _i_2983579++;
                    _gotoNext = 2984498i32;
                } else if (__value__ == (2984497i32)) {
                    _i_2983579 = 0i32;
                    _gotoNext = 2984498i32;
                } else if (__value__ == (2984498i32)) {
                    if (_i_2983579 < (_keys_2983566.length)) {
                        _gotoNext = 2983587i32;
                    } else {
                        _gotoNext = 2984571i32;
                    };
                } else if (__value__ == (2984571i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
