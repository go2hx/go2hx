package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2963134:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2963821:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2963742:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2963586:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2963579 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2963579 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2963592 = @:invalid_type null;
        var _tr_2963147:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2963086:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2964377:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2963824:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2963086 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2963094i32;
                } else if (__value__ == (2963094i32)) {
                    if (((_i_2963086 < (_s.length) : Bool) && (_i_2963086 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2963130i32;
                    } else {
                        _gotoNext = 2963519i32;
                    };
                } else if (__value__ == (2963130i32)) {
                    _sr_2963134 = _s[(_i_2963086 : stdgo.GoInt)];
                    _tr_2963147 = _t[(_i_2963086 : stdgo.GoInt)];
                    if (((_sr_2963134 | _tr_2963147 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2963186i32;
                    } else {
                        _gotoNext = 2963230i32;
                    };
                } else if (__value__ == (2963186i32)) {
                    _gotoNext = 2963544i32;
                } else if (__value__ == (2963230i32)) {
                    if (_tr_2963147 == (_sr_2963134)) {
                        _gotoNext = 2963242i32;
                    } else {
                        _gotoNext = 2963307i32;
                    };
                } else if (__value__ == (2963242i32)) {
                    _i_2963086++;
                    _gotoNext = 2963094i32;
                } else if (__value__ == (2963307i32)) {
                    if ((_tr_2963147 < _sr_2963134 : Bool)) {
                        _gotoNext = 2963318i32;
                    } else {
                        _gotoNext = 2963393i32;
                    };
                } else if (__value__ == (2963318i32)) {
                    {
                        final __tmp__0 = _sr_2963134;
                        final __tmp__1 = _tr_2963147;
                        _tr_2963147 = __tmp__0;
                        _sr_2963134 = __tmp__1;
                    };
                    _gotoNext = 2963393i32;
                } else if (__value__ == (2963393i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2963134 : Bool) && (_sr_2963134 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2963147 == ((_sr_2963134 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2963439i32;
                    } else {
                        _gotoNext = 2963459i32;
                    };
                } else if (__value__ == (2963439i32)) {
                    _i_2963086++;
                    _gotoNext = 2963094i32;
                } else if (__value__ == (2963459i32)) {
                    return false;
                    _i_2963086++;
                    _gotoNext = 2963094i32;
                } else if (__value__ == (2963519i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2963544i32;
                } else if (__value__ == (2963544i32)) {
                    _s = (_s.__slice__(_i_2963086) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2963086) : stdgo.GoString)?.__copy__();
                    _keys_2963579 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2963579 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2963579 = (_keys_2963579.__append__(_key));
                        _values_2963579 = (_values_2963579.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2963579.length)) {
                        _gotoNext = 2964510i32;
                    } else {
                        _gotoNext = 2964584i32;
                    };
                } else if (__value__ == (2963600i32)) {
                    _sr_2963586 = _values_2963579[@:invalid_index_invalid_type _i_2963592];
                    var __blank__ = _keys_2963579[@:invalid_index_invalid_type _i_2963592];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2963669i32;
                    } else {
                        _gotoNext = 2963738i32;
                    };
                } else if (__value__ == (2963669i32)) {
                    return false;
                    _gotoNext = 2963738i32;
                } else if (__value__ == (2963738i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2963776i32;
                    } else {
                        _gotoNext = 2963816i32;
                    };
                } else if (__value__ == (2963776i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2963742 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2963960i32;
                } else if (__value__ == (2963816i32)) {
                    _gotoNext = 2963816i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2963821 = @:tmpset0 __tmp__._0;
                        _size_2963824 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2963821;
                        final __tmp__1 = (_t.__slice__(_size_2963824) : stdgo.GoString)?.__copy__();
                        _tr_2963742 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2963960i32;
                } else if (__value__ == (2963960i32)) {
                    if (_tr_2963742 == (_sr_2963586)) {
                        _gotoNext = 2963972i32;
                    } else {
                        _gotoNext = 2964037i32;
                    };
                } else if (__value__ == (2963972i32)) {
                    _i_2963592++;
                    _gotoNext = 2964511i32;
                } else if (__value__ == (2964037i32)) {
                    if ((_tr_2963742 < _sr_2963586 : Bool)) {
                        _gotoNext = 2964048i32;
                    } else {
                        _gotoNext = 2964102i32;
                    };
                } else if (__value__ == (2964048i32)) {
                    {
                        final __tmp__0 = _sr_2963586;
                        final __tmp__1 = _tr_2963742;
                        _tr_2963742 = __tmp__0;
                        _sr_2963586 = __tmp__1;
                    };
                    _gotoNext = 2964102i32;
                } else if (__value__ == (2964102i32)) {
                    if ((_tr_2963742 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2964124i32;
                    } else {
                        _gotoNext = 2964377i32;
                    };
                } else if (__value__ == (2964124i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2963586 : Bool) && (_sr_2963586 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2963742 == ((_sr_2963586 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2964224i32;
                    } else {
                        _gotoNext = 2964247i32;
                    };
                } else if (__value__ == (2964224i32)) {
                    _i_2963592++;
                    _gotoNext = 2964511i32;
                } else if (__value__ == (2964247i32)) {
                    return false;
                    _gotoNext = 2964377i32;
                } else if (__value__ == (2964377i32)) {
                    _r_2964377 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2963586);
                    var __blank__ = 0i32;
                    _gotoNext = 2964407i32;
                } else if (__value__ == (2964407i32)) {
                    if (((_r_2964377 != _sr_2963586) && (_r_2964377 < _tr_2963742 : Bool) : Bool)) {
                        _gotoNext = 2964429i32;
                    } else {
                        _gotoNext = 2964466i32;
                    };
                } else if (__value__ == (2964429i32)) {
                    _r_2964377 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2964377);
                    _gotoNext = 2964407i32;
                } else if (__value__ == (2964466i32)) {
                    if (_r_2964377 == (_tr_2963742)) {
                        _gotoNext = 2964477i32;
                    } else {
                        _gotoNext = 2964497i32;
                    };
                } else if (__value__ == (2964477i32)) {
                    _i_2963592++;
                    _gotoNext = 2964511i32;
                } else if (__value__ == (2964497i32)) {
                    return false;
                    _i_2963592++;
                    _gotoNext = 2964511i32;
                } else if (__value__ == (2964510i32)) {
                    _i_2963592 = 0i32;
                    _gotoNext = 2964511i32;
                } else if (__value__ == (2964511i32)) {
                    if (_i_2963592 < (_keys_2963579.length)) {
                        _gotoNext = 2963600i32;
                    } else {
                        _gotoNext = 2964584i32;
                    };
                } else if (__value__ == (2964584i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
