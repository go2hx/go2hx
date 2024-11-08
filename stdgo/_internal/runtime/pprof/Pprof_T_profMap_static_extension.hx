package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _i_3859928_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3859899:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3860567:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3860272:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _x_3859923:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_3860152:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3860120:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3860849:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3859899 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3860012i32;
                    } else {
                        _gotoNext = 3860016i32;
                    };
                } else if (__value__ == (3859938i32)) {
                    _x_3859923 = _stk[(_i_3859928_0 : stdgo.GoInt)];
                    _h_3859899 = ((_h_3859899 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3859899 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3859899 = (_h_3859899 + (((_x_3859923 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3859928_0++;
                    _gotoNext = 3860013i32;
                } else if (__value__ == (3860012i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3859928_0 = __tmp__0;
                        _x_3859923 = __tmp__1;
                    };
                    _gotoNext = 3860013i32;
                } else if (__value__ == (3860013i32)) {
                    if (_i_3859928_0 < (_stk.length)) {
                        _gotoNext = 3859938i32;
                    } else {
                        _gotoNext = 3860016i32;
                    };
                } else if (__value__ == (3860016i32)) {
                    _h_3859899 = ((_h_3859899 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3859899 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3859899 = (_h_3859899 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3860139i32;
                } else if (__value__ == (3860139i32)) {
                    _e_3860152 = (_m._hash[_h_3859899] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860148i32)) {
                    if (!searchBreak && ((_e_3860152 != null && ((_e_3860152 : Dynamic).__nil__ == null || !(_e_3860152 : Dynamic).__nil__)))) {
                        _gotoNext = 3860202i32;
                    } else {
                        _gotoNext = 3860505i32;
                    };
                } else if (__value__ == (3860202i32)) {
                    if (((_e_3860152._stk.length != (_stk.length)) || (_e_3860152._tag != _tag) : Bool)) {
                        _gotoNext = 3860248i32;
                    } else {
                        _gotoNext = 3860268i32;
                    };
                } else if (__value__ == (3860248i32)) {
                    {
                        final __tmp__0 = _e_3860152;
                        final __tmp__1 = _e_3860152._nextHash;
                        _last_3860120 = __tmp__0;
                        _e_3860152 = __tmp__1;
                    };
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860268i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3860351i32;
                    } else {
                        _gotoNext = 3860376i32;
                    };
                } else if (__value__ == (3860272i32)) {
                    _j_3860272++;
                    _gotoNext = 3860352i32;
                } else if (__value__ == (3860287i32)) {
                    if (_e_3860152._stk[(_j_3860272 : stdgo.GoInt)] != ((_stk[(_j_3860272 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3860323i32;
                    } else {
                        _gotoNext = 3860272i32;
                    };
                } else if (__value__ == (3860323i32)) {
                    {
                        final __tmp__0 = _e_3860152;
                        final __tmp__1 = _e_3860152._nextHash;
                        _last_3860120 = __tmp__0;
                        _e_3860152 = __tmp__1;
                    };
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860351i32)) {
                    _j_3860272 = 0i32;
                    _gotoNext = 3860352i32;
                } else if (__value__ == (3860352i32)) {
                    if (_j_3860272 < (_stk.length)) {
                        _gotoNext = 3860287i32;
                    } else {
                        _gotoNext = 3860376i32;
                    };
                } else if (__value__ == (3860376i32)) {
                    if ((_last_3860120 != null && ((_last_3860120 : Dynamic).__nil__ == null || !(_last_3860120 : Dynamic).__nil__))) {
                        _gotoNext = 3860391i32;
                    } else {
                        _gotoNext = 3860472i32;
                    };
                } else if (__value__ == (3860391i32)) {
                    _last_3860120._nextHash = _e_3860152._nextHash;
                    _e_3860152._nextHash = (_m._hash[_h_3859899] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3859899] = _e_3860152;
                    _gotoNext = 3860472i32;
                } else if (__value__ == (3860472i32)) {
                    return _e_3860152;
                    {
                        final __tmp__0 = _e_3860152;
                        final __tmp__1 = _e_3860152._nextHash;
                        _last_3860120 = __tmp__0;
                        _e_3860152 = __tmp__1;
                    };
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860505i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3860524i32;
                    } else {
                        _gotoNext = 3860567i32;
                    };
                } else if (__value__ == (3860524i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3860567i32;
                } else if (__value__ == (3860567i32)) {
                    _e_3860567 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3860567._nextHash = (_m._hash[_h_3859899] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3860567._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3860672i32;
                    } else {
                        _gotoNext = 3860771i32;
                    };
                } else if (__value__ == (3860672i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3860771i32;
                } else if (__value__ == (3860771i32)) {
                    _e_3860567._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3860895i32;
                    } else {
                        _gotoNext = 3860899i32;
                    };
                } else if (__value__ == (3860864i32)) {
                    _e_3860567._stk[(_j_3860849 : stdgo.GoInt)] = (_stk[(_j_3860849 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3860849++;
                    _gotoNext = 3860896i32;
                } else if (__value__ == (3860895i32)) {
                    _j_3860849 = 0i32;
                    _gotoNext = 3860896i32;
                } else if (__value__ == (3860896i32)) {
                    if (_j_3860849 < (_stk.length)) {
                        _gotoNext = 3860864i32;
                    } else {
                        _gotoNext = 3860899i32;
                    };
                } else if (__value__ == (3860899i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3860916i32;
                    } else {
                        _gotoNext = 3860965i32;
                    };
                } else if (__value__ == (3860916i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3860965i32;
                } else if (__value__ == (3860965i32)) {
                    _m._hash[_h_3859899] = _e_3860567;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3860996i32;
                    } else {
                        _gotoNext = 3861031i32;
                    };
                } else if (__value__ == (3860996i32)) {
                    _m._all = _e_3860567;
                    _m._last = _e_3860567;
                    _gotoNext = 3861071i32;
                } else if (__value__ == (3861031i32)) {
                    _gotoNext = 3861031i32;
                    _m._last._nextAll = _e_3860567;
                    _m._last = _e_3860567;
                    var __blank__ = 0i32;
                    _gotoNext = 3861071i32;
                } else if (__value__ == (3861071i32)) {
                    return _e_3860567;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
