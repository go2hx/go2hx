package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _lastPos_3329429:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _last_3329818:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_3329779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3329576:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _j_3329457:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3329462_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _id_3329384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3329852:stdgo.GoInt = (0 : stdgo.GoInt);
        var _this_3329794:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _lastLen_3329393:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3329384 = (0 : stdgo.GoInt);
                    _lastLen_3329393 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3329429 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3330013i32;
                    } else {
                        _gotoNext = 3330017i32;
                    };
                } else if (__value__ == (3329488i32)) {
                    _j_3329457 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3329462_0 : stdgo.GoInt)];
                    _n_3329576 = _sa[((_j_3329457 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3329576 != (_lastLen_3329393)) {
                        _gotoNext = 3329607i32;
                    } else {
                        _gotoNext = 3329627i32;
                    };
                } else if (__value__ == (3329607i32)) {
                    _gotoNext = 3329944i32;
                } else if (__value__ == (3329627i32)) {
                    if (((_n_3329576 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3329661i32;
                    } else {
                        _gotoNext = 3329746i32;
                    };
                } else if (__value__ == (3329661i32)) {
                    _gotoNext = 3329985i32;
                } else if (__value__ == (3329746i32)) {
                    _n_3329779 = (_n_3329576 : stdgo.GoInt);
                    _this_3329794 = ((_text.__slice__(_j_3329457) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3329779) : stdgo.Slice<stdgo.GoInt64>);
                    _last_3329818 = ((_text.__slice__(_lastPos_3329429) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3329779) : stdgo.Slice<stdgo.GoInt64>);
                    _i_3329852 = (0 : stdgo.GoInt);
                    _gotoNext = 3329848i32;
                    {
                        _gotoNext = 3329746i32;
                    };
                } else if (__value__ == (3329848i32)) {
                    if ((_i_3329852 < _n_3329779 : Bool)) {
                        _gotoNext = 3329871i32;
                    } else {
                        _gotoNext = 3329929i32;
                    };
                } else if (__value__ == (3329867i32)) {
                    _i_3329852++;
                    _gotoNext = 3329848i32;
                } else if (__value__ == (3329871i32)) {
                    if (_this_3329794[(_i_3329852 : stdgo.GoInt)] != (_last_3329818[(_i_3329852 : stdgo.GoInt)])) {
                        _gotoNext = 3329899i32;
                    } else {
                        _gotoNext = 3329867i32;
                    };
                } else if (__value__ == (3329899i32)) {
                    _gotoNext = 3329944i32;
                } else if (__value__ == (3329929i32)) {
                    _gotoNext = 3329985i32;
                } else if (__value__ == (3329944i32)) {
                    _gotoNext = 3329944i32;
                    _id_3329384++;
                    _lastPos_3329429 = _j_3329457;
                    _lastLen_3329393 = _n_3329576;
                    _gotoNext = 3329985i32;
                } else if (__value__ == (3329985i32)) {
                    _sa[((_j_3329457 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3329384 : stdgo.GoInt64);
                    _i_3329462_0++;
                    _gotoNext = 3330014i32;
                } else if (__value__ == (3330013i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3329462_0 = __tmp__0;
                        _j_3329457 = __tmp__1;
                    };
                    _gotoNext = 3330014i32;
                } else if (__value__ == (3330014i32)) {
                    if (_i_3329462_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3329488i32;
                    } else {
                        _gotoNext = 3330017i32;
                    };
                } else if (__value__ == (3330017i32)) {
                    return _id_3329384;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
