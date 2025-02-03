package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _j_3318293:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3318298_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_3318229:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _last_3318654:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3318615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3318412:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_3318265:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_3318220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3318688:stdgo.GoInt = (0 : stdgo.GoInt);
        var _this_3318630:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3318220 = (0 : stdgo.GoInt);
                    _lastLen_3318229 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3318265 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3318849i32;
                    } else {
                        _gotoNext = 3318853i32;
                    };
                } else if (__value__ == (3318324i32)) {
                    _j_3318293 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3318298_0 : stdgo.GoInt)];
                    _n_3318412 = _sa[((_j_3318293 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3318412 != (_lastLen_3318229)) {
                        _gotoNext = 3318443i32;
                    } else {
                        _gotoNext = 3318463i32;
                    };
                } else if (__value__ == (3318443i32)) {
                    _gotoNext = 3318780i32;
                } else if (__value__ == (3318463i32)) {
                    if (((_n_3318412 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3318497i32;
                    } else {
                        _gotoNext = 3318582i32;
                    };
                } else if (__value__ == (3318497i32)) {
                    _gotoNext = 3318821i32;
                } else if (__value__ == (3318582i32)) {
                    _n_3318615 = (_n_3318412 : stdgo.GoInt);
                    _this_3318630 = ((_text.__slice__(_j_3318293) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3318615) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3318654 = ((_text.__slice__(_lastPos_3318265) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3318615) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3318688 = (0 : stdgo.GoInt);
                    _gotoNext = 3318684i32;
                    {
                        _gotoNext = 3318582i32;
                    };
                } else if (__value__ == (3318684i32)) {
                    if ((_i_3318688 < _n_3318615 : Bool)) {
                        _gotoNext = 3318707i32;
                    } else {
                        _gotoNext = 3318765i32;
                    };
                } else if (__value__ == (3318703i32)) {
                    _i_3318688++;
                    _gotoNext = 3318684i32;
                } else if (__value__ == (3318707i32)) {
                    if (_this_3318630[(_i_3318688 : stdgo.GoInt)] != (_last_3318654[(_i_3318688 : stdgo.GoInt)])) {
                        _gotoNext = 3318735i32;
                    } else {
                        _gotoNext = 3318703i32;
                    };
                } else if (__value__ == (3318735i32)) {
                    _gotoNext = 3318780i32;
                } else if (__value__ == (3318765i32)) {
                    _gotoNext = 3318821i32;
                } else if (__value__ == (3318780i32)) {
                    _gotoNext = 3318780i32;
                    _id_3318220++;
                    _lastPos_3318265 = _j_3318293;
                    _lastLen_3318229 = _n_3318412;
                    _gotoNext = 3318821i32;
                } else if (__value__ == (3318821i32)) {
                    _sa[((_j_3318293 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3318220 : stdgo.GoInt64);
                    _i_3318298_0++;
                    _gotoNext = 3318850i32;
                } else if (__value__ == (3318849i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3318298_0 = __tmp__0;
                        _j_3318293 = __tmp__1;
                    };
                    _gotoNext = 3318850i32;
                } else if (__value__ == (3318850i32)) {
                    if (_i_3318298_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3318324i32;
                    } else {
                        _gotoNext = 3318853i32;
                    };
                } else if (__value__ == (3318853i32)) {
                    return _id_3318220;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
