package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2942206 = @:invalid_type null;
        var _i_2941700:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2942438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2942435:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2942356:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2942200:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2942193 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2941761:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2941748:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2942991:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2942193 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2941700 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2941708i32;
                } else if (__value__ == (2941708i32)) {
                    if (((_i_2941700 < (_s.length) : Bool) && (_i_2941700 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2941744i32;
                    } else {
                        _gotoNext = 2942133i32;
                    };
                } else if (__value__ == (2941744i32)) {
                    _sr_2941748 = _s[(_i_2941700 : stdgo.GoInt)];
                    _tr_2941761 = _t[(_i_2941700 : stdgo.GoInt)];
                    if (((_sr_2941748 | _tr_2941761 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2941800i32;
                    } else {
                        _gotoNext = 2941844i32;
                    };
                } else if (__value__ == (2941800i32)) {
                    _gotoNext = 2942158i32;
                } else if (__value__ == (2941844i32)) {
                    if (_tr_2941761 == (_sr_2941748)) {
                        _gotoNext = 2941856i32;
                    } else {
                        _gotoNext = 2941921i32;
                    };
                } else if (__value__ == (2941856i32)) {
                    _i_2941700++;
                    _gotoNext = 2941708i32;
                } else if (__value__ == (2941921i32)) {
                    if ((_tr_2941761 < _sr_2941748 : Bool)) {
                        _gotoNext = 2941932i32;
                    } else {
                        _gotoNext = 2942007i32;
                    };
                } else if (__value__ == (2941932i32)) {
                    {
                        final __tmp__0 = _sr_2941748;
                        final __tmp__1 = _tr_2941761;
                        _tr_2941761 = __tmp__0;
                        _sr_2941748 = __tmp__1;
                    };
                    _gotoNext = 2942007i32;
                } else if (__value__ == (2942007i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2941748 : Bool) && (_sr_2941748 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2941761 == ((_sr_2941748 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2942053i32;
                    } else {
                        _gotoNext = 2942073i32;
                    };
                } else if (__value__ == (2942053i32)) {
                    _i_2941700++;
                    _gotoNext = 2941708i32;
                } else if (__value__ == (2942073i32)) {
                    return false;
                    _i_2941700++;
                    _gotoNext = 2941708i32;
                } else if (__value__ == (2942133i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2942158i32;
                } else if (__value__ == (2942158i32)) {
                    _s = (_s.__slice__(_i_2941700) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2941700) : stdgo.GoString)?.__copy__();
                    _keys_2942193 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2942193 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2942193 = (_keys_2942193.__append__(_key));
                        _values_2942193 = (_values_2942193.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2942193.length)) {
                        _gotoNext = 2943124i32;
                    } else {
                        _gotoNext = 2943198i32;
                    };
                } else if (__value__ == (2942214i32)) {
                    _sr_2942200 = _values_2942193[@:invalid_index_invalid_type _i_2942206];
                    var __blank__ = _keys_2942193[@:invalid_index_invalid_type _i_2942206];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2942283i32;
                    } else {
                        _gotoNext = 2942352i32;
                    };
                } else if (__value__ == (2942283i32)) {
                    return false;
                    _gotoNext = 2942352i32;
                } else if (__value__ == (2942352i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942390i32;
                    } else {
                        _gotoNext = 2942430i32;
                    };
                } else if (__value__ == (2942390i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2942356 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2942574i32;
                } else if (__value__ == (2942430i32)) {
                    _gotoNext = 2942430i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2942435 = __tmp__._0;
                        _size_2942438 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2942435;
                        final __tmp__1 = (_t.__slice__(_size_2942438) : stdgo.GoString)?.__copy__();
                        _tr_2942356 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2942574i32;
                } else if (__value__ == (2942574i32)) {
                    if (_tr_2942356 == (_sr_2942200)) {
                        _gotoNext = 2942586i32;
                    } else {
                        _gotoNext = 2942651i32;
                    };
                } else if (__value__ == (2942586i32)) {
                    _i_2942206++;
                    _gotoNext = 2943125i32;
                } else if (__value__ == (2942651i32)) {
                    if ((_tr_2942356 < _sr_2942200 : Bool)) {
                        _gotoNext = 2942662i32;
                    } else {
                        _gotoNext = 2942716i32;
                    };
                } else if (__value__ == (2942662i32)) {
                    {
                        final __tmp__0 = _sr_2942200;
                        final __tmp__1 = _tr_2942356;
                        _tr_2942356 = __tmp__0;
                        _sr_2942200 = __tmp__1;
                    };
                    _gotoNext = 2942716i32;
                } else if (__value__ == (2942716i32)) {
                    if ((_tr_2942356 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2942738i32;
                    } else {
                        _gotoNext = 2942991i32;
                    };
                } else if (__value__ == (2942738i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2942200 : Bool) && (_sr_2942200 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2942356 == ((_sr_2942200 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2942838i32;
                    } else {
                        _gotoNext = 2942861i32;
                    };
                } else if (__value__ == (2942838i32)) {
                    _i_2942206++;
                    _gotoNext = 2943125i32;
                } else if (__value__ == (2942861i32)) {
                    return false;
                    _gotoNext = 2942991i32;
                } else if (__value__ == (2942991i32)) {
                    _r_2942991 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2942200);
                    var __blank__ = 0i32;
                    _gotoNext = 2943021i32;
                } else if (__value__ == (2943021i32)) {
                    if (((_r_2942991 != _sr_2942200) && (_r_2942991 < _tr_2942356 : Bool) : Bool)) {
                        _gotoNext = 2943043i32;
                    } else {
                        _gotoNext = 2943080i32;
                    };
                } else if (__value__ == (2943043i32)) {
                    _r_2942991 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2942991);
                    _gotoNext = 2943021i32;
                } else if (__value__ == (2943080i32)) {
                    if (_r_2942991 == (_tr_2942356)) {
                        _gotoNext = 2943091i32;
                    } else {
                        _gotoNext = 2943111i32;
                    };
                } else if (__value__ == (2943091i32)) {
                    _i_2942206++;
                    _gotoNext = 2943125i32;
                } else if (__value__ == (2943111i32)) {
                    return false;
                    _i_2942206++;
                    _gotoNext = 2943125i32;
                } else if (__value__ == (2943124i32)) {
                    _i_2942206 = 0i32;
                    _gotoNext = 2943125i32;
                } else if (__value__ == (2943125i32)) {
                    if (_i_2942206 < (_keys_2942193.length)) {
                        _gotoNext = 2942214i32;
                    } else {
                        _gotoNext = 2943198i32;
                    };
                } else if (__value__ == (2943198i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
