package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2717629:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2717622 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2717177:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2717867:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2717864:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2717785:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2717635 = @:invalid_type null;
        var _tr_2717190:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2717129:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2718420:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2717622 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2717129 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2717137i32;
                } else if (__value__ == (2717137i32)) {
                    if (((_i_2717129 < (_s.length) : Bool) && (_i_2717129 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2717173i32;
                    } else {
                        _gotoNext = 2717562i32;
                    };
                } else if (__value__ == (2717173i32)) {
                    _sr_2717177 = _s[(_i_2717129 : stdgo.GoInt)];
                    _tr_2717190 = _t[(_i_2717129 : stdgo.GoInt)];
                    if (((_sr_2717177 | _tr_2717190 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2717229i32;
                    } else {
                        _gotoNext = 2717273i32;
                    };
                } else if (__value__ == (2717229i32)) {
                    _gotoNext = 2717587i32;
                } else if (__value__ == (2717273i32)) {
                    if (_tr_2717190 == (_sr_2717177)) {
                        _gotoNext = 2717285i32;
                    } else {
                        _gotoNext = 2717350i32;
                    };
                } else if (__value__ == (2717285i32)) {
                    _i_2717129++;
                    _gotoNext = 2717137i32;
                } else if (__value__ == (2717350i32)) {
                    if ((_tr_2717190 < _sr_2717177 : Bool)) {
                        _gotoNext = 2717361i32;
                    } else {
                        _gotoNext = 2717436i32;
                    };
                } else if (__value__ == (2717361i32)) {
                    {
                        final __tmp__0 = _sr_2717177;
                        final __tmp__1 = _tr_2717190;
                        _tr_2717190 = __tmp__0;
                        _sr_2717177 = __tmp__1;
                    };
                    _gotoNext = 2717436i32;
                } else if (__value__ == (2717436i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2717177 : Bool) && (_sr_2717177 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2717190 == ((_sr_2717177 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2717482i32;
                    } else {
                        _gotoNext = 2717502i32;
                    };
                } else if (__value__ == (2717482i32)) {
                    _i_2717129++;
                    _gotoNext = 2717137i32;
                } else if (__value__ == (2717502i32)) {
                    return false;
                    _i_2717129++;
                    _gotoNext = 2717137i32;
                } else if (__value__ == (2717562i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2717587i32;
                } else if (__value__ == (2717587i32)) {
                    _s = (_s.__slice__(_i_2717129) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2717129) : stdgo.GoString)?.__copy__();
                    _keys_2717622 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2717622 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2717622 = (_keys_2717622.__append__(_key));
                        _values_2717622 = (_values_2717622.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2717622.length)) {
                        _gotoNext = 2718553i32;
                    } else {
                        _gotoNext = 2718627i32;
                    };
                } else if (__value__ == (2717643i32)) {
                    _sr_2717629 = _values_2717622[@:invalid_index_invalid_type _i_2717635];
                    var __blank__ = _keys_2717622[@:invalid_index_invalid_type _i_2717635];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2717712i32;
                    } else {
                        _gotoNext = 2717781i32;
                    };
                } else if (__value__ == (2717712i32)) {
                    return false;
                    _gotoNext = 2717781i32;
                } else if (__value__ == (2717781i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2717819i32;
                    } else {
                        _gotoNext = 2717859i32;
                    };
                } else if (__value__ == (2717819i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2717785 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2718003i32;
                } else if (__value__ == (2717859i32)) {
                    _gotoNext = 2717859i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2717864 = __tmp__._0;
                        _size_2717867 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2717864;
                        final __tmp__1 = (_t.__slice__(_size_2717867) : stdgo.GoString)?.__copy__();
                        _tr_2717785 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2718003i32;
                } else if (__value__ == (2718003i32)) {
                    if (_tr_2717785 == (_sr_2717629)) {
                        _gotoNext = 2718015i32;
                    } else {
                        _gotoNext = 2718080i32;
                    };
                } else if (__value__ == (2718015i32)) {
                    _i_2717635++;
                    _gotoNext = 2718554i32;
                } else if (__value__ == (2718080i32)) {
                    if ((_tr_2717785 < _sr_2717629 : Bool)) {
                        _gotoNext = 2718091i32;
                    } else {
                        _gotoNext = 2718145i32;
                    };
                } else if (__value__ == (2718091i32)) {
                    {
                        final __tmp__0 = _sr_2717629;
                        final __tmp__1 = _tr_2717785;
                        _tr_2717785 = __tmp__0;
                        _sr_2717629 = __tmp__1;
                    };
                    _gotoNext = 2718145i32;
                } else if (__value__ == (2718145i32)) {
                    if ((_tr_2717785 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2718167i32;
                    } else {
                        _gotoNext = 2718420i32;
                    };
                } else if (__value__ == (2718167i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2717629 : Bool) && (_sr_2717629 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2717785 == ((_sr_2717629 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2718267i32;
                    } else {
                        _gotoNext = 2718290i32;
                    };
                } else if (__value__ == (2718267i32)) {
                    _i_2717635++;
                    _gotoNext = 2718554i32;
                } else if (__value__ == (2718290i32)) {
                    return false;
                    _gotoNext = 2718420i32;
                } else if (__value__ == (2718420i32)) {
                    _r_2718420 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2717629);
                    var __blank__ = 0i32;
                    _gotoNext = 2718450i32;
                } else if (__value__ == (2718450i32)) {
                    if (((_r_2718420 != _sr_2717629) && (_r_2718420 < _tr_2717785 : Bool) : Bool)) {
                        _gotoNext = 2718472i32;
                    } else {
                        _gotoNext = 2718509i32;
                    };
                } else if (__value__ == (2718472i32)) {
                    _r_2718420 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2718420);
                    _gotoNext = 2718450i32;
                } else if (__value__ == (2718509i32)) {
                    if (_r_2718420 == (_tr_2717785)) {
                        _gotoNext = 2718520i32;
                    } else {
                        _gotoNext = 2718540i32;
                    };
                } else if (__value__ == (2718520i32)) {
                    _i_2717635++;
                    _gotoNext = 2718554i32;
                } else if (__value__ == (2718540i32)) {
                    return false;
                    _i_2717635++;
                    _gotoNext = 2718554i32;
                } else if (__value__ == (2718553i32)) {
                    _i_2717635 = 0i32;
                    _gotoNext = 2718554i32;
                } else if (__value__ == (2718554i32)) {
                    if (_i_2717635 < (_keys_2717622.length)) {
                        _gotoNext = 2717643i32;
                    } else {
                        _gotoNext = 2718627i32;
                    };
                } else if (__value__ == (2718627i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
