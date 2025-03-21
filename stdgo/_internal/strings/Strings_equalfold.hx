package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2914214 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _iterator_2914227 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _keys_2914214 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2913729i32;
                } else if (__value__ == (2913729i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2913765i32;
                    } else {
                        _gotoNext = 2914154i32;
                    };
                } else if (__value__ == (2913765i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2913821i32;
                    } else {
                        _gotoNext = 2913865i32;
                    };
                } else if (__value__ == (2913821i32)) {
                    _gotoNext = 2914179i32;
                } else if (__value__ == (2913865i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2913877i32;
                    } else {
                        _gotoNext = 2913942i32;
                    };
                } else if (__value__ == (2913877i32)) {
                    _i_0++;
                    _gotoNext = 2913729i32;
                } else if (__value__ == (2913942i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2913953i32;
                    } else {
                        _gotoNext = 2914028i32;
                    };
                } else if (__value__ == (2913953i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2914028i32;
                } else if (__value__ == (2914028i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2914074i32;
                    } else {
                        _gotoNext = 2914094i32;
                    };
                } else if (__value__ == (2914074i32)) {
                    _i_0++;
                    _gotoNext = 2913729i32;
                } else if (__value__ == (2914094i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2913729i32;
                } else if (__value__ == (2914154i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2914179i32;
                } else if (__value__ == (2914179i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2914214 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2914214 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2914214 = (_keys_2914214.__append__(_key));
                        _values_2914214 = (_values_2914214.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2914214.length)) {
                        _gotoNext = 2915145i32;
                    } else {
                        _gotoNext = 2915219i32;
                    };
                } else if (__value__ == (2914235i32)) {
                    _sr_3 = _values_2914214[@:invalid_index_invalid_type _iterator_2914227];
                    _keys_2914214[@:invalid_index_invalid_type _iterator_2914227];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2914304i32;
                    } else {
                        _gotoNext = 2914373i32;
                    };
                } else if (__value__ == (2914304i32)) {
                    return false;
                    _gotoNext = 2914373i32;
                } else if (__value__ == (2914373i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2914411i32;
                    } else {
                        _gotoNext = 2914451i32;
                    };
                } else if (__value__ == (2914411i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2914595i32;
                } else if (__value__ == (2914451i32)) {
                    _gotoNext = 2914451i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 2914595i32;
                } else if (__value__ == (2914595i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2914607i32;
                    } else {
                        _gotoNext = 2914672i32;
                    };
                } else if (__value__ == (2914607i32)) {
                    _iterator_2914227++;
                    _gotoNext = 2915146i32;
                } else if (__value__ == (2914672i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2914683i32;
                    } else {
                        _gotoNext = 2914737i32;
                    };
                } else if (__value__ == (2914683i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2914737i32;
                } else if (__value__ == (2914737i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2914759i32;
                    } else {
                        _gotoNext = 2915012i32;
                    };
                } else if (__value__ == (2914759i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2914859i32;
                    } else {
                        _gotoNext = 2914882i32;
                    };
                } else if (__value__ == (2914859i32)) {
                    _iterator_2914227++;
                    _gotoNext = 2915146i32;
                } else if (__value__ == (2914882i32)) {
                    return false;
                    _gotoNext = 2915012i32;
                } else if (__value__ == (2915012i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2915042i32;
                } else if (__value__ == (2915042i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2915064i32;
                    } else {
                        _gotoNext = 2915101i32;
                    };
                } else if (__value__ == (2915064i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2915042i32;
                } else if (__value__ == (2915101i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2915112i32;
                    } else {
                        _gotoNext = 2915132i32;
                    };
                } else if (__value__ == (2915112i32)) {
                    _iterator_2914227++;
                    _gotoNext = 2915146i32;
                } else if (__value__ == (2915132i32)) {
                    return false;
                    _iterator_2914227++;
                    _gotoNext = 2915146i32;
                } else if (__value__ == (2915145i32)) {
                    _iterator_2914227 = 0i32;
                    _gotoNext = 2915146i32;
                } else if (__value__ == (2915146i32)) {
                    if (_iterator_2914227 < (_keys_2914214.length)) {
                        _gotoNext = 2914235i32;
                    } else {
                        _gotoNext = 2915219i32;
                    };
                } else if (__value__ == (2915219i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
