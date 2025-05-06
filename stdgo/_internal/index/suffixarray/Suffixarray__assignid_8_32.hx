package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _this_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _j_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastLen_1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_8:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _iterator_4192465_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _id_0 = (0 : stdgo.GoInt);
                    _lastLen_1 = (-1 : stdgo.GoInt32);
                    _lastPos_2 = (0 : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L597"
                    if ((0i64 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4193016i64;
                    } else {
                        _gotoNext = 4193020i64;
                    };
                } else if (__value__ == (4192491i64)) {
                    _j_4 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_iterator_4192465_3 : stdgo.GoInt)];
                    _n_5 = _sa[((_j_4 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L600"
                    if (_n_5 != (_lastLen_1)) {
                        _gotoNext = 4192610i64;
                    } else {
                        _gotoNext = 4192630i64;
                    };
                } else if (__value__ == (4192610i64)) {
                    _gotoNext = 4192947i64;
                } else if (__value__ == (4192630i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L603"
                    if (((_n_5 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 4192664i64;
                    } else {
                        _gotoNext = 4192749i64;
                    };
                } else if (__value__ == (4192664i64)) {
                    _gotoNext = 4192988i64;
                } else if (__value__ == (4192749i64)) {
                    _n_6 = (_n_5 : stdgo.GoInt);
                    _this_7 = ((_text.__slice__(_j_4) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_6) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_8 = ((_text.__slice__(_lastPos_2) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_6) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_9 = (0 : stdgo.GoInt);
                    _gotoNext = 4192851i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L607"
                    {
                        _gotoNext = 4192749i64;
                    };
                } else if (__value__ == (4192851i64)) {
                    //"file://#L0"
                    if ((_i_9 < _n_6 : Bool)) {
                        _gotoNext = 4192874i64;
                    } else {
                        _gotoNext = 4192932i64;
                    };
                } else if (__value__ == (4192870i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L612"
                    _i_9++;
                    _gotoNext = 4192851i64;
                } else if (__value__ == (4192874i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L613"
                    if (_this_7[(_i_9 : stdgo.GoInt)] != (_last_8[(_i_9 : stdgo.GoInt)])) {
                        _gotoNext = 4192902i64;
                    } else {
                        _gotoNext = 4192870i64;
                    };
                } else if (__value__ == (4192902i64)) {
                    _gotoNext = 4192947i64;
                } else if (__value__ == (4192932i64)) {
                    _gotoNext = 4192988i64;
                } else if (__value__ == (4192947i64)) {
                    _gotoNext = 4192947i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L620"
                    _id_0++;
                    _lastPos_2 = _j_4;
                    _lastLen_1 = _n_5;
                    _gotoNext = 4192988i64;
                } else if (__value__ == (4192988i64)) {
                    _sa[((_j_4 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_0 : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L597"
                    _iterator_4192465_3++;
                    _gotoNext = 4193017i64;
                } else if (__value__ == (4193016i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i64 : stdgo.GoInt)];
                        _iterator_4192465_3 = @:binopAssign __tmp__0;
                        _j_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4193017i64;
                } else if (__value__ == (4193017i64)) {
                    //"file://#L0"
                    if (_iterator_4192465_3 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4192491i64;
                    } else {
                        _gotoNext = 4193020i64;
                    };
                } else if (__value__ == (4193020i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L626"
                    return _id_0;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
