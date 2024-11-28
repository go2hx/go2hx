package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3893827:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3893250:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3893130:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3893098:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3892906_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3892877:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3893545:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3892901:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3892877 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892990i32;
                    } else {
                        _gotoNext = 3892994i32;
                    };
                } else if (__value__ == (3892916i32)) {
                    _x_3892901 = _stk[(_i_3892906_0 : stdgo.GoInt)];
                    _h_3892877 = ((_h_3892877 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892877 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892877 = (_h_3892877 + (((_x_3892901 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3892906_0++;
                    _gotoNext = 3892991i32;
                } else if (__value__ == (3892990i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3892906_0 = __tmp__0;
                        _x_3892901 = __tmp__1;
                    };
                    _gotoNext = 3892991i32;
                } else if (__value__ == (3892991i32)) {
                    if (_i_3892906_0 < (_stk.length)) {
                        _gotoNext = 3892916i32;
                    } else {
                        _gotoNext = 3892994i32;
                    };
                } else if (__value__ == (3892994i32)) {
                    _h_3892877 = ((_h_3892877 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892877 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892877 = (_h_3892877 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3893117i32;
                } else if (__value__ == (3893117i32)) {
                    _e_3893130 = (_m._hash[_h_3892877] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3893126i32;
                } else if (__value__ == (3893126i32)) {
                    if (!searchBreak && ((_e_3893130 != null && ((_e_3893130 : Dynamic).__nil__ == null || !(_e_3893130 : Dynamic).__nil__)))) {
                        _gotoNext = 3893180i32;
                    } else {
                        _gotoNext = 3893483i32;
                    };
                } else if (__value__ == (3893180i32)) {
                    if (((_e_3893130._stk.length != (_stk.length)) || (_e_3893130._tag != _tag) : Bool)) {
                        _gotoNext = 3893226i32;
                    } else {
                        _gotoNext = 3893246i32;
                    };
                } else if (__value__ == (3893226i32)) {
                    {
                        final __tmp__0 = _e_3893130;
                        final __tmp__1 = _e_3893130._nextHash;
                        _last_3893098 = __tmp__0;
                        _e_3893130 = __tmp__1;
                    };
                    _gotoNext = 3893126i32;
                } else if (__value__ == (3893246i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3893329i32;
                    } else {
                        _gotoNext = 3893354i32;
                    };
                } else if (__value__ == (3893250i32)) {
                    _j_3893250++;
                    _gotoNext = 3893330i32;
                } else if (__value__ == (3893265i32)) {
                    if (_e_3893130._stk[(_j_3893250 : stdgo.GoInt)] != ((_stk[(_j_3893250 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3893301i32;
                    } else {
                        _gotoNext = 3893250i32;
                    };
                } else if (__value__ == (3893301i32)) {
                    {
                        final __tmp__0 = _e_3893130;
                        final __tmp__1 = _e_3893130._nextHash;
                        _last_3893098 = __tmp__0;
                        _e_3893130 = __tmp__1;
                    };
                    _gotoNext = 3893126i32;
                } else if (__value__ == (3893329i32)) {
                    _j_3893250 = 0i32;
                    _gotoNext = 3893330i32;
                } else if (__value__ == (3893330i32)) {
                    if (_j_3893250 < (_stk.length)) {
                        _gotoNext = 3893265i32;
                    } else {
                        _gotoNext = 3893354i32;
                    };
                } else if (__value__ == (3893354i32)) {
                    if ((_last_3893098 != null && ((_last_3893098 : Dynamic).__nil__ == null || !(_last_3893098 : Dynamic).__nil__))) {
                        _gotoNext = 3893369i32;
                    } else {
                        _gotoNext = 3893450i32;
                    };
                } else if (__value__ == (3893369i32)) {
                    _last_3893098._nextHash = _e_3893130._nextHash;
                    _e_3893130._nextHash = (_m._hash[_h_3892877] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3892877] = _e_3893130;
                    _gotoNext = 3893450i32;
                } else if (__value__ == (3893450i32)) {
                    return _e_3893130;
                    {
                        final __tmp__0 = _e_3893130;
                        final __tmp__1 = _e_3893130._nextHash;
                        _last_3893098 = __tmp__0;
                        _e_3893130 = __tmp__1;
                    };
                    _gotoNext = 3893126i32;
                } else if (__value__ == (3893483i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3893502i32;
                    } else {
                        _gotoNext = 3893545i32;
                    };
                } else if (__value__ == (3893502i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3893545i32;
                } else if (__value__ == (3893545i32)) {
                    _e_3893545 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3893545._nextHash = (_m._hash[_h_3892877] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3893545._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3893650i32;
                    } else {
                        _gotoNext = 3893749i32;
                    };
                } else if (__value__ == (3893650i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3893749i32;
                } else if (__value__ == (3893749i32)) {
                    _e_3893545._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3893873i32;
                    } else {
                        _gotoNext = 3893877i32;
                    };
                } else if (__value__ == (3893842i32)) {
                    _e_3893545._stk[(_j_3893827 : stdgo.GoInt)] = (_stk[(_j_3893827 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3893827++;
                    _gotoNext = 3893874i32;
                } else if (__value__ == (3893873i32)) {
                    _j_3893827 = 0i32;
                    _gotoNext = 3893874i32;
                } else if (__value__ == (3893874i32)) {
                    if (_j_3893827 < (_stk.length)) {
                        _gotoNext = 3893842i32;
                    } else {
                        _gotoNext = 3893877i32;
                    };
                } else if (__value__ == (3893877i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3893894i32;
                    } else {
                        _gotoNext = 3893943i32;
                    };
                } else if (__value__ == (3893894i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3893943i32;
                } else if (__value__ == (3893943i32)) {
                    _m._hash[_h_3892877] = _e_3893545;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3893974i32;
                    } else {
                        _gotoNext = 3894009i32;
                    };
                } else if (__value__ == (3893974i32)) {
                    _m._all = _e_3893545;
                    _m._last = _e_3893545;
                    _gotoNext = 3894049i32;
                } else if (__value__ == (3894009i32)) {
                    _gotoNext = 3894009i32;
                    _m._last._nextAll = _e_3893545;
                    _m._last = _e_3893545;
                    var __blank__ = 0i32;
                    _gotoNext = 3894049i32;
                } else if (__value__ == (3894049i32)) {
                    return _e_3893545;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
