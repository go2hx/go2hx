package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2908917 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _iterator_2908930 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2908917 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2908432i32;
                } else if (__value__ == (2908432i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2908468i32;
                    } else {
                        _gotoNext = 2908857i32;
                    };
                } else if (__value__ == (2908468i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2908524i32;
                    } else {
                        _gotoNext = 2908568i32;
                    };
                } else if (__value__ == (2908524i32)) {
                    _gotoNext = 2908882i32;
                } else if (__value__ == (2908568i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2908580i32;
                    } else {
                        _gotoNext = 2908645i32;
                    };
                } else if (__value__ == (2908580i32)) {
                    _i_0++;
                    _gotoNext = 2908432i32;
                } else if (__value__ == (2908645i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2908656i32;
                    } else {
                        _gotoNext = 2908731i32;
                    };
                } else if (__value__ == (2908656i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2908731i32;
                } else if (__value__ == (2908731i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2908777i32;
                    } else {
                        _gotoNext = 2908797i32;
                    };
                } else if (__value__ == (2908777i32)) {
                    _i_0++;
                    _gotoNext = 2908432i32;
                } else if (__value__ == (2908797i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2908432i32;
                } else if (__value__ == (2908857i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2908882i32;
                } else if (__value__ == (2908882i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2908917 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2908917 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2908917 = (_keys_2908917.__append__(_key));
                        _values_2908917 = (_values_2908917.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2908917.length)) {
                        _gotoNext = 2909848i32;
                    } else {
                        _gotoNext = 2909922i32;
                    };
                } else if (__value__ == (2908938i32)) {
                    _sr_3 = _values_2908917[@:invalid_index_invalid_type _iterator_2908930];
                    _keys_2908917[@:invalid_index_invalid_type _iterator_2908930];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2909007i32;
                    } else {
                        _gotoNext = 2909076i32;
                    };
                } else if (__value__ == (2909007i32)) {
                    return false;
                    _gotoNext = 2909076i32;
                } else if (__value__ == (2909076i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2909114i32;
                    } else {
                        _gotoNext = 2909154i32;
                    };
                } else if (__value__ == (2909114i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2909298i32;
                } else if (__value__ == (2909154i32)) {
                    _gotoNext = 2909154i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 2909298i32;
                } else if (__value__ == (2909298i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2909310i32;
                    } else {
                        _gotoNext = 2909375i32;
                    };
                } else if (__value__ == (2909310i32)) {
                    _iterator_2908930++;
                    _gotoNext = 2909849i32;
                } else if (__value__ == (2909375i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2909386i32;
                    } else {
                        _gotoNext = 2909440i32;
                    };
                } else if (__value__ == (2909386i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2909440i32;
                } else if (__value__ == (2909440i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2909462i32;
                    } else {
                        _gotoNext = 2909715i32;
                    };
                } else if (__value__ == (2909462i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2909562i32;
                    } else {
                        _gotoNext = 2909585i32;
                    };
                } else if (__value__ == (2909562i32)) {
                    _iterator_2908930++;
                    _gotoNext = 2909849i32;
                } else if (__value__ == (2909585i32)) {
                    return false;
                    _gotoNext = 2909715i32;
                } else if (__value__ == (2909715i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2909745i32;
                } else if (__value__ == (2909745i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2909767i32;
                    } else {
                        _gotoNext = 2909804i32;
                    };
                } else if (__value__ == (2909767i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2909745i32;
                } else if (__value__ == (2909804i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2909815i32;
                    } else {
                        _gotoNext = 2909835i32;
                    };
                } else if (__value__ == (2909815i32)) {
                    _iterator_2908930++;
                    _gotoNext = 2909849i32;
                } else if (__value__ == (2909835i32)) {
                    return false;
                    _iterator_2908930++;
                    _gotoNext = 2909849i32;
                } else if (__value__ == (2909848i32)) {
                    _iterator_2908930 = 0i32;
                    _gotoNext = 2909849i32;
                } else if (__value__ == (2909849i32)) {
                    if (_iterator_2908930 < (_keys_2908917.length)) {
                        _gotoNext = 2908938i32;
                    } else {
                        _gotoNext = 2909922i32;
                    };
                } else if (__value__ == (2909922i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
