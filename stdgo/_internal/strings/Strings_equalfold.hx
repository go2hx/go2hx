package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2999240:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2999161:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2999005:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2998998 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2999011 = @:invalid_type null;
        var _i_2998505:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2999796:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2999243:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_2998998 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2998566:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2998553:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2998505 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2998513i32;
                } else if (__value__ == (2998513i32)) {
                    if (((_i_2998505 < (_s.length) : Bool) && (_i_2998505 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2998549i32;
                    } else {
                        _gotoNext = 2998938i32;
                    };
                } else if (__value__ == (2998549i32)) {
                    _sr_2998553 = _s[(_i_2998505 : stdgo.GoInt)];
                    _tr_2998566 = _t[(_i_2998505 : stdgo.GoInt)];
                    if (((_sr_2998553 | _tr_2998566 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2998605i32;
                    } else {
                        _gotoNext = 2998649i32;
                    };
                } else if (__value__ == (2998605i32)) {
                    _gotoNext = 2998963i32;
                } else if (__value__ == (2998649i32)) {
                    if (_tr_2998566 == (_sr_2998553)) {
                        _gotoNext = 2998661i32;
                    } else {
                        _gotoNext = 2998726i32;
                    };
                } else if (__value__ == (2998661i32)) {
                    _i_2998505++;
                    _gotoNext = 2998513i32;
                } else if (__value__ == (2998726i32)) {
                    if ((_tr_2998566 < _sr_2998553 : Bool)) {
                        _gotoNext = 2998737i32;
                    } else {
                        _gotoNext = 2998812i32;
                    };
                } else if (__value__ == (2998737i32)) {
                    {
                        final __tmp__0 = _sr_2998553;
                        final __tmp__1 = _tr_2998566;
                        _tr_2998566 = __tmp__0;
                        _sr_2998553 = __tmp__1;
                    };
                    _gotoNext = 2998812i32;
                } else if (__value__ == (2998812i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2998553 : Bool) && (_sr_2998553 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2998566 == ((_sr_2998553 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2998858i32;
                    } else {
                        _gotoNext = 2998878i32;
                    };
                } else if (__value__ == (2998858i32)) {
                    _i_2998505++;
                    _gotoNext = 2998513i32;
                } else if (__value__ == (2998878i32)) {
                    return false;
                    _i_2998505++;
                    _gotoNext = 2998513i32;
                } else if (__value__ == (2998938i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2998963i32;
                } else if (__value__ == (2998963i32)) {
                    _s = (_s.__slice__(_i_2998505) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2998505) : stdgo.GoString)?.__copy__();
                    _keys_2998998 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2998998 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2998998 = (_keys_2998998.__append__(_key));
                        _values_2998998 = (_values_2998998.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2998998.length)) {
                        _gotoNext = 2999929i32;
                    } else {
                        _gotoNext = 3000003i32;
                    };
                } else if (__value__ == (2999019i32)) {
                    _sr_2999005 = _values_2998998[@:invalid_index_invalid_type _i_2999011];
                    var __blank__ = _keys_2998998[@:invalid_index_invalid_type _i_2999011];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2999088i32;
                    } else {
                        _gotoNext = 2999157i32;
                    };
                } else if (__value__ == (2999088i32)) {
                    return false;
                    _gotoNext = 2999157i32;
                } else if (__value__ == (2999157i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2999195i32;
                    } else {
                        _gotoNext = 2999235i32;
                    };
                } else if (__value__ == (2999195i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2999161 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2999379i32;
                } else if (__value__ == (2999235i32)) {
                    _gotoNext = 2999235i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2999240 = @:tmpset0 __tmp__._0;
                        _size_2999243 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2999240;
                        final __tmp__1 = (_t.__slice__(_size_2999243) : stdgo.GoString)?.__copy__();
                        _tr_2999161 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2999379i32;
                } else if (__value__ == (2999379i32)) {
                    if (_tr_2999161 == (_sr_2999005)) {
                        _gotoNext = 2999391i32;
                    } else {
                        _gotoNext = 2999456i32;
                    };
                } else if (__value__ == (2999391i32)) {
                    _i_2999011++;
                    _gotoNext = 2999930i32;
                } else if (__value__ == (2999456i32)) {
                    if ((_tr_2999161 < _sr_2999005 : Bool)) {
                        _gotoNext = 2999467i32;
                    } else {
                        _gotoNext = 2999521i32;
                    };
                } else if (__value__ == (2999467i32)) {
                    {
                        final __tmp__0 = _sr_2999005;
                        final __tmp__1 = _tr_2999161;
                        _tr_2999161 = __tmp__0;
                        _sr_2999005 = __tmp__1;
                    };
                    _gotoNext = 2999521i32;
                } else if (__value__ == (2999521i32)) {
                    if ((_tr_2999161 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2999543i32;
                    } else {
                        _gotoNext = 2999796i32;
                    };
                } else if (__value__ == (2999543i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2999005 : Bool) && (_sr_2999005 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2999161 == ((_sr_2999005 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2999643i32;
                    } else {
                        _gotoNext = 2999666i32;
                    };
                } else if (__value__ == (2999643i32)) {
                    _i_2999011++;
                    _gotoNext = 2999930i32;
                } else if (__value__ == (2999666i32)) {
                    return false;
                    _gotoNext = 2999796i32;
                } else if (__value__ == (2999796i32)) {
                    _r_2999796 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2999005);
                    var __blank__ = 0i32;
                    _gotoNext = 2999826i32;
                } else if (__value__ == (2999826i32)) {
                    if (((_r_2999796 != _sr_2999005) && (_r_2999796 < _tr_2999161 : Bool) : Bool)) {
                        _gotoNext = 2999848i32;
                    } else {
                        _gotoNext = 2999885i32;
                    };
                } else if (__value__ == (2999848i32)) {
                    _r_2999796 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2999796);
                    _gotoNext = 2999826i32;
                } else if (__value__ == (2999885i32)) {
                    if (_r_2999796 == (_tr_2999161)) {
                        _gotoNext = 2999896i32;
                    } else {
                        _gotoNext = 2999916i32;
                    };
                } else if (__value__ == (2999896i32)) {
                    _i_2999011++;
                    _gotoNext = 2999930i32;
                } else if (__value__ == (2999916i32)) {
                    return false;
                    _i_2999011++;
                    _gotoNext = 2999930i32;
                } else if (__value__ == (2999929i32)) {
                    _i_2999011 = 0i32;
                    _gotoNext = 2999930i32;
                } else if (__value__ == (2999930i32)) {
                    if (_i_2999011 < (_keys_2998998.length)) {
                        _gotoNext = 2999019i32;
                    } else {
                        _gotoNext = 3000003i32;
                    };
                } else if (__value__ == (3000003i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
