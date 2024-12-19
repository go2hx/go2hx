package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3857813:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3857531:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3857236:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _x_3856887:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3856892_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3857116:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3857084:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _h_3856863:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3856863 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3856976i32;
                    } else {
                        _gotoNext = 3856980i32;
                    };
                } else if (__value__ == (3856902i32)) {
                    _x_3856887 = _stk[(_i_3856892_0 : stdgo.GoInt)];
                    _h_3856863 = ((_h_3856863 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3856863 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3856863 = (_h_3856863 + (((_x_3856887 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3856892_0++;
                    _gotoNext = 3856977i32;
                } else if (__value__ == (3856976i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3856892_0 = __tmp__0;
                        _x_3856887 = __tmp__1;
                    };
                    _gotoNext = 3856977i32;
                } else if (__value__ == (3856977i32)) {
                    if (_i_3856892_0 < (_stk.length)) {
                        _gotoNext = 3856902i32;
                    } else {
                        _gotoNext = 3856980i32;
                    };
                } else if (__value__ == (3856980i32)) {
                    _h_3856863 = ((_h_3856863 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3856863 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3856863 = (_h_3856863 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3857103i32;
                } else if (__value__ == (3857103i32)) {
                    _e_3857116 = (_m._hash[_h_3856863] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3857112i32;
                } else if (__value__ == (3857112i32)) {
                    if (!searchBreak && ((_e_3857116 != null && ((_e_3857116 : Dynamic).__nil__ == null || !(_e_3857116 : Dynamic).__nil__)))) {
                        _gotoNext = 3857166i32;
                    } else {
                        _gotoNext = 3857469i32;
                    };
                } else if (__value__ == (3857166i32)) {
                    if (((_e_3857116._stk.length != (_stk.length)) || (_e_3857116._tag != _tag) : Bool)) {
                        _gotoNext = 3857212i32;
                    } else {
                        _gotoNext = 3857232i32;
                    };
                } else if (__value__ == (3857212i32)) {
                    {
                        final __tmp__0 = _e_3857116;
                        final __tmp__1 = _e_3857116._nextHash;
                        _last_3857084 = __tmp__0;
                        _e_3857116 = __tmp__1;
                    };
                    _gotoNext = 3857112i32;
                } else if (__value__ == (3857232i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3857315i32;
                    } else {
                        _gotoNext = 3857340i32;
                    };
                } else if (__value__ == (3857236i32)) {
                    _j_3857236++;
                    _gotoNext = 3857316i32;
                } else if (__value__ == (3857251i32)) {
                    if (_e_3857116._stk[(_j_3857236 : stdgo.GoInt)] != ((_stk[(_j_3857236 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3857287i32;
                    } else {
                        _gotoNext = 3857236i32;
                    };
                } else if (__value__ == (3857287i32)) {
                    {
                        final __tmp__0 = _e_3857116;
                        final __tmp__1 = _e_3857116._nextHash;
                        _last_3857084 = __tmp__0;
                        _e_3857116 = __tmp__1;
                    };
                    _gotoNext = 3857112i32;
                } else if (__value__ == (3857315i32)) {
                    _j_3857236 = 0i32;
                    _gotoNext = 3857316i32;
                } else if (__value__ == (3857316i32)) {
                    if (_j_3857236 < (_stk.length)) {
                        _gotoNext = 3857251i32;
                    } else {
                        _gotoNext = 3857340i32;
                    };
                } else if (__value__ == (3857340i32)) {
                    if ((_last_3857084 != null && ((_last_3857084 : Dynamic).__nil__ == null || !(_last_3857084 : Dynamic).__nil__))) {
                        _gotoNext = 3857355i32;
                    } else {
                        _gotoNext = 3857436i32;
                    };
                } else if (__value__ == (3857355i32)) {
                    _last_3857084._nextHash = _e_3857116._nextHash;
                    _e_3857116._nextHash = (_m._hash[_h_3856863] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3856863] = _e_3857116;
                    _gotoNext = 3857436i32;
                } else if (__value__ == (3857436i32)) {
                    return _e_3857116;
                    {
                        final __tmp__0 = _e_3857116;
                        final __tmp__1 = _e_3857116._nextHash;
                        _last_3857084 = __tmp__0;
                        _e_3857116 = __tmp__1;
                    };
                    _gotoNext = 3857112i32;
                } else if (__value__ == (3857469i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3857488i32;
                    } else {
                        _gotoNext = 3857531i32;
                    };
                } else if (__value__ == (3857488i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3857531i32;
                } else if (__value__ == (3857531i32)) {
                    _e_3857531 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3857531._nextHash = (_m._hash[_h_3856863] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3857531._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3857636i32;
                    } else {
                        _gotoNext = 3857735i32;
                    };
                } else if (__value__ == (3857636i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3857735i32;
                } else if (__value__ == (3857735i32)) {
                    _e_3857531._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3857859i32;
                    } else {
                        _gotoNext = 3857863i32;
                    };
                } else if (__value__ == (3857828i32)) {
                    _e_3857531._stk[(_j_3857813 : stdgo.GoInt)] = (_stk[(_j_3857813 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3857813++;
                    _gotoNext = 3857860i32;
                } else if (__value__ == (3857859i32)) {
                    _j_3857813 = 0i32;
                    _gotoNext = 3857860i32;
                } else if (__value__ == (3857860i32)) {
                    if (_j_3857813 < (_stk.length)) {
                        _gotoNext = 3857828i32;
                    } else {
                        _gotoNext = 3857863i32;
                    };
                } else if (__value__ == (3857863i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3857880i32;
                    } else {
                        _gotoNext = 3857929i32;
                    };
                } else if (__value__ == (3857880i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3857929i32;
                } else if (__value__ == (3857929i32)) {
                    _m._hash[_h_3856863] = _e_3857531;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3857960i32;
                    } else {
                        _gotoNext = 3857995i32;
                    };
                } else if (__value__ == (3857960i32)) {
                    _m._all = _e_3857531;
                    _m._last = _e_3857531;
                    _gotoNext = 3858035i32;
                } else if (__value__ == (3857995i32)) {
                    _gotoNext = 3857995i32;
                    _m._last._nextAll = _e_3857531;
                    _m._last = _e_3857531;
                    var __blank__ = 0i32;
                    _gotoNext = 3858035i32;
                } else if (__value__ == (3858035i32)) {
                    return _e_3857531;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
