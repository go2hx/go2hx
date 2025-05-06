package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _lastPos_32:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_38:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_35:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _j_34:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _iterator_4153143_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_31:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _this_37:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _id_30 = (0 : stdgo.GoInt);
                    _lastLen_31 = (-1i64 : stdgo.GoInt64);
                    _lastPos_32 = (0i64 : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1150"
                    if ((0i64 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4153694i64;
                    } else {
                        _gotoNext = 4153698i64;
                    };
                } else if (__value__ == (4153169i64)) {
                    _j_34 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_iterator_4153143_33 : stdgo.GoInt)];
                    _n_35 = _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1153"
                    if (_n_35 != (_lastLen_31)) {
                        _gotoNext = 4153288i64;
                    } else {
                        _gotoNext = 4153308i64;
                    };
                } else if (__value__ == (4153288i64)) {
                    _gotoNext = 4153625i64;
                } else if (__value__ == (4153308i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1156"
                    if (((_n_35 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 4153342i64;
                    } else {
                        _gotoNext = 4153427i64;
                    };
                } else if (__value__ == (4153342i64)) {
                    _gotoNext = 4153666i64;
                } else if (__value__ == (4153427i64)) {
                    _n_36 = (_n_35 : stdgo.GoInt);
                    _this_37 = ((_text.__slice__(_j_34) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _last_38 = ((_text.__slice__(_lastPos_32) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _i_39 = (0 : stdgo.GoInt);
                    _gotoNext = 4153529i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1160"
                    {
                        _gotoNext = 4153427i64;
                    };
                } else if (__value__ == (4153529i64)) {
                    //"file://#L0"
                    if ((_i_39 < _n_36 : Bool)) {
                        _gotoNext = 4153552i64;
                    } else {
                        _gotoNext = 4153610i64;
                    };
                } else if (__value__ == (4153548i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1165"
                    _i_39++;
                    _gotoNext = 4153529i64;
                } else if (__value__ == (4153552i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1166"
                    if (_this_37[(_i_39 : stdgo.GoInt)] != (_last_38[(_i_39 : stdgo.GoInt)])) {
                        _gotoNext = 4153580i64;
                    } else {
                        _gotoNext = 4153548i64;
                    };
                } else if (__value__ == (4153580i64)) {
                    _gotoNext = 4153625i64;
                } else if (__value__ == (4153610i64)) {
                    _gotoNext = 4153666i64;
                } else if (__value__ == (4153625i64)) {
                    _gotoNext = 4153625i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1173"
                    _id_30++;
                    _lastPos_32 = _j_34;
                    _lastLen_31 = _n_35;
                    _gotoNext = 4153666i64;
                } else if (__value__ == (4153666i64)) {
                    _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_30 : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1150"
                    _iterator_4153143_33++;
                    _gotoNext = 4153695i64;
                } else if (__value__ == (4153694i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i64 : stdgo.GoInt)];
                        _iterator_4153143_33 = @:binopAssign __tmp__0;
                        _j_34 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4153695i64;
                } else if (__value__ == (4153695i64)) {
                    //"file://#L0"
                    if (_iterator_4153143_33 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4153169i64;
                    } else {
                        _gotoNext = 4153698i64;
                    };
                } else if (__value__ == (4153698i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1179"
                    return _id_30;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
