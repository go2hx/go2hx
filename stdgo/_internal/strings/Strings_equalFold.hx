package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2775380 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2774935:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2774887:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2775622:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2775380 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2775393 = @:invalid_type null;
        var _tr_2774948:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2776178:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2775625:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2775543:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2775387:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2774887 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2774895i32;
                } else if (__value__ == (2774895i32)) {
                    if (((_i_2774887 < (_s.length) : Bool) && (_i_2774887 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2774931i32;
                    } else {
                        _gotoNext = 2775320i32;
                    };
                } else if (__value__ == (2774931i32)) {
                    _sr_2774935 = _s[(_i_2774887 : stdgo.GoInt)];
                    _tr_2774948 = _t[(_i_2774887 : stdgo.GoInt)];
                    if (((_sr_2774935 | _tr_2774948 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2774987i32;
                    } else {
                        _gotoNext = 2775031i32;
                    };
                } else if (__value__ == (2774987i32)) {
                    _gotoNext = 2775345i32;
                } else if (__value__ == (2775031i32)) {
                    if (_tr_2774948 == (_sr_2774935)) {
                        _gotoNext = 2775043i32;
                    } else {
                        _gotoNext = 2775108i32;
                    };
                } else if (__value__ == (2775043i32)) {
                    _i_2774887++;
                    _gotoNext = 2774895i32;
                } else if (__value__ == (2775108i32)) {
                    if ((_tr_2774948 < _sr_2774935 : Bool)) {
                        _gotoNext = 2775119i32;
                    } else {
                        _gotoNext = 2775194i32;
                    };
                } else if (__value__ == (2775119i32)) {
                    {
                        final __tmp__0 = _sr_2774935;
                        final __tmp__1 = _tr_2774948;
                        _tr_2774948 = __tmp__0;
                        _sr_2774935 = __tmp__1;
                    };
                    _gotoNext = 2775194i32;
                } else if (__value__ == (2775194i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2774935 : Bool) && (_sr_2774935 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2774948 == ((_sr_2774935 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2775240i32;
                    } else {
                        _gotoNext = 2775260i32;
                    };
                } else if (__value__ == (2775240i32)) {
                    _i_2774887++;
                    _gotoNext = 2774895i32;
                } else if (__value__ == (2775260i32)) {
                    return false;
                    _i_2774887++;
                    _gotoNext = 2774895i32;
                } else if (__value__ == (2775320i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2775345i32;
                } else if (__value__ == (2775345i32)) {
                    _s = (_s.__slice__(_i_2774887) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2774887) : stdgo.GoString)?.__copy__();
                    _keys_2775380 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2775380 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2775380 = (_keys_2775380.__append__(_key));
                        _values_2775380 = (_values_2775380.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2775380.length)) {
                        _gotoNext = 2776311i32;
                    } else {
                        _gotoNext = 2776385i32;
                    };
                } else if (__value__ == (2775401i32)) {
                    _sr_2775387 = _values_2775380[@:invalid_index_invalid_type _i_2775393];
                    var __blank__ = _keys_2775380[@:invalid_index_invalid_type _i_2775393];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2775470i32;
                    } else {
                        _gotoNext = 2775539i32;
                    };
                } else if (__value__ == (2775470i32)) {
                    return false;
                    _gotoNext = 2775539i32;
                } else if (__value__ == (2775539i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2775577i32;
                    } else {
                        _gotoNext = 2775617i32;
                    };
                } else if (__value__ == (2775577i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2775543 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2775761i32;
                } else if (__value__ == (2775617i32)) {
                    _gotoNext = 2775617i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2775622 = __tmp__._0;
                        _size_2775625 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2775622;
                        final __tmp__1 = (_t.__slice__(_size_2775625) : stdgo.GoString)?.__copy__();
                        _tr_2775543 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2775761i32;
                } else if (__value__ == (2775761i32)) {
                    if (_tr_2775543 == (_sr_2775387)) {
                        _gotoNext = 2775773i32;
                    } else {
                        _gotoNext = 2775838i32;
                    };
                } else if (__value__ == (2775773i32)) {
                    _i_2775393++;
                    _gotoNext = 2776312i32;
                } else if (__value__ == (2775838i32)) {
                    if ((_tr_2775543 < _sr_2775387 : Bool)) {
                        _gotoNext = 2775849i32;
                    } else {
                        _gotoNext = 2775903i32;
                    };
                } else if (__value__ == (2775849i32)) {
                    {
                        final __tmp__0 = _sr_2775387;
                        final __tmp__1 = _tr_2775543;
                        _tr_2775543 = __tmp__0;
                        _sr_2775387 = __tmp__1;
                    };
                    _gotoNext = 2775903i32;
                } else if (__value__ == (2775903i32)) {
                    if ((_tr_2775543 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2775925i32;
                    } else {
                        _gotoNext = 2776178i32;
                    };
                } else if (__value__ == (2775925i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2775387 : Bool) && (_sr_2775387 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2775543 == ((_sr_2775387 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2776025i32;
                    } else {
                        _gotoNext = 2776048i32;
                    };
                } else if (__value__ == (2776025i32)) {
                    _i_2775393++;
                    _gotoNext = 2776312i32;
                } else if (__value__ == (2776048i32)) {
                    return false;
                    _gotoNext = 2776178i32;
                } else if (__value__ == (2776178i32)) {
                    _r_2776178 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2775387);
                    var __blank__ = 0i32;
                    _gotoNext = 2776208i32;
                } else if (__value__ == (2776208i32)) {
                    if (((_r_2776178 != _sr_2775387) && (_r_2776178 < _tr_2775543 : Bool) : Bool)) {
                        _gotoNext = 2776230i32;
                    } else {
                        _gotoNext = 2776267i32;
                    };
                } else if (__value__ == (2776230i32)) {
                    _r_2776178 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2776178);
                    _gotoNext = 2776208i32;
                } else if (__value__ == (2776267i32)) {
                    if (_r_2776178 == (_tr_2775543)) {
                        _gotoNext = 2776278i32;
                    } else {
                        _gotoNext = 2776298i32;
                    };
                } else if (__value__ == (2776278i32)) {
                    _i_2775393++;
                    _gotoNext = 2776312i32;
                } else if (__value__ == (2776298i32)) {
                    return false;
                    _i_2775393++;
                    _gotoNext = 2776312i32;
                } else if (__value__ == (2776311i32)) {
                    _i_2775393 = 0i32;
                    _gotoNext = 2776312i32;
                } else if (__value__ == (2776312i32)) {
                    if (_i_2775393 < (_keys_2775380.length)) {
                        _gotoNext = 2775401i32;
                    } else {
                        _gotoNext = 2776385i32;
                    };
                } else if (__value__ == (2776385i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
