package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2968723 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2968723 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _iterator_2968736 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 2968238i64;
                } else if (__value__ == (2968238i64)) {
                    //"file://#L0"
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2968274i64;
                    } else {
                        _gotoNext = 2968663i64;
                    };
                } else if (__value__ == (2968274i64)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1117"
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2968330i64;
                    } else {
                        _gotoNext = 2968374i64;
                    };
                } else if (__value__ == (2968330i64)) {
                    _gotoNext = 2968688i64;
                } else if (__value__ == (2968374i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1122"
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2968386i64;
                    } else {
                        _gotoNext = 2968451i64;
                    };
                } else if (__value__ == (2968386i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 2968238i64;
                } else if (__value__ == (2968451i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1127"
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2968462i64;
                    } else {
                        _gotoNext = 2968537i64;
                    };
                } else if (__value__ == (2968462i64)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2968537i64;
                } else if (__value__ == (2968537i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1131"
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2968583i64;
                    } else {
                        _gotoNext = 2968603i64;
                    };
                } else if (__value__ == (2968583i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 2968238i64;
                } else if (__value__ == (2968603i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1134"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 2968238i64;
                } else if (__value__ == (2968663i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1137"
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2968688i64;
                } else if (__value__ == (2968688i64)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2968723 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2968723 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    for (_key => _value in _s) {
                        _keys_2968723 = _keys_2968723.__append__(_key);
                        _values_2968723 = _values_2968723.__append__(_value);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    if ((0i64 : stdgo.GoInt) < (_keys_2968723.length)) {
                        _gotoNext = 2969654i64;
                    } else {
                        _gotoNext = 2969728i64;
                    };
                } else if (__value__ == (2968744i64)) {
                    _sr_3 = _values_2968723[@:invalid_index_invalid_type _iterator_2968736];
                    _keys_2968723[@:invalid_index_invalid_type _iterator_2968736];
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1144"
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2968813i64;
                    } else {
                        _gotoNext = 2968882i64;
                    };
                } else if (__value__ == (2968813i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1145"
                    return false;
                    _gotoNext = 2968882i64;
                } else if (__value__ == (2968882i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1150"
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2968920i64;
                    } else {
                        _gotoNext = 2968960i64;
                    };
                } else if (__value__ == (2968920i64)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2969104i64;
                } else if (__value__ == (2968960i64)) {
                    _gotoNext = 2968960i64;
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
                    0i64;
                    _gotoNext = 2969104i64;
                } else if (__value__ == (2969104i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1160"
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2969116i64;
                    } else {
                        _gotoNext = 2969181i64;
                    };
                } else if (__value__ == (2969116i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2968736++;
                    _gotoNext = 2969655i64;
                } else if (__value__ == (2969181i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1165"
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2969192i64;
                    } else {
                        _gotoNext = 2969246i64;
                    };
                } else if (__value__ == (2969192i64)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2969246i64;
                } else if (__value__ == (2969246i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1169"
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2969268i64;
                    } else {
                        _gotoNext = 2969521i64;
                    };
                } else if (__value__ == (2969268i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1171"
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2969368i64;
                    } else {
                        _gotoNext = 2969391i64;
                    };
                } else if (__value__ == (2969368i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2968736++;
                    _gotoNext = 2969655i64;
                } else if (__value__ == (2969391i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1174"
                    return false;
                    _gotoNext = 2969521i64;
                } else if (__value__ == (2969521i64)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i64;
                    _gotoNext = 2969551i64;
                } else if (__value__ == (2969551i64)) {
                    //"file://#L0"
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2969573i64;
                    } else {
                        _gotoNext = 2969610i64;
                    };
                } else if (__value__ == (2969573i64)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2969551i64;
                } else if (__value__ == (2969610i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1183"
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2969621i64;
                    } else {
                        _gotoNext = 2969641i64;
                    };
                } else if (__value__ == (2969621i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2968736++;
                    _gotoNext = 2969655i64;
                } else if (__value__ == (2969641i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1186"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2968736++;
                    _gotoNext = 2969655i64;
                } else if (__value__ == (2969654i64)) {
                    _iterator_2968736 = 0i64;
                    _gotoNext = 2969655i64;
                } else if (__value__ == (2969655i64)) {
                    //"file://#L0"
                    if (_iterator_2968736 < (_keys_2968723.length)) {
                        _gotoNext = 2968744i64;
                    } else {
                        _gotoNext = 2969728i64;
                    };
                } else if (__value__ == (2969728i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1190"
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
