package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2810371:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2811662:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2811109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2811106:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2810871:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2810432:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2810419:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2810877 = @:invalid_type null;
        var _tr_2811027:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2810864 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2810864 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2810371 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2810379i32;
                } else if (__value__ == (2810379i32)) {
                    if (((_i_2810371 < (_s.length) : Bool) && (_i_2810371 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2810415i32;
                    } else {
                        _gotoNext = 2810804i32;
                    };
                } else if (__value__ == (2810415i32)) {
                    _sr_2810419 = _s[(_i_2810371 : stdgo.GoInt)];
                    _tr_2810432 = _t[(_i_2810371 : stdgo.GoInt)];
                    if (((_sr_2810419 | _tr_2810432 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2810471i32;
                    } else {
                        _gotoNext = 2810515i32;
                    };
                } else if (__value__ == (2810471i32)) {
                    _gotoNext = 2810829i32;
                } else if (__value__ == (2810515i32)) {
                    if (_tr_2810432 == (_sr_2810419)) {
                        _gotoNext = 2810527i32;
                    } else {
                        _gotoNext = 2810592i32;
                    };
                } else if (__value__ == (2810527i32)) {
                    _i_2810371++;
                    _gotoNext = 2810379i32;
                } else if (__value__ == (2810592i32)) {
                    if ((_tr_2810432 < _sr_2810419 : Bool)) {
                        _gotoNext = 2810603i32;
                    } else {
                        _gotoNext = 2810678i32;
                    };
                } else if (__value__ == (2810603i32)) {
                    {
                        final __tmp__0 = _sr_2810419;
                        final __tmp__1 = _tr_2810432;
                        _tr_2810432 = __tmp__0;
                        _sr_2810419 = __tmp__1;
                    };
                    _gotoNext = 2810678i32;
                } else if (__value__ == (2810678i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2810419 : Bool) && (_sr_2810419 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2810432 == ((_sr_2810419 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2810724i32;
                    } else {
                        _gotoNext = 2810744i32;
                    };
                } else if (__value__ == (2810724i32)) {
                    _i_2810371++;
                    _gotoNext = 2810379i32;
                } else if (__value__ == (2810744i32)) {
                    return false;
                    _i_2810371++;
                    _gotoNext = 2810379i32;
                } else if (__value__ == (2810804i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2810829i32;
                } else if (__value__ == (2810829i32)) {
                    _s = (_s.__slice__(_i_2810371) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2810371) : stdgo.GoString)?.__copy__();
                    _keys_2810864 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2810864 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2810864 = (_keys_2810864.__append__(_key));
                        _values_2810864 = (_values_2810864.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2810864.length)) {
                        _gotoNext = 2811795i32;
                    } else {
                        _gotoNext = 2811869i32;
                    };
                } else if (__value__ == (2810885i32)) {
                    _sr_2810871 = _values_2810864[@:invalid_index_invalid_type _i_2810877];
                    var __blank__ = _keys_2810864[@:invalid_index_invalid_type _i_2810877];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2810954i32;
                    } else {
                        _gotoNext = 2811023i32;
                    };
                } else if (__value__ == (2810954i32)) {
                    return false;
                    _gotoNext = 2811023i32;
                } else if (__value__ == (2811023i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2811061i32;
                    } else {
                        _gotoNext = 2811101i32;
                    };
                } else if (__value__ == (2811061i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2811027 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2811245i32;
                } else if (__value__ == (2811101i32)) {
                    _gotoNext = 2811101i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2811106 = __tmp__._0;
                        _size_2811109 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2811106;
                        final __tmp__1 = (_t.__slice__(_size_2811109) : stdgo.GoString)?.__copy__();
                        _tr_2811027 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2811245i32;
                } else if (__value__ == (2811245i32)) {
                    if (_tr_2811027 == (_sr_2810871)) {
                        _gotoNext = 2811257i32;
                    } else {
                        _gotoNext = 2811322i32;
                    };
                } else if (__value__ == (2811257i32)) {
                    _i_2810877++;
                    _gotoNext = 2811796i32;
                } else if (__value__ == (2811322i32)) {
                    if ((_tr_2811027 < _sr_2810871 : Bool)) {
                        _gotoNext = 2811333i32;
                    } else {
                        _gotoNext = 2811387i32;
                    };
                } else if (__value__ == (2811333i32)) {
                    {
                        final __tmp__0 = _sr_2810871;
                        final __tmp__1 = _tr_2811027;
                        _tr_2811027 = __tmp__0;
                        _sr_2810871 = __tmp__1;
                    };
                    _gotoNext = 2811387i32;
                } else if (__value__ == (2811387i32)) {
                    if ((_tr_2811027 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2811409i32;
                    } else {
                        _gotoNext = 2811662i32;
                    };
                } else if (__value__ == (2811409i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2810871 : Bool) && (_sr_2810871 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2811027 == ((_sr_2810871 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2811509i32;
                    } else {
                        _gotoNext = 2811532i32;
                    };
                } else if (__value__ == (2811509i32)) {
                    _i_2810877++;
                    _gotoNext = 2811796i32;
                } else if (__value__ == (2811532i32)) {
                    return false;
                    _gotoNext = 2811662i32;
                } else if (__value__ == (2811662i32)) {
                    _r_2811662 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2810871);
                    var __blank__ = 0i32;
                    _gotoNext = 2811692i32;
                } else if (__value__ == (2811692i32)) {
                    if (((_r_2811662 != _sr_2810871) && (_r_2811662 < _tr_2811027 : Bool) : Bool)) {
                        _gotoNext = 2811714i32;
                    } else {
                        _gotoNext = 2811751i32;
                    };
                } else if (__value__ == (2811714i32)) {
                    _r_2811662 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2811662);
                    _gotoNext = 2811692i32;
                } else if (__value__ == (2811751i32)) {
                    if (_r_2811662 == (_tr_2811027)) {
                        _gotoNext = 2811762i32;
                    } else {
                        _gotoNext = 2811782i32;
                    };
                } else if (__value__ == (2811762i32)) {
                    _i_2810877++;
                    _gotoNext = 2811796i32;
                } else if (__value__ == (2811782i32)) {
                    return false;
                    _i_2810877++;
                    _gotoNext = 2811796i32;
                } else if (__value__ == (2811795i32)) {
                    _i_2810877 = 0i32;
                    _gotoNext = 2811796i32;
                } else if (__value__ == (2811796i32)) {
                    if (_i_2810877 < (_keys_2810864.length)) {
                        _gotoNext = 2810885i32;
                    } else {
                        _gotoNext = 2811869i32;
                    };
                } else if (__value__ == (2811869i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
