package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2947018:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2946780:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2946773 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2946786 = @:invalid_type null;
        var _sr_2946328:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2947571:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2947015:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2946936:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2946773 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2946341:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2946280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2946280 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2946288i32;
                } else if (__value__ == (2946288i32)) {
                    if (((_i_2946280 < (_s.length) : Bool) && (_i_2946280 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2946324i32;
                    } else {
                        _gotoNext = 2946713i32;
                    };
                } else if (__value__ == (2946324i32)) {
                    _sr_2946328 = _s[(_i_2946280 : stdgo.GoInt)];
                    _tr_2946341 = _t[(_i_2946280 : stdgo.GoInt)];
                    if (((_sr_2946328 | _tr_2946341 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2946380i32;
                    } else {
                        _gotoNext = 2946424i32;
                    };
                } else if (__value__ == (2946380i32)) {
                    _gotoNext = 2946738i32;
                } else if (__value__ == (2946424i32)) {
                    if (_tr_2946341 == (_sr_2946328)) {
                        _gotoNext = 2946436i32;
                    } else {
                        _gotoNext = 2946501i32;
                    };
                } else if (__value__ == (2946436i32)) {
                    _i_2946280++;
                    _gotoNext = 2946288i32;
                } else if (__value__ == (2946501i32)) {
                    if ((_tr_2946341 < _sr_2946328 : Bool)) {
                        _gotoNext = 2946512i32;
                    } else {
                        _gotoNext = 2946587i32;
                    };
                } else if (__value__ == (2946512i32)) {
                    {
                        final __tmp__0 = _sr_2946328;
                        final __tmp__1 = _tr_2946341;
                        _tr_2946341 = __tmp__0;
                        _sr_2946328 = __tmp__1;
                    };
                    _gotoNext = 2946587i32;
                } else if (__value__ == (2946587i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2946328 : Bool) && (_sr_2946328 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2946341 == ((_sr_2946328 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2946633i32;
                    } else {
                        _gotoNext = 2946653i32;
                    };
                } else if (__value__ == (2946633i32)) {
                    _i_2946280++;
                    _gotoNext = 2946288i32;
                } else if (__value__ == (2946653i32)) {
                    return false;
                    _i_2946280++;
                    _gotoNext = 2946288i32;
                } else if (__value__ == (2946713i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2946738i32;
                } else if (__value__ == (2946738i32)) {
                    _s = (_s.__slice__(_i_2946280) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2946280) : stdgo.GoString)?.__copy__();
                    _keys_2946773 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2946773 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2946773 = (_keys_2946773.__append__(_key));
                        _values_2946773 = (_values_2946773.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2946773.length)) {
                        _gotoNext = 2947704i32;
                    } else {
                        _gotoNext = 2947778i32;
                    };
                } else if (__value__ == (2946794i32)) {
                    _sr_2946780 = _values_2946773[@:invalid_index_invalid_type _i_2946786];
                    var __blank__ = _keys_2946773[@:invalid_index_invalid_type _i_2946786];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2946863i32;
                    } else {
                        _gotoNext = 2946932i32;
                    };
                } else if (__value__ == (2946863i32)) {
                    return false;
                    _gotoNext = 2946932i32;
                } else if (__value__ == (2946932i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2946970i32;
                    } else {
                        _gotoNext = 2947010i32;
                    };
                } else if (__value__ == (2946970i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2946936 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2947154i32;
                } else if (__value__ == (2947010i32)) {
                    _gotoNext = 2947010i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2947015 = @:tmpset0 __tmp__._0;
                        _size_2947018 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2947015;
                        final __tmp__1 = (_t.__slice__(_size_2947018) : stdgo.GoString)?.__copy__();
                        _tr_2946936 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2947154i32;
                } else if (__value__ == (2947154i32)) {
                    if (_tr_2946936 == (_sr_2946780)) {
                        _gotoNext = 2947166i32;
                    } else {
                        _gotoNext = 2947231i32;
                    };
                } else if (__value__ == (2947166i32)) {
                    _i_2946786++;
                    _gotoNext = 2947705i32;
                } else if (__value__ == (2947231i32)) {
                    if ((_tr_2946936 < _sr_2946780 : Bool)) {
                        _gotoNext = 2947242i32;
                    } else {
                        _gotoNext = 2947296i32;
                    };
                } else if (__value__ == (2947242i32)) {
                    {
                        final __tmp__0 = _sr_2946780;
                        final __tmp__1 = _tr_2946936;
                        _tr_2946936 = __tmp__0;
                        _sr_2946780 = __tmp__1;
                    };
                    _gotoNext = 2947296i32;
                } else if (__value__ == (2947296i32)) {
                    if ((_tr_2946936 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2947318i32;
                    } else {
                        _gotoNext = 2947571i32;
                    };
                } else if (__value__ == (2947318i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2946780 : Bool) && (_sr_2946780 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2946936 == ((_sr_2946780 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2947418i32;
                    } else {
                        _gotoNext = 2947441i32;
                    };
                } else if (__value__ == (2947418i32)) {
                    _i_2946786++;
                    _gotoNext = 2947705i32;
                } else if (__value__ == (2947441i32)) {
                    return false;
                    _gotoNext = 2947571i32;
                } else if (__value__ == (2947571i32)) {
                    _r_2947571 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2946780);
                    var __blank__ = 0i32;
                    _gotoNext = 2947601i32;
                } else if (__value__ == (2947601i32)) {
                    if (((_r_2947571 != _sr_2946780) && (_r_2947571 < _tr_2946936 : Bool) : Bool)) {
                        _gotoNext = 2947623i32;
                    } else {
                        _gotoNext = 2947660i32;
                    };
                } else if (__value__ == (2947623i32)) {
                    _r_2947571 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2947571);
                    _gotoNext = 2947601i32;
                } else if (__value__ == (2947660i32)) {
                    if (_r_2947571 == (_tr_2946936)) {
                        _gotoNext = 2947671i32;
                    } else {
                        _gotoNext = 2947691i32;
                    };
                } else if (__value__ == (2947671i32)) {
                    _i_2946786++;
                    _gotoNext = 2947705i32;
                } else if (__value__ == (2947691i32)) {
                    return false;
                    _i_2946786++;
                    _gotoNext = 2947705i32;
                } else if (__value__ == (2947704i32)) {
                    _i_2946786 = 0i32;
                    _gotoNext = 2947705i32;
                } else if (__value__ == (2947705i32)) {
                    if (_i_2946786 < (_keys_2946773.length)) {
                        _gotoNext = 2946794i32;
                    } else {
                        _gotoNext = 2947778i32;
                    };
                } else if (__value__ == (2947778i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
