package stdgo._internal.index.suffixarray;
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _lastLen_21:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_28:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _this_27:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _n_25:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_4018975_23:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_24:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_22:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_29:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_20 = (0 : stdgo.GoInt);
                    _lastLen_21 = (-1 : stdgo.GoInt32);
                    _lastPos_22 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4019526i32;
                    } else {
                        _gotoNext = 4019530i32;
                    };
                } else if (__value__ == (4019001i32)) {
                    _j_24 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_4018975_23 : stdgo.GoInt)];
                    _n_25 = _sa[((_j_24 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_25 != (_lastLen_21)) {
                        _gotoNext = 4019120i32;
                    } else {
                        _gotoNext = 4019140i32;
                    };
                } else if (__value__ == (4019120i32)) {
                    _gotoNext = 4019457i32;
                } else if (__value__ == (4019140i32)) {
                    if (((_n_25 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 4019174i32;
                    } else {
                        _gotoNext = 4019259i32;
                    };
                } else if (__value__ == (4019174i32)) {
                    _gotoNext = 4019498i32;
                } else if (__value__ == (4019259i32)) {
                    _n_26 = (_n_25 : stdgo.GoInt);
                    _this_27 = ((_text.__slice__(_j_24) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_26) : stdgo.Slice<stdgo.GoInt32>);
                    _last_28 = ((_text.__slice__(_lastPos_22) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_26) : stdgo.Slice<stdgo.GoInt32>);
                    _i_29 = (0 : stdgo.GoInt);
                    _gotoNext = 4019361i32;
                    {
                        _gotoNext = 4019259i32;
                    };
                } else if (__value__ == (4019361i32)) {
                    if ((_i_29 < _n_26 : Bool)) {
                        _gotoNext = 4019384i32;
                    } else {
                        _gotoNext = 4019442i32;
                    };
                } else if (__value__ == (4019380i32)) {
                    _i_29++;
                    _gotoNext = 4019361i32;
                } else if (__value__ == (4019384i32)) {
                    if (_this_27[(_i_29 : stdgo.GoInt)] != (_last_28[(_i_29 : stdgo.GoInt)])) {
                        _gotoNext = 4019412i32;
                    } else {
                        _gotoNext = 4019380i32;
                    };
                } else if (__value__ == (4019412i32)) {
                    _gotoNext = 4019457i32;
                } else if (__value__ == (4019442i32)) {
                    _gotoNext = 4019498i32;
                } else if (__value__ == (4019457i32)) {
                    _gotoNext = 4019457i32;
                    _id_20++;
                    _lastPos_22 = _j_24;
                    _lastLen_21 = _n_25;
                    _gotoNext = 4019498i32;
                } else if (__value__ == (4019498i32)) {
                    _sa[((_j_24 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_20 : stdgo.GoInt32);
                    _i_4018975_23++;
                    _gotoNext = 4019527i32;
                } else if (__value__ == (4019526i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_4018975_23 = @:binopAssign __tmp__0;
                        _j_24 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4019527i32;
                } else if (__value__ == (4019527i32)) {
                    if (_i_4018975_23 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4019001i32;
                    } else {
                        _gotoNext = 4019530i32;
                    };
                } else if (__value__ == (4019530i32)) {
                    return _id_20;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
