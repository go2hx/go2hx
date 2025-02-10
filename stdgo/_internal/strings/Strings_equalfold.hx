package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2818428:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2817198:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2817137:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2817793:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2817637:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2817630 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2817630 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2817643 = @:invalid_type null;
        var _sr_2817185:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2817875:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2817872:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2817137 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2817145i32;
                } else if (__value__ == (2817145i32)) {
                    if (((_i_2817137 < (_s.length) : Bool) && (_i_2817137 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2817181i32;
                    } else {
                        _gotoNext = 2817570i32;
                    };
                } else if (__value__ == (2817181i32)) {
                    _sr_2817185 = _s[(_i_2817137 : stdgo.GoInt)];
                    _tr_2817198 = _t[(_i_2817137 : stdgo.GoInt)];
                    if (((_sr_2817185 | _tr_2817198 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2817237i32;
                    } else {
                        _gotoNext = 2817281i32;
                    };
                } else if (__value__ == (2817237i32)) {
                    _gotoNext = 2817595i32;
                } else if (__value__ == (2817281i32)) {
                    if (_tr_2817198 == (_sr_2817185)) {
                        _gotoNext = 2817293i32;
                    } else {
                        _gotoNext = 2817358i32;
                    };
                } else if (__value__ == (2817293i32)) {
                    _i_2817137++;
                    _gotoNext = 2817145i32;
                } else if (__value__ == (2817358i32)) {
                    if ((_tr_2817198 < _sr_2817185 : Bool)) {
                        _gotoNext = 2817369i32;
                    } else {
                        _gotoNext = 2817444i32;
                    };
                } else if (__value__ == (2817369i32)) {
                    {
                        final __tmp__0 = _sr_2817185;
                        final __tmp__1 = _tr_2817198;
                        _tr_2817198 = __tmp__0;
                        _sr_2817185 = __tmp__1;
                    };
                    _gotoNext = 2817444i32;
                } else if (__value__ == (2817444i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2817185 : Bool) && (_sr_2817185 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2817198 == ((_sr_2817185 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2817490i32;
                    } else {
                        _gotoNext = 2817510i32;
                    };
                } else if (__value__ == (2817490i32)) {
                    _i_2817137++;
                    _gotoNext = 2817145i32;
                } else if (__value__ == (2817510i32)) {
                    return false;
                    _i_2817137++;
                    _gotoNext = 2817145i32;
                } else if (__value__ == (2817570i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2817595i32;
                } else if (__value__ == (2817595i32)) {
                    _s = (_s.__slice__(_i_2817137) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2817137) : stdgo.GoString)?.__copy__();
                    _keys_2817630 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2817630 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2817630 = (_keys_2817630.__append__(_key));
                        _values_2817630 = (_values_2817630.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2817630.length)) {
                        _gotoNext = 2818561i32;
                    } else {
                        _gotoNext = 2818635i32;
                    };
                } else if (__value__ == (2817651i32)) {
                    _sr_2817637 = _values_2817630[@:invalid_index_invalid_type _i_2817643];
                    var __blank__ = _keys_2817630[@:invalid_index_invalid_type _i_2817643];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2817720i32;
                    } else {
                        _gotoNext = 2817789i32;
                    };
                } else if (__value__ == (2817720i32)) {
                    return false;
                    _gotoNext = 2817789i32;
                } else if (__value__ == (2817789i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2817827i32;
                    } else {
                        _gotoNext = 2817867i32;
                    };
                } else if (__value__ == (2817827i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2817793 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2818011i32;
                } else if (__value__ == (2817867i32)) {
                    _gotoNext = 2817867i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2817872 = @:tmpset0 __tmp__._0;
                        _size_2817875 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2817872;
                        final __tmp__1 = (_t.__slice__(_size_2817875) : stdgo.GoString)?.__copy__();
                        _tr_2817793 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2818011i32;
                } else if (__value__ == (2818011i32)) {
                    if (_tr_2817793 == (_sr_2817637)) {
                        _gotoNext = 2818023i32;
                    } else {
                        _gotoNext = 2818088i32;
                    };
                } else if (__value__ == (2818023i32)) {
                    _i_2817643++;
                    _gotoNext = 2818562i32;
                } else if (__value__ == (2818088i32)) {
                    if ((_tr_2817793 < _sr_2817637 : Bool)) {
                        _gotoNext = 2818099i32;
                    } else {
                        _gotoNext = 2818153i32;
                    };
                } else if (__value__ == (2818099i32)) {
                    {
                        final __tmp__0 = _sr_2817637;
                        final __tmp__1 = _tr_2817793;
                        _tr_2817793 = __tmp__0;
                        _sr_2817637 = __tmp__1;
                    };
                    _gotoNext = 2818153i32;
                } else if (__value__ == (2818153i32)) {
                    if ((_tr_2817793 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2818175i32;
                    } else {
                        _gotoNext = 2818428i32;
                    };
                } else if (__value__ == (2818175i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2817637 : Bool) && (_sr_2817637 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2817793 == ((_sr_2817637 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2818275i32;
                    } else {
                        _gotoNext = 2818298i32;
                    };
                } else if (__value__ == (2818275i32)) {
                    _i_2817643++;
                    _gotoNext = 2818562i32;
                } else if (__value__ == (2818298i32)) {
                    return false;
                    _gotoNext = 2818428i32;
                } else if (__value__ == (2818428i32)) {
                    _r_2818428 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2817637);
                    var __blank__ = 0i32;
                    _gotoNext = 2818458i32;
                } else if (__value__ == (2818458i32)) {
                    if (((_r_2818428 != _sr_2817637) && (_r_2818428 < _tr_2817793 : Bool) : Bool)) {
                        _gotoNext = 2818480i32;
                    } else {
                        _gotoNext = 2818517i32;
                    };
                } else if (__value__ == (2818480i32)) {
                    _r_2818428 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2818428);
                    _gotoNext = 2818458i32;
                } else if (__value__ == (2818517i32)) {
                    if (_r_2818428 == (_tr_2817793)) {
                        _gotoNext = 2818528i32;
                    } else {
                        _gotoNext = 2818548i32;
                    };
                } else if (__value__ == (2818528i32)) {
                    _i_2817643++;
                    _gotoNext = 2818562i32;
                } else if (__value__ == (2818548i32)) {
                    return false;
                    _i_2817643++;
                    _gotoNext = 2818562i32;
                } else if (__value__ == (2818561i32)) {
                    _i_2817643 = 0i32;
                    _gotoNext = 2818562i32;
                } else if (__value__ == (2818562i32)) {
                    if (_i_2817643 < (_keys_2817630.length)) {
                        _gotoNext = 2817651i32;
                    } else {
                        _gotoNext = 2818635i32;
                    };
                } else if (__value__ == (2818635i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
