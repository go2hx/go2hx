package stdgo._internal.index.suffixarray;
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _n_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_25:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_22:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_3975731_23:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_21:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_29:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_28:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _this_27:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _j_24:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _id_20 = (0 : stdgo.GoInt);
                    _lastLen_21 = (-1 : stdgo.GoInt32);
                    _lastPos_22 = (0 : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1114"
                    if ((0i64 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3976282i64;
                    } else {
                        _gotoNext = 3976286i64;
                    };
                } else if (__value__ == (3975757i64)) {
                    _j_24 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_iterator_3975731_23 : stdgo.GoInt)];
                    _n_25 = _sa[((_j_24 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1117"
                    if (_n_25 != (_lastLen_21)) {
                        _gotoNext = 3975876i64;
                    } else {
                        _gotoNext = 3975896i64;
                    };
                } else if (__value__ == (3975876i64)) {
                    _gotoNext = 3976213i64;
                } else if (__value__ == (3975896i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1120"
                    if (((_n_25 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3975930i64;
                    } else {
                        _gotoNext = 3976015i64;
                    };
                } else if (__value__ == (3975930i64)) {
                    _gotoNext = 3976254i64;
                } else if (__value__ == (3976015i64)) {
                    _n_26 = (_n_25 : stdgo.GoInt);
                    _this_27 = ((_text.__slice__(_j_24) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_26) : stdgo.Slice<stdgo.GoInt32>);
                    _last_28 = ((_text.__slice__(_lastPos_22) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_26) : stdgo.Slice<stdgo.GoInt32>);
                    _i_29 = (0 : stdgo.GoInt);
                    _gotoNext = 3976117i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1124"
                    {
                        _gotoNext = 3976015i64;
                    };
                } else if (__value__ == (3976117i64)) {
                    //"file://#L0"
                    if ((_i_29 < _n_26 : Bool)) {
                        _gotoNext = 3976140i64;
                    } else {
                        _gotoNext = 3976198i64;
                    };
                } else if (__value__ == (3976136i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1129"
                    _i_29++;
                    _gotoNext = 3976117i64;
                } else if (__value__ == (3976140i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1130"
                    if (_this_27[(_i_29 : stdgo.GoInt)] != (_last_28[(_i_29 : stdgo.GoInt)])) {
                        _gotoNext = 3976168i64;
                    } else {
                        _gotoNext = 3976136i64;
                    };
                } else if (__value__ == (3976168i64)) {
                    _gotoNext = 3976213i64;
                } else if (__value__ == (3976198i64)) {
                    _gotoNext = 3976254i64;
                } else if (__value__ == (3976213i64)) {
                    _gotoNext = 3976213i64;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1137"
                    _id_20++;
                    _lastPos_22 = _j_24;
                    _lastLen_21 = _n_25;
                    _gotoNext = 3976254i64;
                } else if (__value__ == (3976254i64)) {
                    _sa[((_j_24 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_20 : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1114"
                    _iterator_3975731_23++;
                    _gotoNext = 3976283i64;
                } else if (__value__ == (3976282i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i64 : stdgo.GoInt)];
                        _iterator_3975731_23 = @:binopAssign __tmp__0;
                        _j_24 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3976283i64;
                } else if (__value__ == (3976283i64)) {
                    //"file://#L0"
                    if (_iterator_3975731_23 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3975757i64;
                    } else {
                        _gotoNext = 3976286i64;
                    };
                } else if (__value__ == (3976286i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1143"
                    return _id_20;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
