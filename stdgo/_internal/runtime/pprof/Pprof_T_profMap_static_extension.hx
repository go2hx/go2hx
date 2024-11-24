package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _i_3837415_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3837386:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3838336:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3838054:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3837639:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3837607:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _x_3837410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _j_3837759:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3837386 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3837499i32;
                    } else {
                        _gotoNext = 3837503i32;
                    };
                } else if (__value__ == (3837425i32)) {
                    _x_3837410 = _stk[(_i_3837415_0 : stdgo.GoInt)];
                    _h_3837386 = ((_h_3837386 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3837386 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3837386 = (_h_3837386 + (((_x_3837410 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3837415_0++;
                    _gotoNext = 3837500i32;
                } else if (__value__ == (3837499i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3837415_0 = __tmp__0;
                        _x_3837410 = __tmp__1;
                    };
                    _gotoNext = 3837500i32;
                } else if (__value__ == (3837500i32)) {
                    if (_i_3837415_0 < (_stk.length)) {
                        _gotoNext = 3837425i32;
                    } else {
                        _gotoNext = 3837503i32;
                    };
                } else if (__value__ == (3837503i32)) {
                    _h_3837386 = ((_h_3837386 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3837386 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3837386 = (_h_3837386 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3837626i32;
                } else if (__value__ == (3837626i32)) {
                    _e_3837639 = (_m._hash[_h_3837386] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3837635i32;
                } else if (__value__ == (3837635i32)) {
                    if (!searchBreak && ((_e_3837639 != null && ((_e_3837639 : Dynamic).__nil__ == null || !(_e_3837639 : Dynamic).__nil__)))) {
                        _gotoNext = 3837689i32;
                    } else {
                        _gotoNext = 3837992i32;
                    };
                } else if (__value__ == (3837689i32)) {
                    if (((_e_3837639._stk.length != (_stk.length)) || (_e_3837639._tag != _tag) : Bool)) {
                        _gotoNext = 3837735i32;
                    } else {
                        _gotoNext = 3837755i32;
                    };
                } else if (__value__ == (3837735i32)) {
                    {
                        final __tmp__0 = _e_3837639;
                        final __tmp__1 = _e_3837639._nextHash;
                        _last_3837607 = __tmp__0;
                        _e_3837639 = __tmp__1;
                    };
                    _gotoNext = 3837635i32;
                } else if (__value__ == (3837755i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3837838i32;
                    } else {
                        _gotoNext = 3837863i32;
                    };
                } else if (__value__ == (3837759i32)) {
                    _j_3837759++;
                    _gotoNext = 3837839i32;
                } else if (__value__ == (3837774i32)) {
                    if (_e_3837639._stk[(_j_3837759 : stdgo.GoInt)] != ((_stk[(_j_3837759 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3837810i32;
                    } else {
                        _gotoNext = 3837759i32;
                    };
                } else if (__value__ == (3837810i32)) {
                    {
                        final __tmp__0 = _e_3837639;
                        final __tmp__1 = _e_3837639._nextHash;
                        _last_3837607 = __tmp__0;
                        _e_3837639 = __tmp__1;
                    };
                    _gotoNext = 3837635i32;
                } else if (__value__ == (3837838i32)) {
                    _j_3837759 = 0i32;
                    _gotoNext = 3837839i32;
                } else if (__value__ == (3837839i32)) {
                    if (_j_3837759 < (_stk.length)) {
                        _gotoNext = 3837774i32;
                    } else {
                        _gotoNext = 3837863i32;
                    };
                } else if (__value__ == (3837863i32)) {
                    if ((_last_3837607 != null && ((_last_3837607 : Dynamic).__nil__ == null || !(_last_3837607 : Dynamic).__nil__))) {
                        _gotoNext = 3837878i32;
                    } else {
                        _gotoNext = 3837959i32;
                    };
                } else if (__value__ == (3837878i32)) {
                    _last_3837607._nextHash = _e_3837639._nextHash;
                    _e_3837639._nextHash = (_m._hash[_h_3837386] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3837386] = _e_3837639;
                    _gotoNext = 3837959i32;
                } else if (__value__ == (3837959i32)) {
                    return _e_3837639;
                    {
                        final __tmp__0 = _e_3837639;
                        final __tmp__1 = _e_3837639._nextHash;
                        _last_3837607 = __tmp__0;
                        _e_3837639 = __tmp__1;
                    };
                    _gotoNext = 3837635i32;
                } else if (__value__ == (3837992i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3838011i32;
                    } else {
                        _gotoNext = 3838054i32;
                    };
                } else if (__value__ == (3838011i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3838054i32;
                } else if (__value__ == (3838054i32)) {
                    _e_3838054 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3838054._nextHash = (_m._hash[_h_3837386] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3838054._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3838159i32;
                    } else {
                        _gotoNext = 3838258i32;
                    };
                } else if (__value__ == (3838159i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3838258i32;
                } else if (__value__ == (3838258i32)) {
                    _e_3838054._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3838382i32;
                    } else {
                        _gotoNext = 3838386i32;
                    };
                } else if (__value__ == (3838351i32)) {
                    _e_3838054._stk[(_j_3838336 : stdgo.GoInt)] = (_stk[(_j_3838336 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3838336++;
                    _gotoNext = 3838383i32;
                } else if (__value__ == (3838382i32)) {
                    _j_3838336 = 0i32;
                    _gotoNext = 3838383i32;
                } else if (__value__ == (3838383i32)) {
                    if (_j_3838336 < (_stk.length)) {
                        _gotoNext = 3838351i32;
                    } else {
                        _gotoNext = 3838386i32;
                    };
                } else if (__value__ == (3838386i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3838403i32;
                    } else {
                        _gotoNext = 3838452i32;
                    };
                } else if (__value__ == (3838403i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3838452i32;
                } else if (__value__ == (3838452i32)) {
                    _m._hash[_h_3837386] = _e_3838054;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3838483i32;
                    } else {
                        _gotoNext = 3838518i32;
                    };
                } else if (__value__ == (3838483i32)) {
                    _m._all = _e_3838054;
                    _m._last = _e_3838054;
                    _gotoNext = 3838558i32;
                } else if (__value__ == (3838518i32)) {
                    _gotoNext = 3838518i32;
                    _m._last._nextAll = _e_3838054;
                    _m._last = _e_3838054;
                    var __blank__ = 0i32;
                    _gotoNext = 3838558i32;
                } else if (__value__ == (3838558i32)) {
                    return _e_3838054;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
