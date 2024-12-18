package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2853441:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2853434 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2853434 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _r_2853676:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2853597:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2853002:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2852989:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2852941:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2854232:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2853679:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2853447 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2852941 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2852949i32;
                } else if (__value__ == (2852949i32)) {
                    if (((_i_2852941 < (_s.length) : Bool) && (_i_2852941 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2852985i32;
                    } else {
                        _gotoNext = 2853374i32;
                    };
                } else if (__value__ == (2852985i32)) {
                    _sr_2852989 = _s[(_i_2852941 : stdgo.GoInt)];
                    _tr_2853002 = _t[(_i_2852941 : stdgo.GoInt)];
                    if (((_sr_2852989 | _tr_2853002 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2853041i32;
                    } else {
                        _gotoNext = 2853085i32;
                    };
                } else if (__value__ == (2853041i32)) {
                    _gotoNext = 2853399i32;
                } else if (__value__ == (2853085i32)) {
                    if (_tr_2853002 == (_sr_2852989)) {
                        _gotoNext = 2853097i32;
                    } else {
                        _gotoNext = 2853162i32;
                    };
                } else if (__value__ == (2853097i32)) {
                    _i_2852941++;
                    _gotoNext = 2852949i32;
                } else if (__value__ == (2853162i32)) {
                    if ((_tr_2853002 < _sr_2852989 : Bool)) {
                        _gotoNext = 2853173i32;
                    } else {
                        _gotoNext = 2853248i32;
                    };
                } else if (__value__ == (2853173i32)) {
                    {
                        final __tmp__0 = _sr_2852989;
                        final __tmp__1 = _tr_2853002;
                        _tr_2853002 = __tmp__0;
                        _sr_2852989 = __tmp__1;
                    };
                    _gotoNext = 2853248i32;
                } else if (__value__ == (2853248i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2852989 : Bool) && (_sr_2852989 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2853002 == ((_sr_2852989 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2853294i32;
                    } else {
                        _gotoNext = 2853314i32;
                    };
                } else if (__value__ == (2853294i32)) {
                    _i_2852941++;
                    _gotoNext = 2852949i32;
                } else if (__value__ == (2853314i32)) {
                    return false;
                    _i_2852941++;
                    _gotoNext = 2852949i32;
                } else if (__value__ == (2853374i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2853399i32;
                } else if (__value__ == (2853399i32)) {
                    _s = (_s.__slice__(_i_2852941) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2852941) : stdgo.GoString)?.__copy__();
                    _keys_2853434 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2853434 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2853434 = (_keys_2853434.__append__(_key));
                        _values_2853434 = (_values_2853434.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2853434.length)) {
                        _gotoNext = 2854365i32;
                    } else {
                        _gotoNext = 2854439i32;
                    };
                } else if (__value__ == (2853455i32)) {
                    _sr_2853441 = _values_2853434[@:invalid_index_invalid_type _i_2853447];
                    var __blank__ = _keys_2853434[@:invalid_index_invalid_type _i_2853447];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2853524i32;
                    } else {
                        _gotoNext = 2853593i32;
                    };
                } else if (__value__ == (2853524i32)) {
                    return false;
                    _gotoNext = 2853593i32;
                } else if (__value__ == (2853593i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2853631i32;
                    } else {
                        _gotoNext = 2853671i32;
                    };
                } else if (__value__ == (2853631i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2853597 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2853815i32;
                } else if (__value__ == (2853671i32)) {
                    _gotoNext = 2853671i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2853676 = __tmp__._0;
                        _size_2853679 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2853676;
                        final __tmp__1 = (_t.__slice__(_size_2853679) : stdgo.GoString)?.__copy__();
                        _tr_2853597 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2853815i32;
                } else if (__value__ == (2853815i32)) {
                    if (_tr_2853597 == (_sr_2853441)) {
                        _gotoNext = 2853827i32;
                    } else {
                        _gotoNext = 2853892i32;
                    };
                } else if (__value__ == (2853827i32)) {
                    _i_2853447++;
                    _gotoNext = 2854366i32;
                } else if (__value__ == (2853892i32)) {
                    if ((_tr_2853597 < _sr_2853441 : Bool)) {
                        _gotoNext = 2853903i32;
                    } else {
                        _gotoNext = 2853957i32;
                    };
                } else if (__value__ == (2853903i32)) {
                    {
                        final __tmp__0 = _sr_2853441;
                        final __tmp__1 = _tr_2853597;
                        _tr_2853597 = __tmp__0;
                        _sr_2853441 = __tmp__1;
                    };
                    _gotoNext = 2853957i32;
                } else if (__value__ == (2853957i32)) {
                    if ((_tr_2853597 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2853979i32;
                    } else {
                        _gotoNext = 2854232i32;
                    };
                } else if (__value__ == (2853979i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2853441 : Bool) && (_sr_2853441 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2853597 == ((_sr_2853441 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2854079i32;
                    } else {
                        _gotoNext = 2854102i32;
                    };
                } else if (__value__ == (2854079i32)) {
                    _i_2853447++;
                    _gotoNext = 2854366i32;
                } else if (__value__ == (2854102i32)) {
                    return false;
                    _gotoNext = 2854232i32;
                } else if (__value__ == (2854232i32)) {
                    _r_2854232 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2853441);
                    var __blank__ = 0i32;
                    _gotoNext = 2854262i32;
                } else if (__value__ == (2854262i32)) {
                    if (((_r_2854232 != _sr_2853441) && (_r_2854232 < _tr_2853597 : Bool) : Bool)) {
                        _gotoNext = 2854284i32;
                    } else {
                        _gotoNext = 2854321i32;
                    };
                } else if (__value__ == (2854284i32)) {
                    _r_2854232 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2854232);
                    _gotoNext = 2854262i32;
                } else if (__value__ == (2854321i32)) {
                    if (_r_2854232 == (_tr_2853597)) {
                        _gotoNext = 2854332i32;
                    } else {
                        _gotoNext = 2854352i32;
                    };
                } else if (__value__ == (2854332i32)) {
                    _i_2853447++;
                    _gotoNext = 2854366i32;
                } else if (__value__ == (2854352i32)) {
                    return false;
                    _i_2853447++;
                    _gotoNext = 2854366i32;
                } else if (__value__ == (2854365i32)) {
                    _i_2853447 = 0i32;
                    _gotoNext = 2854366i32;
                } else if (__value__ == (2854366i32)) {
                    if (_i_2853447 < (_keys_2853434.length)) {
                        _gotoNext = 2853455i32;
                    } else {
                        _gotoNext = 2854439i32;
                    };
                } else if (__value__ == (2854439i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
