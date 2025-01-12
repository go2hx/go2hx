package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _lastPos_3362689:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_3362653:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_3362644:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3363078:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _this_3363054:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_3362836:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _j_3362717:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3362722_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3363112:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3363039:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3362644 = (0 : stdgo.GoInt);
                    _lastLen_3362653 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3362689 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3363273i32;
                    } else {
                        _gotoNext = 3363277i32;
                    };
                } else if (__value__ == (3362748i32)) {
                    _j_3362717 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3362722_0 : stdgo.GoInt)];
                    _n_3362836 = _sa[((_j_3362717 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3362836 != (_lastLen_3362653)) {
                        _gotoNext = 3362867i32;
                    } else {
                        _gotoNext = 3362887i32;
                    };
                } else if (__value__ == (3362867i32)) {
                    _gotoNext = 3363204i32;
                } else if (__value__ == (3362887i32)) {
                    if (((_n_3362836 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3362921i32;
                    } else {
                        _gotoNext = 3363006i32;
                    };
                } else if (__value__ == (3362921i32)) {
                    _gotoNext = 3363245i32;
                } else if (__value__ == (3363006i32)) {
                    _n_3363039 = (_n_3362836 : stdgo.GoInt);
                    _this_3363054 = ((_text.__slice__(_j_3362717) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3363039) : stdgo.Slice<stdgo.GoInt64>);
                    _last_3363078 = ((_text.__slice__(_lastPos_3362689) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3363039) : stdgo.Slice<stdgo.GoInt64>);
                    _i_3363112 = (0 : stdgo.GoInt);
                    _gotoNext = 3363108i32;
                    {
                        _gotoNext = 3363006i32;
                    };
                } else if (__value__ == (3363108i32)) {
                    if ((_i_3363112 < _n_3363039 : Bool)) {
                        _gotoNext = 3363131i32;
                    } else {
                        _gotoNext = 3363189i32;
                    };
                } else if (__value__ == (3363127i32)) {
                    _i_3363112++;
                    _gotoNext = 3363108i32;
                } else if (__value__ == (3363131i32)) {
                    if (_this_3363054[(_i_3363112 : stdgo.GoInt)] != (_last_3363078[(_i_3363112 : stdgo.GoInt)])) {
                        _gotoNext = 3363159i32;
                    } else {
                        _gotoNext = 3363127i32;
                    };
                } else if (__value__ == (3363159i32)) {
                    _gotoNext = 3363204i32;
                } else if (__value__ == (3363189i32)) {
                    _gotoNext = 3363245i32;
                } else if (__value__ == (3363204i32)) {
                    _gotoNext = 3363204i32;
                    _id_3362644++;
                    _lastPos_3362689 = _j_3362717;
                    _lastLen_3362653 = _n_3362836;
                    _gotoNext = 3363245i32;
                } else if (__value__ == (3363245i32)) {
                    _sa[((_j_3362717 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3362644 : stdgo.GoInt64);
                    _i_3362722_0++;
                    _gotoNext = 3363274i32;
                } else if (__value__ == (3363273i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3362722_0 = __tmp__0;
                        _j_3362717 = __tmp__1;
                    };
                    _gotoNext = 3363274i32;
                } else if (__value__ == (3363274i32)) {
                    if (_i_3362722_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3362748i32;
                    } else {
                        _gotoNext = 3363277i32;
                    };
                } else if (__value__ == (3363277i32)) {
                    return _id_3362644;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
