package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3896807:stdgo.GoInt = (0 : stdgo.GoInt);
        var _x_3895881:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3895886_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3895857:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3896525:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3896230:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3896110:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3896078:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3895857 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3895970i32;
                    } else {
                        _gotoNext = 3895974i32;
                    };
                } else if (__value__ == (3895896i32)) {
                    _x_3895881 = _stk[(_i_3895886_0 : stdgo.GoInt)];
                    _h_3895857 = ((_h_3895857 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3895857 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3895857 = (_h_3895857 + (((_x_3895881 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3895886_0++;
                    _gotoNext = 3895971i32;
                } else if (__value__ == (3895970i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3895886_0 = __tmp__0;
                        _x_3895881 = __tmp__1;
                    };
                    _gotoNext = 3895971i32;
                } else if (__value__ == (3895971i32)) {
                    if (_i_3895886_0 < (_stk.length)) {
                        _gotoNext = 3895896i32;
                    } else {
                        _gotoNext = 3895974i32;
                    };
                } else if (__value__ == (3895974i32)) {
                    _h_3895857 = ((_h_3895857 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3895857 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3895857 = (_h_3895857 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3896097i32;
                } else if (__value__ == (3896097i32)) {
                    _e_3896110 = (_m._hash[_h_3895857] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896106i32)) {
                    if (!searchBreak && ((_e_3896110 != null && ((_e_3896110 : Dynamic).__nil__ == null || !(_e_3896110 : Dynamic).__nil__)))) {
                        _gotoNext = 3896160i32;
                    } else {
                        _gotoNext = 3896463i32;
                    };
                } else if (__value__ == (3896160i32)) {
                    if (((_e_3896110._stk.length != (_stk.length)) || (_e_3896110._tag != _tag) : Bool)) {
                        _gotoNext = 3896206i32;
                    } else {
                        _gotoNext = 3896226i32;
                    };
                } else if (__value__ == (3896206i32)) {
                    {
                        final __tmp__0 = _e_3896110;
                        final __tmp__1 = _e_3896110._nextHash;
                        _last_3896078 = __tmp__0;
                        _e_3896110 = __tmp__1;
                    };
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896226i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3896309i32;
                    } else {
                        _gotoNext = 3896334i32;
                    };
                } else if (__value__ == (3896230i32)) {
                    _j_3896230++;
                    _gotoNext = 3896310i32;
                } else if (__value__ == (3896245i32)) {
                    if (_e_3896110._stk[(_j_3896230 : stdgo.GoInt)] != ((_stk[(_j_3896230 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3896281i32;
                    } else {
                        _gotoNext = 3896230i32;
                    };
                } else if (__value__ == (3896281i32)) {
                    {
                        final __tmp__0 = _e_3896110;
                        final __tmp__1 = _e_3896110._nextHash;
                        _last_3896078 = __tmp__0;
                        _e_3896110 = __tmp__1;
                    };
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896309i32)) {
                    _j_3896230 = 0i32;
                    _gotoNext = 3896310i32;
                } else if (__value__ == (3896310i32)) {
                    if (_j_3896230 < (_stk.length)) {
                        _gotoNext = 3896245i32;
                    } else {
                        _gotoNext = 3896334i32;
                    };
                } else if (__value__ == (3896334i32)) {
                    if ((_last_3896078 != null && ((_last_3896078 : Dynamic).__nil__ == null || !(_last_3896078 : Dynamic).__nil__))) {
                        _gotoNext = 3896349i32;
                    } else {
                        _gotoNext = 3896430i32;
                    };
                } else if (__value__ == (3896349i32)) {
                    _last_3896078._nextHash = _e_3896110._nextHash;
                    _e_3896110._nextHash = (_m._hash[_h_3895857] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3895857] = _e_3896110;
                    _gotoNext = 3896430i32;
                } else if (__value__ == (3896430i32)) {
                    return _e_3896110;
                    {
                        final __tmp__0 = _e_3896110;
                        final __tmp__1 = _e_3896110._nextHash;
                        _last_3896078 = __tmp__0;
                        _e_3896110 = __tmp__1;
                    };
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896463i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3896482i32;
                    } else {
                        _gotoNext = 3896525i32;
                    };
                } else if (__value__ == (3896482i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3896525i32;
                } else if (__value__ == (3896525i32)) {
                    _e_3896525 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3896525._nextHash = (_m._hash[_h_3895857] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3896525._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3896630i32;
                    } else {
                        _gotoNext = 3896729i32;
                    };
                } else if (__value__ == (3896630i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3896729i32;
                } else if (__value__ == (3896729i32)) {
                    _e_3896525._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3896853i32;
                    } else {
                        _gotoNext = 3896857i32;
                    };
                } else if (__value__ == (3896822i32)) {
                    _e_3896525._stk[(_j_3896807 : stdgo.GoInt)] = (_stk[(_j_3896807 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3896807++;
                    _gotoNext = 3896854i32;
                } else if (__value__ == (3896853i32)) {
                    _j_3896807 = 0i32;
                    _gotoNext = 3896854i32;
                } else if (__value__ == (3896854i32)) {
                    if (_j_3896807 < (_stk.length)) {
                        _gotoNext = 3896822i32;
                    } else {
                        _gotoNext = 3896857i32;
                    };
                } else if (__value__ == (3896857i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3896874i32;
                    } else {
                        _gotoNext = 3896923i32;
                    };
                } else if (__value__ == (3896874i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3896923i32;
                } else if (__value__ == (3896923i32)) {
                    _m._hash[_h_3895857] = _e_3896525;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3896954i32;
                    } else {
                        _gotoNext = 3896989i32;
                    };
                } else if (__value__ == (3896954i32)) {
                    _m._all = _e_3896525;
                    _m._last = _e_3896525;
                    _gotoNext = 3897029i32;
                } else if (__value__ == (3896989i32)) {
                    _gotoNext = 3896989i32;
                    _m._last._nextAll = _e_3896525;
                    _m._last = _e_3896525;
                    var __blank__ = 0i32;
                    _gotoNext = 3897029i32;
                } else if (__value__ == (3897029i32)) {
                    return _e_3896525;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
