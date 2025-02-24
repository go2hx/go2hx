package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2898162 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2898149 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2898149 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2897664i32;
                } else if (__value__ == (2897664i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2897700i32;
                    } else {
                        _gotoNext = 2898089i32;
                    };
                } else if (__value__ == (2897700i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2897756i32;
                    } else {
                        _gotoNext = 2897800i32;
                    };
                } else if (__value__ == (2897756i32)) {
                    _gotoNext = 2898114i32;
                } else if (__value__ == (2897800i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2897812i32;
                    } else {
                        _gotoNext = 2897877i32;
                    };
                } else if (__value__ == (2897812i32)) {
                    _i_0++;
                    _gotoNext = 2897664i32;
                } else if (__value__ == (2897877i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2897888i32;
                    } else {
                        _gotoNext = 2897963i32;
                    };
                } else if (__value__ == (2897888i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2897963i32;
                } else if (__value__ == (2897963i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2898009i32;
                    } else {
                        _gotoNext = 2898029i32;
                    };
                } else if (__value__ == (2898009i32)) {
                    _i_0++;
                    _gotoNext = 2897664i32;
                } else if (__value__ == (2898029i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2897664i32;
                } else if (__value__ == (2898089i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2898114i32;
                } else if (__value__ == (2898114i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2898149 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2898149 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2898149 = (_keys_2898149.__append__(_key));
                        _values_2898149 = (_values_2898149.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2898149.length)) {
                        _gotoNext = 2899080i32;
                    } else {
                        _gotoNext = 2899154i32;
                    };
                } else if (__value__ == (2898170i32)) {
                    _sr_3 = _values_2898149[@:invalid_index_invalid_type _i_2898162];
                    var __blank__ = _keys_2898149[@:invalid_index_invalid_type _i_2898162];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2898239i32;
                    } else {
                        _gotoNext = 2898308i32;
                    };
                } else if (__value__ == (2898239i32)) {
                    return false;
                    _gotoNext = 2898308i32;
                } else if (__value__ == (2898308i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2898346i32;
                    } else {
                        _gotoNext = 2898386i32;
                    };
                } else if (__value__ == (2898346i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2898530i32;
                } else if (__value__ == (2898386i32)) {
                    _gotoNext = 2898386i32;
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
                    var __blank__ = 0i32;
                    _gotoNext = 2898530i32;
                } else if (__value__ == (2898530i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2898542i32;
                    } else {
                        _gotoNext = 2898607i32;
                    };
                } else if (__value__ == (2898542i32)) {
                    _i_2898162++;
                    _gotoNext = 2899081i32;
                } else if (__value__ == (2898607i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2898618i32;
                    } else {
                        _gotoNext = 2898672i32;
                    };
                } else if (__value__ == (2898618i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2898672i32;
                } else if (__value__ == (2898672i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2898694i32;
                    } else {
                        _gotoNext = 2898947i32;
                    };
                } else if (__value__ == (2898694i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2898794i32;
                    } else {
                        _gotoNext = 2898817i32;
                    };
                } else if (__value__ == (2898794i32)) {
                    _i_2898162++;
                    _gotoNext = 2899081i32;
                } else if (__value__ == (2898817i32)) {
                    return false;
                    _gotoNext = 2898947i32;
                } else if (__value__ == (2898947i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2898977i32;
                } else if (__value__ == (2898977i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2898999i32;
                    } else {
                        _gotoNext = 2899036i32;
                    };
                } else if (__value__ == (2898999i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2898977i32;
                } else if (__value__ == (2899036i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2899047i32;
                    } else {
                        _gotoNext = 2899067i32;
                    };
                } else if (__value__ == (2899047i32)) {
                    _i_2898162++;
                    _gotoNext = 2899081i32;
                } else if (__value__ == (2899067i32)) {
                    return false;
                    _i_2898162++;
                    _gotoNext = 2899081i32;
                } else if (__value__ == (2899080i32)) {
                    _i_2898162 = 0i32;
                    _gotoNext = 2899081i32;
                } else if (__value__ == (2899081i32)) {
                    if (_i_2898162 < (_keys_2898149.length)) {
                        _gotoNext = 2898170i32;
                    } else {
                        _gotoNext = 2899154i32;
                    };
                } else if (__value__ == (2899154i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
