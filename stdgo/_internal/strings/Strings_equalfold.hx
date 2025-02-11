package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_3001383:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3002039:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3001883:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3001444:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3001431:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3002674:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3002121:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3002118:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3001876 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3001876 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3001889 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3001383 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3001391i32;
                } else if (__value__ == (3001391i32)) {
                    if (((_i_3001383 < (_s.length) : Bool) && (_i_3001383 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3001427i32;
                    } else {
                        _gotoNext = 3001816i32;
                    };
                } else if (__value__ == (3001427i32)) {
                    _sr_3001431 = _s[(_i_3001383 : stdgo.GoInt)];
                    _tr_3001444 = _t[(_i_3001383 : stdgo.GoInt)];
                    if (((_sr_3001431 | _tr_3001444 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3001483i32;
                    } else {
                        _gotoNext = 3001527i32;
                    };
                } else if (__value__ == (3001483i32)) {
                    _gotoNext = 3001841i32;
                } else if (__value__ == (3001527i32)) {
                    if (_tr_3001444 == (_sr_3001431)) {
                        _gotoNext = 3001539i32;
                    } else {
                        _gotoNext = 3001604i32;
                    };
                } else if (__value__ == (3001539i32)) {
                    _i_3001383++;
                    _gotoNext = 3001391i32;
                } else if (__value__ == (3001604i32)) {
                    if ((_tr_3001444 < _sr_3001431 : Bool)) {
                        _gotoNext = 3001615i32;
                    } else {
                        _gotoNext = 3001690i32;
                    };
                } else if (__value__ == (3001615i32)) {
                    {
                        final __tmp__0 = _sr_3001431;
                        final __tmp__1 = _tr_3001444;
                        _tr_3001444 = __tmp__0;
                        _sr_3001431 = __tmp__1;
                    };
                    _gotoNext = 3001690i32;
                } else if (__value__ == (3001690i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3001431 : Bool) && (_sr_3001431 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3001444 == ((_sr_3001431 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3001736i32;
                    } else {
                        _gotoNext = 3001756i32;
                    };
                } else if (__value__ == (3001736i32)) {
                    _i_3001383++;
                    _gotoNext = 3001391i32;
                } else if (__value__ == (3001756i32)) {
                    return false;
                    _i_3001383++;
                    _gotoNext = 3001391i32;
                } else if (__value__ == (3001816i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3001841i32;
                } else if (__value__ == (3001841i32)) {
                    _s = (_s.__slice__(_i_3001383) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3001383) : stdgo.GoString)?.__copy__();
                    _keys_3001876 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3001876 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3001876 = (_keys_3001876.__append__(_key));
                        _values_3001876 = (_values_3001876.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3001876.length)) {
                        _gotoNext = 3002807i32;
                    } else {
                        _gotoNext = 3002881i32;
                    };
                } else if (__value__ == (3001897i32)) {
                    _sr_3001883 = _values_3001876[@:invalid_index_invalid_type _i_3001889];
                    var __blank__ = _keys_3001876[@:invalid_index_invalid_type _i_3001889];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3001966i32;
                    } else {
                        _gotoNext = 3002035i32;
                    };
                } else if (__value__ == (3001966i32)) {
                    return false;
                    _gotoNext = 3002035i32;
                } else if (__value__ == (3002035i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3002073i32;
                    } else {
                        _gotoNext = 3002113i32;
                    };
                } else if (__value__ == (3002073i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3002039 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3002257i32;
                } else if (__value__ == (3002113i32)) {
                    _gotoNext = 3002113i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3002118 = @:tmpset0 __tmp__._0;
                        _size_3002121 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3002118;
                        final __tmp__1 = (_t.__slice__(_size_3002121) : stdgo.GoString)?.__copy__();
                        _tr_3002039 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3002257i32;
                } else if (__value__ == (3002257i32)) {
                    if (_tr_3002039 == (_sr_3001883)) {
                        _gotoNext = 3002269i32;
                    } else {
                        _gotoNext = 3002334i32;
                    };
                } else if (__value__ == (3002269i32)) {
                    _i_3001889++;
                    _gotoNext = 3002808i32;
                } else if (__value__ == (3002334i32)) {
                    if ((_tr_3002039 < _sr_3001883 : Bool)) {
                        _gotoNext = 3002345i32;
                    } else {
                        _gotoNext = 3002399i32;
                    };
                } else if (__value__ == (3002345i32)) {
                    {
                        final __tmp__0 = _sr_3001883;
                        final __tmp__1 = _tr_3002039;
                        _tr_3002039 = __tmp__0;
                        _sr_3001883 = __tmp__1;
                    };
                    _gotoNext = 3002399i32;
                } else if (__value__ == (3002399i32)) {
                    if ((_tr_3002039 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3002421i32;
                    } else {
                        _gotoNext = 3002674i32;
                    };
                } else if (__value__ == (3002421i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3001883 : Bool) && (_sr_3001883 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3002039 == ((_sr_3001883 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3002521i32;
                    } else {
                        _gotoNext = 3002544i32;
                    };
                } else if (__value__ == (3002521i32)) {
                    _i_3001889++;
                    _gotoNext = 3002808i32;
                } else if (__value__ == (3002544i32)) {
                    return false;
                    _gotoNext = 3002674i32;
                } else if (__value__ == (3002674i32)) {
                    _r_3002674 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3001883);
                    var __blank__ = 0i32;
                    _gotoNext = 3002704i32;
                } else if (__value__ == (3002704i32)) {
                    if (((_r_3002674 != _sr_3001883) && (_r_3002674 < _tr_3002039 : Bool) : Bool)) {
                        _gotoNext = 3002726i32;
                    } else {
                        _gotoNext = 3002763i32;
                    };
                } else if (__value__ == (3002726i32)) {
                    _r_3002674 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3002674);
                    _gotoNext = 3002704i32;
                } else if (__value__ == (3002763i32)) {
                    if (_r_3002674 == (_tr_3002039)) {
                        _gotoNext = 3002774i32;
                    } else {
                        _gotoNext = 3002794i32;
                    };
                } else if (__value__ == (3002774i32)) {
                    _i_3001889++;
                    _gotoNext = 3002808i32;
                } else if (__value__ == (3002794i32)) {
                    return false;
                    _i_3001889++;
                    _gotoNext = 3002808i32;
                } else if (__value__ == (3002807i32)) {
                    _i_3001889 = 0i32;
                    _gotoNext = 3002808i32;
                } else if (__value__ == (3002808i32)) {
                    if (_i_3001889 < (_keys_3001876.length)) {
                        _gotoNext = 3001897i32;
                    } else {
                        _gotoNext = 3002881i32;
                    };
                } else if (__value__ == (3002881i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
