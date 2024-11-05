package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3829355:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _h_3828405:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3828778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3828658:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3828626:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3828429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3828434_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3829073:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3828405 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3828518i32;
                    } else {
                        _gotoNext = 3828522i32;
                    };
                } else if (__value__ == (3828444i32)) {
                    _x_3828429 = _stk[(_i_3828434_0 : stdgo.GoInt)];
                    _h_3828405 = ((_h_3828405 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3828405 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3828405 = (_h_3828405 + (((_x_3828429 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3828434_0++;
                    _gotoNext = 3828519i32;
                } else if (__value__ == (3828518i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3828434_0 = __tmp__0;
                        _x_3828429 = __tmp__1;
                    };
                    _gotoNext = 3828519i32;
                } else if (__value__ == (3828519i32)) {
                    if (_i_3828434_0 < (_stk.length)) {
                        _gotoNext = 3828444i32;
                    } else {
                        _gotoNext = 3828522i32;
                    };
                } else if (__value__ == (3828522i32)) {
                    _h_3828405 = ((_h_3828405 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3828405 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3828405 = (_h_3828405 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3828645i32;
                } else if (__value__ == (3828645i32)) {
                    _e_3828658 = (_m._hash[_h_3828405] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3828654i32;
                } else if (__value__ == (3828654i32)) {
                    if (!searchBreak && (_e_3828658 != null && ((_e_3828658 : Dynamic).__nil__ == null || !(_e_3828658 : Dynamic).__nil__))) {
                        _gotoNext = 3828708i32;
                    } else {
                        _gotoNext = 3829011i32;
                    };
                } else if (__value__ == (3828708i32)) {
                    if (((_e_3828658._stk.length != (_stk.length)) || (_e_3828658._tag != _tag) : Bool)) {
                        _gotoNext = 3828754i32;
                    } else {
                        _gotoNext = 3828774i32;
                    };
                } else if (__value__ == (3828754i32)) {
                    {
                        final __tmp__0 = _e_3828658;
                        final __tmp__1 = _e_3828658._nextHash;
                        _last_3828626 = __tmp__0;
                        _e_3828658 = __tmp__1;
                    };
                    _gotoNext = 3828654i32;
                } else if (__value__ == (3828774i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3828857i32;
                    } else {
                        _gotoNext = 3828882i32;
                    };
                } else if (__value__ == (3828778i32)) {
                    _j_3828778++;
                    _gotoNext = 3828858i32;
                } else if (__value__ == (3828793i32)) {
                    if (_e_3828658._stk[(_j_3828778 : stdgo.GoInt)] != ((_stk[(_j_3828778 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3828829i32;
                    } else {
                        _gotoNext = 3828778i32;
                    };
                } else if (__value__ == (3828829i32)) {
                    {
                        final __tmp__0 = _e_3828658;
                        final __tmp__1 = _e_3828658._nextHash;
                        _last_3828626 = __tmp__0;
                        _e_3828658 = __tmp__1;
                    };
                    _gotoNext = 3828654i32;
                } else if (__value__ == (3828857i32)) {
                    _j_3828778 = 0i32;
                    _gotoNext = 3828858i32;
                } else if (__value__ == (3828858i32)) {
                    if (_j_3828778 < (_stk.length)) {
                        _gotoNext = 3828793i32;
                    } else {
                        _gotoNext = 3828882i32;
                    };
                } else if (__value__ == (3828882i32)) {
                    if (_last_3828626 != null && ((_last_3828626 : Dynamic).__nil__ == null || !(_last_3828626 : Dynamic).__nil__)) {
                        _gotoNext = 3828897i32;
                    } else {
                        _gotoNext = 3828978i32;
                    };
                } else if (__value__ == (3828897i32)) {
                    _last_3828626._nextHash = _e_3828658._nextHash;
                    _e_3828658._nextHash = (_m._hash[_h_3828405] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3828405] = _e_3828658;
                    _gotoNext = 3828978i32;
                } else if (__value__ == (3828978i32)) {
                    return _e_3828658;
                    {
                        final __tmp__0 = _e_3828658;
                        final __tmp__1 = _e_3828658._nextHash;
                        _last_3828626 = __tmp__0;
                        _e_3828658 = __tmp__1;
                    };
                    _gotoNext = 3828654i32;
                } else if (__value__ == (3829011i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3829030i32;
                    } else {
                        _gotoNext = 3829073i32;
                    };
                } else if (__value__ == (3829030i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3829073i32;
                } else if (__value__ == (3829073i32)) {
                    _e_3829073 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3829073._nextHash = (_m._hash[_h_3828405] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3829073._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3829178i32;
                    } else {
                        _gotoNext = 3829277i32;
                    };
                } else if (__value__ == (3829178i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3829277i32;
                } else if (__value__ == (3829277i32)) {
                    _e_3829073._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3829401i32;
                    } else {
                        _gotoNext = 3829405i32;
                    };
                } else if (__value__ == (3829370i32)) {
                    _e_3829073._stk[(_j_3829355 : stdgo.GoInt)] = (_stk[(_j_3829355 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3829355++;
                    _gotoNext = 3829402i32;
                } else if (__value__ == (3829401i32)) {
                    _j_3829355 = 0i32;
                    _gotoNext = 3829402i32;
                } else if (__value__ == (3829402i32)) {
                    if (_j_3829355 < (_stk.length)) {
                        _gotoNext = 3829370i32;
                    } else {
                        _gotoNext = 3829405i32;
                    };
                } else if (__value__ == (3829405i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3829422i32;
                    } else {
                        _gotoNext = 3829471i32;
                    };
                } else if (__value__ == (3829422i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3829471i32;
                } else if (__value__ == (3829471i32)) {
                    _m._hash[_h_3828405] = _e_3829073;
                    if (_m._all == null || (_m._all : Dynamic).__nil__) {
                        _gotoNext = 3829502i32;
                    } else {
                        _gotoNext = 3829537i32;
                    };
                } else if (__value__ == (3829502i32)) {
                    _m._all = _e_3829073;
                    _m._last = _e_3829073;
                    _gotoNext = 3829577i32;
                } else if (__value__ == (3829537i32)) {
                    _m._last._nextAll = _e_3829073;
                    _m._last = _e_3829073;
                    _gotoNext = 3829577i32;
                } else if (__value__ == (3829577i32)) {
                    return _e_3829073;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
