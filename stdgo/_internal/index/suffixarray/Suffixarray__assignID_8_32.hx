package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _last_3369140:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _this_3369116:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3368898:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3368706:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3368779:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3368784_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_3368751:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastLen_3368715:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3369174:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3369101:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3368706 = (0 : stdgo.GoInt);
                    _lastLen_3368715 = (-1 : stdgo.GoInt32);
                    _lastPos_3368751 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3369335i32;
                    } else {
                        _gotoNext = 3369339i32;
                    };
                } else if (__value__ == (3368810i32)) {
                    _j_3368779 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3368784_0 : stdgo.GoInt)];
                    _n_3368898 = _sa[((_j_3368779 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3368898 != (_lastLen_3368715)) {
                        _gotoNext = 3368929i32;
                    } else {
                        _gotoNext = 3368949i32;
                    };
                } else if (__value__ == (3368929i32)) {
                    _gotoNext = 3369266i32;
                } else if (__value__ == (3368949i32)) {
                    if (((_n_3368898 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3368983i32;
                    } else {
                        _gotoNext = 3369068i32;
                    };
                } else if (__value__ == (3368983i32)) {
                    _gotoNext = 3369307i32;
                } else if (__value__ == (3369068i32)) {
                    _n_3369101 = (_n_3368898 : stdgo.GoInt);
                    _this_3369116 = ((_text.__slice__(_j_3368779) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3369101) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3369140 = ((_text.__slice__(_lastPos_3368751) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3369101) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3369174 = (0 : stdgo.GoInt);
                    _gotoNext = 3369170i32;
                    {
                        _gotoNext = 3369068i32;
                    };
                } else if (__value__ == (3369170i32)) {
                    if ((_i_3369174 < _n_3369101 : Bool)) {
                        _gotoNext = 3369193i32;
                    } else {
                        _gotoNext = 3369251i32;
                    };
                } else if (__value__ == (3369189i32)) {
                    _i_3369174++;
                    _gotoNext = 3369170i32;
                } else if (__value__ == (3369193i32)) {
                    if (_this_3369116[(_i_3369174 : stdgo.GoInt)] != (_last_3369140[(_i_3369174 : stdgo.GoInt)])) {
                        _gotoNext = 3369221i32;
                    } else {
                        _gotoNext = 3369189i32;
                    };
                } else if (__value__ == (3369221i32)) {
                    _gotoNext = 3369266i32;
                } else if (__value__ == (3369251i32)) {
                    _gotoNext = 3369307i32;
                } else if (__value__ == (3369266i32)) {
                    _gotoNext = 3369266i32;
                    _id_3368706++;
                    _lastPos_3368751 = _j_3368779;
                    _lastLen_3368715 = _n_3368898;
                    _gotoNext = 3369307i32;
                } else if (__value__ == (3369307i32)) {
                    _sa[((_j_3368779 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3368706 : stdgo.GoInt32);
                    _i_3368784_0++;
                    _gotoNext = 3369336i32;
                } else if (__value__ == (3369335i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3368784_0 = __tmp__0;
                        _j_3368779 = __tmp__1;
                    };
                    _gotoNext = 3369336i32;
                } else if (__value__ == (3369336i32)) {
                    if (_i_3368784_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3368810i32;
                    } else {
                        _gotoNext = 3369339i32;
                    };
                } else if (__value__ == (3369339i32)) {
                    return _id_3368706;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
