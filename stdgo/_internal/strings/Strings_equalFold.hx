package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2984743:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2984695:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2985430:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2985351:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2985195:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2985188 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2985188 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2985201 = @:invalid_type null;
        var _tr_2984756:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2985986:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2985433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2984695 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2984703i32;
                } else if (__value__ == (2984703i32)) {
                    if (((_i_2984695 < (_s.length) : Bool) && (_i_2984695 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2984739i32;
                    } else {
                        _gotoNext = 2985128i32;
                    };
                } else if (__value__ == (2984739i32)) {
                    _sr_2984743 = _s[(_i_2984695 : stdgo.GoInt)];
                    _tr_2984756 = _t[(_i_2984695 : stdgo.GoInt)];
                    if (((_sr_2984743 | _tr_2984756 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2984795i32;
                    } else {
                        _gotoNext = 2984839i32;
                    };
                } else if (__value__ == (2984795i32)) {
                    _gotoNext = 2985153i32;
                } else if (__value__ == (2984839i32)) {
                    if (_tr_2984756 == (_sr_2984743)) {
                        _gotoNext = 2984851i32;
                    } else {
                        _gotoNext = 2984916i32;
                    };
                } else if (__value__ == (2984851i32)) {
                    _i_2984695++;
                    _gotoNext = 2984703i32;
                } else if (__value__ == (2984916i32)) {
                    if ((_tr_2984756 < _sr_2984743 : Bool)) {
                        _gotoNext = 2984927i32;
                    } else {
                        _gotoNext = 2985002i32;
                    };
                } else if (__value__ == (2984927i32)) {
                    {
                        final __tmp__0 = _sr_2984743;
                        final __tmp__1 = _tr_2984756;
                        _tr_2984756 = __tmp__0;
                        _sr_2984743 = __tmp__1;
                    };
                    _gotoNext = 2985002i32;
                } else if (__value__ == (2985002i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2984743 : Bool) && (_sr_2984743 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2984756 == ((_sr_2984743 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2985048i32;
                    } else {
                        _gotoNext = 2985068i32;
                    };
                } else if (__value__ == (2985048i32)) {
                    _i_2984695++;
                    _gotoNext = 2984703i32;
                } else if (__value__ == (2985068i32)) {
                    return false;
                    _i_2984695++;
                    _gotoNext = 2984703i32;
                } else if (__value__ == (2985128i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2985153i32;
                } else if (__value__ == (2985153i32)) {
                    _s = (_s.__slice__(_i_2984695) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2984695) : stdgo.GoString)?.__copy__();
                    _keys_2985188 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2985188 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2985188 = (_keys_2985188.__append__(_key));
                        _values_2985188 = (_values_2985188.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2985188.length)) {
                        _gotoNext = 2986119i32;
                    } else {
                        _gotoNext = 2986193i32;
                    };
                } else if (__value__ == (2985209i32)) {
                    _sr_2985195 = _values_2985188[@:invalid_index_invalid_type _i_2985201];
                    var __blank__ = _keys_2985188[@:invalid_index_invalid_type _i_2985201];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2985278i32;
                    } else {
                        _gotoNext = 2985347i32;
                    };
                } else if (__value__ == (2985278i32)) {
                    return false;
                    _gotoNext = 2985347i32;
                } else if (__value__ == (2985347i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2985385i32;
                    } else {
                        _gotoNext = 2985425i32;
                    };
                } else if (__value__ == (2985385i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2985351 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2985569i32;
                } else if (__value__ == (2985425i32)) {
                    _gotoNext = 2985425i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2985430 = @:tmpset0 __tmp__._0;
                        _size_2985433 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2985430;
                        final __tmp__1 = (_t.__slice__(_size_2985433) : stdgo.GoString)?.__copy__();
                        _tr_2985351 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2985569i32;
                } else if (__value__ == (2985569i32)) {
                    if (_tr_2985351 == (_sr_2985195)) {
                        _gotoNext = 2985581i32;
                    } else {
                        _gotoNext = 2985646i32;
                    };
                } else if (__value__ == (2985581i32)) {
                    _i_2985201++;
                    _gotoNext = 2986120i32;
                } else if (__value__ == (2985646i32)) {
                    if ((_tr_2985351 < _sr_2985195 : Bool)) {
                        _gotoNext = 2985657i32;
                    } else {
                        _gotoNext = 2985711i32;
                    };
                } else if (__value__ == (2985657i32)) {
                    {
                        final __tmp__0 = _sr_2985195;
                        final __tmp__1 = _tr_2985351;
                        _tr_2985351 = __tmp__0;
                        _sr_2985195 = __tmp__1;
                    };
                    _gotoNext = 2985711i32;
                } else if (__value__ == (2985711i32)) {
                    if ((_tr_2985351 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2985733i32;
                    } else {
                        _gotoNext = 2985986i32;
                    };
                } else if (__value__ == (2985733i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2985195 : Bool) && (_sr_2985195 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2985351 == ((_sr_2985195 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2985833i32;
                    } else {
                        _gotoNext = 2985856i32;
                    };
                } else if (__value__ == (2985833i32)) {
                    _i_2985201++;
                    _gotoNext = 2986120i32;
                } else if (__value__ == (2985856i32)) {
                    return false;
                    _gotoNext = 2985986i32;
                } else if (__value__ == (2985986i32)) {
                    _r_2985986 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2985195);
                    var __blank__ = 0i32;
                    _gotoNext = 2986016i32;
                } else if (__value__ == (2986016i32)) {
                    if (((_r_2985986 != _sr_2985195) && (_r_2985986 < _tr_2985351 : Bool) : Bool)) {
                        _gotoNext = 2986038i32;
                    } else {
                        _gotoNext = 2986075i32;
                    };
                } else if (__value__ == (2986038i32)) {
                    _r_2985986 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2985986);
                    _gotoNext = 2986016i32;
                } else if (__value__ == (2986075i32)) {
                    if (_r_2985986 == (_tr_2985351)) {
                        _gotoNext = 2986086i32;
                    } else {
                        _gotoNext = 2986106i32;
                    };
                } else if (__value__ == (2986086i32)) {
                    _i_2985201++;
                    _gotoNext = 2986120i32;
                } else if (__value__ == (2986106i32)) {
                    return false;
                    _i_2985201++;
                    _gotoNext = 2986120i32;
                } else if (__value__ == (2986119i32)) {
                    _i_2985201 = 0i32;
                    _gotoNext = 2986120i32;
                } else if (__value__ == (2986120i32)) {
                    if (_i_2985201 < (_keys_2985188.length)) {
                        _gotoNext = 2985209i32;
                    } else {
                        _gotoNext = 2986193i32;
                    };
                } else if (__value__ == (2986193i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
