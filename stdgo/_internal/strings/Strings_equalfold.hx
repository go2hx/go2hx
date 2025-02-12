package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2862907:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2862859:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2863594:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2862920:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _keys_2863352 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2863365 = @:invalid_type null;
        var _r_2864150:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2863597:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2863515:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2863359:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2863352 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2862859 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2862867i32;
                } else if (__value__ == (2862867i32)) {
                    if (((_i_2862859 < (_s.length) : Bool) && (_i_2862859 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2862903i32;
                    } else {
                        _gotoNext = 2863292i32;
                    };
                } else if (__value__ == (2862903i32)) {
                    _sr_2862907 = _s[(_i_2862859 : stdgo.GoInt)];
                    _tr_2862920 = _t[(_i_2862859 : stdgo.GoInt)];
                    if (((_sr_2862907 | _tr_2862920 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2862959i32;
                    } else {
                        _gotoNext = 2863003i32;
                    };
                } else if (__value__ == (2862959i32)) {
                    _gotoNext = 2863317i32;
                } else if (__value__ == (2863003i32)) {
                    if (_tr_2862920 == (_sr_2862907)) {
                        _gotoNext = 2863015i32;
                    } else {
                        _gotoNext = 2863080i32;
                    };
                } else if (__value__ == (2863015i32)) {
                    _i_2862859++;
                    _gotoNext = 2862867i32;
                } else if (__value__ == (2863080i32)) {
                    if ((_tr_2862920 < _sr_2862907 : Bool)) {
                        _gotoNext = 2863091i32;
                    } else {
                        _gotoNext = 2863166i32;
                    };
                } else if (__value__ == (2863091i32)) {
                    {
                        final __tmp__0 = _sr_2862907;
                        final __tmp__1 = _tr_2862920;
                        _tr_2862920 = __tmp__0;
                        _sr_2862907 = __tmp__1;
                    };
                    _gotoNext = 2863166i32;
                } else if (__value__ == (2863166i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2862907 : Bool) && (_sr_2862907 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2862920 == ((_sr_2862907 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2863212i32;
                    } else {
                        _gotoNext = 2863232i32;
                    };
                } else if (__value__ == (2863212i32)) {
                    _i_2862859++;
                    _gotoNext = 2862867i32;
                } else if (__value__ == (2863232i32)) {
                    return false;
                    _i_2862859++;
                    _gotoNext = 2862867i32;
                } else if (__value__ == (2863292i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2863317i32;
                } else if (__value__ == (2863317i32)) {
                    _s = (_s.__slice__(_i_2862859) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2862859) : stdgo.GoString)?.__copy__();
                    _keys_2863352 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2863352 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2863352 = (_keys_2863352.__append__(_key));
                        _values_2863352 = (_values_2863352.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2863352.length)) {
                        _gotoNext = 2864283i32;
                    } else {
                        _gotoNext = 2864357i32;
                    };
                } else if (__value__ == (2863373i32)) {
                    _sr_2863359 = _values_2863352[@:invalid_index_invalid_type _i_2863365];
                    var __blank__ = _keys_2863352[@:invalid_index_invalid_type _i_2863365];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2863442i32;
                    } else {
                        _gotoNext = 2863511i32;
                    };
                } else if (__value__ == (2863442i32)) {
                    return false;
                    _gotoNext = 2863511i32;
                } else if (__value__ == (2863511i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2863549i32;
                    } else {
                        _gotoNext = 2863589i32;
                    };
                } else if (__value__ == (2863549i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2863515 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2863733i32;
                } else if (__value__ == (2863589i32)) {
                    _gotoNext = 2863589i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2863594 = @:tmpset0 __tmp__._0;
                        _size_2863597 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2863594;
                        final __tmp__1 = (_t.__slice__(_size_2863597) : stdgo.GoString)?.__copy__();
                        _tr_2863515 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2863733i32;
                } else if (__value__ == (2863733i32)) {
                    if (_tr_2863515 == (_sr_2863359)) {
                        _gotoNext = 2863745i32;
                    } else {
                        _gotoNext = 2863810i32;
                    };
                } else if (__value__ == (2863745i32)) {
                    _i_2863365++;
                    _gotoNext = 2864284i32;
                } else if (__value__ == (2863810i32)) {
                    if ((_tr_2863515 < _sr_2863359 : Bool)) {
                        _gotoNext = 2863821i32;
                    } else {
                        _gotoNext = 2863875i32;
                    };
                } else if (__value__ == (2863821i32)) {
                    {
                        final __tmp__0 = _sr_2863359;
                        final __tmp__1 = _tr_2863515;
                        _tr_2863515 = __tmp__0;
                        _sr_2863359 = __tmp__1;
                    };
                    _gotoNext = 2863875i32;
                } else if (__value__ == (2863875i32)) {
                    if ((_tr_2863515 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2863897i32;
                    } else {
                        _gotoNext = 2864150i32;
                    };
                } else if (__value__ == (2863897i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2863359 : Bool) && (_sr_2863359 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2863515 == ((_sr_2863359 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2863997i32;
                    } else {
                        _gotoNext = 2864020i32;
                    };
                } else if (__value__ == (2863997i32)) {
                    _i_2863365++;
                    _gotoNext = 2864284i32;
                } else if (__value__ == (2864020i32)) {
                    return false;
                    _gotoNext = 2864150i32;
                } else if (__value__ == (2864150i32)) {
                    _r_2864150 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2863359);
                    var __blank__ = 0i32;
                    _gotoNext = 2864180i32;
                } else if (__value__ == (2864180i32)) {
                    if (((_r_2864150 != _sr_2863359) && (_r_2864150 < _tr_2863515 : Bool) : Bool)) {
                        _gotoNext = 2864202i32;
                    } else {
                        _gotoNext = 2864239i32;
                    };
                } else if (__value__ == (2864202i32)) {
                    _r_2864150 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2864150);
                    _gotoNext = 2864180i32;
                } else if (__value__ == (2864239i32)) {
                    if (_r_2864150 == (_tr_2863515)) {
                        _gotoNext = 2864250i32;
                    } else {
                        _gotoNext = 2864270i32;
                    };
                } else if (__value__ == (2864250i32)) {
                    _i_2863365++;
                    _gotoNext = 2864284i32;
                } else if (__value__ == (2864270i32)) {
                    return false;
                    _i_2863365++;
                    _gotoNext = 2864284i32;
                } else if (__value__ == (2864283i32)) {
                    _i_2863365 = 0i32;
                    _gotoNext = 2864284i32;
                } else if (__value__ == (2864284i32)) {
                    if (_i_2863365 < (_keys_2863352.length)) {
                        _gotoNext = 2863373i32;
                    } else {
                        _gotoNext = 2864357i32;
                    };
                } else if (__value__ == (2864357i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
