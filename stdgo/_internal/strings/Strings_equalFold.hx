package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2862304:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2861748:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2861506 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2861519 = @:invalid_type null;
        var _sr_2861061:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2861751:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2861669:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2861513:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2861506 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2861074:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2861013:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2861013 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2861021i32;
                } else if (__value__ == (2861021i32)) {
                    if (((_i_2861013 < (_s.length) : Bool) && (_i_2861013 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2861057i32;
                    } else {
                        _gotoNext = 2861446i32;
                    };
                } else if (__value__ == (2861057i32)) {
                    _sr_2861061 = _s[(_i_2861013 : stdgo.GoInt)];
                    _tr_2861074 = _t[(_i_2861013 : stdgo.GoInt)];
                    if (((_sr_2861061 | _tr_2861074 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2861113i32;
                    } else {
                        _gotoNext = 2861157i32;
                    };
                } else if (__value__ == (2861113i32)) {
                    _gotoNext = 2861471i32;
                } else if (__value__ == (2861157i32)) {
                    if (_tr_2861074 == (_sr_2861061)) {
                        _gotoNext = 2861169i32;
                    } else {
                        _gotoNext = 2861234i32;
                    };
                } else if (__value__ == (2861169i32)) {
                    _i_2861013++;
                    _gotoNext = 2861021i32;
                } else if (__value__ == (2861234i32)) {
                    if ((_tr_2861074 < _sr_2861061 : Bool)) {
                        _gotoNext = 2861245i32;
                    } else {
                        _gotoNext = 2861320i32;
                    };
                } else if (__value__ == (2861245i32)) {
                    {
                        final __tmp__0 = _sr_2861061;
                        final __tmp__1 = _tr_2861074;
                        _tr_2861074 = __tmp__0;
                        _sr_2861061 = __tmp__1;
                    };
                    _gotoNext = 2861320i32;
                } else if (__value__ == (2861320i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2861061 : Bool) && (_sr_2861061 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2861074 == ((_sr_2861061 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2861366i32;
                    } else {
                        _gotoNext = 2861386i32;
                    };
                } else if (__value__ == (2861366i32)) {
                    _i_2861013++;
                    _gotoNext = 2861021i32;
                } else if (__value__ == (2861386i32)) {
                    return false;
                    _i_2861013++;
                    _gotoNext = 2861021i32;
                } else if (__value__ == (2861446i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2861471i32;
                } else if (__value__ == (2861471i32)) {
                    _s = (_s.__slice__(_i_2861013) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2861013) : stdgo.GoString)?.__copy__();
                    _keys_2861506 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2861506 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2861506 = (_keys_2861506.__append__(_key));
                        _values_2861506 = (_values_2861506.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2861506.length)) {
                        _gotoNext = 2862437i32;
                    } else {
                        _gotoNext = 2862511i32;
                    };
                } else if (__value__ == (2861527i32)) {
                    _sr_2861513 = _values_2861506[@:invalid_index_invalid_type _i_2861519];
                    var __blank__ = _keys_2861506[@:invalid_index_invalid_type _i_2861519];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2861596i32;
                    } else {
                        _gotoNext = 2861665i32;
                    };
                } else if (__value__ == (2861596i32)) {
                    return false;
                    _gotoNext = 2861665i32;
                } else if (__value__ == (2861665i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2861703i32;
                    } else {
                        _gotoNext = 2861743i32;
                    };
                } else if (__value__ == (2861703i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2861669 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2861887i32;
                } else if (__value__ == (2861743i32)) {
                    _gotoNext = 2861743i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2861748 = __tmp__._0;
                        _size_2861751 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2861748;
                        final __tmp__1 = (_t.__slice__(_size_2861751) : stdgo.GoString)?.__copy__();
                        _tr_2861669 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2861887i32;
                } else if (__value__ == (2861887i32)) {
                    if (_tr_2861669 == (_sr_2861513)) {
                        _gotoNext = 2861899i32;
                    } else {
                        _gotoNext = 2861964i32;
                    };
                } else if (__value__ == (2861899i32)) {
                    _i_2861519++;
                    _gotoNext = 2862438i32;
                } else if (__value__ == (2861964i32)) {
                    if ((_tr_2861669 < _sr_2861513 : Bool)) {
                        _gotoNext = 2861975i32;
                    } else {
                        _gotoNext = 2862029i32;
                    };
                } else if (__value__ == (2861975i32)) {
                    {
                        final __tmp__0 = _sr_2861513;
                        final __tmp__1 = _tr_2861669;
                        _tr_2861669 = __tmp__0;
                        _sr_2861513 = __tmp__1;
                    };
                    _gotoNext = 2862029i32;
                } else if (__value__ == (2862029i32)) {
                    if ((_tr_2861669 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2862051i32;
                    } else {
                        _gotoNext = 2862304i32;
                    };
                } else if (__value__ == (2862051i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2861513 : Bool) && (_sr_2861513 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2861669 == ((_sr_2861513 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2862151i32;
                    } else {
                        _gotoNext = 2862174i32;
                    };
                } else if (__value__ == (2862151i32)) {
                    _i_2861519++;
                    _gotoNext = 2862438i32;
                } else if (__value__ == (2862174i32)) {
                    return false;
                    _gotoNext = 2862304i32;
                } else if (__value__ == (2862304i32)) {
                    _r_2862304 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2861513);
                    var __blank__ = 0i32;
                    _gotoNext = 2862334i32;
                } else if (__value__ == (2862334i32)) {
                    if (((_r_2862304 != _sr_2861513) && (_r_2862304 < _tr_2861669 : Bool) : Bool)) {
                        _gotoNext = 2862356i32;
                    } else {
                        _gotoNext = 2862393i32;
                    };
                } else if (__value__ == (2862356i32)) {
                    _r_2862304 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2862304);
                    _gotoNext = 2862334i32;
                } else if (__value__ == (2862393i32)) {
                    if (_r_2862304 == (_tr_2861669)) {
                        _gotoNext = 2862404i32;
                    } else {
                        _gotoNext = 2862424i32;
                    };
                } else if (__value__ == (2862404i32)) {
                    _i_2861519++;
                    _gotoNext = 2862438i32;
                } else if (__value__ == (2862424i32)) {
                    return false;
                    _i_2861519++;
                    _gotoNext = 2862438i32;
                } else if (__value__ == (2862437i32)) {
                    _i_2861519 = 0i32;
                    _gotoNext = 2862438i32;
                } else if (__value__ == (2862438i32)) {
                    if (_i_2861519 < (_keys_2861506.length)) {
                        _gotoNext = 2861527i32;
                    } else {
                        _gotoNext = 2862511i32;
                    };
                } else if (__value__ == (2862511i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
