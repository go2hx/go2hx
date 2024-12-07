package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2778909:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2778830:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2778674:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2778667 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2778680 = @:invalid_type null;
        var _tr_2778235:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2778222:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2778912:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2779465:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2778667 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2778174:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2778174 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2778182i32;
                } else if (__value__ == (2778182i32)) {
                    if (((_i_2778174 < (_s.length) : Bool) && (_i_2778174 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2778218i32;
                    } else {
                        _gotoNext = 2778607i32;
                    };
                } else if (__value__ == (2778218i32)) {
                    _sr_2778222 = _s[(_i_2778174 : stdgo.GoInt)];
                    _tr_2778235 = _t[(_i_2778174 : stdgo.GoInt)];
                    if (((_sr_2778222 | _tr_2778235 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2778274i32;
                    } else {
                        _gotoNext = 2778318i32;
                    };
                } else if (__value__ == (2778274i32)) {
                    _gotoNext = 2778632i32;
                } else if (__value__ == (2778318i32)) {
                    if (_tr_2778235 == (_sr_2778222)) {
                        _gotoNext = 2778330i32;
                    } else {
                        _gotoNext = 2778395i32;
                    };
                } else if (__value__ == (2778330i32)) {
                    _i_2778174++;
                    _gotoNext = 2778182i32;
                } else if (__value__ == (2778395i32)) {
                    if ((_tr_2778235 < _sr_2778222 : Bool)) {
                        _gotoNext = 2778406i32;
                    } else {
                        _gotoNext = 2778481i32;
                    };
                } else if (__value__ == (2778406i32)) {
                    {
                        final __tmp__0 = _sr_2778222;
                        final __tmp__1 = _tr_2778235;
                        _tr_2778235 = __tmp__0;
                        _sr_2778222 = __tmp__1;
                    };
                    _gotoNext = 2778481i32;
                } else if (__value__ == (2778481i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2778222 : Bool) && (_sr_2778222 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2778235 == ((_sr_2778222 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2778527i32;
                    } else {
                        _gotoNext = 2778547i32;
                    };
                } else if (__value__ == (2778527i32)) {
                    _i_2778174++;
                    _gotoNext = 2778182i32;
                } else if (__value__ == (2778547i32)) {
                    return false;
                    _i_2778174++;
                    _gotoNext = 2778182i32;
                } else if (__value__ == (2778607i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2778632i32;
                } else if (__value__ == (2778632i32)) {
                    _s = (_s.__slice__(_i_2778174) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2778174) : stdgo.GoString)?.__copy__();
                    _keys_2778667 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2778667 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2778667 = (_keys_2778667.__append__(_key));
                        _values_2778667 = (_values_2778667.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2778667.length)) {
                        _gotoNext = 2779598i32;
                    } else {
                        _gotoNext = 2779672i32;
                    };
                } else if (__value__ == (2778688i32)) {
                    _sr_2778674 = _values_2778667[@:invalid_index_invalid_type _i_2778680];
                    var __blank__ = _keys_2778667[@:invalid_index_invalid_type _i_2778680];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2778757i32;
                    } else {
                        _gotoNext = 2778826i32;
                    };
                } else if (__value__ == (2778757i32)) {
                    return false;
                    _gotoNext = 2778826i32;
                } else if (__value__ == (2778826i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2778864i32;
                    } else {
                        _gotoNext = 2778904i32;
                    };
                } else if (__value__ == (2778864i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2778830 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2779048i32;
                } else if (__value__ == (2778904i32)) {
                    _gotoNext = 2778904i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2778909 = __tmp__._0;
                        _size_2778912 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2778909;
                        final __tmp__1 = (_t.__slice__(_size_2778912) : stdgo.GoString)?.__copy__();
                        _tr_2778830 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2779048i32;
                } else if (__value__ == (2779048i32)) {
                    if (_tr_2778830 == (_sr_2778674)) {
                        _gotoNext = 2779060i32;
                    } else {
                        _gotoNext = 2779125i32;
                    };
                } else if (__value__ == (2779060i32)) {
                    _i_2778680++;
                    _gotoNext = 2779599i32;
                } else if (__value__ == (2779125i32)) {
                    if ((_tr_2778830 < _sr_2778674 : Bool)) {
                        _gotoNext = 2779136i32;
                    } else {
                        _gotoNext = 2779190i32;
                    };
                } else if (__value__ == (2779136i32)) {
                    {
                        final __tmp__0 = _sr_2778674;
                        final __tmp__1 = _tr_2778830;
                        _tr_2778830 = __tmp__0;
                        _sr_2778674 = __tmp__1;
                    };
                    _gotoNext = 2779190i32;
                } else if (__value__ == (2779190i32)) {
                    if ((_tr_2778830 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2779212i32;
                    } else {
                        _gotoNext = 2779465i32;
                    };
                } else if (__value__ == (2779212i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2778674 : Bool) && (_sr_2778674 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2778830 == ((_sr_2778674 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2779312i32;
                    } else {
                        _gotoNext = 2779335i32;
                    };
                } else if (__value__ == (2779312i32)) {
                    _i_2778680++;
                    _gotoNext = 2779599i32;
                } else if (__value__ == (2779335i32)) {
                    return false;
                    _gotoNext = 2779465i32;
                } else if (__value__ == (2779465i32)) {
                    _r_2779465 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2778674);
                    var __blank__ = 0i32;
                    _gotoNext = 2779495i32;
                } else if (__value__ == (2779495i32)) {
                    if (((_r_2779465 != _sr_2778674) && (_r_2779465 < _tr_2778830 : Bool) : Bool)) {
                        _gotoNext = 2779517i32;
                    } else {
                        _gotoNext = 2779554i32;
                    };
                } else if (__value__ == (2779517i32)) {
                    _r_2779465 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2779465);
                    _gotoNext = 2779495i32;
                } else if (__value__ == (2779554i32)) {
                    if (_r_2779465 == (_tr_2778830)) {
                        _gotoNext = 2779565i32;
                    } else {
                        _gotoNext = 2779585i32;
                    };
                } else if (__value__ == (2779565i32)) {
                    _i_2778680++;
                    _gotoNext = 2779599i32;
                } else if (__value__ == (2779585i32)) {
                    return false;
                    _i_2778680++;
                    _gotoNext = 2779599i32;
                } else if (__value__ == (2779598i32)) {
                    _i_2778680 = 0i32;
                    _gotoNext = 2779599i32;
                } else if (__value__ == (2779599i32)) {
                    if (_i_2778680 < (_keys_2778667.length)) {
                        _gotoNext = 2778688i32;
                    } else {
                        _gotoNext = 2779672i32;
                    };
                } else if (__value__ == (2779672i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
