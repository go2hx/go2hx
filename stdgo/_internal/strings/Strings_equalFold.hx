package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2905827 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2905395:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2905382:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2906072:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2906069:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2905827 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2905840 = @:invalid_type null;
        var _i_2905334:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2906625:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2905990:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2905834:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2905334 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2905342i32;
                } else if (__value__ == (2905342i32)) {
                    if (((_i_2905334 < (_s.length) : Bool) && (_i_2905334 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2905378i32;
                    } else {
                        _gotoNext = 2905767i32;
                    };
                } else if (__value__ == (2905378i32)) {
                    _sr_2905382 = _s[(_i_2905334 : stdgo.GoInt)];
                    _tr_2905395 = _t[(_i_2905334 : stdgo.GoInt)];
                    if (((_sr_2905382 | _tr_2905395 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2905434i32;
                    } else {
                        _gotoNext = 2905478i32;
                    };
                } else if (__value__ == (2905434i32)) {
                    _gotoNext = 2905792i32;
                } else if (__value__ == (2905478i32)) {
                    if (_tr_2905395 == (_sr_2905382)) {
                        _gotoNext = 2905490i32;
                    } else {
                        _gotoNext = 2905555i32;
                    };
                } else if (__value__ == (2905490i32)) {
                    _i_2905334++;
                    _gotoNext = 2905342i32;
                } else if (__value__ == (2905555i32)) {
                    if ((_tr_2905395 < _sr_2905382 : Bool)) {
                        _gotoNext = 2905566i32;
                    } else {
                        _gotoNext = 2905641i32;
                    };
                } else if (__value__ == (2905566i32)) {
                    {
                        final __tmp__0 = _sr_2905382;
                        final __tmp__1 = _tr_2905395;
                        _tr_2905395 = __tmp__0;
                        _sr_2905382 = __tmp__1;
                    };
                    _gotoNext = 2905641i32;
                } else if (__value__ == (2905641i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2905382 : Bool) && (_sr_2905382 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2905395 == ((_sr_2905382 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2905687i32;
                    } else {
                        _gotoNext = 2905707i32;
                    };
                } else if (__value__ == (2905687i32)) {
                    _i_2905334++;
                    _gotoNext = 2905342i32;
                } else if (__value__ == (2905707i32)) {
                    return false;
                    _i_2905334++;
                    _gotoNext = 2905342i32;
                } else if (__value__ == (2905767i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2905792i32;
                } else if (__value__ == (2905792i32)) {
                    _s = (_s.__slice__(_i_2905334) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2905334) : stdgo.GoString)?.__copy__();
                    _keys_2905827 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2905827 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2905827 = (_keys_2905827.__append__(_key));
                        _values_2905827 = (_values_2905827.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2905827.length)) {
                        _gotoNext = 2906758i32;
                    } else {
                        _gotoNext = 2906832i32;
                    };
                } else if (__value__ == (2905848i32)) {
                    _sr_2905834 = _values_2905827[@:invalid_index_invalid_type _i_2905840];
                    var __blank__ = _keys_2905827[@:invalid_index_invalid_type _i_2905840];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2905917i32;
                    } else {
                        _gotoNext = 2905986i32;
                    };
                } else if (__value__ == (2905917i32)) {
                    return false;
                    _gotoNext = 2905986i32;
                } else if (__value__ == (2905986i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2906024i32;
                    } else {
                        _gotoNext = 2906064i32;
                    };
                } else if (__value__ == (2906024i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2905990 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2906208i32;
                } else if (__value__ == (2906064i32)) {
                    _gotoNext = 2906064i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2906069 = __tmp__._0;
                        _size_2906072 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2906069;
                        final __tmp__1 = (_t.__slice__(_size_2906072) : stdgo.GoString)?.__copy__();
                        _tr_2905990 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2906208i32;
                } else if (__value__ == (2906208i32)) {
                    if (_tr_2905990 == (_sr_2905834)) {
                        _gotoNext = 2906220i32;
                    } else {
                        _gotoNext = 2906285i32;
                    };
                } else if (__value__ == (2906220i32)) {
                    _i_2905840++;
                    _gotoNext = 2906759i32;
                } else if (__value__ == (2906285i32)) {
                    if ((_tr_2905990 < _sr_2905834 : Bool)) {
                        _gotoNext = 2906296i32;
                    } else {
                        _gotoNext = 2906350i32;
                    };
                } else if (__value__ == (2906296i32)) {
                    {
                        final __tmp__0 = _sr_2905834;
                        final __tmp__1 = _tr_2905990;
                        _tr_2905990 = __tmp__0;
                        _sr_2905834 = __tmp__1;
                    };
                    _gotoNext = 2906350i32;
                } else if (__value__ == (2906350i32)) {
                    if ((_tr_2905990 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2906372i32;
                    } else {
                        _gotoNext = 2906625i32;
                    };
                } else if (__value__ == (2906372i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2905834 : Bool) && (_sr_2905834 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2905990 == ((_sr_2905834 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2906472i32;
                    } else {
                        _gotoNext = 2906495i32;
                    };
                } else if (__value__ == (2906472i32)) {
                    _i_2905840++;
                    _gotoNext = 2906759i32;
                } else if (__value__ == (2906495i32)) {
                    return false;
                    _gotoNext = 2906625i32;
                } else if (__value__ == (2906625i32)) {
                    _r_2906625 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2905834);
                    var __blank__ = 0i32;
                    _gotoNext = 2906655i32;
                } else if (__value__ == (2906655i32)) {
                    if (((_r_2906625 != _sr_2905834) && (_r_2906625 < _tr_2905990 : Bool) : Bool)) {
                        _gotoNext = 2906677i32;
                    } else {
                        _gotoNext = 2906714i32;
                    };
                } else if (__value__ == (2906677i32)) {
                    _r_2906625 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2906625);
                    _gotoNext = 2906655i32;
                } else if (__value__ == (2906714i32)) {
                    if (_r_2906625 == (_tr_2905990)) {
                        _gotoNext = 2906725i32;
                    } else {
                        _gotoNext = 2906745i32;
                    };
                } else if (__value__ == (2906725i32)) {
                    _i_2905840++;
                    _gotoNext = 2906759i32;
                } else if (__value__ == (2906745i32)) {
                    return false;
                    _i_2905840++;
                    _gotoNext = 2906759i32;
                } else if (__value__ == (2906758i32)) {
                    _i_2905840 = 0i32;
                    _gotoNext = 2906759i32;
                } else if (__value__ == (2906759i32)) {
                    if (_i_2905840 < (_keys_2905827.length)) {
                        _gotoNext = 2905848i32;
                    } else {
                        _gotoNext = 2906832i32;
                    };
                } else if (__value__ == (2906832i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
