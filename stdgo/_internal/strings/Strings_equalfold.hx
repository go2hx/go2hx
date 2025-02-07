package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2777045:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2776492:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2776254:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2775802:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2775754:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2776489:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2776410:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2776247 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2776247 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2776260 = @:invalid_type null;
        var _tr_2775815:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2775754 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2775762i32;
                } else if (__value__ == (2775762i32)) {
                    if (((_i_2775754 < (_s.length) : Bool) && (_i_2775754 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2775798i32;
                    } else {
                        _gotoNext = 2776187i32;
                    };
                } else if (__value__ == (2775798i32)) {
                    _sr_2775802 = _s[(_i_2775754 : stdgo.GoInt)];
                    _tr_2775815 = _t[(_i_2775754 : stdgo.GoInt)];
                    if (((_sr_2775802 | _tr_2775815 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2775854i32;
                    } else {
                        _gotoNext = 2775898i32;
                    };
                } else if (__value__ == (2775854i32)) {
                    _gotoNext = 2776212i32;
                } else if (__value__ == (2775898i32)) {
                    if (_tr_2775815 == (_sr_2775802)) {
                        _gotoNext = 2775910i32;
                    } else {
                        _gotoNext = 2775975i32;
                    };
                } else if (__value__ == (2775910i32)) {
                    _i_2775754++;
                    _gotoNext = 2775762i32;
                } else if (__value__ == (2775975i32)) {
                    if ((_tr_2775815 < _sr_2775802 : Bool)) {
                        _gotoNext = 2775986i32;
                    } else {
                        _gotoNext = 2776061i32;
                    };
                } else if (__value__ == (2775986i32)) {
                    {
                        final __tmp__0 = _sr_2775802;
                        final __tmp__1 = _tr_2775815;
                        _tr_2775815 = __tmp__0;
                        _sr_2775802 = __tmp__1;
                    };
                    _gotoNext = 2776061i32;
                } else if (__value__ == (2776061i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2775802 : Bool) && (_sr_2775802 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2775815 == ((_sr_2775802 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2776107i32;
                    } else {
                        _gotoNext = 2776127i32;
                    };
                } else if (__value__ == (2776107i32)) {
                    _i_2775754++;
                    _gotoNext = 2775762i32;
                } else if (__value__ == (2776127i32)) {
                    return false;
                    _i_2775754++;
                    _gotoNext = 2775762i32;
                } else if (__value__ == (2776187i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2776212i32;
                } else if (__value__ == (2776212i32)) {
                    _s = (_s.__slice__(_i_2775754) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2775754) : stdgo.GoString)?.__copy__();
                    _keys_2776247 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2776247 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2776247 = (_keys_2776247.__append__(_key));
                        _values_2776247 = (_values_2776247.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2776247.length)) {
                        _gotoNext = 2777178i32;
                    } else {
                        _gotoNext = 2777252i32;
                    };
                } else if (__value__ == (2776268i32)) {
                    _sr_2776254 = _values_2776247[@:invalid_index_invalid_type _i_2776260];
                    var __blank__ = _keys_2776247[@:invalid_index_invalid_type _i_2776260];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2776337i32;
                    } else {
                        _gotoNext = 2776406i32;
                    };
                } else if (__value__ == (2776337i32)) {
                    return false;
                    _gotoNext = 2776406i32;
                } else if (__value__ == (2776406i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2776444i32;
                    } else {
                        _gotoNext = 2776484i32;
                    };
                } else if (__value__ == (2776444i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2776410 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2776628i32;
                } else if (__value__ == (2776484i32)) {
                    _gotoNext = 2776484i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2776489 = @:tmpset0 __tmp__._0;
                        _size_2776492 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2776489;
                        final __tmp__1 = (_t.__slice__(_size_2776492) : stdgo.GoString)?.__copy__();
                        _tr_2776410 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2776628i32;
                } else if (__value__ == (2776628i32)) {
                    if (_tr_2776410 == (_sr_2776254)) {
                        _gotoNext = 2776640i32;
                    } else {
                        _gotoNext = 2776705i32;
                    };
                } else if (__value__ == (2776640i32)) {
                    _i_2776260++;
                    _gotoNext = 2777179i32;
                } else if (__value__ == (2776705i32)) {
                    if ((_tr_2776410 < _sr_2776254 : Bool)) {
                        _gotoNext = 2776716i32;
                    } else {
                        _gotoNext = 2776770i32;
                    };
                } else if (__value__ == (2776716i32)) {
                    {
                        final __tmp__0 = _sr_2776254;
                        final __tmp__1 = _tr_2776410;
                        _tr_2776410 = __tmp__0;
                        _sr_2776254 = __tmp__1;
                    };
                    _gotoNext = 2776770i32;
                } else if (__value__ == (2776770i32)) {
                    if ((_tr_2776410 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2776792i32;
                    } else {
                        _gotoNext = 2777045i32;
                    };
                } else if (__value__ == (2776792i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2776254 : Bool) && (_sr_2776254 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2776410 == ((_sr_2776254 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2776892i32;
                    } else {
                        _gotoNext = 2776915i32;
                    };
                } else if (__value__ == (2776892i32)) {
                    _i_2776260++;
                    _gotoNext = 2777179i32;
                } else if (__value__ == (2776915i32)) {
                    return false;
                    _gotoNext = 2777045i32;
                } else if (__value__ == (2777045i32)) {
                    _r_2777045 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2776254);
                    var __blank__ = 0i32;
                    _gotoNext = 2777075i32;
                } else if (__value__ == (2777075i32)) {
                    if (((_r_2777045 != _sr_2776254) && (_r_2777045 < _tr_2776410 : Bool) : Bool)) {
                        _gotoNext = 2777097i32;
                    } else {
                        _gotoNext = 2777134i32;
                    };
                } else if (__value__ == (2777097i32)) {
                    _r_2777045 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2777045);
                    _gotoNext = 2777075i32;
                } else if (__value__ == (2777134i32)) {
                    if (_r_2777045 == (_tr_2776410)) {
                        _gotoNext = 2777145i32;
                    } else {
                        _gotoNext = 2777165i32;
                    };
                } else if (__value__ == (2777145i32)) {
                    _i_2776260++;
                    _gotoNext = 2777179i32;
                } else if (__value__ == (2777165i32)) {
                    return false;
                    _i_2776260++;
                    _gotoNext = 2777179i32;
                } else if (__value__ == (2777178i32)) {
                    _i_2776260 = 0i32;
                    _gotoNext = 2777179i32;
                } else if (__value__ == (2777179i32)) {
                    if (_i_2776260 < (_keys_2776247.length)) {
                        _gotoNext = 2776268i32;
                    } else {
                        _gotoNext = 2777252i32;
                    };
                } else if (__value__ == (2777252i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
