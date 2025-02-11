package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3004799:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3004720:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3004570 = @:invalid_type null;
        var _sr_3004112:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3004064:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3005355:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3004802:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3004564:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3004557 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3004557 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_3004125:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3004064 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3004072i32;
                } else if (__value__ == (3004072i32)) {
                    if (((_i_3004064 < (_s.length) : Bool) && (_i_3004064 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3004108i32;
                    } else {
                        _gotoNext = 3004497i32;
                    };
                } else if (__value__ == (3004108i32)) {
                    _sr_3004112 = _s[(_i_3004064 : stdgo.GoInt)];
                    _tr_3004125 = _t[(_i_3004064 : stdgo.GoInt)];
                    if (((_sr_3004112 | _tr_3004125 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3004164i32;
                    } else {
                        _gotoNext = 3004208i32;
                    };
                } else if (__value__ == (3004164i32)) {
                    _gotoNext = 3004522i32;
                } else if (__value__ == (3004208i32)) {
                    if (_tr_3004125 == (_sr_3004112)) {
                        _gotoNext = 3004220i32;
                    } else {
                        _gotoNext = 3004285i32;
                    };
                } else if (__value__ == (3004220i32)) {
                    _i_3004064++;
                    _gotoNext = 3004072i32;
                } else if (__value__ == (3004285i32)) {
                    if ((_tr_3004125 < _sr_3004112 : Bool)) {
                        _gotoNext = 3004296i32;
                    } else {
                        _gotoNext = 3004371i32;
                    };
                } else if (__value__ == (3004296i32)) {
                    {
                        final __tmp__0 = _sr_3004112;
                        final __tmp__1 = _tr_3004125;
                        _tr_3004125 = __tmp__0;
                        _sr_3004112 = __tmp__1;
                    };
                    _gotoNext = 3004371i32;
                } else if (__value__ == (3004371i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3004112 : Bool) && (_sr_3004112 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3004125 == ((_sr_3004112 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3004417i32;
                    } else {
                        _gotoNext = 3004437i32;
                    };
                } else if (__value__ == (3004417i32)) {
                    _i_3004064++;
                    _gotoNext = 3004072i32;
                } else if (__value__ == (3004437i32)) {
                    return false;
                    _i_3004064++;
                    _gotoNext = 3004072i32;
                } else if (__value__ == (3004497i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3004522i32;
                } else if (__value__ == (3004522i32)) {
                    _s = (_s.__slice__(_i_3004064) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3004064) : stdgo.GoString)?.__copy__();
                    _keys_3004557 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3004557 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3004557 = (_keys_3004557.__append__(_key));
                        _values_3004557 = (_values_3004557.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3004557.length)) {
                        _gotoNext = 3005488i32;
                    } else {
                        _gotoNext = 3005562i32;
                    };
                } else if (__value__ == (3004578i32)) {
                    _sr_3004564 = _values_3004557[@:invalid_index_invalid_type _i_3004570];
                    var __blank__ = _keys_3004557[@:invalid_index_invalid_type _i_3004570];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3004647i32;
                    } else {
                        _gotoNext = 3004716i32;
                    };
                } else if (__value__ == (3004647i32)) {
                    return false;
                    _gotoNext = 3004716i32;
                } else if (__value__ == (3004716i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3004754i32;
                    } else {
                        _gotoNext = 3004794i32;
                    };
                } else if (__value__ == (3004754i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3004720 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3004938i32;
                } else if (__value__ == (3004794i32)) {
                    _gotoNext = 3004794i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3004799 = @:tmpset0 __tmp__._0;
                        _size_3004802 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3004799;
                        final __tmp__1 = (_t.__slice__(_size_3004802) : stdgo.GoString)?.__copy__();
                        _tr_3004720 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3004938i32;
                } else if (__value__ == (3004938i32)) {
                    if (_tr_3004720 == (_sr_3004564)) {
                        _gotoNext = 3004950i32;
                    } else {
                        _gotoNext = 3005015i32;
                    };
                } else if (__value__ == (3004950i32)) {
                    _i_3004570++;
                    _gotoNext = 3005489i32;
                } else if (__value__ == (3005015i32)) {
                    if ((_tr_3004720 < _sr_3004564 : Bool)) {
                        _gotoNext = 3005026i32;
                    } else {
                        _gotoNext = 3005080i32;
                    };
                } else if (__value__ == (3005026i32)) {
                    {
                        final __tmp__0 = _sr_3004564;
                        final __tmp__1 = _tr_3004720;
                        _tr_3004720 = __tmp__0;
                        _sr_3004564 = __tmp__1;
                    };
                    _gotoNext = 3005080i32;
                } else if (__value__ == (3005080i32)) {
                    if ((_tr_3004720 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3005102i32;
                    } else {
                        _gotoNext = 3005355i32;
                    };
                } else if (__value__ == (3005102i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3004564 : Bool) && (_sr_3004564 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3004720 == ((_sr_3004564 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3005202i32;
                    } else {
                        _gotoNext = 3005225i32;
                    };
                } else if (__value__ == (3005202i32)) {
                    _i_3004570++;
                    _gotoNext = 3005489i32;
                } else if (__value__ == (3005225i32)) {
                    return false;
                    _gotoNext = 3005355i32;
                } else if (__value__ == (3005355i32)) {
                    _r_3005355 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3004564);
                    var __blank__ = 0i32;
                    _gotoNext = 3005385i32;
                } else if (__value__ == (3005385i32)) {
                    if (((_r_3005355 != _sr_3004564) && (_r_3005355 < _tr_3004720 : Bool) : Bool)) {
                        _gotoNext = 3005407i32;
                    } else {
                        _gotoNext = 3005444i32;
                    };
                } else if (__value__ == (3005407i32)) {
                    _r_3005355 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3005355);
                    _gotoNext = 3005385i32;
                } else if (__value__ == (3005444i32)) {
                    if (_r_3005355 == (_tr_3004720)) {
                        _gotoNext = 3005455i32;
                    } else {
                        _gotoNext = 3005475i32;
                    };
                } else if (__value__ == (3005455i32)) {
                    _i_3004570++;
                    _gotoNext = 3005489i32;
                } else if (__value__ == (3005475i32)) {
                    return false;
                    _i_3004570++;
                    _gotoNext = 3005489i32;
                } else if (__value__ == (3005488i32)) {
                    _i_3004570 = 0i32;
                    _gotoNext = 3005489i32;
                } else if (__value__ == (3005489i32)) {
                    if (_i_3004570 < (_keys_3004557.length)) {
                        _gotoNext = 3004578i32;
                    } else {
                        _gotoNext = 3005562i32;
                    };
                } else if (__value__ == (3005562i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
