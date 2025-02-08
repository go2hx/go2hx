package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3000531:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2999740:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2999733 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2999733 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2999288:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2999240:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2999978:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2999975:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2999896:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2999746 = @:invalid_type null;
        var _tr_2999301:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2999240 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2999248i32;
                } else if (__value__ == (2999248i32)) {
                    if (((_i_2999240 < (_s.length) : Bool) && (_i_2999240 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2999284i32;
                    } else {
                        _gotoNext = 2999673i32;
                    };
                } else if (__value__ == (2999284i32)) {
                    _sr_2999288 = _s[(_i_2999240 : stdgo.GoInt)];
                    _tr_2999301 = _t[(_i_2999240 : stdgo.GoInt)];
                    if (((_sr_2999288 | _tr_2999301 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2999340i32;
                    } else {
                        _gotoNext = 2999384i32;
                    };
                } else if (__value__ == (2999340i32)) {
                    _gotoNext = 2999698i32;
                } else if (__value__ == (2999384i32)) {
                    if (_tr_2999301 == (_sr_2999288)) {
                        _gotoNext = 2999396i32;
                    } else {
                        _gotoNext = 2999461i32;
                    };
                } else if (__value__ == (2999396i32)) {
                    _i_2999240++;
                    _gotoNext = 2999248i32;
                } else if (__value__ == (2999461i32)) {
                    if ((_tr_2999301 < _sr_2999288 : Bool)) {
                        _gotoNext = 2999472i32;
                    } else {
                        _gotoNext = 2999547i32;
                    };
                } else if (__value__ == (2999472i32)) {
                    {
                        final __tmp__0 = _sr_2999288;
                        final __tmp__1 = _tr_2999301;
                        _tr_2999301 = __tmp__0;
                        _sr_2999288 = __tmp__1;
                    };
                    _gotoNext = 2999547i32;
                } else if (__value__ == (2999547i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2999288 : Bool) && (_sr_2999288 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2999301 == ((_sr_2999288 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2999593i32;
                    } else {
                        _gotoNext = 2999613i32;
                    };
                } else if (__value__ == (2999593i32)) {
                    _i_2999240++;
                    _gotoNext = 2999248i32;
                } else if (__value__ == (2999613i32)) {
                    return false;
                    _i_2999240++;
                    _gotoNext = 2999248i32;
                } else if (__value__ == (2999673i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2999698i32;
                } else if (__value__ == (2999698i32)) {
                    _s = (_s.__slice__(_i_2999240) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2999240) : stdgo.GoString)?.__copy__();
                    _keys_2999733 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2999733 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2999733 = (_keys_2999733.__append__(_key));
                        _values_2999733 = (_values_2999733.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2999733.length)) {
                        _gotoNext = 3000664i32;
                    } else {
                        _gotoNext = 3000738i32;
                    };
                } else if (__value__ == (2999754i32)) {
                    _sr_2999740 = _values_2999733[@:invalid_index_invalid_type _i_2999746];
                    var __blank__ = _keys_2999733[@:invalid_index_invalid_type _i_2999746];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2999823i32;
                    } else {
                        _gotoNext = 2999892i32;
                    };
                } else if (__value__ == (2999823i32)) {
                    return false;
                    _gotoNext = 2999892i32;
                } else if (__value__ == (2999892i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2999930i32;
                    } else {
                        _gotoNext = 2999970i32;
                    };
                } else if (__value__ == (2999930i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2999896 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3000114i32;
                } else if (__value__ == (2999970i32)) {
                    _gotoNext = 2999970i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2999975 = @:tmpset0 __tmp__._0;
                        _size_2999978 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2999975;
                        final __tmp__1 = (_t.__slice__(_size_2999978) : stdgo.GoString)?.__copy__();
                        _tr_2999896 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3000114i32;
                } else if (__value__ == (3000114i32)) {
                    if (_tr_2999896 == (_sr_2999740)) {
                        _gotoNext = 3000126i32;
                    } else {
                        _gotoNext = 3000191i32;
                    };
                } else if (__value__ == (3000126i32)) {
                    _i_2999746++;
                    _gotoNext = 3000665i32;
                } else if (__value__ == (3000191i32)) {
                    if ((_tr_2999896 < _sr_2999740 : Bool)) {
                        _gotoNext = 3000202i32;
                    } else {
                        _gotoNext = 3000256i32;
                    };
                } else if (__value__ == (3000202i32)) {
                    {
                        final __tmp__0 = _sr_2999740;
                        final __tmp__1 = _tr_2999896;
                        _tr_2999896 = __tmp__0;
                        _sr_2999740 = __tmp__1;
                    };
                    _gotoNext = 3000256i32;
                } else if (__value__ == (3000256i32)) {
                    if ((_tr_2999896 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3000278i32;
                    } else {
                        _gotoNext = 3000531i32;
                    };
                } else if (__value__ == (3000278i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2999740 : Bool) && (_sr_2999740 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2999896 == ((_sr_2999740 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3000378i32;
                    } else {
                        _gotoNext = 3000401i32;
                    };
                } else if (__value__ == (3000378i32)) {
                    _i_2999746++;
                    _gotoNext = 3000665i32;
                } else if (__value__ == (3000401i32)) {
                    return false;
                    _gotoNext = 3000531i32;
                } else if (__value__ == (3000531i32)) {
                    _r_3000531 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2999740);
                    var __blank__ = 0i32;
                    _gotoNext = 3000561i32;
                } else if (__value__ == (3000561i32)) {
                    if (((_r_3000531 != _sr_2999740) && (_r_3000531 < _tr_2999896 : Bool) : Bool)) {
                        _gotoNext = 3000583i32;
                    } else {
                        _gotoNext = 3000620i32;
                    };
                } else if (__value__ == (3000583i32)) {
                    _r_3000531 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3000531);
                    _gotoNext = 3000561i32;
                } else if (__value__ == (3000620i32)) {
                    if (_r_3000531 == (_tr_2999896)) {
                        _gotoNext = 3000631i32;
                    } else {
                        _gotoNext = 3000651i32;
                    };
                } else if (__value__ == (3000631i32)) {
                    _i_2999746++;
                    _gotoNext = 3000665i32;
                } else if (__value__ == (3000651i32)) {
                    return false;
                    _i_2999746++;
                    _gotoNext = 3000665i32;
                } else if (__value__ == (3000664i32)) {
                    _i_2999746 = 0i32;
                    _gotoNext = 3000665i32;
                } else if (__value__ == (3000665i32)) {
                    if (_i_2999746 < (_keys_2999733.length)) {
                        _gotoNext = 2999754i32;
                    } else {
                        _gotoNext = 3000738i32;
                    };
                } else if (__value__ == (3000738i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
