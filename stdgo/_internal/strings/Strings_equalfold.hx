package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_3042391 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_3041959:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3041898:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3043189:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3042636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3042398:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3042391 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3042404 = @:invalid_type null;
        var _sr_3041946:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3042633:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3042554:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3041898 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3041906i32;
                } else if (__value__ == (3041906i32)) {
                    if (((_i_3041898 < (_s.length) : Bool) && (_i_3041898 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3041942i32;
                    } else {
                        _gotoNext = 3042331i32;
                    };
                } else if (__value__ == (3041942i32)) {
                    _sr_3041946 = _s[(_i_3041898 : stdgo.GoInt)];
                    _tr_3041959 = _t[(_i_3041898 : stdgo.GoInt)];
                    if (((_sr_3041946 | _tr_3041959 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3041998i32;
                    } else {
                        _gotoNext = 3042042i32;
                    };
                } else if (__value__ == (3041998i32)) {
                    _gotoNext = 3042356i32;
                } else if (__value__ == (3042042i32)) {
                    if (_tr_3041959 == (_sr_3041946)) {
                        _gotoNext = 3042054i32;
                    } else {
                        _gotoNext = 3042119i32;
                    };
                } else if (__value__ == (3042054i32)) {
                    _i_3041898++;
                    _gotoNext = 3041906i32;
                } else if (__value__ == (3042119i32)) {
                    if ((_tr_3041959 < _sr_3041946 : Bool)) {
                        _gotoNext = 3042130i32;
                    } else {
                        _gotoNext = 3042205i32;
                    };
                } else if (__value__ == (3042130i32)) {
                    {
                        final __tmp__0 = _sr_3041946;
                        final __tmp__1 = _tr_3041959;
                        _tr_3041959 = __tmp__0;
                        _sr_3041946 = __tmp__1;
                    };
                    _gotoNext = 3042205i32;
                } else if (__value__ == (3042205i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3041946 : Bool) && (_sr_3041946 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3041959 == ((_sr_3041946 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3042251i32;
                    } else {
                        _gotoNext = 3042271i32;
                    };
                } else if (__value__ == (3042251i32)) {
                    _i_3041898++;
                    _gotoNext = 3041906i32;
                } else if (__value__ == (3042271i32)) {
                    return false;
                    _i_3041898++;
                    _gotoNext = 3041906i32;
                } else if (__value__ == (3042331i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3042356i32;
                } else if (__value__ == (3042356i32)) {
                    _s = (_s.__slice__(_i_3041898) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3041898) : stdgo.GoString)?.__copy__();
                    _keys_3042391 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3042391 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3042391 = (_keys_3042391.__append__(_key));
                        _values_3042391 = (_values_3042391.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3042391.length)) {
                        _gotoNext = 3043322i32;
                    } else {
                        _gotoNext = 3043396i32;
                    };
                } else if (__value__ == (3042412i32)) {
                    _sr_3042398 = _values_3042391[@:invalid_index_invalid_type _i_3042404];
                    var __blank__ = _keys_3042391[@:invalid_index_invalid_type _i_3042404];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3042481i32;
                    } else {
                        _gotoNext = 3042550i32;
                    };
                } else if (__value__ == (3042481i32)) {
                    return false;
                    _gotoNext = 3042550i32;
                } else if (__value__ == (3042550i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3042588i32;
                    } else {
                        _gotoNext = 3042628i32;
                    };
                } else if (__value__ == (3042588i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3042554 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3042772i32;
                } else if (__value__ == (3042628i32)) {
                    _gotoNext = 3042628i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3042633 = @:tmpset0 __tmp__._0;
                        _size_3042636 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3042633;
                        final __tmp__1 = (_t.__slice__(_size_3042636) : stdgo.GoString)?.__copy__();
                        _tr_3042554 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3042772i32;
                } else if (__value__ == (3042772i32)) {
                    if (_tr_3042554 == (_sr_3042398)) {
                        _gotoNext = 3042784i32;
                    } else {
                        _gotoNext = 3042849i32;
                    };
                } else if (__value__ == (3042784i32)) {
                    _i_3042404++;
                    _gotoNext = 3043323i32;
                } else if (__value__ == (3042849i32)) {
                    if ((_tr_3042554 < _sr_3042398 : Bool)) {
                        _gotoNext = 3042860i32;
                    } else {
                        _gotoNext = 3042914i32;
                    };
                } else if (__value__ == (3042860i32)) {
                    {
                        final __tmp__0 = _sr_3042398;
                        final __tmp__1 = _tr_3042554;
                        _tr_3042554 = __tmp__0;
                        _sr_3042398 = __tmp__1;
                    };
                    _gotoNext = 3042914i32;
                } else if (__value__ == (3042914i32)) {
                    if ((_tr_3042554 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3042936i32;
                    } else {
                        _gotoNext = 3043189i32;
                    };
                } else if (__value__ == (3042936i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3042398 : Bool) && (_sr_3042398 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3042554 == ((_sr_3042398 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3043036i32;
                    } else {
                        _gotoNext = 3043059i32;
                    };
                } else if (__value__ == (3043036i32)) {
                    _i_3042404++;
                    _gotoNext = 3043323i32;
                } else if (__value__ == (3043059i32)) {
                    return false;
                    _gotoNext = 3043189i32;
                } else if (__value__ == (3043189i32)) {
                    _r_3043189 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3042398);
                    var __blank__ = 0i32;
                    _gotoNext = 3043219i32;
                } else if (__value__ == (3043219i32)) {
                    if (((_r_3043189 != _sr_3042398) && (_r_3043189 < _tr_3042554 : Bool) : Bool)) {
                        _gotoNext = 3043241i32;
                    } else {
                        _gotoNext = 3043278i32;
                    };
                } else if (__value__ == (3043241i32)) {
                    _r_3043189 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3043189);
                    _gotoNext = 3043219i32;
                } else if (__value__ == (3043278i32)) {
                    if (_r_3043189 == (_tr_3042554)) {
                        _gotoNext = 3043289i32;
                    } else {
                        _gotoNext = 3043309i32;
                    };
                } else if (__value__ == (3043289i32)) {
                    _i_3042404++;
                    _gotoNext = 3043323i32;
                } else if (__value__ == (3043309i32)) {
                    return false;
                    _i_3042404++;
                    _gotoNext = 3043323i32;
                } else if (__value__ == (3043322i32)) {
                    _i_3042404 = 0i32;
                    _gotoNext = 3043323i32;
                } else if (__value__ == (3043323i32)) {
                    if (_i_3042404 < (_keys_3042391.length)) {
                        _gotoNext = 3042412i32;
                    } else {
                        _gotoNext = 3043396i32;
                    };
                } else if (__value__ == (3043396i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
