package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _id_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _this_17:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_15:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_11:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_12:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _j_14:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _iterator_4184987_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _id_10 = (0 : stdgo.GoInt);
                    _lastLen_11 = (-1i64 : stdgo.GoInt64);
                    _lastPos_12 = (0i64 : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1078"
                    if ((0i64 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4185538i64;
                    } else {
                        _gotoNext = 4185542i64;
                    };
                } else if (__value__ == (4185013i64)) {
                    _j_14 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_iterator_4184987_13 : stdgo.GoInt)];
                    _n_15 = _sa[((_j_14 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1081"
                    if (_n_15 != (_lastLen_11)) {
                        _gotoNext = 4185132i64;
                    } else {
                        _gotoNext = 4185152i64;
                    };
                } else if (__value__ == (4185132i64)) {
                    _gotoNext = 4185469i64;
                } else if (__value__ == (4185152i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1084"
                    if (((_n_15 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 4185186i64;
                    } else {
                        _gotoNext = 4185271i64;
                    };
                } else if (__value__ == (4185186i64)) {
                    _gotoNext = 4185510i64;
                } else if (__value__ == (4185271i64)) {
                    _n_16 = (_n_15 : stdgo.GoInt);
                    _this_17 = ((_text.__slice__(_j_14) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_16) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_18 = ((_text.__slice__(_lastPos_12) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_16) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_19 = (0 : stdgo.GoInt);
                    _gotoNext = 4185373i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1088"
                    {
                        _gotoNext = 4185271i64;
                    };
                } else if (__value__ == (4185373i64)) {
                    //"file://#L0"
                    if ((_i_19 < _n_16 : Bool)) {
                        _gotoNext = 4185396i64;
                    } else {
                        _gotoNext = 4185454i64;
                    };
                } else if (__value__ == (4185392i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1093"
                    _i_19++;
                    _gotoNext = 4185373i64;
                } else if (__value__ == (4185396i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1094"
                    if (_this_17[(_i_19 : stdgo.GoInt)] != (_last_18[(_i_19 : stdgo.GoInt)])) {
                        _gotoNext = 4185424i64;
                    } else {
                        _gotoNext = 4185392i64;
                    };
                } else if (__value__ == (4185424i64)) {
                    _gotoNext = 4185469i64;
                } else if (__value__ == (4185454i64)) {
                    _gotoNext = 4185510i64;
                } else if (__value__ == (4185469i64)) {
                    _gotoNext = 4185469i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1101"
                    _id_10++;
                    _lastPos_12 = _j_14;
                    _lastLen_11 = _n_15;
                    _gotoNext = 4185510i64;
                } else if (__value__ == (4185510i64)) {
                    _sa[((_j_14 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_10 : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1078"
                    _iterator_4184987_13++;
                    _gotoNext = 4185539i64;
                } else if (__value__ == (4185538i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i64 : stdgo.GoInt)];
                        _iterator_4184987_13 = @:binopAssign __tmp__0;
                        _j_14 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4185539i64;
                } else if (__value__ == (4185539i64)) {
                    //"file://#L0"
                    if (_iterator_4184987_13 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4185013i64;
                    } else {
                        _gotoNext = 4185542i64;
                    };
                } else if (__value__ == (4185542i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1107"
                    return _id_10;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
