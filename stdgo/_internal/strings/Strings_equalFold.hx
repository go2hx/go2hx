package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2965481:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2965042:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2964981:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2965719:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2965637:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2965474 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2965487 = @:invalid_type null;
        var _sr_2965029:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2966272:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2965716:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2965474 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2964981 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2964989i32;
                } else if (__value__ == (2964989i32)) {
                    if (((_i_2964981 < (_s.length) : Bool) && (_i_2964981 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2965025i32;
                    } else {
                        _gotoNext = 2965414i32;
                    };
                } else if (__value__ == (2965025i32)) {
                    _sr_2965029 = _s[(_i_2964981 : stdgo.GoInt)];
                    _tr_2965042 = _t[(_i_2964981 : stdgo.GoInt)];
                    if (((_sr_2965029 | _tr_2965042 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2965081i32;
                    } else {
                        _gotoNext = 2965125i32;
                    };
                } else if (__value__ == (2965081i32)) {
                    _gotoNext = 2965439i32;
                } else if (__value__ == (2965125i32)) {
                    if (_tr_2965042 == (_sr_2965029)) {
                        _gotoNext = 2965137i32;
                    } else {
                        _gotoNext = 2965202i32;
                    };
                } else if (__value__ == (2965137i32)) {
                    _i_2964981++;
                    _gotoNext = 2964989i32;
                } else if (__value__ == (2965202i32)) {
                    if ((_tr_2965042 < _sr_2965029 : Bool)) {
                        _gotoNext = 2965213i32;
                    } else {
                        _gotoNext = 2965288i32;
                    };
                } else if (__value__ == (2965213i32)) {
                    {
                        final __tmp__0 = _sr_2965029;
                        final __tmp__1 = _tr_2965042;
                        _tr_2965042 = __tmp__0;
                        _sr_2965029 = __tmp__1;
                    };
                    _gotoNext = 2965288i32;
                } else if (__value__ == (2965288i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2965029 : Bool) && (_sr_2965029 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2965042 == ((_sr_2965029 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2965334i32;
                    } else {
                        _gotoNext = 2965354i32;
                    };
                } else if (__value__ == (2965334i32)) {
                    _i_2964981++;
                    _gotoNext = 2964989i32;
                } else if (__value__ == (2965354i32)) {
                    return false;
                    _i_2964981++;
                    _gotoNext = 2964989i32;
                } else if (__value__ == (2965414i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2965439i32;
                } else if (__value__ == (2965439i32)) {
                    _s = (_s.__slice__(_i_2964981) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2964981) : stdgo.GoString)?.__copy__();
                    _keys_2965474 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2965474 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2965474 = (_keys_2965474.__append__(_key));
                        _values_2965474 = (_values_2965474.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2965474.length)) {
                        _gotoNext = 2966405i32;
                    } else {
                        _gotoNext = 2966479i32;
                    };
                } else if (__value__ == (2965495i32)) {
                    _sr_2965481 = _values_2965474[@:invalid_index_invalid_type _i_2965487];
                    var __blank__ = _keys_2965474[@:invalid_index_invalid_type _i_2965487];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2965564i32;
                    } else {
                        _gotoNext = 2965633i32;
                    };
                } else if (__value__ == (2965564i32)) {
                    return false;
                    _gotoNext = 2965633i32;
                } else if (__value__ == (2965633i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2965671i32;
                    } else {
                        _gotoNext = 2965711i32;
                    };
                } else if (__value__ == (2965671i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2965637 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2965855i32;
                } else if (__value__ == (2965711i32)) {
                    _gotoNext = 2965711i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2965716 = @:tmpset0 __tmp__._0;
                        _size_2965719 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2965716;
                        final __tmp__1 = (_t.__slice__(_size_2965719) : stdgo.GoString)?.__copy__();
                        _tr_2965637 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2965855i32;
                } else if (__value__ == (2965855i32)) {
                    if (_tr_2965637 == (_sr_2965481)) {
                        _gotoNext = 2965867i32;
                    } else {
                        _gotoNext = 2965932i32;
                    };
                } else if (__value__ == (2965867i32)) {
                    _i_2965487++;
                    _gotoNext = 2966406i32;
                } else if (__value__ == (2965932i32)) {
                    if ((_tr_2965637 < _sr_2965481 : Bool)) {
                        _gotoNext = 2965943i32;
                    } else {
                        _gotoNext = 2965997i32;
                    };
                } else if (__value__ == (2965943i32)) {
                    {
                        final __tmp__0 = _sr_2965481;
                        final __tmp__1 = _tr_2965637;
                        _tr_2965637 = __tmp__0;
                        _sr_2965481 = __tmp__1;
                    };
                    _gotoNext = 2965997i32;
                } else if (__value__ == (2965997i32)) {
                    if ((_tr_2965637 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2966019i32;
                    } else {
                        _gotoNext = 2966272i32;
                    };
                } else if (__value__ == (2966019i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2965481 : Bool) && (_sr_2965481 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2965637 == ((_sr_2965481 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2966119i32;
                    } else {
                        _gotoNext = 2966142i32;
                    };
                } else if (__value__ == (2966119i32)) {
                    _i_2965487++;
                    _gotoNext = 2966406i32;
                } else if (__value__ == (2966142i32)) {
                    return false;
                    _gotoNext = 2966272i32;
                } else if (__value__ == (2966272i32)) {
                    _r_2966272 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2965481);
                    var __blank__ = 0i32;
                    _gotoNext = 2966302i32;
                } else if (__value__ == (2966302i32)) {
                    if (((_r_2966272 != _sr_2965481) && (_r_2966272 < _tr_2965637 : Bool) : Bool)) {
                        _gotoNext = 2966324i32;
                    } else {
                        _gotoNext = 2966361i32;
                    };
                } else if (__value__ == (2966324i32)) {
                    _r_2966272 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2966272);
                    _gotoNext = 2966302i32;
                } else if (__value__ == (2966361i32)) {
                    if (_r_2966272 == (_tr_2965637)) {
                        _gotoNext = 2966372i32;
                    } else {
                        _gotoNext = 2966392i32;
                    };
                } else if (__value__ == (2966372i32)) {
                    _i_2965487++;
                    _gotoNext = 2966406i32;
                } else if (__value__ == (2966392i32)) {
                    return false;
                    _i_2965487++;
                    _gotoNext = 2966406i32;
                } else if (__value__ == (2966405i32)) {
                    _i_2965487 = 0i32;
                    _gotoNext = 2966406i32;
                } else if (__value__ == (2966406i32)) {
                    if (_i_2965487 < (_keys_2965474.length)) {
                        _gotoNext = 2965495i32;
                    } else {
                        _gotoNext = 2966479i32;
                    };
                } else if (__value__ == (2966479i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
