package stdgo._internal.index.suffixarray;
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _i_3352656:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3352583:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3352380:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3352266_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_3352197:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3352188:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3352622:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _this_3352598:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _j_3352261:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_3352233:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3352188 = (0 : stdgo.GoInt);
                    _lastLen_3352197 = (-1 : stdgo.GoInt32);
                    _lastPos_3352233 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3352817i32;
                    } else {
                        _gotoNext = 3352821i32;
                    };
                } else if (__value__ == (3352292i32)) {
                    _j_3352261 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3352266_0 : stdgo.GoInt)];
                    _n_3352380 = _sa[((_j_3352261 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3352380 != (_lastLen_3352197)) {
                        _gotoNext = 3352411i32;
                    } else {
                        _gotoNext = 3352431i32;
                    };
                } else if (__value__ == (3352411i32)) {
                    _gotoNext = 3352748i32;
                } else if (__value__ == (3352431i32)) {
                    if (((_n_3352380 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3352465i32;
                    } else {
                        _gotoNext = 3352550i32;
                    };
                } else if (__value__ == (3352465i32)) {
                    _gotoNext = 3352789i32;
                } else if (__value__ == (3352550i32)) {
                    _n_3352583 = (_n_3352380 : stdgo.GoInt);
                    _this_3352598 = ((_text.__slice__(_j_3352261) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3352583) : stdgo.Slice<stdgo.GoInt32>);
                    _last_3352622 = ((_text.__slice__(_lastPos_3352233) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3352583) : stdgo.Slice<stdgo.GoInt32>);
                    _i_3352656 = (0 : stdgo.GoInt);
                    _gotoNext = 3352652i32;
                    {
                        _gotoNext = 3352550i32;
                    };
                } else if (__value__ == (3352652i32)) {
                    if ((_i_3352656 < _n_3352583 : Bool)) {
                        _gotoNext = 3352675i32;
                    } else {
                        _gotoNext = 3352733i32;
                    };
                } else if (__value__ == (3352671i32)) {
                    _i_3352656++;
                    _gotoNext = 3352652i32;
                } else if (__value__ == (3352675i32)) {
                    if (_this_3352598[(_i_3352656 : stdgo.GoInt)] != (_last_3352622[(_i_3352656 : stdgo.GoInt)])) {
                        _gotoNext = 3352703i32;
                    } else {
                        _gotoNext = 3352671i32;
                    };
                } else if (__value__ == (3352703i32)) {
                    _gotoNext = 3352748i32;
                } else if (__value__ == (3352733i32)) {
                    _gotoNext = 3352789i32;
                } else if (__value__ == (3352748i32)) {
                    _gotoNext = 3352748i32;
                    _id_3352188++;
                    _lastPos_3352233 = _j_3352261;
                    _lastLen_3352197 = _n_3352380;
                    _gotoNext = 3352789i32;
                } else if (__value__ == (3352789i32)) {
                    _sa[((_j_3352261 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3352188 : stdgo.GoInt32);
                    _i_3352266_0++;
                    _gotoNext = 3352818i32;
                } else if (__value__ == (3352817i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3352266_0 = __tmp__0;
                        _j_3352261 = __tmp__1;
                    };
                    _gotoNext = 3352818i32;
                } else if (__value__ == (3352818i32)) {
                    if (_i_3352266_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3352292i32;
                    } else {
                        _gotoNext = 3352821i32;
                    };
                } else if (__value__ == (3352821i32)) {
                    return _id_3352188;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
