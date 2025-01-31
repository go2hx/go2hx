package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3038213:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3037422:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3036983:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3036922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_3037415 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3037415 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3037428 = @:invalid_type null;
        var _sr_3036970:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3037660:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3037657:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3037578:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3036922 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3036930i32;
                } else if (__value__ == (3036930i32)) {
                    if (((_i_3036922 < (_s.length) : Bool) && (_i_3036922 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3036966i32;
                    } else {
                        _gotoNext = 3037355i32;
                    };
                } else if (__value__ == (3036966i32)) {
                    _sr_3036970 = _s[(_i_3036922 : stdgo.GoInt)];
                    _tr_3036983 = _t[(_i_3036922 : stdgo.GoInt)];
                    if (((_sr_3036970 | _tr_3036983 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3037022i32;
                    } else {
                        _gotoNext = 3037066i32;
                    };
                } else if (__value__ == (3037022i32)) {
                    _gotoNext = 3037380i32;
                } else if (__value__ == (3037066i32)) {
                    if (_tr_3036983 == (_sr_3036970)) {
                        _gotoNext = 3037078i32;
                    } else {
                        _gotoNext = 3037143i32;
                    };
                } else if (__value__ == (3037078i32)) {
                    _i_3036922++;
                    _gotoNext = 3036930i32;
                } else if (__value__ == (3037143i32)) {
                    if ((_tr_3036983 < _sr_3036970 : Bool)) {
                        _gotoNext = 3037154i32;
                    } else {
                        _gotoNext = 3037229i32;
                    };
                } else if (__value__ == (3037154i32)) {
                    {
                        final __tmp__0 = _sr_3036970;
                        final __tmp__1 = _tr_3036983;
                        _tr_3036983 = __tmp__0;
                        _sr_3036970 = __tmp__1;
                    };
                    _gotoNext = 3037229i32;
                } else if (__value__ == (3037229i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3036970 : Bool) && (_sr_3036970 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3036983 == ((_sr_3036970 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3037275i32;
                    } else {
                        _gotoNext = 3037295i32;
                    };
                } else if (__value__ == (3037275i32)) {
                    _i_3036922++;
                    _gotoNext = 3036930i32;
                } else if (__value__ == (3037295i32)) {
                    return false;
                    _i_3036922++;
                    _gotoNext = 3036930i32;
                } else if (__value__ == (3037355i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3037380i32;
                } else if (__value__ == (3037380i32)) {
                    _s = (_s.__slice__(_i_3036922) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3036922) : stdgo.GoString)?.__copy__();
                    _keys_3037415 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3037415 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3037415 = (_keys_3037415.__append__(_key));
                        _values_3037415 = (_values_3037415.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3037415.length)) {
                        _gotoNext = 3038346i32;
                    } else {
                        _gotoNext = 3038420i32;
                    };
                } else if (__value__ == (3037436i32)) {
                    _sr_3037422 = _values_3037415[@:invalid_index_invalid_type _i_3037428];
                    var __blank__ = _keys_3037415[@:invalid_index_invalid_type _i_3037428];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3037505i32;
                    } else {
                        _gotoNext = 3037574i32;
                    };
                } else if (__value__ == (3037505i32)) {
                    return false;
                    _gotoNext = 3037574i32;
                } else if (__value__ == (3037574i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3037612i32;
                    } else {
                        _gotoNext = 3037652i32;
                    };
                } else if (__value__ == (3037612i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3037578 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3037796i32;
                } else if (__value__ == (3037652i32)) {
                    _gotoNext = 3037652i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3037657 = @:tmpset0 __tmp__._0;
                        _size_3037660 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3037657;
                        final __tmp__1 = (_t.__slice__(_size_3037660) : stdgo.GoString)?.__copy__();
                        _tr_3037578 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3037796i32;
                } else if (__value__ == (3037796i32)) {
                    if (_tr_3037578 == (_sr_3037422)) {
                        _gotoNext = 3037808i32;
                    } else {
                        _gotoNext = 3037873i32;
                    };
                } else if (__value__ == (3037808i32)) {
                    _i_3037428++;
                    _gotoNext = 3038347i32;
                } else if (__value__ == (3037873i32)) {
                    if ((_tr_3037578 < _sr_3037422 : Bool)) {
                        _gotoNext = 3037884i32;
                    } else {
                        _gotoNext = 3037938i32;
                    };
                } else if (__value__ == (3037884i32)) {
                    {
                        final __tmp__0 = _sr_3037422;
                        final __tmp__1 = _tr_3037578;
                        _tr_3037578 = __tmp__0;
                        _sr_3037422 = __tmp__1;
                    };
                    _gotoNext = 3037938i32;
                } else if (__value__ == (3037938i32)) {
                    if ((_tr_3037578 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3037960i32;
                    } else {
                        _gotoNext = 3038213i32;
                    };
                } else if (__value__ == (3037960i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3037422 : Bool) && (_sr_3037422 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3037578 == ((_sr_3037422 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3038060i32;
                    } else {
                        _gotoNext = 3038083i32;
                    };
                } else if (__value__ == (3038060i32)) {
                    _i_3037428++;
                    _gotoNext = 3038347i32;
                } else if (__value__ == (3038083i32)) {
                    return false;
                    _gotoNext = 3038213i32;
                } else if (__value__ == (3038213i32)) {
                    _r_3038213 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3037422);
                    var __blank__ = 0i32;
                    _gotoNext = 3038243i32;
                } else if (__value__ == (3038243i32)) {
                    if (((_r_3038213 != _sr_3037422) && (_r_3038213 < _tr_3037578 : Bool) : Bool)) {
                        _gotoNext = 3038265i32;
                    } else {
                        _gotoNext = 3038302i32;
                    };
                } else if (__value__ == (3038265i32)) {
                    _r_3038213 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3038213);
                    _gotoNext = 3038243i32;
                } else if (__value__ == (3038302i32)) {
                    if (_r_3038213 == (_tr_3037578)) {
                        _gotoNext = 3038313i32;
                    } else {
                        _gotoNext = 3038333i32;
                    };
                } else if (__value__ == (3038313i32)) {
                    _i_3037428++;
                    _gotoNext = 3038347i32;
                } else if (__value__ == (3038333i32)) {
                    return false;
                    _i_3037428++;
                    _gotoNext = 3038347i32;
                } else if (__value__ == (3038346i32)) {
                    _i_3037428 = 0i32;
                    _gotoNext = 3038347i32;
                } else if (__value__ == (3038347i32)) {
                    if (_i_3037428 < (_keys_3037415.length)) {
                        _gotoNext = 3037436i32;
                    } else {
                        _gotoNext = 3038420i32;
                    };
                } else if (__value__ == (3038420i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
