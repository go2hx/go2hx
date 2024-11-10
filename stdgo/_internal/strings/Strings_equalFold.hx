package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2796119:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2796071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2796806:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2796571:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2796564 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2796132:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_2796564 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2796577 = @:invalid_type null;
        var _r_2797362:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2796809:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2796727:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2796071 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2796079i32;
                } else if (__value__ == (2796079i32)) {
                    if (((_i_2796071 < (_s.length) : Bool) && (_i_2796071 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2796115i32;
                    } else {
                        _gotoNext = 2796504i32;
                    };
                } else if (__value__ == (2796115i32)) {
                    _sr_2796119 = _s[(_i_2796071 : stdgo.GoInt)];
                    _tr_2796132 = _t[(_i_2796071 : stdgo.GoInt)];
                    if (((_sr_2796119 | _tr_2796132 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2796171i32;
                    } else {
                        _gotoNext = 2796215i32;
                    };
                } else if (__value__ == (2796171i32)) {
                    _gotoNext = 2796529i32;
                } else if (__value__ == (2796215i32)) {
                    if (_tr_2796132 == (_sr_2796119)) {
                        _gotoNext = 2796227i32;
                    } else {
                        _gotoNext = 2796292i32;
                    };
                } else if (__value__ == (2796227i32)) {
                    _i_2796071++;
                    _gotoNext = 2796079i32;
                } else if (__value__ == (2796292i32)) {
                    if ((_tr_2796132 < _sr_2796119 : Bool)) {
                        _gotoNext = 2796303i32;
                    } else {
                        _gotoNext = 2796378i32;
                    };
                } else if (__value__ == (2796303i32)) {
                    {
                        final __tmp__0 = _sr_2796119;
                        final __tmp__1 = _tr_2796132;
                        _tr_2796132 = __tmp__0;
                        _sr_2796119 = __tmp__1;
                    };
                    _gotoNext = 2796378i32;
                } else if (__value__ == (2796378i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2796119 : Bool) && (_sr_2796119 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2796132 == ((_sr_2796119 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2796424i32;
                    } else {
                        _gotoNext = 2796444i32;
                    };
                } else if (__value__ == (2796424i32)) {
                    _i_2796071++;
                    _gotoNext = 2796079i32;
                } else if (__value__ == (2796444i32)) {
                    return false;
                    _i_2796071++;
                    _gotoNext = 2796079i32;
                } else if (__value__ == (2796504i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2796529i32;
                } else if (__value__ == (2796529i32)) {
                    _s = (_s.__slice__(_i_2796071) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2796071) : stdgo.GoString)?.__copy__();
                    _keys_2796564 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2796564 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2796564 = (_keys_2796564.__append__(_key));
                        _values_2796564 = (_values_2796564.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2796564.length)) {
                        _gotoNext = 2797495i32;
                    } else {
                        _gotoNext = 2797569i32;
                    };
                } else if (__value__ == (2796585i32)) {
                    _sr_2796571 = _values_2796564[@:invalid_index_invalid_type _i_2796577];
                    var __blank__ = _keys_2796564[@:invalid_index_invalid_type _i_2796577];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2796654i32;
                    } else {
                        _gotoNext = 2796723i32;
                    };
                } else if (__value__ == (2796654i32)) {
                    return false;
                    _gotoNext = 2796723i32;
                } else if (__value__ == (2796723i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2796761i32;
                    } else {
                        _gotoNext = 2796801i32;
                    };
                } else if (__value__ == (2796761i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2796727 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2796945i32;
                } else if (__value__ == (2796801i32)) {
                    _gotoNext = 2796801i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2796806 = __tmp__._0;
                        _size_2796809 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2796806;
                        final __tmp__1 = (_t.__slice__(_size_2796809) : stdgo.GoString)?.__copy__();
                        _tr_2796727 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2796945i32;
                } else if (__value__ == (2796945i32)) {
                    if (_tr_2796727 == (_sr_2796571)) {
                        _gotoNext = 2796957i32;
                    } else {
                        _gotoNext = 2797022i32;
                    };
                } else if (__value__ == (2796957i32)) {
                    _i_2796577++;
                    _gotoNext = 2797496i32;
                } else if (__value__ == (2797022i32)) {
                    if ((_tr_2796727 < _sr_2796571 : Bool)) {
                        _gotoNext = 2797033i32;
                    } else {
                        _gotoNext = 2797087i32;
                    };
                } else if (__value__ == (2797033i32)) {
                    {
                        final __tmp__0 = _sr_2796571;
                        final __tmp__1 = _tr_2796727;
                        _tr_2796727 = __tmp__0;
                        _sr_2796571 = __tmp__1;
                    };
                    _gotoNext = 2797087i32;
                } else if (__value__ == (2797087i32)) {
                    if ((_tr_2796727 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2797109i32;
                    } else {
                        _gotoNext = 2797362i32;
                    };
                } else if (__value__ == (2797109i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2796571 : Bool) && (_sr_2796571 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2796727 == ((_sr_2796571 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2797209i32;
                    } else {
                        _gotoNext = 2797232i32;
                    };
                } else if (__value__ == (2797209i32)) {
                    _i_2796577++;
                    _gotoNext = 2797496i32;
                } else if (__value__ == (2797232i32)) {
                    return false;
                    _gotoNext = 2797362i32;
                } else if (__value__ == (2797362i32)) {
                    _r_2797362 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2796571);
                    var __blank__ = 0i32;
                    _gotoNext = 2797392i32;
                } else if (__value__ == (2797392i32)) {
                    if (((_r_2797362 != _sr_2796571) && (_r_2797362 < _tr_2796727 : Bool) : Bool)) {
                        _gotoNext = 2797414i32;
                    } else {
                        _gotoNext = 2797451i32;
                    };
                } else if (__value__ == (2797414i32)) {
                    _r_2797362 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2797362);
                    _gotoNext = 2797392i32;
                } else if (__value__ == (2797451i32)) {
                    if (_r_2797362 == (_tr_2796727)) {
                        _gotoNext = 2797462i32;
                    } else {
                        _gotoNext = 2797482i32;
                    };
                } else if (__value__ == (2797462i32)) {
                    _i_2796577++;
                    _gotoNext = 2797496i32;
                } else if (__value__ == (2797482i32)) {
                    return false;
                    _i_2796577++;
                    _gotoNext = 2797496i32;
                } else if (__value__ == (2797495i32)) {
                    _i_2796577 = 0i32;
                    _gotoNext = 2797496i32;
                } else if (__value__ == (2797496i32)) {
                    if (_i_2796577 < (_keys_2796564.length)) {
                        _gotoNext = 2796585i32;
                    } else {
                        _gotoNext = 2797569i32;
                    };
                } else if (__value__ == (2797569i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
