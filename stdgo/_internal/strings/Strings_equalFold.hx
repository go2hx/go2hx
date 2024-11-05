package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2933107 = @:invalid_type null;
        var _sr_2932649:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2933892:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2933257:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2932662:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2932601:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2933339:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2933336:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2933101:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2933094 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2933094 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2932601 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2932609i32;
                } else if (__value__ == (2932609i32)) {
                    if (((_i_2932601 < (_s.length) : Bool) && (_i_2932601 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2932645i32;
                    } else {
                        _gotoNext = 2933034i32;
                    };
                } else if (__value__ == (2932645i32)) {
                    _sr_2932649 = _s[(_i_2932601 : stdgo.GoInt)];
                    _tr_2932662 = _t[(_i_2932601 : stdgo.GoInt)];
                    if (((_sr_2932649 | _tr_2932662 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2932701i32;
                    } else {
                        _gotoNext = 2932745i32;
                    };
                } else if (__value__ == (2932701i32)) {
                    _gotoNext = 2933059i32;
                } else if (__value__ == (2932745i32)) {
                    if (_tr_2932662 == (_sr_2932649)) {
                        _gotoNext = 2932757i32;
                    } else {
                        _gotoNext = 2932822i32;
                    };
                } else if (__value__ == (2932757i32)) {
                    _i_2932601++;
                    _gotoNext = 2932609i32;
                } else if (__value__ == (2932822i32)) {
                    if ((_tr_2932662 < _sr_2932649 : Bool)) {
                        _gotoNext = 2932833i32;
                    } else {
                        _gotoNext = 2932908i32;
                    };
                } else if (__value__ == (2932833i32)) {
                    {
                        final __tmp__0 = _sr_2932649;
                        final __tmp__1 = _tr_2932662;
                        _tr_2932662 = __tmp__0;
                        _sr_2932649 = __tmp__1;
                    };
                    _gotoNext = 2932908i32;
                } else if (__value__ == (2932908i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2932649 : Bool) && (_sr_2932649 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2932662 == ((_sr_2932649 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2932954i32;
                    } else {
                        _gotoNext = 2932974i32;
                    };
                } else if (__value__ == (2932954i32)) {
                    _i_2932601++;
                    _gotoNext = 2932609i32;
                } else if (__value__ == (2932974i32)) {
                    return false;
                    _i_2932601++;
                    _gotoNext = 2932609i32;
                } else if (__value__ == (2933034i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2933059i32;
                } else if (__value__ == (2933059i32)) {
                    _s = (_s.__slice__(_i_2932601) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2932601) : stdgo.GoString)?.__copy__();
                    _keys_2933094 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2933094 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2933094 = (_keys_2933094.__append__(_key));
                        _values_2933094 = (_values_2933094.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2933094.length)) {
                        _gotoNext = 2934025i32;
                    } else {
                        _gotoNext = 2934099i32;
                    };
                } else if (__value__ == (2933115i32)) {
                    _sr_2933101 = _values_2933094[@:invalid_index_invalid_type _i_2933107];
                    var __blank__ = _keys_2933094[@:invalid_index_invalid_type _i_2933107];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2933184i32;
                    } else {
                        _gotoNext = 2933253i32;
                    };
                } else if (__value__ == (2933184i32)) {
                    return false;
                    _gotoNext = 2933253i32;
                } else if (__value__ == (2933253i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2933291i32;
                    } else {
                        _gotoNext = 2933331i32;
                    };
                } else if (__value__ == (2933291i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2933257 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2933475i32;
                } else if (__value__ == (2933331i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2933336 = __tmp__._0;
                        _size_2933339 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2933336;
                        final __tmp__1 = (_t.__slice__(_size_2933339) : stdgo.GoString)?.__copy__();
                        _tr_2933257 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2933475i32;
                } else if (__value__ == (2933475i32)) {
                    if (_tr_2933257 == (_sr_2933101)) {
                        _gotoNext = 2933487i32;
                    } else {
                        _gotoNext = 2933552i32;
                    };
                } else if (__value__ == (2933487i32)) {
                    _i_2933107++;
                    _gotoNext = 2934026i32;
                } else if (__value__ == (2933552i32)) {
                    if ((_tr_2933257 < _sr_2933101 : Bool)) {
                        _gotoNext = 2933563i32;
                    } else {
                        _gotoNext = 2933617i32;
                    };
                } else if (__value__ == (2933563i32)) {
                    {
                        final __tmp__0 = _sr_2933101;
                        final __tmp__1 = _tr_2933257;
                        _tr_2933257 = __tmp__0;
                        _sr_2933101 = __tmp__1;
                    };
                    _gotoNext = 2933617i32;
                } else if (__value__ == (2933617i32)) {
                    if ((_tr_2933257 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2933639i32;
                    } else {
                        _gotoNext = 2933892i32;
                    };
                } else if (__value__ == (2933639i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2933101 : Bool) && (_sr_2933101 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2933257 == ((_sr_2933101 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2933739i32;
                    } else {
                        _gotoNext = 2933762i32;
                    };
                } else if (__value__ == (2933739i32)) {
                    _i_2933107++;
                    _gotoNext = 2934026i32;
                } else if (__value__ == (2933762i32)) {
                    return false;
                    _gotoNext = 2933892i32;
                } else if (__value__ == (2933892i32)) {
                    _r_2933892 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2933101);
                    var __blank__ = 0i32;
                    _gotoNext = 2933922i32;
                } else if (__value__ == (2933922i32)) {
                    if (((_r_2933892 != _sr_2933101) && (_r_2933892 < _tr_2933257 : Bool) : Bool)) {
                        _gotoNext = 2933944i32;
                    } else {
                        _gotoNext = 2933981i32;
                    };
                } else if (__value__ == (2933944i32)) {
                    _r_2933892 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2933892);
                    _gotoNext = 2933922i32;
                } else if (__value__ == (2933981i32)) {
                    if (_r_2933892 == (_tr_2933257)) {
                        _gotoNext = 2933992i32;
                    } else {
                        _gotoNext = 2934012i32;
                    };
                } else if (__value__ == (2933992i32)) {
                    _i_2933107++;
                    _gotoNext = 2934026i32;
                } else if (__value__ == (2934012i32)) {
                    return false;
                    _i_2933107++;
                    _gotoNext = 2934026i32;
                } else if (__value__ == (2934025i32)) {
                    _i_2933107 = 0i32;
                    _gotoNext = 2934026i32;
                } else if (__value__ == (2934026i32)) {
                    if (_i_2933107 < (_keys_2933094.length)) {
                        _gotoNext = 2933115i32;
                    } else {
                        _gotoNext = 2934099i32;
                    };
                } else if (__value__ == (2934099i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
