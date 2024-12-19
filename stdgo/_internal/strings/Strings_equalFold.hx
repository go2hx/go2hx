package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2918732:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2918569 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2918582 = @:invalid_type null;
        var _tr_2918137:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2919367:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2918814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2918576:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2918569 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2918124:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2918076:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2918811:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2918076 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2918084i32;
                } else if (__value__ == (2918084i32)) {
                    if (((_i_2918076 < (_s.length) : Bool) && (_i_2918076 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2918120i32;
                    } else {
                        _gotoNext = 2918509i32;
                    };
                } else if (__value__ == (2918120i32)) {
                    _sr_2918124 = _s[(_i_2918076 : stdgo.GoInt)];
                    _tr_2918137 = _t[(_i_2918076 : stdgo.GoInt)];
                    if (((_sr_2918124 | _tr_2918137 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2918176i32;
                    } else {
                        _gotoNext = 2918220i32;
                    };
                } else if (__value__ == (2918176i32)) {
                    _gotoNext = 2918534i32;
                } else if (__value__ == (2918220i32)) {
                    if (_tr_2918137 == (_sr_2918124)) {
                        _gotoNext = 2918232i32;
                    } else {
                        _gotoNext = 2918297i32;
                    };
                } else if (__value__ == (2918232i32)) {
                    _i_2918076++;
                    _gotoNext = 2918084i32;
                } else if (__value__ == (2918297i32)) {
                    if ((_tr_2918137 < _sr_2918124 : Bool)) {
                        _gotoNext = 2918308i32;
                    } else {
                        _gotoNext = 2918383i32;
                    };
                } else if (__value__ == (2918308i32)) {
                    {
                        final __tmp__0 = _sr_2918124;
                        final __tmp__1 = _tr_2918137;
                        _tr_2918137 = __tmp__0;
                        _sr_2918124 = __tmp__1;
                    };
                    _gotoNext = 2918383i32;
                } else if (__value__ == (2918383i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2918124 : Bool) && (_sr_2918124 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2918137 == ((_sr_2918124 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2918429i32;
                    } else {
                        _gotoNext = 2918449i32;
                    };
                } else if (__value__ == (2918429i32)) {
                    _i_2918076++;
                    _gotoNext = 2918084i32;
                } else if (__value__ == (2918449i32)) {
                    return false;
                    _i_2918076++;
                    _gotoNext = 2918084i32;
                } else if (__value__ == (2918509i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2918534i32;
                } else if (__value__ == (2918534i32)) {
                    _s = (_s.__slice__(_i_2918076) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2918076) : stdgo.GoString)?.__copy__();
                    _keys_2918569 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2918569 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2918569 = (_keys_2918569.__append__(_key));
                        _values_2918569 = (_values_2918569.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2918569.length)) {
                        _gotoNext = 2919500i32;
                    } else {
                        _gotoNext = 2919574i32;
                    };
                } else if (__value__ == (2918590i32)) {
                    _sr_2918576 = _values_2918569[@:invalid_index_invalid_type _i_2918582];
                    var __blank__ = _keys_2918569[@:invalid_index_invalid_type _i_2918582];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2918659i32;
                    } else {
                        _gotoNext = 2918728i32;
                    };
                } else if (__value__ == (2918659i32)) {
                    return false;
                    _gotoNext = 2918728i32;
                } else if (__value__ == (2918728i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2918766i32;
                    } else {
                        _gotoNext = 2918806i32;
                    };
                } else if (__value__ == (2918766i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2918732 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2918950i32;
                } else if (__value__ == (2918806i32)) {
                    _gotoNext = 2918806i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2918811 = __tmp__._0;
                        _size_2918814 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2918811;
                        final __tmp__1 = (_t.__slice__(_size_2918814) : stdgo.GoString)?.__copy__();
                        _tr_2918732 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2918950i32;
                } else if (__value__ == (2918950i32)) {
                    if (_tr_2918732 == (_sr_2918576)) {
                        _gotoNext = 2918962i32;
                    } else {
                        _gotoNext = 2919027i32;
                    };
                } else if (__value__ == (2918962i32)) {
                    _i_2918582++;
                    _gotoNext = 2919501i32;
                } else if (__value__ == (2919027i32)) {
                    if ((_tr_2918732 < _sr_2918576 : Bool)) {
                        _gotoNext = 2919038i32;
                    } else {
                        _gotoNext = 2919092i32;
                    };
                } else if (__value__ == (2919038i32)) {
                    {
                        final __tmp__0 = _sr_2918576;
                        final __tmp__1 = _tr_2918732;
                        _tr_2918732 = __tmp__0;
                        _sr_2918576 = __tmp__1;
                    };
                    _gotoNext = 2919092i32;
                } else if (__value__ == (2919092i32)) {
                    if ((_tr_2918732 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2919114i32;
                    } else {
                        _gotoNext = 2919367i32;
                    };
                } else if (__value__ == (2919114i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2918576 : Bool) && (_sr_2918576 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2918732 == ((_sr_2918576 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2919214i32;
                    } else {
                        _gotoNext = 2919237i32;
                    };
                } else if (__value__ == (2919214i32)) {
                    _i_2918582++;
                    _gotoNext = 2919501i32;
                } else if (__value__ == (2919237i32)) {
                    return false;
                    _gotoNext = 2919367i32;
                } else if (__value__ == (2919367i32)) {
                    _r_2919367 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2918576);
                    var __blank__ = 0i32;
                    _gotoNext = 2919397i32;
                } else if (__value__ == (2919397i32)) {
                    if (((_r_2919367 != _sr_2918576) && (_r_2919367 < _tr_2918732 : Bool) : Bool)) {
                        _gotoNext = 2919419i32;
                    } else {
                        _gotoNext = 2919456i32;
                    };
                } else if (__value__ == (2919419i32)) {
                    _r_2919367 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2919367);
                    _gotoNext = 2919397i32;
                } else if (__value__ == (2919456i32)) {
                    if (_r_2919367 == (_tr_2918732)) {
                        _gotoNext = 2919467i32;
                    } else {
                        _gotoNext = 2919487i32;
                    };
                } else if (__value__ == (2919467i32)) {
                    _i_2918582++;
                    _gotoNext = 2919501i32;
                } else if (__value__ == (2919487i32)) {
                    return false;
                    _i_2918582++;
                    _gotoNext = 2919501i32;
                } else if (__value__ == (2919500i32)) {
                    _i_2918582 = 0i32;
                    _gotoNext = 2919501i32;
                } else if (__value__ == (2919501i32)) {
                    if (_i_2918582 < (_keys_2918569.length)) {
                        _gotoNext = 2918590i32;
                    } else {
                        _gotoNext = 2919574i32;
                    };
                } else if (__value__ == (2919574i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
