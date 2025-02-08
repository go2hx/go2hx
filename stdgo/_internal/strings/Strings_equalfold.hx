package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2895847:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2895049 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2895049 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2895062 = @:invalid_type null;
        var _tr_2894617:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2894604:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2894556:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2895294:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2895291:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2895212:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2895056:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2894556 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2894564i32;
                } else if (__value__ == (2894564i32)) {
                    if (((_i_2894556 < (_s.length) : Bool) && (_i_2894556 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2894600i32;
                    } else {
                        _gotoNext = 2894989i32;
                    };
                } else if (__value__ == (2894600i32)) {
                    _sr_2894604 = _s[(_i_2894556 : stdgo.GoInt)];
                    _tr_2894617 = _t[(_i_2894556 : stdgo.GoInt)];
                    if (((_sr_2894604 | _tr_2894617 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2894656i32;
                    } else {
                        _gotoNext = 2894700i32;
                    };
                } else if (__value__ == (2894656i32)) {
                    _gotoNext = 2895014i32;
                } else if (__value__ == (2894700i32)) {
                    if (_tr_2894617 == (_sr_2894604)) {
                        _gotoNext = 2894712i32;
                    } else {
                        _gotoNext = 2894777i32;
                    };
                } else if (__value__ == (2894712i32)) {
                    _i_2894556++;
                    _gotoNext = 2894564i32;
                } else if (__value__ == (2894777i32)) {
                    if ((_tr_2894617 < _sr_2894604 : Bool)) {
                        _gotoNext = 2894788i32;
                    } else {
                        _gotoNext = 2894863i32;
                    };
                } else if (__value__ == (2894788i32)) {
                    {
                        final __tmp__0 = _sr_2894604;
                        final __tmp__1 = _tr_2894617;
                        _tr_2894617 = __tmp__0;
                        _sr_2894604 = __tmp__1;
                    };
                    _gotoNext = 2894863i32;
                } else if (__value__ == (2894863i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2894604 : Bool) && (_sr_2894604 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2894617 == ((_sr_2894604 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2894909i32;
                    } else {
                        _gotoNext = 2894929i32;
                    };
                } else if (__value__ == (2894909i32)) {
                    _i_2894556++;
                    _gotoNext = 2894564i32;
                } else if (__value__ == (2894929i32)) {
                    return false;
                    _i_2894556++;
                    _gotoNext = 2894564i32;
                } else if (__value__ == (2894989i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2895014i32;
                } else if (__value__ == (2895014i32)) {
                    _s = (_s.__slice__(_i_2894556) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2894556) : stdgo.GoString)?.__copy__();
                    _keys_2895049 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2895049 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2895049 = (_keys_2895049.__append__(_key));
                        _values_2895049 = (_values_2895049.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2895049.length)) {
                        _gotoNext = 2895980i32;
                    } else {
                        _gotoNext = 2896054i32;
                    };
                } else if (__value__ == (2895070i32)) {
                    _sr_2895056 = _values_2895049[@:invalid_index_invalid_type _i_2895062];
                    var __blank__ = _keys_2895049[@:invalid_index_invalid_type _i_2895062];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2895139i32;
                    } else {
                        _gotoNext = 2895208i32;
                    };
                } else if (__value__ == (2895139i32)) {
                    return false;
                    _gotoNext = 2895208i32;
                } else if (__value__ == (2895208i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2895246i32;
                    } else {
                        _gotoNext = 2895286i32;
                    };
                } else if (__value__ == (2895246i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2895212 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2895430i32;
                } else if (__value__ == (2895286i32)) {
                    _gotoNext = 2895286i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2895291 = @:tmpset0 __tmp__._0;
                        _size_2895294 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2895291;
                        final __tmp__1 = (_t.__slice__(_size_2895294) : stdgo.GoString)?.__copy__();
                        _tr_2895212 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2895430i32;
                } else if (__value__ == (2895430i32)) {
                    if (_tr_2895212 == (_sr_2895056)) {
                        _gotoNext = 2895442i32;
                    } else {
                        _gotoNext = 2895507i32;
                    };
                } else if (__value__ == (2895442i32)) {
                    _i_2895062++;
                    _gotoNext = 2895981i32;
                } else if (__value__ == (2895507i32)) {
                    if ((_tr_2895212 < _sr_2895056 : Bool)) {
                        _gotoNext = 2895518i32;
                    } else {
                        _gotoNext = 2895572i32;
                    };
                } else if (__value__ == (2895518i32)) {
                    {
                        final __tmp__0 = _sr_2895056;
                        final __tmp__1 = _tr_2895212;
                        _tr_2895212 = __tmp__0;
                        _sr_2895056 = __tmp__1;
                    };
                    _gotoNext = 2895572i32;
                } else if (__value__ == (2895572i32)) {
                    if ((_tr_2895212 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2895594i32;
                    } else {
                        _gotoNext = 2895847i32;
                    };
                } else if (__value__ == (2895594i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2895056 : Bool) && (_sr_2895056 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2895212 == ((_sr_2895056 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2895694i32;
                    } else {
                        _gotoNext = 2895717i32;
                    };
                } else if (__value__ == (2895694i32)) {
                    _i_2895062++;
                    _gotoNext = 2895981i32;
                } else if (__value__ == (2895717i32)) {
                    return false;
                    _gotoNext = 2895847i32;
                } else if (__value__ == (2895847i32)) {
                    _r_2895847 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2895056);
                    var __blank__ = 0i32;
                    _gotoNext = 2895877i32;
                } else if (__value__ == (2895877i32)) {
                    if (((_r_2895847 != _sr_2895056) && (_r_2895847 < _tr_2895212 : Bool) : Bool)) {
                        _gotoNext = 2895899i32;
                    } else {
                        _gotoNext = 2895936i32;
                    };
                } else if (__value__ == (2895899i32)) {
                    _r_2895847 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2895847);
                    _gotoNext = 2895877i32;
                } else if (__value__ == (2895936i32)) {
                    if (_r_2895847 == (_tr_2895212)) {
                        _gotoNext = 2895947i32;
                    } else {
                        _gotoNext = 2895967i32;
                    };
                } else if (__value__ == (2895947i32)) {
                    _i_2895062++;
                    _gotoNext = 2895981i32;
                } else if (__value__ == (2895967i32)) {
                    return false;
                    _i_2895062++;
                    _gotoNext = 2895981i32;
                } else if (__value__ == (2895980i32)) {
                    _i_2895062 = 0i32;
                    _gotoNext = 2895981i32;
                } else if (__value__ == (2895981i32)) {
                    if (_i_2895062 < (_keys_2895049.length)) {
                        _gotoNext = 2895070i32;
                    } else {
                        _gotoNext = 2896054i32;
                    };
                } else if (__value__ == (2896054i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
