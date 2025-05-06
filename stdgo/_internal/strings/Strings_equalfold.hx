package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_3064884 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _iterator_3064897 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3064884 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
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
                    _gotoNext = 3064399i64;
                } else if (__value__ == (3064399i64)) {
                    //"file://#L0"
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3064435i64;
                    } else {
                        _gotoNext = 3064824i64;
                    };
                } else if (__value__ == (3064435i64)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1117"
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3064491i64;
                    } else {
                        _gotoNext = 3064535i64;
                    };
                } else if (__value__ == (3064491i64)) {
                    _gotoNext = 3064849i64;
                } else if (__value__ == (3064535i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1122"
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 3064547i64;
                    } else {
                        _gotoNext = 3064612i64;
                    };
                } else if (__value__ == (3064547i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 3064399i64;
                } else if (__value__ == (3064612i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1127"
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 3064623i64;
                    } else {
                        _gotoNext = 3064698i64;
                    };
                } else if (__value__ == (3064623i64)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3064698i64;
                } else if (__value__ == (3064698i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1131"
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3064744i64;
                    } else {
                        _gotoNext = 3064764i64;
                    };
                } else if (__value__ == (3064744i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 3064399i64;
                } else if (__value__ == (3064764i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1134"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1114"
                    _i_0++;
                    _gotoNext = 3064399i64;
                } else if (__value__ == (3064824i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1137"
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3064849i64;
                } else if (__value__ == (3064849i64)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_3064884 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3064884 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    for (_key => _value in _s) {
                        _keys_3064884 = _keys_3064884.__append__(_key);
                        _values_3064884 = _values_3064884.__append__(_value);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    if ((0i64 : stdgo.GoInt) < (_keys_3064884.length)) {
                        _gotoNext = 3065815i64;
                    } else {
                        _gotoNext = 3065889i64;
                    };
                } else if (__value__ == (3064905i64)) {
                    _sr_3 = _values_3064884[@:invalid_index_invalid_type _iterator_3064897];
                    _keys_3064884[@:invalid_index_invalid_type _iterator_3064897];
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1144"
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3064974i64;
                    } else {
                        _gotoNext = 3065043i64;
                    };
                } else if (__value__ == (3064974i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1145"
                    return false;
                    _gotoNext = 3065043i64;
                } else if (__value__ == (3065043i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1150"
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3065081i64;
                    } else {
                        _gotoNext = 3065121i64;
                    };
                } else if (__value__ == (3065081i64)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3065265i64;
                } else if (__value__ == (3065121i64)) {
                    _gotoNext = 3065121i64;
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
                    _gotoNext = 3065265i64;
                } else if (__value__ == (3065265i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1160"
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 3065277i64;
                    } else {
                        _gotoNext = 3065342i64;
                    };
                } else if (__value__ == (3065277i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3064897++;
                    _gotoNext = 3065816i64;
                } else if (__value__ == (3065342i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1165"
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 3065353i64;
                    } else {
                        _gotoNext = 3065407i64;
                    };
                } else if (__value__ == (3065353i64)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3065407i64;
                } else if (__value__ == (3065407i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1169"
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3065429i64;
                    } else {
                        _gotoNext = 3065682i64;
                    };
                } else if (__value__ == (3065429i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1171"
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3065529i64;
                    } else {
                        _gotoNext = 3065552i64;
                    };
                } else if (__value__ == (3065529i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3064897++;
                    _gotoNext = 3065816i64;
                } else if (__value__ == (3065552i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1174"
                    return false;
                    _gotoNext = 3065682i64;
                } else if (__value__ == (3065682i64)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i64;
                    _gotoNext = 3065712i64;
                } else if (__value__ == (3065712i64)) {
                    //"file://#L0"
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 3065734i64;
                    } else {
                        _gotoNext = 3065771i64;
                    };
                } else if (__value__ == (3065734i64)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 3065712i64;
                } else if (__value__ == (3065771i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1183"
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 3065782i64;
                    } else {
                        _gotoNext = 3065802i64;
                    };
                } else if (__value__ == (3065782i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3064897++;
                    _gotoNext = 3065816i64;
                } else if (__value__ == (3065802i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1186"
                    return false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1142"
                    _iterator_3064897++;
                    _gotoNext = 3065816i64;
                } else if (__value__ == (3065815i64)) {
                    _iterator_3064897 = 0i64;
                    _gotoNext = 3065816i64;
                } else if (__value__ == (3065816i64)) {
                    //"file://#L0"
                    if (_iterator_3064897 < (_keys_3064884.length)) {
                        _gotoNext = 3064905i64;
                    } else {
                        _gotoNext = 3065889i64;
                    };
                } else if (__value__ == (3065889i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1190"
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
