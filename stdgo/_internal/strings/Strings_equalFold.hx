package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2763706:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2763071:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2762908 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2762921 = @:invalid_type null;
        var _tr_2762476:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2763153:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2763150:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2762915:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2762908 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2762463:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2762415:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2762415 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2762423i32;
                } else if (__value__ == (2762423i32)) {
                    if (((_i_2762415 < (_s.length) : Bool) && (_i_2762415 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2762459i32;
                    } else {
                        _gotoNext = 2762848i32;
                    };
                } else if (__value__ == (2762459i32)) {
                    _sr_2762463 = _s[(_i_2762415 : stdgo.GoInt)];
                    _tr_2762476 = _t[(_i_2762415 : stdgo.GoInt)];
                    if (((_sr_2762463 | _tr_2762476 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2762515i32;
                    } else {
                        _gotoNext = 2762559i32;
                    };
                } else if (__value__ == (2762515i32)) {
                    _gotoNext = 2762873i32;
                } else if (__value__ == (2762559i32)) {
                    if (_tr_2762476 == (_sr_2762463)) {
                        _gotoNext = 2762571i32;
                    } else {
                        _gotoNext = 2762636i32;
                    };
                } else if (__value__ == (2762571i32)) {
                    _i_2762415++;
                    _gotoNext = 2762423i32;
                } else if (__value__ == (2762636i32)) {
                    if ((_tr_2762476 < _sr_2762463 : Bool)) {
                        _gotoNext = 2762647i32;
                    } else {
                        _gotoNext = 2762722i32;
                    };
                } else if (__value__ == (2762647i32)) {
                    {
                        final __tmp__0 = _sr_2762463;
                        final __tmp__1 = _tr_2762476;
                        _tr_2762476 = __tmp__0;
                        _sr_2762463 = __tmp__1;
                    };
                    _gotoNext = 2762722i32;
                } else if (__value__ == (2762722i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2762463 : Bool) && (_sr_2762463 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2762476 == ((_sr_2762463 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2762768i32;
                    } else {
                        _gotoNext = 2762788i32;
                    };
                } else if (__value__ == (2762768i32)) {
                    _i_2762415++;
                    _gotoNext = 2762423i32;
                } else if (__value__ == (2762788i32)) {
                    return false;
                    _i_2762415++;
                    _gotoNext = 2762423i32;
                } else if (__value__ == (2762848i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2762873i32;
                } else if (__value__ == (2762873i32)) {
                    _s = (_s.__slice__(_i_2762415) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2762415) : stdgo.GoString)?.__copy__();
                    _keys_2762908 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2762908 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2762908 = (_keys_2762908.__append__(_key));
                        _values_2762908 = (_values_2762908.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2762908.length)) {
                        _gotoNext = 2763839i32;
                    } else {
                        _gotoNext = 2763913i32;
                    };
                } else if (__value__ == (2762929i32)) {
                    _sr_2762915 = _values_2762908[@:invalid_index_invalid_type _i_2762921];
                    var __blank__ = _keys_2762908[@:invalid_index_invalid_type _i_2762921];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2762998i32;
                    } else {
                        _gotoNext = 2763067i32;
                    };
                } else if (__value__ == (2762998i32)) {
                    return false;
                    _gotoNext = 2763067i32;
                } else if (__value__ == (2763067i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2763105i32;
                    } else {
                        _gotoNext = 2763145i32;
                    };
                } else if (__value__ == (2763105i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2763071 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2763289i32;
                } else if (__value__ == (2763145i32)) {
                    _gotoNext = 2763145i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2763150 = __tmp__._0;
                        _size_2763153 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2763150;
                        final __tmp__1 = (_t.__slice__(_size_2763153) : stdgo.GoString)?.__copy__();
                        _tr_2763071 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2763289i32;
                } else if (__value__ == (2763289i32)) {
                    if (_tr_2763071 == (_sr_2762915)) {
                        _gotoNext = 2763301i32;
                    } else {
                        _gotoNext = 2763366i32;
                    };
                } else if (__value__ == (2763301i32)) {
                    _i_2762921++;
                    _gotoNext = 2763840i32;
                } else if (__value__ == (2763366i32)) {
                    if ((_tr_2763071 < _sr_2762915 : Bool)) {
                        _gotoNext = 2763377i32;
                    } else {
                        _gotoNext = 2763431i32;
                    };
                } else if (__value__ == (2763377i32)) {
                    {
                        final __tmp__0 = _sr_2762915;
                        final __tmp__1 = _tr_2763071;
                        _tr_2763071 = __tmp__0;
                        _sr_2762915 = __tmp__1;
                    };
                    _gotoNext = 2763431i32;
                } else if (__value__ == (2763431i32)) {
                    if ((_tr_2763071 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2763453i32;
                    } else {
                        _gotoNext = 2763706i32;
                    };
                } else if (__value__ == (2763453i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2762915 : Bool) && (_sr_2762915 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2763071 == ((_sr_2762915 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2763553i32;
                    } else {
                        _gotoNext = 2763576i32;
                    };
                } else if (__value__ == (2763553i32)) {
                    _i_2762921++;
                    _gotoNext = 2763840i32;
                } else if (__value__ == (2763576i32)) {
                    return false;
                    _gotoNext = 2763706i32;
                } else if (__value__ == (2763706i32)) {
                    _r_2763706 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2762915);
                    var __blank__ = 0i32;
                    _gotoNext = 2763736i32;
                } else if (__value__ == (2763736i32)) {
                    if (((_r_2763706 != _sr_2762915) && (_r_2763706 < _tr_2763071 : Bool) : Bool)) {
                        _gotoNext = 2763758i32;
                    } else {
                        _gotoNext = 2763795i32;
                    };
                } else if (__value__ == (2763758i32)) {
                    _r_2763706 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2763706);
                    _gotoNext = 2763736i32;
                } else if (__value__ == (2763795i32)) {
                    if (_r_2763706 == (_tr_2763071)) {
                        _gotoNext = 2763806i32;
                    } else {
                        _gotoNext = 2763826i32;
                    };
                } else if (__value__ == (2763806i32)) {
                    _i_2762921++;
                    _gotoNext = 2763840i32;
                } else if (__value__ == (2763826i32)) {
                    return false;
                    _i_2762921++;
                    _gotoNext = 2763840i32;
                } else if (__value__ == (2763839i32)) {
                    _i_2762921 = 0i32;
                    _gotoNext = 2763840i32;
                } else if (__value__ == (2763840i32)) {
                    if (_i_2762921 < (_keys_2762908.length)) {
                        _gotoNext = 2762929i32;
                    } else {
                        _gotoNext = 2763913i32;
                    };
                } else if (__value__ == (2763913i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
