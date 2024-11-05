package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2806204:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2805962 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2805962 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2805975 = @:invalid_type null;
        var _tr_2806125:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2805969:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2805530:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2805517:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2805469:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2806760:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2806207:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2805469 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2805477i32;
                } else if (__value__ == (2805477i32)) {
                    if (((_i_2805469 < (_s.length) : Bool) && (_i_2805469 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2805513i32;
                    } else {
                        _gotoNext = 2805902i32;
                    };
                } else if (__value__ == (2805513i32)) {
                    _sr_2805517 = _s[(_i_2805469 : stdgo.GoInt)];
                    _tr_2805530 = _t[(_i_2805469 : stdgo.GoInt)];
                    if (((_sr_2805517 | _tr_2805530 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2805569i32;
                    } else {
                        _gotoNext = 2805613i32;
                    };
                } else if (__value__ == (2805569i32)) {
                    _gotoNext = 2805927i32;
                } else if (__value__ == (2805613i32)) {
                    if (_tr_2805530 == (_sr_2805517)) {
                        _gotoNext = 2805625i32;
                    } else {
                        _gotoNext = 2805690i32;
                    };
                } else if (__value__ == (2805625i32)) {
                    _i_2805469++;
                    _gotoNext = 2805477i32;
                } else if (__value__ == (2805690i32)) {
                    if ((_tr_2805530 < _sr_2805517 : Bool)) {
                        _gotoNext = 2805701i32;
                    } else {
                        _gotoNext = 2805776i32;
                    };
                } else if (__value__ == (2805701i32)) {
                    {
                        final __tmp__0 = _sr_2805517;
                        final __tmp__1 = _tr_2805530;
                        _tr_2805530 = __tmp__0;
                        _sr_2805517 = __tmp__1;
                    };
                    _gotoNext = 2805776i32;
                } else if (__value__ == (2805776i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2805517 : Bool) && (_sr_2805517 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2805530 == ((_sr_2805517 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2805822i32;
                    } else {
                        _gotoNext = 2805842i32;
                    };
                } else if (__value__ == (2805822i32)) {
                    _i_2805469++;
                    _gotoNext = 2805477i32;
                } else if (__value__ == (2805842i32)) {
                    return false;
                    _i_2805469++;
                    _gotoNext = 2805477i32;
                } else if (__value__ == (2805902i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2805927i32;
                } else if (__value__ == (2805927i32)) {
                    _s = (_s.__slice__(_i_2805469) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2805469) : stdgo.GoString)?.__copy__();
                    _keys_2805962 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2805962 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2805962 = (_keys_2805962.__append__(_key));
                        _values_2805962 = (_values_2805962.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2805962.length)) {
                        _gotoNext = 2806893i32;
                    } else {
                        _gotoNext = 2806967i32;
                    };
                } else if (__value__ == (2805983i32)) {
                    _sr_2805969 = _values_2805962[@:invalid_index_invalid_type _i_2805975];
                    var __blank__ = _keys_2805962[@:invalid_index_invalid_type _i_2805975];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2806052i32;
                    } else {
                        _gotoNext = 2806121i32;
                    };
                } else if (__value__ == (2806052i32)) {
                    return false;
                    _gotoNext = 2806121i32;
                } else if (__value__ == (2806121i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2806159i32;
                    } else {
                        _gotoNext = 2806199i32;
                    };
                } else if (__value__ == (2806159i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2806125 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2806343i32;
                } else if (__value__ == (2806199i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2806204 = __tmp__._0;
                        _size_2806207 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2806204;
                        final __tmp__1 = (_t.__slice__(_size_2806207) : stdgo.GoString)?.__copy__();
                        _tr_2806125 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2806343i32;
                } else if (__value__ == (2806343i32)) {
                    if (_tr_2806125 == (_sr_2805969)) {
                        _gotoNext = 2806355i32;
                    } else {
                        _gotoNext = 2806420i32;
                    };
                } else if (__value__ == (2806355i32)) {
                    _i_2805975++;
                    _gotoNext = 2806894i32;
                } else if (__value__ == (2806420i32)) {
                    if ((_tr_2806125 < _sr_2805969 : Bool)) {
                        _gotoNext = 2806431i32;
                    } else {
                        _gotoNext = 2806485i32;
                    };
                } else if (__value__ == (2806431i32)) {
                    {
                        final __tmp__0 = _sr_2805969;
                        final __tmp__1 = _tr_2806125;
                        _tr_2806125 = __tmp__0;
                        _sr_2805969 = __tmp__1;
                    };
                    _gotoNext = 2806485i32;
                } else if (__value__ == (2806485i32)) {
                    if ((_tr_2806125 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2806507i32;
                    } else {
                        _gotoNext = 2806760i32;
                    };
                } else if (__value__ == (2806507i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2805969 : Bool) && (_sr_2805969 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2806125 == ((_sr_2805969 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2806607i32;
                    } else {
                        _gotoNext = 2806630i32;
                    };
                } else if (__value__ == (2806607i32)) {
                    _i_2805975++;
                    _gotoNext = 2806894i32;
                } else if (__value__ == (2806630i32)) {
                    return false;
                    _gotoNext = 2806760i32;
                } else if (__value__ == (2806760i32)) {
                    _r_2806760 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2805969);
                    var __blank__ = 0i32;
                    _gotoNext = 2806790i32;
                } else if (__value__ == (2806790i32)) {
                    if (((_r_2806760 != _sr_2805969) && (_r_2806760 < _tr_2806125 : Bool) : Bool)) {
                        _gotoNext = 2806812i32;
                    } else {
                        _gotoNext = 2806849i32;
                    };
                } else if (__value__ == (2806812i32)) {
                    _r_2806760 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2806760);
                    _gotoNext = 2806790i32;
                } else if (__value__ == (2806849i32)) {
                    if (_r_2806760 == (_tr_2806125)) {
                        _gotoNext = 2806860i32;
                    } else {
                        _gotoNext = 2806880i32;
                    };
                } else if (__value__ == (2806860i32)) {
                    _i_2805975++;
                    _gotoNext = 2806894i32;
                } else if (__value__ == (2806880i32)) {
                    return false;
                    _i_2805975++;
                    _gotoNext = 2806894i32;
                } else if (__value__ == (2806893i32)) {
                    _i_2805975 = 0i32;
                    _gotoNext = 2806894i32;
                } else if (__value__ == (2806894i32)) {
                    if (_i_2805975 < (_keys_2805962.length)) {
                        _gotoNext = 2805983i32;
                    } else {
                        _gotoNext = 2806967i32;
                    };
                } else if (__value__ == (2806967i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
