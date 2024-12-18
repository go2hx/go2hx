package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _x_3891668:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3891644:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3892312:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3891897:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3891865:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _i_3891673_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3892594:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3892017:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3891644 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3891757i32;
                    } else {
                        _gotoNext = 3891761i32;
                    };
                } else if (__value__ == (3891683i32)) {
                    _x_3891668 = _stk[(_i_3891673_0 : stdgo.GoInt)];
                    _h_3891644 = ((_h_3891644 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3891644 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3891644 = (_h_3891644 + (((_x_3891668 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3891673_0++;
                    _gotoNext = 3891758i32;
                } else if (__value__ == (3891757i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3891673_0 = __tmp__0;
                        _x_3891668 = __tmp__1;
                    };
                    _gotoNext = 3891758i32;
                } else if (__value__ == (3891758i32)) {
                    if (_i_3891673_0 < (_stk.length)) {
                        _gotoNext = 3891683i32;
                    } else {
                        _gotoNext = 3891761i32;
                    };
                } else if (__value__ == (3891761i32)) {
                    _h_3891644 = ((_h_3891644 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3891644 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3891644 = (_h_3891644 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3891884i32;
                } else if (__value__ == (3891884i32)) {
                    _e_3891897 = (_m._hash[_h_3891644] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3891893i32;
                } else if (__value__ == (3891893i32)) {
                    if (!searchBreak && ((_e_3891897 != null && ((_e_3891897 : Dynamic).__nil__ == null || !(_e_3891897 : Dynamic).__nil__)))) {
                        _gotoNext = 3891947i32;
                    } else {
                        _gotoNext = 3892250i32;
                    };
                } else if (__value__ == (3891947i32)) {
                    if (((_e_3891897._stk.length != (_stk.length)) || (_e_3891897._tag != _tag) : Bool)) {
                        _gotoNext = 3891993i32;
                    } else {
                        _gotoNext = 3892013i32;
                    };
                } else if (__value__ == (3891993i32)) {
                    {
                        final __tmp__0 = _e_3891897;
                        final __tmp__1 = _e_3891897._nextHash;
                        _last_3891865 = __tmp__0;
                        _e_3891897 = __tmp__1;
                    };
                    _gotoNext = 3891893i32;
                } else if (__value__ == (3892013i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892096i32;
                    } else {
                        _gotoNext = 3892121i32;
                    };
                } else if (__value__ == (3892017i32)) {
                    _j_3892017++;
                    _gotoNext = 3892097i32;
                } else if (__value__ == (3892032i32)) {
                    if (_e_3891897._stk[(_j_3892017 : stdgo.GoInt)] != ((_stk[(_j_3892017 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3892068i32;
                    } else {
                        _gotoNext = 3892017i32;
                    };
                } else if (__value__ == (3892068i32)) {
                    {
                        final __tmp__0 = _e_3891897;
                        final __tmp__1 = _e_3891897._nextHash;
                        _last_3891865 = __tmp__0;
                        _e_3891897 = __tmp__1;
                    };
                    _gotoNext = 3891893i32;
                } else if (__value__ == (3892096i32)) {
                    _j_3892017 = 0i32;
                    _gotoNext = 3892097i32;
                } else if (__value__ == (3892097i32)) {
                    if (_j_3892017 < (_stk.length)) {
                        _gotoNext = 3892032i32;
                    } else {
                        _gotoNext = 3892121i32;
                    };
                } else if (__value__ == (3892121i32)) {
                    if ((_last_3891865 != null && ((_last_3891865 : Dynamic).__nil__ == null || !(_last_3891865 : Dynamic).__nil__))) {
                        _gotoNext = 3892136i32;
                    } else {
                        _gotoNext = 3892217i32;
                    };
                } else if (__value__ == (3892136i32)) {
                    _last_3891865._nextHash = _e_3891897._nextHash;
                    _e_3891897._nextHash = (_m._hash[_h_3891644] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3891644] = _e_3891897;
                    _gotoNext = 3892217i32;
                } else if (__value__ == (3892217i32)) {
                    return _e_3891897;
                    {
                        final __tmp__0 = _e_3891897;
                        final __tmp__1 = _e_3891897._nextHash;
                        _last_3891865 = __tmp__0;
                        _e_3891897 = __tmp__1;
                    };
                    _gotoNext = 3891893i32;
                } else if (__value__ == (3892250i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3892269i32;
                    } else {
                        _gotoNext = 3892312i32;
                    };
                } else if (__value__ == (3892269i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3892312i32;
                } else if (__value__ == (3892312i32)) {
                    _e_3892312 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3892312._nextHash = (_m._hash[_h_3891644] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3892312._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3892417i32;
                    } else {
                        _gotoNext = 3892516i32;
                    };
                } else if (__value__ == (3892417i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3892516i32;
                } else if (__value__ == (3892516i32)) {
                    _e_3892312._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892640i32;
                    } else {
                        _gotoNext = 3892644i32;
                    };
                } else if (__value__ == (3892609i32)) {
                    _e_3892312._stk[(_j_3892594 : stdgo.GoInt)] = (_stk[(_j_3892594 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3892594++;
                    _gotoNext = 3892641i32;
                } else if (__value__ == (3892640i32)) {
                    _j_3892594 = 0i32;
                    _gotoNext = 3892641i32;
                } else if (__value__ == (3892641i32)) {
                    if (_j_3892594 < (_stk.length)) {
                        _gotoNext = 3892609i32;
                    } else {
                        _gotoNext = 3892644i32;
                    };
                } else if (__value__ == (3892644i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3892661i32;
                    } else {
                        _gotoNext = 3892710i32;
                    };
                } else if (__value__ == (3892661i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3892710i32;
                } else if (__value__ == (3892710i32)) {
                    _m._hash[_h_3891644] = _e_3892312;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3892741i32;
                    } else {
                        _gotoNext = 3892776i32;
                    };
                } else if (__value__ == (3892741i32)) {
                    _m._all = _e_3892312;
                    _m._last = _e_3892312;
                    _gotoNext = 3892816i32;
                } else if (__value__ == (3892776i32)) {
                    _gotoNext = 3892776i32;
                    _m._last._nextAll = _e_3892312;
                    _m._last = _e_3892312;
                    var __blank__ = 0i32;
                    _gotoNext = 3892816i32;
                } else if (__value__ == (3892816i32)) {
                    return _e_3892312;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
