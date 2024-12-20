package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3830581:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _i_3830237_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3830876:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3830461:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3830429:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3830232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3830208:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3831158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3830208 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3830321i32;
                    } else {
                        _gotoNext = 3830325i32;
                    };
                } else if (__value__ == (3830247i32)) {
                    _x_3830232 = _stk[(_i_3830237_0 : stdgo.GoInt)];
                    _h_3830208 = ((_h_3830208 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3830208 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3830208 = (_h_3830208 + (((_x_3830232 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3830237_0++;
                    _gotoNext = 3830322i32;
                } else if (__value__ == (3830321i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3830237_0 = __tmp__0;
                        _x_3830232 = __tmp__1;
                    };
                    _gotoNext = 3830322i32;
                } else if (__value__ == (3830322i32)) {
                    if (_i_3830237_0 < (_stk.length)) {
                        _gotoNext = 3830247i32;
                    } else {
                        _gotoNext = 3830325i32;
                    };
                } else if (__value__ == (3830325i32)) {
                    _h_3830208 = ((_h_3830208 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3830208 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3830208 = (_h_3830208 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3830448i32;
                } else if (__value__ == (3830448i32)) {
                    _e_3830461 = (_m._hash[_h_3830208] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3830457i32;
                } else if (__value__ == (3830457i32)) {
                    if (!searchBreak && ((_e_3830461 != null && ((_e_3830461 : Dynamic).__nil__ == null || !(_e_3830461 : Dynamic).__nil__)))) {
                        _gotoNext = 3830511i32;
                    } else {
                        _gotoNext = 3830814i32;
                    };
                } else if (__value__ == (3830511i32)) {
                    if (((_e_3830461._stk.length != (_stk.length)) || (_e_3830461._tag != _tag) : Bool)) {
                        _gotoNext = 3830557i32;
                    } else {
                        _gotoNext = 3830577i32;
                    };
                } else if (__value__ == (3830557i32)) {
                    {
                        final __tmp__0 = _e_3830461;
                        final __tmp__1 = _e_3830461._nextHash;
                        _last_3830429 = __tmp__0;
                        _e_3830461 = __tmp__1;
                    };
                    _gotoNext = 3830457i32;
                } else if (__value__ == (3830577i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3830660i32;
                    } else {
                        _gotoNext = 3830685i32;
                    };
                } else if (__value__ == (3830581i32)) {
                    _j_3830581++;
                    _gotoNext = 3830661i32;
                } else if (__value__ == (3830596i32)) {
                    if (_e_3830461._stk[(_j_3830581 : stdgo.GoInt)] != ((_stk[(_j_3830581 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3830632i32;
                    } else {
                        _gotoNext = 3830581i32;
                    };
                } else if (__value__ == (3830632i32)) {
                    {
                        final __tmp__0 = _e_3830461;
                        final __tmp__1 = _e_3830461._nextHash;
                        _last_3830429 = __tmp__0;
                        _e_3830461 = __tmp__1;
                    };
                    _gotoNext = 3830457i32;
                } else if (__value__ == (3830660i32)) {
                    _j_3830581 = 0i32;
                    _gotoNext = 3830661i32;
                } else if (__value__ == (3830661i32)) {
                    if (_j_3830581 < (_stk.length)) {
                        _gotoNext = 3830596i32;
                    } else {
                        _gotoNext = 3830685i32;
                    };
                } else if (__value__ == (3830685i32)) {
                    if ((_last_3830429 != null && ((_last_3830429 : Dynamic).__nil__ == null || !(_last_3830429 : Dynamic).__nil__))) {
                        _gotoNext = 3830700i32;
                    } else {
                        _gotoNext = 3830781i32;
                    };
                } else if (__value__ == (3830700i32)) {
                    _last_3830429._nextHash = _e_3830461._nextHash;
                    _e_3830461._nextHash = (_m._hash[_h_3830208] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3830208] = _e_3830461;
                    _gotoNext = 3830781i32;
                } else if (__value__ == (3830781i32)) {
                    return _e_3830461;
                    {
                        final __tmp__0 = _e_3830461;
                        final __tmp__1 = _e_3830461._nextHash;
                        _last_3830429 = __tmp__0;
                        _e_3830461 = __tmp__1;
                    };
                    _gotoNext = 3830457i32;
                } else if (__value__ == (3830814i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3830833i32;
                    } else {
                        _gotoNext = 3830876i32;
                    };
                } else if (__value__ == (3830833i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3830876i32;
                } else if (__value__ == (3830876i32)) {
                    _e_3830876 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3830876._nextHash = (_m._hash[_h_3830208] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3830876._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3830981i32;
                    } else {
                        _gotoNext = 3831080i32;
                    };
                } else if (__value__ == (3830981i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3831080i32;
                } else if (__value__ == (3831080i32)) {
                    _e_3830876._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3831204i32;
                    } else {
                        _gotoNext = 3831208i32;
                    };
                } else if (__value__ == (3831173i32)) {
                    _e_3830876._stk[(_j_3831158 : stdgo.GoInt)] = (_stk[(_j_3831158 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3831158++;
                    _gotoNext = 3831205i32;
                } else if (__value__ == (3831204i32)) {
                    _j_3831158 = 0i32;
                    _gotoNext = 3831205i32;
                } else if (__value__ == (3831205i32)) {
                    if (_j_3831158 < (_stk.length)) {
                        _gotoNext = 3831173i32;
                    } else {
                        _gotoNext = 3831208i32;
                    };
                } else if (__value__ == (3831208i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3831225i32;
                    } else {
                        _gotoNext = 3831274i32;
                    };
                } else if (__value__ == (3831225i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3831274i32;
                } else if (__value__ == (3831274i32)) {
                    _m._hash[_h_3830208] = _e_3830876;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3831305i32;
                    } else {
                        _gotoNext = 3831340i32;
                    };
                } else if (__value__ == (3831305i32)) {
                    _m._all = _e_3830876;
                    _m._last = _e_3830876;
                    _gotoNext = 3831380i32;
                } else if (__value__ == (3831340i32)) {
                    _gotoNext = 3831340i32;
                    _m._last._nextAll = _e_3830876;
                    _m._last = _e_3830876;
                    var __blank__ = 0i32;
                    _gotoNext = 3831380i32;
                } else if (__value__ == (3831380i32)) {
                    return _e_3830876;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
