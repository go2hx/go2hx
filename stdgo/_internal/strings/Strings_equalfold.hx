package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3054155:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3053920:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3053926 = @:invalid_type null;
        var _i_3053420:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3054076:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3053913 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3053913 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_3053481:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3053468:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3054711:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3054158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3053420 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3053428i32;
                } else if (__value__ == (3053428i32)) {
                    if (((_i_3053420 < (_s.length) : Bool) && (_i_3053420 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3053464i32;
                    } else {
                        _gotoNext = 3053853i32;
                    };
                } else if (__value__ == (3053464i32)) {
                    _sr_3053468 = _s[(_i_3053420 : stdgo.GoInt)];
                    _tr_3053481 = _t[(_i_3053420 : stdgo.GoInt)];
                    if (((_sr_3053468 | _tr_3053481 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3053520i32;
                    } else {
                        _gotoNext = 3053564i32;
                    };
                } else if (__value__ == (3053520i32)) {
                    _gotoNext = 3053878i32;
                } else if (__value__ == (3053564i32)) {
                    if (_tr_3053481 == (_sr_3053468)) {
                        _gotoNext = 3053576i32;
                    } else {
                        _gotoNext = 3053641i32;
                    };
                } else if (__value__ == (3053576i32)) {
                    _i_3053420++;
                    _gotoNext = 3053428i32;
                } else if (__value__ == (3053641i32)) {
                    if ((_tr_3053481 < _sr_3053468 : Bool)) {
                        _gotoNext = 3053652i32;
                    } else {
                        _gotoNext = 3053727i32;
                    };
                } else if (__value__ == (3053652i32)) {
                    {
                        final __tmp__0 = _sr_3053468;
                        final __tmp__1 = _tr_3053481;
                        _tr_3053481 = __tmp__0;
                        _sr_3053468 = __tmp__1;
                    };
                    _gotoNext = 3053727i32;
                } else if (__value__ == (3053727i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3053468 : Bool) && (_sr_3053468 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3053481 == ((_sr_3053468 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3053773i32;
                    } else {
                        _gotoNext = 3053793i32;
                    };
                } else if (__value__ == (3053773i32)) {
                    _i_3053420++;
                    _gotoNext = 3053428i32;
                } else if (__value__ == (3053793i32)) {
                    return false;
                    _i_3053420++;
                    _gotoNext = 3053428i32;
                } else if (__value__ == (3053853i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3053878i32;
                } else if (__value__ == (3053878i32)) {
                    _s = (_s.__slice__(_i_3053420) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3053420) : stdgo.GoString)?.__copy__();
                    _keys_3053913 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3053913 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3053913 = (_keys_3053913.__append__(_key));
                        _values_3053913 = (_values_3053913.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3053913.length)) {
                        _gotoNext = 3054844i32;
                    } else {
                        _gotoNext = 3054918i32;
                    };
                } else if (__value__ == (3053934i32)) {
                    _sr_3053920 = _values_3053913[@:invalid_index_invalid_type _i_3053926];
                    var __blank__ = _keys_3053913[@:invalid_index_invalid_type _i_3053926];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3054003i32;
                    } else {
                        _gotoNext = 3054072i32;
                    };
                } else if (__value__ == (3054003i32)) {
                    return false;
                    _gotoNext = 3054072i32;
                } else if (__value__ == (3054072i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3054110i32;
                    } else {
                        _gotoNext = 3054150i32;
                    };
                } else if (__value__ == (3054110i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3054076 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3054294i32;
                } else if (__value__ == (3054150i32)) {
                    _gotoNext = 3054150i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_3054155 = @:tmpset0 __tmp__._0;
                        _size_3054158 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3054155;
                        final __tmp__1 = (_t.__slice__(_size_3054158) : stdgo.GoString)?.__copy__();
                        _tr_3054076 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3054294i32;
                } else if (__value__ == (3054294i32)) {
                    if (_tr_3054076 == (_sr_3053920)) {
                        _gotoNext = 3054306i32;
                    } else {
                        _gotoNext = 3054371i32;
                    };
                } else if (__value__ == (3054306i32)) {
                    _i_3053926++;
                    _gotoNext = 3054845i32;
                } else if (__value__ == (3054371i32)) {
                    if ((_tr_3054076 < _sr_3053920 : Bool)) {
                        _gotoNext = 3054382i32;
                    } else {
                        _gotoNext = 3054436i32;
                    };
                } else if (__value__ == (3054382i32)) {
                    {
                        final __tmp__0 = _sr_3053920;
                        final __tmp__1 = _tr_3054076;
                        _tr_3054076 = __tmp__0;
                        _sr_3053920 = __tmp__1;
                    };
                    _gotoNext = 3054436i32;
                } else if (__value__ == (3054436i32)) {
                    if ((_tr_3054076 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3054458i32;
                    } else {
                        _gotoNext = 3054711i32;
                    };
                } else if (__value__ == (3054458i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3053920 : Bool) && (_sr_3053920 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3054076 == ((_sr_3053920 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3054558i32;
                    } else {
                        _gotoNext = 3054581i32;
                    };
                } else if (__value__ == (3054558i32)) {
                    _i_3053926++;
                    _gotoNext = 3054845i32;
                } else if (__value__ == (3054581i32)) {
                    return false;
                    _gotoNext = 3054711i32;
                } else if (__value__ == (3054711i32)) {
                    _r_3054711 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3053920);
                    var __blank__ = 0i32;
                    _gotoNext = 3054741i32;
                } else if (__value__ == (3054741i32)) {
                    if (((_r_3054711 != _sr_3053920) && (_r_3054711 < _tr_3054076 : Bool) : Bool)) {
                        _gotoNext = 3054763i32;
                    } else {
                        _gotoNext = 3054800i32;
                    };
                } else if (__value__ == (3054763i32)) {
                    _r_3054711 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3054711);
                    _gotoNext = 3054741i32;
                } else if (__value__ == (3054800i32)) {
                    if (_r_3054711 == (_tr_3054076)) {
                        _gotoNext = 3054811i32;
                    } else {
                        _gotoNext = 3054831i32;
                    };
                } else if (__value__ == (3054811i32)) {
                    _i_3053926++;
                    _gotoNext = 3054845i32;
                } else if (__value__ == (3054831i32)) {
                    return false;
                    _i_3053926++;
                    _gotoNext = 3054845i32;
                } else if (__value__ == (3054844i32)) {
                    _i_3053926 = 0i32;
                    _gotoNext = 3054845i32;
                } else if (__value__ == (3054845i32)) {
                    if (_i_3053926 < (_keys_3053913.length)) {
                        _gotoNext = 3053934i32;
                    } else {
                        _gotoNext = 3054918i32;
                    };
                } else if (__value__ == (3054918i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
