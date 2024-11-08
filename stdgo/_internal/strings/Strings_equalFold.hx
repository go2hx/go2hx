package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2900446:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2900443:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2900364:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2900214 = @:invalid_type null;
        var _tr_2899769:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2900999:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2900208:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2900201 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2900201 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2899756:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2899708:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2899708 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2899716i32;
                } else if (__value__ == (2899716i32)) {
                    if (((_i_2899708 < (_s.length) : Bool) && (_i_2899708 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2899752i32;
                    } else {
                        _gotoNext = 2900141i32;
                    };
                } else if (__value__ == (2899752i32)) {
                    _sr_2899756 = _s[(_i_2899708 : stdgo.GoInt)];
                    _tr_2899769 = _t[(_i_2899708 : stdgo.GoInt)];
                    if (((_sr_2899756 | _tr_2899769 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2899808i32;
                    } else {
                        _gotoNext = 2899852i32;
                    };
                } else if (__value__ == (2899808i32)) {
                    _gotoNext = 2900166i32;
                } else if (__value__ == (2899852i32)) {
                    if (_tr_2899769 == (_sr_2899756)) {
                        _gotoNext = 2899864i32;
                    } else {
                        _gotoNext = 2899929i32;
                    };
                } else if (__value__ == (2899864i32)) {
                    _i_2899708++;
                    _gotoNext = 2899716i32;
                } else if (__value__ == (2899929i32)) {
                    if ((_tr_2899769 < _sr_2899756 : Bool)) {
                        _gotoNext = 2899940i32;
                    } else {
                        _gotoNext = 2900015i32;
                    };
                } else if (__value__ == (2899940i32)) {
                    {
                        final __tmp__0 = _sr_2899756;
                        final __tmp__1 = _tr_2899769;
                        _tr_2899769 = __tmp__0;
                        _sr_2899756 = __tmp__1;
                    };
                    _gotoNext = 2900015i32;
                } else if (__value__ == (2900015i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2899756 : Bool) && (_sr_2899756 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2899769 == ((_sr_2899756 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2900061i32;
                    } else {
                        _gotoNext = 2900081i32;
                    };
                } else if (__value__ == (2900061i32)) {
                    _i_2899708++;
                    _gotoNext = 2899716i32;
                } else if (__value__ == (2900081i32)) {
                    return false;
                    _i_2899708++;
                    _gotoNext = 2899716i32;
                } else if (__value__ == (2900141i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2900166i32;
                } else if (__value__ == (2900166i32)) {
                    _s = (_s.__slice__(_i_2899708) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2899708) : stdgo.GoString)?.__copy__();
                    _keys_2900201 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2900201 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2900201 = (_keys_2900201.__append__(_key));
                        _values_2900201 = (_values_2900201.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2900201.length)) {
                        _gotoNext = 2901132i32;
                    } else {
                        _gotoNext = 2901206i32;
                    };
                } else if (__value__ == (2900222i32)) {
                    _sr_2900208 = _values_2900201[@:invalid_index_invalid_type _i_2900214];
                    var __blank__ = _keys_2900201[@:invalid_index_invalid_type _i_2900214];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2900291i32;
                    } else {
                        _gotoNext = 2900360i32;
                    };
                } else if (__value__ == (2900291i32)) {
                    return false;
                    _gotoNext = 2900360i32;
                } else if (__value__ == (2900360i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2900398i32;
                    } else {
                        _gotoNext = 2900438i32;
                    };
                } else if (__value__ == (2900398i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2900364 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2900582i32;
                } else if (__value__ == (2900438i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2900443 = __tmp__._0;
                        _size_2900446 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2900443;
                        final __tmp__1 = (_t.__slice__(_size_2900446) : stdgo.GoString)?.__copy__();
                        _tr_2900364 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2900582i32;
                } else if (__value__ == (2900582i32)) {
                    if (_tr_2900364 == (_sr_2900208)) {
                        _gotoNext = 2900594i32;
                    } else {
                        _gotoNext = 2900659i32;
                    };
                } else if (__value__ == (2900594i32)) {
                    _i_2900214++;
                    _gotoNext = 2901133i32;
                } else if (__value__ == (2900659i32)) {
                    if ((_tr_2900364 < _sr_2900208 : Bool)) {
                        _gotoNext = 2900670i32;
                    } else {
                        _gotoNext = 2900724i32;
                    };
                } else if (__value__ == (2900670i32)) {
                    {
                        final __tmp__0 = _sr_2900208;
                        final __tmp__1 = _tr_2900364;
                        _tr_2900364 = __tmp__0;
                        _sr_2900208 = __tmp__1;
                    };
                    _gotoNext = 2900724i32;
                } else if (__value__ == (2900724i32)) {
                    if ((_tr_2900364 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2900746i32;
                    } else {
                        _gotoNext = 2900999i32;
                    };
                } else if (__value__ == (2900746i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2900208 : Bool) && (_sr_2900208 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2900364 == ((_sr_2900208 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2900846i32;
                    } else {
                        _gotoNext = 2900869i32;
                    };
                } else if (__value__ == (2900846i32)) {
                    _i_2900214++;
                    _gotoNext = 2901133i32;
                } else if (__value__ == (2900869i32)) {
                    return false;
                    _gotoNext = 2900999i32;
                } else if (__value__ == (2900999i32)) {
                    _r_2900999 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2900208);
                    var __blank__ = 0i32;
                    _gotoNext = 2901029i32;
                } else if (__value__ == (2901029i32)) {
                    if (((_r_2900999 != _sr_2900208) && (_r_2900999 < _tr_2900364 : Bool) : Bool)) {
                        _gotoNext = 2901051i32;
                    } else {
                        _gotoNext = 2901088i32;
                    };
                } else if (__value__ == (2901051i32)) {
                    _r_2900999 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2900999);
                    _gotoNext = 2901029i32;
                } else if (__value__ == (2901088i32)) {
                    if (_r_2900999 == (_tr_2900364)) {
                        _gotoNext = 2901099i32;
                    } else {
                        _gotoNext = 2901119i32;
                    };
                } else if (__value__ == (2901099i32)) {
                    _i_2900214++;
                    _gotoNext = 2901133i32;
                } else if (__value__ == (2901119i32)) {
                    return false;
                    _i_2900214++;
                    _gotoNext = 2901133i32;
                } else if (__value__ == (2901132i32)) {
                    _i_2900214 = 0i32;
                    _gotoNext = 2901133i32;
                } else if (__value__ == (2901133i32)) {
                    if (_i_2900214 < (_keys_2900201.length)) {
                        _gotoNext = 2900222i32;
                    } else {
                        _gotoNext = 2901206i32;
                    };
                } else if (__value__ == (2901206i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
