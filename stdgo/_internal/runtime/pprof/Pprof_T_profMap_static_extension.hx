package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _e_3864325:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _e_3863910:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3863686_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3864607:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3864030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3863878:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3863681:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3863657:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3863657 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3863770i32;
                    } else {
                        _gotoNext = 3863774i32;
                    };
                } else if (__value__ == (3863696i32)) {
                    _x_3863681 = _stk[(_i_3863686_0 : stdgo.GoInt)];
                    _h_3863657 = ((_h_3863657 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3863657 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3863657 = (_h_3863657 + (((_x_3863681 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3863686_0++;
                    _gotoNext = 3863771i32;
                } else if (__value__ == (3863770i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3863686_0 = __tmp__0;
                        _x_3863681 = __tmp__1;
                    };
                    _gotoNext = 3863771i32;
                } else if (__value__ == (3863771i32)) {
                    if (_i_3863686_0 < (_stk.length)) {
                        _gotoNext = 3863696i32;
                    } else {
                        _gotoNext = 3863774i32;
                    };
                } else if (__value__ == (3863774i32)) {
                    _h_3863657 = ((_h_3863657 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3863657 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3863657 = (_h_3863657 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3863897i32;
                } else if (__value__ == (3863897i32)) {
                    _e_3863910 = (_m._hash[_h_3863657] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3863906i32;
                } else if (__value__ == (3863906i32)) {
                    if (!searchBreak && ((_e_3863910 != null && ((_e_3863910 : Dynamic).__nil__ == null || !(_e_3863910 : Dynamic).__nil__)))) {
                        _gotoNext = 3863960i32;
                    } else {
                        _gotoNext = 3864263i32;
                    };
                } else if (__value__ == (3863960i32)) {
                    if (((_e_3863910._stk.length != (_stk.length)) || (_e_3863910._tag != _tag) : Bool)) {
                        _gotoNext = 3864006i32;
                    } else {
                        _gotoNext = 3864026i32;
                    };
                } else if (__value__ == (3864006i32)) {
                    {
                        final __tmp__0 = _e_3863910;
                        final __tmp__1 = _e_3863910._nextHash;
                        _last_3863878 = __tmp__0;
                        _e_3863910 = __tmp__1;
                    };
                    _gotoNext = 3863906i32;
                } else if (__value__ == (3864026i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3864109i32;
                    } else {
                        _gotoNext = 3864134i32;
                    };
                } else if (__value__ == (3864030i32)) {
                    _j_3864030++;
                    _gotoNext = 3864110i32;
                } else if (__value__ == (3864045i32)) {
                    if (_e_3863910._stk[(_j_3864030 : stdgo.GoInt)] != ((_stk[(_j_3864030 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3864081i32;
                    } else {
                        _gotoNext = 3864030i32;
                    };
                } else if (__value__ == (3864081i32)) {
                    {
                        final __tmp__0 = _e_3863910;
                        final __tmp__1 = _e_3863910._nextHash;
                        _last_3863878 = __tmp__0;
                        _e_3863910 = __tmp__1;
                    };
                    _gotoNext = 3863906i32;
                } else if (__value__ == (3864109i32)) {
                    _j_3864030 = 0i32;
                    _gotoNext = 3864110i32;
                } else if (__value__ == (3864110i32)) {
                    if (_j_3864030 < (_stk.length)) {
                        _gotoNext = 3864045i32;
                    } else {
                        _gotoNext = 3864134i32;
                    };
                } else if (__value__ == (3864134i32)) {
                    if ((_last_3863878 != null && ((_last_3863878 : Dynamic).__nil__ == null || !(_last_3863878 : Dynamic).__nil__))) {
                        _gotoNext = 3864149i32;
                    } else {
                        _gotoNext = 3864230i32;
                    };
                } else if (__value__ == (3864149i32)) {
                    _last_3863878._nextHash = _e_3863910._nextHash;
                    _e_3863910._nextHash = (_m._hash[_h_3863657] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3863657] = _e_3863910;
                    _gotoNext = 3864230i32;
                } else if (__value__ == (3864230i32)) {
                    return _e_3863910;
                    {
                        final __tmp__0 = _e_3863910;
                        final __tmp__1 = _e_3863910._nextHash;
                        _last_3863878 = __tmp__0;
                        _e_3863910 = __tmp__1;
                    };
                    _gotoNext = 3863906i32;
                } else if (__value__ == (3864263i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3864282i32;
                    } else {
                        _gotoNext = 3864325i32;
                    };
                } else if (__value__ == (3864282i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3864325i32;
                } else if (__value__ == (3864325i32)) {
                    _e_3864325 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3864325._nextHash = (_m._hash[_h_3863657] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3864325._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3864430i32;
                    } else {
                        _gotoNext = 3864529i32;
                    };
                } else if (__value__ == (3864430i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3864529i32;
                } else if (__value__ == (3864529i32)) {
                    _e_3864325._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3864653i32;
                    } else {
                        _gotoNext = 3864657i32;
                    };
                } else if (__value__ == (3864622i32)) {
                    _e_3864325._stk[(_j_3864607 : stdgo.GoInt)] = (_stk[(_j_3864607 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3864607++;
                    _gotoNext = 3864654i32;
                } else if (__value__ == (3864653i32)) {
                    _j_3864607 = 0i32;
                    _gotoNext = 3864654i32;
                } else if (__value__ == (3864654i32)) {
                    if (_j_3864607 < (_stk.length)) {
                        _gotoNext = 3864622i32;
                    } else {
                        _gotoNext = 3864657i32;
                    };
                } else if (__value__ == (3864657i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3864674i32;
                    } else {
                        _gotoNext = 3864723i32;
                    };
                } else if (__value__ == (3864674i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3864723i32;
                } else if (__value__ == (3864723i32)) {
                    _m._hash[_h_3863657] = _e_3864325;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3864754i32;
                    } else {
                        _gotoNext = 3864789i32;
                    };
                } else if (__value__ == (3864754i32)) {
                    _m._all = _e_3864325;
                    _m._last = _e_3864325;
                    _gotoNext = 3864829i32;
                } else if (__value__ == (3864789i32)) {
                    _gotoNext = 3864789i32;
                    _m._last._nextAll = _e_3864325;
                    _m._last = _e_3864325;
                    var __blank__ = 0i32;
                    _gotoNext = 3864829i32;
                } else if (__value__ == (3864829i32)) {
                    return _e_3864325;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
