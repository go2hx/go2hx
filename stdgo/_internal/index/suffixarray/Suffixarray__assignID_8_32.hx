package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _j_3315069:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3315074_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_3315005:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3314996:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3315430:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _this_3315406:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3315391:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3315188:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_3315041:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3315464:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3314996 = (0 : stdgo.GoInt);
                    _lastLen_3315005 = (-1 : stdgo.GoInt32);
                    _lastPos_3315041 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3315625i32;
                    } else {
                        _gotoNext = 3315629i32;
                    };
                } else if (__value__ == (3315100i32)) {
                    _j_3315069 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3315074_0 : stdgo.GoInt)];
                    _n_3315188 = _sa[((_j_3315069 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3315188 != (_lastLen_3315005)) {
                        _gotoNext = 3315219i32;
                    } else {
                        _gotoNext = 3315239i32;
                    };
                } else if (__value__ == (3315219i32)) {
                    _gotoNext = 3315556i32;
                } else if (__value__ == (3315239i32)) {
                    if (((_n_3315188 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3315273i32;
                    } else {
                        _gotoNext = 3315358i32;
                    };
                } else if (__value__ == (3315273i32)) {
                    _gotoNext = 3315597i32;
                } else if (__value__ == (3315358i32)) {
                    _n_3315391 = (_n_3315188 : stdgo.GoInt);
                    _this_3315406 = ((_text.__slice__(_j_3315069) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3315391) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3315430 = ((_text.__slice__(_lastPos_3315041) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3315391) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3315464 = (0 : stdgo.GoInt);
                    _gotoNext = 3315460i32;
                    {
                        _gotoNext = 3315358i32;
                    };
                } else if (__value__ == (3315460i32)) {
                    if ((_i_3315464 < _n_3315391 : Bool)) {
                        _gotoNext = 3315483i32;
                    } else {
                        _gotoNext = 3315541i32;
                    };
                } else if (__value__ == (3315479i32)) {
                    _i_3315464++;
                    _gotoNext = 3315460i32;
                } else if (__value__ == (3315483i32)) {
                    if (_this_3315406[(_i_3315464 : stdgo.GoInt)] != (_last_3315430[(_i_3315464 : stdgo.GoInt)])) {
                        _gotoNext = 3315511i32;
                    } else {
                        _gotoNext = 3315479i32;
                    };
                } else if (__value__ == (3315511i32)) {
                    _gotoNext = 3315556i32;
                } else if (__value__ == (3315541i32)) {
                    _gotoNext = 3315597i32;
                } else if (__value__ == (3315556i32)) {
                    _gotoNext = 3315556i32;
                    _id_3314996++;
                    _lastPos_3315041 = _j_3315069;
                    _lastLen_3315005 = _n_3315188;
                    _gotoNext = 3315597i32;
                } else if (__value__ == (3315597i32)) {
                    _sa[((_j_3315069 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3314996 : stdgo.GoInt32);
                    _i_3315074_0++;
                    _gotoNext = 3315626i32;
                } else if (__value__ == (3315625i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3315074_0 = __tmp__0;
                        _j_3315069 = __tmp__1;
                    };
                    _gotoNext = 3315626i32;
                } else if (__value__ == (3315626i32)) {
                    if (_i_3315074_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3315100i32;
                    } else {
                        _gotoNext = 3315629i32;
                    };
                } else if (__value__ == (3315629i32)) {
                    return _id_3314996;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
