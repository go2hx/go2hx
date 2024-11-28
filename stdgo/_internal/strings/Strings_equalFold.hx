package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2931272:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2930719:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2930716:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2930637:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2929981:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2930474 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2930474 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2930487 = @:invalid_type null;
        var _tr_2930042:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2930029:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2930481:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2929981 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2929989i32;
                } else if (__value__ == (2929989i32)) {
                    if (((_i_2929981 < (_s.length) : Bool) && (_i_2929981 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2930025i32;
                    } else {
                        _gotoNext = 2930414i32;
                    };
                } else if (__value__ == (2930025i32)) {
                    _sr_2930029 = _s[(_i_2929981 : stdgo.GoInt)];
                    _tr_2930042 = _t[(_i_2929981 : stdgo.GoInt)];
                    if (((_sr_2930029 | _tr_2930042 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2930081i32;
                    } else {
                        _gotoNext = 2930125i32;
                    };
                } else if (__value__ == (2930081i32)) {
                    _gotoNext = 2930439i32;
                } else if (__value__ == (2930125i32)) {
                    if (_tr_2930042 == (_sr_2930029)) {
                        _gotoNext = 2930137i32;
                    } else {
                        _gotoNext = 2930202i32;
                    };
                } else if (__value__ == (2930137i32)) {
                    _i_2929981++;
                    _gotoNext = 2929989i32;
                } else if (__value__ == (2930202i32)) {
                    if ((_tr_2930042 < _sr_2930029 : Bool)) {
                        _gotoNext = 2930213i32;
                    } else {
                        _gotoNext = 2930288i32;
                    };
                } else if (__value__ == (2930213i32)) {
                    {
                        final __tmp__0 = _sr_2930029;
                        final __tmp__1 = _tr_2930042;
                        _tr_2930042 = __tmp__0;
                        _sr_2930029 = __tmp__1;
                    };
                    _gotoNext = 2930288i32;
                } else if (__value__ == (2930288i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2930029 : Bool) && (_sr_2930029 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2930042 == ((_sr_2930029 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2930334i32;
                    } else {
                        _gotoNext = 2930354i32;
                    };
                } else if (__value__ == (2930334i32)) {
                    _i_2929981++;
                    _gotoNext = 2929989i32;
                } else if (__value__ == (2930354i32)) {
                    return false;
                    _i_2929981++;
                    _gotoNext = 2929989i32;
                } else if (__value__ == (2930414i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2930439i32;
                } else if (__value__ == (2930439i32)) {
                    _s = (_s.__slice__(_i_2929981) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2929981) : stdgo.GoString)?.__copy__();
                    _keys_2930474 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2930474 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2930474 = (_keys_2930474.__append__(_key));
                        _values_2930474 = (_values_2930474.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2930474.length)) {
                        _gotoNext = 2931405i32;
                    } else {
                        _gotoNext = 2931479i32;
                    };
                } else if (__value__ == (2930495i32)) {
                    _sr_2930481 = _values_2930474[@:invalid_index_invalid_type _i_2930487];
                    var __blank__ = _keys_2930474[@:invalid_index_invalid_type _i_2930487];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2930564i32;
                    } else {
                        _gotoNext = 2930633i32;
                    };
                } else if (__value__ == (2930564i32)) {
                    return false;
                    _gotoNext = 2930633i32;
                } else if (__value__ == (2930633i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2930671i32;
                    } else {
                        _gotoNext = 2930711i32;
                    };
                } else if (__value__ == (2930671i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2930637 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2930855i32;
                } else if (__value__ == (2930711i32)) {
                    _gotoNext = 2930711i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2930716 = __tmp__._0;
                        _size_2930719 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2930716;
                        final __tmp__1 = (_t.__slice__(_size_2930719) : stdgo.GoString)?.__copy__();
                        _tr_2930637 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2930855i32;
                } else if (__value__ == (2930855i32)) {
                    if (_tr_2930637 == (_sr_2930481)) {
                        _gotoNext = 2930867i32;
                    } else {
                        _gotoNext = 2930932i32;
                    };
                } else if (__value__ == (2930867i32)) {
                    _i_2930487++;
                    _gotoNext = 2931406i32;
                } else if (__value__ == (2930932i32)) {
                    if ((_tr_2930637 < _sr_2930481 : Bool)) {
                        _gotoNext = 2930943i32;
                    } else {
                        _gotoNext = 2930997i32;
                    };
                } else if (__value__ == (2930943i32)) {
                    {
                        final __tmp__0 = _sr_2930481;
                        final __tmp__1 = _tr_2930637;
                        _tr_2930637 = __tmp__0;
                        _sr_2930481 = __tmp__1;
                    };
                    _gotoNext = 2930997i32;
                } else if (__value__ == (2930997i32)) {
                    if ((_tr_2930637 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2931019i32;
                    } else {
                        _gotoNext = 2931272i32;
                    };
                } else if (__value__ == (2931019i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2930481 : Bool) && (_sr_2930481 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2930637 == ((_sr_2930481 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2931119i32;
                    } else {
                        _gotoNext = 2931142i32;
                    };
                } else if (__value__ == (2931119i32)) {
                    _i_2930487++;
                    _gotoNext = 2931406i32;
                } else if (__value__ == (2931142i32)) {
                    return false;
                    _gotoNext = 2931272i32;
                } else if (__value__ == (2931272i32)) {
                    _r_2931272 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2930481);
                    var __blank__ = 0i32;
                    _gotoNext = 2931302i32;
                } else if (__value__ == (2931302i32)) {
                    if (((_r_2931272 != _sr_2930481) && (_r_2931272 < _tr_2930637 : Bool) : Bool)) {
                        _gotoNext = 2931324i32;
                    } else {
                        _gotoNext = 2931361i32;
                    };
                } else if (__value__ == (2931324i32)) {
                    _r_2931272 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2931272);
                    _gotoNext = 2931302i32;
                } else if (__value__ == (2931361i32)) {
                    if (_r_2931272 == (_tr_2930637)) {
                        _gotoNext = 2931372i32;
                    } else {
                        _gotoNext = 2931392i32;
                    };
                } else if (__value__ == (2931372i32)) {
                    _i_2930487++;
                    _gotoNext = 2931406i32;
                } else if (__value__ == (2931392i32)) {
                    return false;
                    _i_2930487++;
                    _gotoNext = 2931406i32;
                } else if (__value__ == (2931405i32)) {
                    _i_2930487 = 0i32;
                    _gotoNext = 2931406i32;
                } else if (__value__ == (2931406i32)) {
                    if (_i_2930487 < (_keys_2930474.length)) {
                        _gotoNext = 2930495i32;
                    } else {
                        _gotoNext = 2931479i32;
                    };
                } else if (__value__ == (2931479i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
