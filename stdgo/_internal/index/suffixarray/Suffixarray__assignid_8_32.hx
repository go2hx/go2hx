package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_8:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _lastPos_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _j_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_4016639_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _this_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_0 = (0 : stdgo.GoInt);
                    _lastLen_1 = (-1 : stdgo.GoInt32);
                    _lastPos_2 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4017190i32;
                    } else {
                        _gotoNext = 4017194i32;
                    };
                } else if (__value__ == (4016665i32)) {
                    _j_4 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_4016639_3 : stdgo.GoInt)];
                    _n_5 = _sa[((_j_4 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_5 != (_lastLen_1)) {
                        _gotoNext = 4016784i32;
                    } else {
                        _gotoNext = 4016804i32;
                    };
                } else if (__value__ == (4016784i32)) {
                    _gotoNext = 4017121i32;
                } else if (__value__ == (4016804i32)) {
                    if (((_n_5 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 4016838i32;
                    } else {
                        _gotoNext = 4016923i32;
                    };
                } else if (__value__ == (4016838i32)) {
                    _gotoNext = 4017162i32;
                } else if (__value__ == (4016923i32)) {
                    _n_6 = (_n_5 : stdgo.GoInt);
                    _this_7 = ((_text.__slice__(_j_4) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_6) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_8 = ((_text.__slice__(_lastPos_2) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_6) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_9 = (0 : stdgo.GoInt);
                    _gotoNext = 4017025i32;
                    {
                        _gotoNext = 4016923i32;
                    };
                } else if (__value__ == (4017025i32)) {
                    if ((_i_9 < _n_6 : Bool)) {
                        _gotoNext = 4017048i32;
                    } else {
                        _gotoNext = 4017106i32;
                    };
                } else if (__value__ == (4017044i32)) {
                    _i_9++;
                    _gotoNext = 4017025i32;
                } else if (__value__ == (4017048i32)) {
                    if (_this_7[(_i_9 : stdgo.GoInt)] != (_last_8[(_i_9 : stdgo.GoInt)])) {
                        _gotoNext = 4017076i32;
                    } else {
                        _gotoNext = 4017044i32;
                    };
                } else if (__value__ == (4017076i32)) {
                    _gotoNext = 4017121i32;
                } else if (__value__ == (4017106i32)) {
                    _gotoNext = 4017162i32;
                } else if (__value__ == (4017121i32)) {
                    _gotoNext = 4017121i32;
                    _id_0++;
                    _lastPos_2 = _j_4;
                    _lastLen_1 = _n_5;
                    _gotoNext = 4017162i32;
                } else if (__value__ == (4017162i32)) {
                    _sa[((_j_4 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_0 : stdgo.GoInt32);
                    _i_4016639_3++;
                    _gotoNext = 4017191i32;
                } else if (__value__ == (4017190i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_4016639_3 = @:binopAssign __tmp__0;
                        _j_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4017191i32;
                } else if (__value__ == (4017191i32)) {
                    if (_i_4016639_3 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4016665i32;
                    } else {
                        _gotoNext = 4017194i32;
                    };
                } else if (__value__ == (4017194i32)) {
                    return _id_0;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
