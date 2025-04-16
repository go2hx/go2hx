package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _n_35:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _iterator_4203090_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_31:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_38:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _this_37:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_34:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_32:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_30 = (0 : stdgo.GoInt);
                    _lastLen_31 = (-1i64 : stdgo.GoInt64);
                    _lastPos_32 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4203641i32;
                    } else {
                        _gotoNext = 4203645i32;
                    };
                } else if (__value__ == (4203116i32)) {
                    _j_34 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_iterator_4203090_33 : stdgo.GoInt)];
                    _n_35 = _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_35 != (_lastLen_31)) {
                        _gotoNext = 4203235i32;
                    } else {
                        _gotoNext = 4203255i32;
                    };
                } else if (__value__ == (4203235i32)) {
                    _gotoNext = 4203572i32;
                } else if (__value__ == (4203255i32)) {
                    if (((_n_35 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 4203289i32;
                    } else {
                        _gotoNext = 4203374i32;
                    };
                } else if (__value__ == (4203289i32)) {
                    _gotoNext = 4203613i32;
                } else if (__value__ == (4203374i32)) {
                    _n_36 = (_n_35 : stdgo.GoInt);
                    _this_37 = ((_text.__slice__(_j_34) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _last_38 = ((_text.__slice__(_lastPos_32) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _i_39 = (0 : stdgo.GoInt);
                    _gotoNext = 4203476i32;
                    {
                        _gotoNext = 4203374i32;
                    };
                } else if (__value__ == (4203476i32)) {
                    if ((_i_39 < _n_36 : Bool)) {
                        _gotoNext = 4203499i32;
                    } else {
                        _gotoNext = 4203557i32;
                    };
                } else if (__value__ == (4203495i32)) {
                    _i_39++;
                    _gotoNext = 4203476i32;
                } else if (__value__ == (4203499i32)) {
                    if (_this_37[(_i_39 : stdgo.GoInt)] != (_last_38[(_i_39 : stdgo.GoInt)])) {
                        _gotoNext = 4203527i32;
                    } else {
                        _gotoNext = 4203495i32;
                    };
                } else if (__value__ == (4203527i32)) {
                    _gotoNext = 4203572i32;
                } else if (__value__ == (4203557i32)) {
                    _gotoNext = 4203613i32;
                } else if (__value__ == (4203572i32)) {
                    _gotoNext = 4203572i32;
                    _id_30++;
                    _lastPos_32 = _j_34;
                    _lastLen_31 = _n_35;
                    _gotoNext = 4203613i32;
                } else if (__value__ == (4203613i32)) {
                    _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_30 : stdgo.GoInt64);
                    _iterator_4203090_33++;
                    _gotoNext = 4203642i32;
                } else if (__value__ == (4203641i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _iterator_4203090_33 = @:binopAssign __tmp__0;
                        _j_34 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4203642i32;
                } else if (__value__ == (4203642i32)) {
                    if (_iterator_4203090_33 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4203116i32;
                    } else {
                        _gotoNext = 4203645i32;
                    };
                } else if (__value__ == (4203645i32)) {
                    return _id_30;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
