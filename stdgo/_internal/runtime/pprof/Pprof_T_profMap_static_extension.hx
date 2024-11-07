package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _x_3868848:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _j_3869197:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3869077:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3869045:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _h_3868824:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3869774:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3869492:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _i_3868853_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3868824 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3868937i32;
                    } else {
                        _gotoNext = 3868941i32;
                    };
                } else if (__value__ == (3868863i32)) {
                    _x_3868848 = _stk[(_i_3868853_0 : stdgo.GoInt)];
                    _h_3868824 = ((_h_3868824 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3868824 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3868824 = (_h_3868824 + (((_x_3868848 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3868853_0++;
                    _gotoNext = 3868938i32;
                } else if (__value__ == (3868937i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3868853_0 = __tmp__0;
                        _x_3868848 = __tmp__1;
                    };
                    _gotoNext = 3868938i32;
                } else if (__value__ == (3868938i32)) {
                    if (_i_3868853_0 < (_stk.length)) {
                        _gotoNext = 3868863i32;
                    } else {
                        _gotoNext = 3868941i32;
                    };
                } else if (__value__ == (3868941i32)) {
                    _h_3868824 = ((_h_3868824 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3868824 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3868824 = (_h_3868824 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3869064i32;
                } else if (__value__ == (3869064i32)) {
                    _e_3869077 = (_m._hash[_h_3868824] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3869073i32;
                } else if (__value__ == (3869073i32)) {
                    if (!searchBreak && (_e_3869077 != null && ((_e_3869077 : Dynamic).__nil__ == null || !(_e_3869077 : Dynamic).__nil__))) {
                        _gotoNext = 3869127i32;
                    } else {
                        _gotoNext = 3869430i32;
                    };
                } else if (__value__ == (3869127i32)) {
                    if (((_e_3869077._stk.length != (_stk.length)) || (_e_3869077._tag != _tag) : Bool)) {
                        _gotoNext = 3869173i32;
                    } else {
                        _gotoNext = 3869193i32;
                    };
                } else if (__value__ == (3869173i32)) {
                    {
                        final __tmp__0 = _e_3869077;
                        final __tmp__1 = _e_3869077._nextHash;
                        _last_3869045 = __tmp__0;
                        _e_3869077 = __tmp__1;
                    };
                    _gotoNext = 3869073i32;
                } else if (__value__ == (3869193i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3869276i32;
                    } else {
                        _gotoNext = 3869301i32;
                    };
                } else if (__value__ == (3869197i32)) {
                    _j_3869197++;
                    _gotoNext = 3869277i32;
                } else if (__value__ == (3869212i32)) {
                    if (_e_3869077._stk[(_j_3869197 : stdgo.GoInt)] != ((_stk[(_j_3869197 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3869248i32;
                    } else {
                        _gotoNext = 3869197i32;
                    };
                } else if (__value__ == (3869248i32)) {
                    {
                        final __tmp__0 = _e_3869077;
                        final __tmp__1 = _e_3869077._nextHash;
                        _last_3869045 = __tmp__0;
                        _e_3869077 = __tmp__1;
                    };
                    _gotoNext = 3869073i32;
                } else if (__value__ == (3869276i32)) {
                    _j_3869197 = 0i32;
                    _gotoNext = 3869277i32;
                } else if (__value__ == (3869277i32)) {
                    if (_j_3869197 < (_stk.length)) {
                        _gotoNext = 3869212i32;
                    } else {
                        _gotoNext = 3869301i32;
                    };
                } else if (__value__ == (3869301i32)) {
                    if (_last_3869045 != null && ((_last_3869045 : Dynamic).__nil__ == null || !(_last_3869045 : Dynamic).__nil__)) {
                        _gotoNext = 3869316i32;
                    } else {
                        _gotoNext = 3869397i32;
                    };
                } else if (__value__ == (3869316i32)) {
                    _last_3869045._nextHash = _e_3869077._nextHash;
                    _e_3869077._nextHash = (_m._hash[_h_3868824] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3868824] = _e_3869077;
                    _gotoNext = 3869397i32;
                } else if (__value__ == (3869397i32)) {
                    return _e_3869077;
                    {
                        final __tmp__0 = _e_3869077;
                        final __tmp__1 = _e_3869077._nextHash;
                        _last_3869045 = __tmp__0;
                        _e_3869077 = __tmp__1;
                    };
                    _gotoNext = 3869073i32;
                } else if (__value__ == (3869430i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869449i32;
                    } else {
                        _gotoNext = 3869492i32;
                    };
                } else if (__value__ == (3869449i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3869492i32;
                } else if (__value__ == (3869492i32)) {
                    _e_3869492 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3869492._nextHash = (_m._hash[_h_3868824] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3869492._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3869597i32;
                    } else {
                        _gotoNext = 3869696i32;
                    };
                } else if (__value__ == (3869597i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3869696i32;
                } else if (__value__ == (3869696i32)) {
                    _e_3869492._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3869820i32;
                    } else {
                        _gotoNext = 3869824i32;
                    };
                } else if (__value__ == (3869789i32)) {
                    _e_3869492._stk[(_j_3869774 : stdgo.GoInt)] = (_stk[(_j_3869774 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3869774++;
                    _gotoNext = 3869821i32;
                } else if (__value__ == (3869820i32)) {
                    _j_3869774 = 0i32;
                    _gotoNext = 3869821i32;
                } else if (__value__ == (3869821i32)) {
                    if (_j_3869774 < (_stk.length)) {
                        _gotoNext = 3869789i32;
                    } else {
                        _gotoNext = 3869824i32;
                    };
                } else if (__value__ == (3869824i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3869841i32;
                    } else {
                        _gotoNext = 3869890i32;
                    };
                } else if (__value__ == (3869841i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3869890i32;
                } else if (__value__ == (3869890i32)) {
                    _m._hash[_h_3868824] = _e_3869492;
                    if (_m._all == null || (_m._all : Dynamic).__nil__) {
                        _gotoNext = 3869921i32;
                    } else {
                        _gotoNext = 3869956i32;
                    };
                } else if (__value__ == (3869921i32)) {
                    _m._all = _e_3869492;
                    _m._last = _e_3869492;
                    _gotoNext = 3869996i32;
                } else if (__value__ == (3869956i32)) {
                    _m._last._nextAll = _e_3869492;
                    _m._last = _e_3869492;
                    _gotoNext = 3869996i32;
                } else if (__value__ == (3869996i32)) {
                    return _e_3869492;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
