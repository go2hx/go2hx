package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2713842 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_2713855 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2713842 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
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
                    _gotoNext = 2713357i64;
                } else if (__value__ == (2713357i64)) {
                    //"file://#L0"
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2713393i64;
                    } else {
                        _gotoNext = 2713782i64;
                    };
                } else if (__value__ == (2713393i64)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1117"
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2713449i64;
                    } else {
                        _gotoNext = 2713493i64;
                    };
                } else if (__value__ == (2713449i64)) {
                    _gotoNext = 2713807i64;
                } else if (__value__ == (2713493i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1122"
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2713505i64;
                    } else {
                        _gotoNext = 2713570i64;
                    };
                } else if (__value__ == (2713505i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 2713357i64;
                } else if (__value__ == (2713570i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1127"
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2713581i64;
                    } else {
                        _gotoNext = 2713656i64;
                    };
                } else if (__value__ == (2713581i64)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2713656i64;
                } else if (__value__ == (2713656i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1131"
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2713702i64;
                    } else {
                        _gotoNext = 2713722i64;
                    };
                } else if (__value__ == (2713702i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 2713357i64;
                } else if (__value__ == (2713722i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1134"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 2713357i64;
                } else if (__value__ == (2713782i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1137"
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2713807i64;
                } else if (__value__ == (2713807i64)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2713842 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2713842 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    for (_key => _value in _s) {
                        _keys_2713842 = _keys_2713842.__append__(_key);
                        _values_2713842 = _values_2713842.__append__(_value);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    if ((0i64 : stdgo.GoInt) < (_keys_2713842.length)) {
                        _gotoNext = 2714773i64;
                    } else {
                        _gotoNext = 2714847i64;
                    };
                } else if (__value__ == (2713863i64)) {
                    _sr_3 = _values_2713842[@:invalid_index_invalid_type _iterator_2713855];
                    _keys_2713842[@:invalid_index_invalid_type _iterator_2713855];
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1144"
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2713932i64;
                    } else {
                        _gotoNext = 2714001i64;
                    };
                } else if (__value__ == (2713932i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1145"
                    return false;
                    _gotoNext = 2714001i64;
                } else if (__value__ == (2714001i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1150"
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2714039i64;
                    } else {
                        _gotoNext = 2714079i64;
                    };
                } else if (__value__ == (2714039i64)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2714223i64;
                } else if (__value__ == (2714079i64)) {
                    _gotoNext = 2714079i64;
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
                    _gotoNext = 2714223i64;
                } else if (__value__ == (2714223i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1160"
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2714235i64;
                    } else {
                        _gotoNext = 2714300i64;
                    };
                } else if (__value__ == (2714235i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2713855++;
                    _gotoNext = 2714774i64;
                } else if (__value__ == (2714300i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1165"
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2714311i64;
                    } else {
                        _gotoNext = 2714365i64;
                    };
                } else if (__value__ == (2714311i64)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2714365i64;
                } else if (__value__ == (2714365i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1169"
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2714387i64;
                    } else {
                        _gotoNext = 2714640i64;
                    };
                } else if (__value__ == (2714387i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1171"
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2714487i64;
                    } else {
                        _gotoNext = 2714510i64;
                    };
                } else if (__value__ == (2714487i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2713855++;
                    _gotoNext = 2714774i64;
                } else if (__value__ == (2714510i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1174"
                    return false;
                    _gotoNext = 2714640i64;
                } else if (__value__ == (2714640i64)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i64;
                    _gotoNext = 2714670i64;
                } else if (__value__ == (2714670i64)) {
                    //"file://#L0"
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2714692i64;
                    } else {
                        _gotoNext = 2714729i64;
                    };
                } else if (__value__ == (2714692i64)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2714670i64;
                } else if (__value__ == (2714729i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1183"
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2714740i64;
                    } else {
                        _gotoNext = 2714760i64;
                    };
                } else if (__value__ == (2714740i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2713855++;
                    _gotoNext = 2714774i64;
                } else if (__value__ == (2714760i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1186"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_2713855++;
                    _gotoNext = 2714774i64;
                } else if (__value__ == (2714773i64)) {
                    _iterator_2713855 = 0i64;
                    _gotoNext = 2714774i64;
                } else if (__value__ == (2714774i64)) {
                    //"file://#L0"
                    if (_iterator_2713855 < (_keys_2713842.length)) {
                        _gotoNext = 2713863i64;
                    } else {
                        _gotoNext = 2714847i64;
                    };
                } else if (__value__ == (2714847i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1190"
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
