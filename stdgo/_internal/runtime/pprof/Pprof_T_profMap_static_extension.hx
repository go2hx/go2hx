package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3834020:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3833443:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _i_3833099_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3833070:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3833738:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3833323:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3833291:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3833094:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3833070 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3833183i32;
                    } else {
                        _gotoNext = 3833187i32;
                    };
                } else if (__value__ == (3833109i32)) {
                    _x_3833094 = _stk[(_i_3833099_0 : stdgo.GoInt)];
                    _h_3833070 = ((_h_3833070 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3833070 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3833070 = (_h_3833070 + (((_x_3833094 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3833099_0++;
                    _gotoNext = 3833184i32;
                } else if (__value__ == (3833183i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3833099_0 = __tmp__0;
                        _x_3833094 = __tmp__1;
                    };
                    _gotoNext = 3833184i32;
                } else if (__value__ == (3833184i32)) {
                    if (_i_3833099_0 < (_stk.length)) {
                        _gotoNext = 3833109i32;
                    } else {
                        _gotoNext = 3833187i32;
                    };
                } else if (__value__ == (3833187i32)) {
                    _h_3833070 = ((_h_3833070 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3833070 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3833070 = (_h_3833070 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3833310i32;
                } else if (__value__ == (3833310i32)) {
                    _e_3833323 = (_m._hash[_h_3833070] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3833319i32;
                } else if (__value__ == (3833319i32)) {
                    if (!searchBreak && ((_e_3833323 != null && ((_e_3833323 : Dynamic).__nil__ == null || !(_e_3833323 : Dynamic).__nil__)))) {
                        _gotoNext = 3833373i32;
                    } else {
                        _gotoNext = 3833676i32;
                    };
                } else if (__value__ == (3833373i32)) {
                    if (((_e_3833323._stk.length != (_stk.length)) || (_e_3833323._tag != _tag) : Bool)) {
                        _gotoNext = 3833419i32;
                    } else {
                        _gotoNext = 3833439i32;
                    };
                } else if (__value__ == (3833419i32)) {
                    {
                        final __tmp__0 = _e_3833323;
                        final __tmp__1 = _e_3833323._nextHash;
                        _last_3833291 = __tmp__0;
                        _e_3833323 = __tmp__1;
                    };
                    _gotoNext = 3833319i32;
                } else if (__value__ == (3833439i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3833522i32;
                    } else {
                        _gotoNext = 3833547i32;
                    };
                } else if (__value__ == (3833443i32)) {
                    _j_3833443++;
                    _gotoNext = 3833523i32;
                } else if (__value__ == (3833458i32)) {
                    if (_e_3833323._stk[(_j_3833443 : stdgo.GoInt)] != ((_stk[(_j_3833443 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3833494i32;
                    } else {
                        _gotoNext = 3833443i32;
                    };
                } else if (__value__ == (3833494i32)) {
                    {
                        final __tmp__0 = _e_3833323;
                        final __tmp__1 = _e_3833323._nextHash;
                        _last_3833291 = __tmp__0;
                        _e_3833323 = __tmp__1;
                    };
                    _gotoNext = 3833319i32;
                } else if (__value__ == (3833522i32)) {
                    _j_3833443 = 0i32;
                    _gotoNext = 3833523i32;
                } else if (__value__ == (3833523i32)) {
                    if (_j_3833443 < (_stk.length)) {
                        _gotoNext = 3833458i32;
                    } else {
                        _gotoNext = 3833547i32;
                    };
                } else if (__value__ == (3833547i32)) {
                    if ((_last_3833291 != null && ((_last_3833291 : Dynamic).__nil__ == null || !(_last_3833291 : Dynamic).__nil__))) {
                        _gotoNext = 3833562i32;
                    } else {
                        _gotoNext = 3833643i32;
                    };
                } else if (__value__ == (3833562i32)) {
                    _last_3833291._nextHash = _e_3833323._nextHash;
                    _e_3833323._nextHash = (_m._hash[_h_3833070] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3833070] = _e_3833323;
                    _gotoNext = 3833643i32;
                } else if (__value__ == (3833643i32)) {
                    return _e_3833323;
                    {
                        final __tmp__0 = _e_3833323;
                        final __tmp__1 = _e_3833323._nextHash;
                        _last_3833291 = __tmp__0;
                        _e_3833323 = __tmp__1;
                    };
                    _gotoNext = 3833319i32;
                } else if (__value__ == (3833676i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3833695i32;
                    } else {
                        _gotoNext = 3833738i32;
                    };
                } else if (__value__ == (3833695i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3833738i32;
                } else if (__value__ == (3833738i32)) {
                    _e_3833738 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3833738._nextHash = (_m._hash[_h_3833070] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3833738._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3833843i32;
                    } else {
                        _gotoNext = 3833942i32;
                    };
                } else if (__value__ == (3833843i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3833942i32;
                } else if (__value__ == (3833942i32)) {
                    _e_3833738._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3834066i32;
                    } else {
                        _gotoNext = 3834070i32;
                    };
                } else if (__value__ == (3834035i32)) {
                    _e_3833738._stk[(_j_3834020 : stdgo.GoInt)] = (_stk[(_j_3834020 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3834020++;
                    _gotoNext = 3834067i32;
                } else if (__value__ == (3834066i32)) {
                    _j_3834020 = 0i32;
                    _gotoNext = 3834067i32;
                } else if (__value__ == (3834067i32)) {
                    if (_j_3834020 < (_stk.length)) {
                        _gotoNext = 3834035i32;
                    } else {
                        _gotoNext = 3834070i32;
                    };
                } else if (__value__ == (3834070i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3834087i32;
                    } else {
                        _gotoNext = 3834136i32;
                    };
                } else if (__value__ == (3834087i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3834136i32;
                } else if (__value__ == (3834136i32)) {
                    _m._hash[_h_3833070] = _e_3833738;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3834167i32;
                    } else {
                        _gotoNext = 3834202i32;
                    };
                } else if (__value__ == (3834167i32)) {
                    _m._all = _e_3833738;
                    _m._last = _e_3833738;
                    _gotoNext = 3834242i32;
                } else if (__value__ == (3834202i32)) {
                    _gotoNext = 3834202i32;
                    _m._last._nextAll = _e_3833738;
                    _m._last = _e_3833738;
                    var __blank__ = 0i32;
                    _gotoNext = 3834242i32;
                } else if (__value__ == (3834242i32)) {
                    return _e_3833738;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
