package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2999640:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3000883:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3000248:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3000085 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_3000098 = @:invalid_type null;
        var _i_2999592:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3000330:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3000327:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3000092:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3000085 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2999653:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2999592 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2999600i32;
                } else if (__value__ == (2999600i32)) {
                    if (((_i_2999592 < (_s.length) : Bool) && (_i_2999592 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2999636i32;
                    } else {
                        _gotoNext = 3000025i32;
                    };
                } else if (__value__ == (2999636i32)) {
                    _sr_2999640 = _s[(_i_2999592 : stdgo.GoInt)];
                    _tr_2999653 = _t[(_i_2999592 : stdgo.GoInt)];
                    if (((_sr_2999640 | _tr_2999653 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2999692i32;
                    } else {
                        _gotoNext = 2999736i32;
                    };
                } else if (__value__ == (2999692i32)) {
                    _gotoNext = 3000050i32;
                } else if (__value__ == (2999736i32)) {
                    if (_tr_2999653 == (_sr_2999640)) {
                        _gotoNext = 2999748i32;
                    } else {
                        _gotoNext = 2999813i32;
                    };
                } else if (__value__ == (2999748i32)) {
                    _i_2999592++;
                    _gotoNext = 2999600i32;
                } else if (__value__ == (2999813i32)) {
                    if ((_tr_2999653 < _sr_2999640 : Bool)) {
                        _gotoNext = 2999824i32;
                    } else {
                        _gotoNext = 2999899i32;
                    };
                } else if (__value__ == (2999824i32)) {
                    {
                        final __tmp__0 = _sr_2999640;
                        final __tmp__1 = _tr_2999653;
                        _tr_2999653 = __tmp__0;
                        _sr_2999640 = __tmp__1;
                    };
                    _gotoNext = 2999899i32;
                } else if (__value__ == (2999899i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2999640 : Bool) && (_sr_2999640 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2999653 == ((_sr_2999640 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2999945i32;
                    } else {
                        _gotoNext = 2999965i32;
                    };
                } else if (__value__ == (2999945i32)) {
                    _i_2999592++;
                    _gotoNext = 2999600i32;
                } else if (__value__ == (2999965i32)) {
                    return false;
                    _i_2999592++;
                    _gotoNext = 2999600i32;
                } else if (__value__ == (3000025i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3000050i32;
                } else if (__value__ == (3000050i32)) {
                    _s = (_s.__slice__(_i_2999592) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2999592) : stdgo.GoString)?.__copy__();
                    _keys_3000085 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3000085 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3000085 = (_keys_3000085.__append__(_key));
                        _values_3000085 = (_values_3000085.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3000085.length)) {
                        _gotoNext = 3001016i32;
                    } else {
                        _gotoNext = 3001090i32;
                    };
                } else if (__value__ == (3000106i32)) {
                    _sr_3000092 = _values_3000085[@:invalid_index_invalid_type _i_3000098];
                    var __blank__ = _keys_3000085[@:invalid_index_invalid_type _i_3000098];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3000175i32;
                    } else {
                        _gotoNext = 3000244i32;
                    };
                } else if (__value__ == (3000175i32)) {
                    return false;
                    _gotoNext = 3000244i32;
                } else if (__value__ == (3000244i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3000282i32;
                    } else {
                        _gotoNext = 3000322i32;
                    };
                } else if (__value__ == (3000282i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3000248 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3000466i32;
                } else if (__value__ == (3000322i32)) {
                    _gotoNext = 3000322i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3000327 = @:tmpset0 __tmp__._0;
                        _size_3000330 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3000327;
                        final __tmp__1 = (_t.__slice__(_size_3000330) : stdgo.GoString)?.__copy__();
                        _tr_3000248 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3000466i32;
                } else if (__value__ == (3000466i32)) {
                    if (_tr_3000248 == (_sr_3000092)) {
                        _gotoNext = 3000478i32;
                    } else {
                        _gotoNext = 3000543i32;
                    };
                } else if (__value__ == (3000478i32)) {
                    _i_3000098++;
                    _gotoNext = 3001017i32;
                } else if (__value__ == (3000543i32)) {
                    if ((_tr_3000248 < _sr_3000092 : Bool)) {
                        _gotoNext = 3000554i32;
                    } else {
                        _gotoNext = 3000608i32;
                    };
                } else if (__value__ == (3000554i32)) {
                    {
                        final __tmp__0 = _sr_3000092;
                        final __tmp__1 = _tr_3000248;
                        _tr_3000248 = __tmp__0;
                        _sr_3000092 = __tmp__1;
                    };
                    _gotoNext = 3000608i32;
                } else if (__value__ == (3000608i32)) {
                    if ((_tr_3000248 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3000630i32;
                    } else {
                        _gotoNext = 3000883i32;
                    };
                } else if (__value__ == (3000630i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3000092 : Bool) && (_sr_3000092 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3000248 == ((_sr_3000092 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3000730i32;
                    } else {
                        _gotoNext = 3000753i32;
                    };
                } else if (__value__ == (3000730i32)) {
                    _i_3000098++;
                    _gotoNext = 3001017i32;
                } else if (__value__ == (3000753i32)) {
                    return false;
                    _gotoNext = 3000883i32;
                } else if (__value__ == (3000883i32)) {
                    _r_3000883 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3000092);
                    var __blank__ = 0i32;
                    _gotoNext = 3000913i32;
                } else if (__value__ == (3000913i32)) {
                    if (((_r_3000883 != _sr_3000092) && (_r_3000883 < _tr_3000248 : Bool) : Bool)) {
                        _gotoNext = 3000935i32;
                    } else {
                        _gotoNext = 3000972i32;
                    };
                } else if (__value__ == (3000935i32)) {
                    _r_3000883 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3000883);
                    _gotoNext = 3000913i32;
                } else if (__value__ == (3000972i32)) {
                    if (_r_3000883 == (_tr_3000248)) {
                        _gotoNext = 3000983i32;
                    } else {
                        _gotoNext = 3001003i32;
                    };
                } else if (__value__ == (3000983i32)) {
                    _i_3000098++;
                    _gotoNext = 3001017i32;
                } else if (__value__ == (3001003i32)) {
                    return false;
                    _i_3000098++;
                    _gotoNext = 3001017i32;
                } else if (__value__ == (3001016i32)) {
                    _i_3000098 = 0i32;
                    _gotoNext = 3001017i32;
                } else if (__value__ == (3001017i32)) {
                    if (_i_3000098 < (_keys_3000085.length)) {
                        _gotoNext = 3000106i32;
                    } else {
                        _gotoNext = 3001090i32;
                    };
                } else if (__value__ == (3001090i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
