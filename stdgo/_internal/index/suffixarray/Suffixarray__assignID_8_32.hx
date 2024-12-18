package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _id_3358958:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3359353:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3359031:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3359036_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_3359003:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastLen_3358967:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3359426:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3359392:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _this_3359368:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3359150:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3358958 = (0 : stdgo.GoInt);
                    _lastLen_3358967 = (-1 : stdgo.GoInt32);
                    _lastPos_3359003 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3359587i32;
                    } else {
                        _gotoNext = 3359591i32;
                    };
                } else if (__value__ == (3359062i32)) {
                    _j_3359031 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3359036_0 : stdgo.GoInt)];
                    _n_3359150 = _sa[((_j_3359031 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3359150 != (_lastLen_3358967)) {
                        _gotoNext = 3359181i32;
                    } else {
                        _gotoNext = 3359201i32;
                    };
                } else if (__value__ == (3359181i32)) {
                    _gotoNext = 3359518i32;
                } else if (__value__ == (3359201i32)) {
                    if (((_n_3359150 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3359235i32;
                    } else {
                        _gotoNext = 3359320i32;
                    };
                } else if (__value__ == (3359235i32)) {
                    _gotoNext = 3359559i32;
                } else if (__value__ == (3359320i32)) {
                    _n_3359353 = (_n_3359150 : stdgo.GoInt);
                    _this_3359368 = ((_text.__slice__(_j_3359031) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3359353) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3359392 = ((_text.__slice__(_lastPos_3359003) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3359353) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3359426 = (0 : stdgo.GoInt);
                    _gotoNext = 3359422i32;
                    {
                        _gotoNext = 3359320i32;
                    };
                } else if (__value__ == (3359422i32)) {
                    if ((_i_3359426 < _n_3359353 : Bool)) {
                        _gotoNext = 3359445i32;
                    } else {
                        _gotoNext = 3359503i32;
                    };
                } else if (__value__ == (3359441i32)) {
                    _i_3359426++;
                    _gotoNext = 3359422i32;
                } else if (__value__ == (3359445i32)) {
                    if (_this_3359368[(_i_3359426 : stdgo.GoInt)] != (_last_3359392[(_i_3359426 : stdgo.GoInt)])) {
                        _gotoNext = 3359473i32;
                    } else {
                        _gotoNext = 3359441i32;
                    };
                } else if (__value__ == (3359473i32)) {
                    _gotoNext = 3359518i32;
                } else if (__value__ == (3359503i32)) {
                    _gotoNext = 3359559i32;
                } else if (__value__ == (3359518i32)) {
                    _gotoNext = 3359518i32;
                    _id_3358958++;
                    _lastPos_3359003 = _j_3359031;
                    _lastLen_3358967 = _n_3359150;
                    _gotoNext = 3359559i32;
                } else if (__value__ == (3359559i32)) {
                    _sa[((_j_3359031 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3358958 : stdgo.GoInt32);
                    _i_3359036_0++;
                    _gotoNext = 3359588i32;
                } else if (__value__ == (3359587i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3359036_0 = __tmp__0;
                        _j_3359031 = __tmp__1;
                    };
                    _gotoNext = 3359588i32;
                } else if (__value__ == (3359588i32)) {
                    if (_i_3359036_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3359062i32;
                    } else {
                        _gotoNext = 3359591i32;
                    };
                } else if (__value__ == (3359591i32)) {
                    return _id_3358958;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
